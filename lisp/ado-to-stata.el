;;; ado-to-stata.el --- Passing code to a running Stata from emacs -*- lexical-binding: t; package-lint-main-file: "ado-mode.el"; -*-
;;
;; Copyright (C) 2003--2024 Bill Rising

;; Author:   Bill Rising <brising@alum.mit.edu>
;; Homepage: https://github.com/louabill/ado-mode

;; This file is not part of GNU Emacs.

;; This package is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, version 3.

;; This package is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.
;; If not, see <https://www.gnu.org/licenses/>

;;; Commentary:

;; A collection of functions for interacting with Stata
;; This works in macOS and MS Windows for sure. It could be spotty in
;;   some *nixes, because of their window managers.
;;   In macOS, this is done via the applescript send2stata.scpt
;;   In MS Windows, this is done via the autoit executable send2stata.exe
;;   In *nix, via the send2ztata bash script

;;; Code:

(require 'ado-cus)
(require 'ado-cons)
(require 'ado-clip)

(defun ado-send-command-to-stata (&optional whole-buffer)
  "Send current command to Stata.
If optional argument WHOLE-BUFFER is non-nil, send the whole buffer.

This uses the default method for sending code."
  (interactive)
  (ado-command-to-clip ado-submit-default whole-buffer)
  (ado-send-clip-to-stata ado-submit-default ado-comeback-flag))

(defun ado-send-command-to-command (&optional whole-buffer)
  "Send current command to Stata via the Command window.
If optional argument WHOLE-BUFFER is non-nil, send the whole buffer."
  (interactive)
  (ado-command-to-clip "command" whole-buffer)
  (ado-send-clip-to-stata "command" ado-comeback-flag))

(defun ado-send-command-to-menu (&optional whole-buffer)
  "Send current command to Stata via a menu item.
If optional argument WHOLE-BUFFER is non-nil, send the whole buffer."
  (interactive)
  (ado-command-to-clip "menu" whole-buffer)
  (ado-send-clip-to-stata "menu" ado-comeback-flag))

(defun ado-send-command-to-dofile (&optional whole-buffer)
  "Send current command to Stata via a do-file.
If optional argument WHOLE-BUFFER is non-nil, send the whole buffer."
  (interactive)
  (ado-command-to-clip "dofile" whole-buffer)
  (ado-send-clip-to-stata "dofile" ado-comeback-flag))

(defun ado-send-command-to-include (&optional whole-buffer)
  "Send current command to Stata via an include file.
If optional argument WHOLE-BUFFER is non-nil, send the whole buffer.

Using an include file helps with local macros."
  (interactive)
  (ado-command-to-clip "include" whole-buffer)
  (ado-send-clip-to-stata "include" ado-comeback-flag))

(defun ado-send-clip-to-stata (&optional dothis comeback)
  "Send the clipboard to Stata to be evaluated.
This command  is meant to be called by one of the wrappers determining
the behavior of the flags...

There are two optional arguments:
  DOTHIS: \"command\" for using the commmand window
          \"menu\"   for using a menu item
          \"dofile\" for using a tmp do-file
          \"include\" for using a tmp do-file as an include
                          (allowing current local macros to work)

  COMEBACK: if nil, stay in Stata after submitting command; t to come
            back to emacs.

  A third optional argument may appear in the future:

  tmpfile: name of the tmpfile to use if running via temporary do-file
           (not used, just reserved for future use)

By default, you do not need to do any setup. If you play around
with the scripts and want to call something other than what came with
ado-mode, set `ado-script-dir' to point to where your version of
send2stata.scpt is stored."
  (interactive)
  (unless dothis (setq dothis ado-submit-default))
  (unless comeback (setq comeback ado-comeback-flag))
  (cond
   ((or (string= dothis "menu") (string= dothis "dofile") (string= dothis "command") (string= dothis "include"))
	(cond ((string= system-type "darwin")
	  ;; the comeback for Mac OS X is handled via a shell command below
		   ;; (shell-command (concat "osascript '"
		   ;; 						 (ado-send2stata-name "send2stata.scpt")
		   ;; 						 "' \"" dothis "\"")))
		   (shell-command
		   	 (concat "osascript "
		   			 (shell-quote-argument (ado-send2stata-name "send2stata.scpt"))
		   			 " "
		   			 (shell-quote-argument dothis))))
		  ((string= system-type "windows-nt")
		   ;; autoit can send to non-active windows, so comeback is handled there
		   ;; need to be sure that comeback is a string for concatenation
		   (if comeback (setq comeback "t"))
		   ;;  working via the menu does NOT work with comeback, yet
		   (if (and comeback (string= dothis "menu"))
			   (error "Cannot comeback to Stata after using a menu in MS Windows"))
		   ;; **changing to shell-command breaks autoit**
		   ;; (call-process-shell-command
		   ;; 	(concat
		   ;; 	 "\""
		   ;; 	 (ado-send2stata-name "send2stata.exe")
		   ;; 	 "\" \"" dothis "\" \"" comeback "\""
		   ;; 	 " \"" ado-temp-dofile "\""
		   ;; 	 " \"" (unless (= 0 ado-stata-instance) (number-to-string ado-stata-instance)) "\""
		   ;; 	 " \"" ado-stata-version "\""
		   ;; 	 " \"" ado-stata-flavor "\""
		   ;; 	 " \"" (if ado-send-to-all-flag "t" "") "\""
		   ;; 	 " \"" (if ado-strict-match-flag "t" "") "\"")
		   ;; 	nil 0)
		   (call-process-shell-command
			(concat
			 (shell-quote-argument
			  (ado-send2stata-name "send2stata.exe"))
			 " "
			 (shell-quote-argument dothis)
			 " "
			 (shell-quote-argument  ; errors on nil ?!
			  (if comeback comeback ""))
			 " "
			 (shell-quote-argument ado-temp-dofile)
			 " "
			 (shell-quote-argument
			  (if (= 0 ado-stata-instance)
				  ""
				(number-to-string ado-stata-instance)))
			 " "
			 (shell-quote-argument ado-stata-version)
			 " "
			 (shell-quote-argument ado-stata-flavor)
			 " "
			 (shell-quote-argument
			  (if ado-send-to-all-flag "t" ""))
			 " "
			 (shell-quote-argument (if ado-strict-match-flag "t" "")))
			 nil 0))
		  ((string= system-type "gnu/linux")
		   (shell-command
			(concat
			 (shell-quote-argument
			  (ado-send2stata-name "send2ztata.sh"))
			 (if ado-comeback-flag
				 " -c ")
			 " -d "
			 (shell-quote-argument dothis) " &" )))
		  (t
		   (message "Working via %ss not supported yet in %s%s"
					dothis
					(symbol-name system-type)
					(if (string= dothis "command")
						", but the command is on the clipboard and you can paste it in the command window by hand"
					  "")))))
   (t (error "%s" "Bad value for `do-this' in ado-send-region-to-stata")))
  ;; comeback cannot be done in applescript very well
  (cond
   ((string= system-type "darwin")
	(if comeback
		(if (> (shell-command (concat "open \"" (substring invocation-directory 0 (string-match "/Contents" invocation-directory)) "\"")) 0)
			(message "had trouble with shell command")))
	(message "selection sent to Stata"))))

(defun ado-send2stata-name (send2stata-name)
  "Find the send2stata script/executable name as given by SEND2STATA-NAME.

Needed because if the `ado-script-dir' is set incorrectly, but is still a
directory, Windows does not return an error when the executable cannot run.
Returns the fully qualified file name or errors out if the file is not found."
  (let ((return-me (locate-file send2stata-name (list (ado-check-a-directory 'ado-script-dir)))))
	(if return-me
		return-me
	  (error "%s" (concat "Could not find " send2stata-name ". Did you change ado-script-dir by hand? If you did, try changing its default value back to nil.")))))

(defun ado-check-a-directory (a-dir-name)
  "Validate the directory A-DIR-NAME.

First looks to see if the directory contained in A-DIR-NAME is non-nil,
then checks if the contents is a real existing directory. Returns the
proper directory name if correct, otherwise throws an error."
  (let ((a-dir (eval a-dir-name t)))
	(if a-dir
		(progn
		 (setq a-dir (file-name-as-directory a-dir))
		 (if (file-exists-p a-dir)
			 a-dir
		   (error "%s" (concat (symbol-name a-dir-name) "'s value: " a-dir " does not exist."))
;		   (message a-dir-name)
		   ))
	  (error "%s" (concat (symbol-name a-dir-name) " is nil")))))

;; should run this only if a region is not selected. If a region is selected the text
;; of the region should be used.

(defun ado-stata-help (&optional at-point)
  "Open Stata help for the command at the current line.
If the optional argument AT-POINT is non-nil, open help for the command at point."
  (interactive)
  (if at-point
	  (ado-help-at-point-to-clip)
	(ado-help-command-to-clip))
  (ado-send-clip-to-stata ado-submit-default))

(defun ado-help-at-point ()
  "Open Stata help for the command at point."
  (interactive)
  (ado-stata-help t))

(defun ado-help-command ()
  "Open Stataq help for the command at the current line."
  (interactive)
  (ado-stata-help))

(defun ado-send-buffer-to-stata (&optional as-default)
  "Send buffer to Stata using a do-file.
By default, sends entire buffer to Stata in the way that the
do-file editor does: If the file has been saved, send a
'do whatever' command to the command window, otherwise send via 'do tmpfile'.
If AS-DEFAULT is t, just send everything via the default method."
  (interactive)
  (let (dowhat)
	(if as-default
		(setq dowhat ado-submit-default)
	  (setq dowhat "dofile"))
	(if (string= dowhat "dofile")
		(if (buffer-modified-p)
			(ado-send-command-to-dofile t)
		  ;; bad behavior, because it overwrites the pasteboard
		  (let ((select-enable-clipboard t))
			;; (message "Want to call `do %s'" (buffer-file-name))
			(funcall interprogram-cut-function (concat "do \"" (buffer-file-name) "\""))
			(ado-send-clip-to-stata "command" ado-comeback-flag)))
	  (ado-send-command-to-stata t))))

(defun ado-input-to-stata ()
  "Send a command from the minibuffer to Stata.
Has the unfortunate side-effect of placing the command on the clipboard."
  (interactive)
  (let ((select-enable-clipboard t))
	(funcall interprogram-cut-function (read-from-minibuffer "Command to run? "))
	(ado-send-clip-to-stata ado-submit-default ado-comeback-flag)))

(defun ado-reset-tcc ()
  "Use tccutil to reset Emacs'/Aquamacs' ability to send code, in 
the hopes of having the next attempt bring up the needed system dialogs."
  (interactive)
  (if (boundp 'aquamacs-version)
	  (shell-command "tccutil reset All org.gnu.Aquamacs")
	(shell-command "tccutil reset All org.gnu.Emacs")))

(provide 'ado-to-stata)
;;; ado-to-stata ends here
