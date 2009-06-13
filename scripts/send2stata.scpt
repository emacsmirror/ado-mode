FasdUAS 1.101.10   ��   ��    k             l      ��  ��    F @ need some method for working with multiple instances of Stata.      � 	 	 �   n e e d   s o m e   m e t h o d   f o r   w o r k i n g   w i t h   m u l t i p l e   i n s t a n c e s   o f   S t a t a .     
  
 l      ��  ��    ? 9 currently bombs if there are multiple instances running      �   r   c u r r e n t l y   b o m b s   i f   t h e r e   a r e   m u l t i p l e   i n s t a n c e s   r u n n i n g        i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 args  ��    k    ;       l     ��  ��      set args to {"menu"}     �   *   s e t   a r g s   t o   { " m e n u " }      l     ��  ��     - initializations     �   " -   i n i t i a l i z a t i o n s       l     ��������  ��  ��      ! " ! l     ��������  ��  ��   "  # $ # q       % % �� &�� 0 numargs numArgs & �� '�� 0 pasteme pasteMe ' �� (�� 0 dothis doThis ( ������ 0 	tmpdofile 	tmpDoFile��   $  ) * ) q       + + �� ,�� 0 howmany howMany , ������ 0 oldclipboard oldClipBoard��   *  - . - q       / / ������ $0 defaulttmpdofile defaultTmpDoFile��   .  0 1 0 r      2 3 2 m      4 4 � 5 5  f e e d S t a t a . d o 3 o      ���� $0 defaulttmpdofile defaultTmpDoFile 1  6 7 6 l   ��������  ��  ��   7  8 9 8 l   �� : ;��   : ' ! check proper number of arguments    ; � < < B   c h e c k   p r o p e r   n u m b e r   o f   a r g u m e n t s 9  = > = r    	 ? @ ? l    A���� A n     B C B 1    ��
�� 
leng C o    ���� 0 args  ��  ��   @ o      ���� 0 numargs numArgs >  D E D Q   
 U F G H F k    H I I  J K J r     L M L n     N O N 4    �� P
�� 
cobj P m    ����  O o    ���� 0 args   M o      ���� 0 dothis doThis K  Q R Q Z    ' S T���� S H     U U E     V W V J     X X  Y Z Y m     [ [ � \ \  c o m m a n d Z  ]�� ] m     ^ ^ � _ _  m e n u��   W o    ���� 0 dothis doThis T n   # ` a ` I    #�������� 0 badfirstarg badFirstArg��  ��   a  f    ��  ��   R  b�� b Z   ( H c d�� e c ?   ( + f g f o   ( )���� 0 numargs numArgs g m   ) *����  d k   . B h h  i j i r   . 4 k l k n   . 2 m n m 4   / 2�� o
�� 
cobj o m   0 1����  n o   . /���� 0 args   l o      ���� 0 	tmpdofile 	tmpDoFile j  p�� p Z   5 B q r���� q =   5 8 s t s o   5 6���� 0 	tmpdofile 	tmpDoFile t m   6 7 u u � v v   r r   ; > w x w o   ; <���� $0 defaulttmpdofile defaultTmpDoFile x o      ���� 0 	tmpdofile 	tmpDoFile��  ��  ��  ��   e r   E H y z y o   E F���� $0 defaulttmpdofile defaultTmpDoFile z o      ���� 0 	tmpdofile 	tmpDoFile��   G R      ������
�� .ascrerr ****      � ****��  ��   H l  P U { | } { n  P U ~  ~ I   Q U�������� 0 badfirstarg badFirstArg��  ��     f   P Q |   no arguments    } � � �    n o   a r g u m e n t s E  � � � l  V V��������  ��  ��   �  � � � l  V V�� � ���   � U O grab clipboard, strip totally blank lines, to check if there is anything to do    � � � � �   g r a b   c l i p b o a r d ,   s t r i p   t o t a l l y   b l a n k   l i n e s ,   t o   c h e c k   i f   t h e r e   i s   a n y t h i n g   t o   d o �  � � � l  V V�� � ���   � 9 3   Aside: perhaps this should be on the emacs side?    � � � � f       A s i d e :   p e r h a p s   t h i s   s h o u l d   b e   o n   t h e   e m a c s   s i d e ? �  � � � l  V V�� � ���   � X R   for now it will stay here... could be wrong behavior, plus it is simpler to do     � � � � �       f o r   n o w   i t   w i l l   s t a y   h e r e . . .   c o u l d   b e   w r o n g   b e h a v i o r ,   p l u s   i t   i s   s i m p l e r   t o   d o   �  � � � l  V V�� � ���   �       in Applescript (!)    � � � � .           i n   A p p l e s c r i p t   ( ! ) �  � � � r   V b � � � n  V ` � � � I   W `�� ����� "0 stripblanklines stripBlankLines �  ��� � I  W \������
�� .JonsgClp****    ��� null��  ��  ��  ��   �  f   V W � o      ���� 0 pasteme pasteMe �  � � � Z   c { � ����� � =   c f � � � o   c d���� 0 pasteme pasteMe � m   d e � � � � �   � O   i w � � � I  m v�� � �
�� .sysodlogaskr        TEXT � m   m n � � � � � , N o t h i n g   t o   s e n d   S t a t a ! � �� ���
�� 
btns � J   o r � �  ��� � m   o p � � � � �  C a n c e l��  ��   � m   i j � ��                                                                                  MACS   alis    h  	Tucholsky                  �SlfH+   	�
Finder.app                                                      	��2H
        ����  	                CoreServices    �S��      �2�Z     	� 	Y� 	Y  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l  | |��������  ��  ��   �  � � � l  | |�� � ���   � / ) write information to tmpDoFile if needed    � � � � R   w r i t e   i n f o r m a t i o n   t o   t m p D o F i l e   i f   n e e d e d �  � � � Z   | � ������� � =  | � � � � o   | }���� 0 dothis doThis � m   } � � � � � �  m e n u��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � S M in the best of worlds, it would be possible to loop through the instances of    � � � � �   i n   t h e   b e s t   o f   w o r l d s ,   i t   w o u l d   b e   p o s s i b l e   t o   l o o p   t h r o u g h   t h e   i n s t a n c e s   o f �  � � � l  � ��� � ���   � 5 /   Stata to send the same code to each instance    � � � � ^       S t a t a   t o   s e n d   t h e   s a m e   c o d e   t o   e a c h   i n s t a n c e �  � � � O   � � � � � r   � � � � � l  � � ����� � 6  � � � � � 2   � ���
�� 
prcs � E   � � � � � 1   � ���
�� 
pnam � m   � � � � � � � 
 S t a t a��  ��   � o      ���� 0 	thestatas 	theStatas � m   � � � ��                                                                                  sevs   alis    �  	Tucholsky                  �SlfH+   	�System Events.app                                               
/�2G�        ����  	                CoreServices    �S��      �2�     	� 	Y� 	Y  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 	thestatas 	theStatas��  ��  ��   � o      ���� 0 howmany howMany �  � � � Z   �	 � ��� � � =  � � � � � o   � ����� 0 howmany howMany � m   � �����   � O   � � � � � k   � � � �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � " N o   S t a t a   r u n n i n g ! � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  C a n c e l��  ��  ��   � m   � � � ��                                                                                  MACS   alis    h  	Tucholsky                  �SlfH+   	�
Finder.app                                                      	��2H
        ����  	                CoreServices    �S��      �2�Z     	� 	Y� 	Y  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��   � k   �	 � �  � � � Z   � � � ����� � ?   � � �  � o   � ��� 0 howmany howMany  m   � ��~�~  � k   � �  O   � � I  � ��}
�} .sysodlogaskr        TEXT m   � � �		 @ n o t h i n g   f o r   m u l t i p l e   s t a t a ' s   y e t �|
�{
�| 
btns
 J   � � �z m   � � �  C a n c e l�z  �{   m   � ��                                                                                  MACS   alis    h  	Tucholsky                  �SlfH+   	�
Finder.app                                                      	��2H
        ����  	                CoreServices    �S��      �2�Z     	� 	Y� 	Y  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��    l  � ��y�y   J D a PITA, because Stata can use the same name for different processes    � �   a   P I T A ,   b e c a u s e   S t a t a   c a n   u s e   t h e   s a m e   n a m e   f o r   d i f f e r e n t   p r o c e s s e s  l  � ��x�x   Q K so... the following code doesn't work. It is here as a reminder and a stub    � �   s o . . .   t h e   f o l l o w i n g   c o d e   d o e s n ' t   w o r k .   I t   i s   h e r e   a s   a   r e m i n d e r   a n d   a   s t u b �w l   � ��v�v  /) tell application "System Events"			set theStatas to (the file of every process whose name contains "Stata")		end tell		repeat with aStata in theStatas			doByFile(theFile, doThis, tmpDoFile)			--- doByFile will need to rely on frontmost applications, which could be dangerous.		end repeat
		    �R   t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 	 s e t   t h e S t a t a s   t o   ( t h e   f i l e   o f   e v e r y   p r o c e s s   w h o s e   n a m e   c o n t a i n s   " S t a t a " )  	 	 e n d   t e l l  	 	 r e p e a t   w i t h   a S t a t a   i n   t h e S t a t a s  	 	 	 d o B y F i l e ( t h e F i l e ,   d o T h i s ,   t m p D o F i l e )  	 	 	 - - -   d o B y F i l e   w i l l   n e e d   t o   r e l y   o n   f r o n t m o s t   a p p l i c a t i o n s ,   w h i c h   c o u l d   b e   d a n g e r o u s .  	 	 e n d   r e p e a t 
 	 	�w  ��  ��   �  l  � ��u�t�s�u  �t  �s    !  l  � ��r"#�r  " : 4 know there is exactly one instance of Stata running   # �$$ h   k n o w   t h e r e   i s   e x a c t l y   o n e   i n s t a n c e   o f   S t a t a   r u n n i n g! %&% l  � ��q'(�q  '   can finally get to work   ( �)) 0   c a n   f i n a l l y   g e t   t o   w o r k& *�p* O   �	+,+ r   �-.- l  �/�o�n/ l  �0�m�l0 n   �121 1   �k
�k 
pnam2 l  � 3�j�i3 n   � 454 4  � �h6
�h 
cobj6 m   � ��g�g 5 o   � ��f�f 0 	thestatas 	theStatas�j  �i  �m  �l  �o  �n  . o      �e�e 0 thestataname theStataName, m   � �77�                                                                                  sevs   alis    �  	Tucholsky                  �SlfH+   	�System Events.app                                               
/�2G�        ����  	                CoreServices    �S��      �2�     	� 	Y� 	Y  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �p   � 898 l 

�d�c�b�d  �c  �b  9 :;: l 

�a<=�a  < : 4 without the following, things get really strange...   = �>> h   w i t h o u t   t h e   f o l l o w i n g ,   t h i n g s   g e t   r e a l l y   s t r a n g e . . .; ?@? O  
ABA I �`�_�^
�` .miscactvnull��� ��� null�_  �^  B 4  
�]C
�] 
cappC o  �\�\ 0 thestataname theStataName@ DED l �[�Z�Y�[  �Z  �Y  E FGF Z  9HI�XJH = !KLK o  �W�W 0 dothis doThisL m   MM �NN  m e n uI n $-OPO I  %-�VQ�U�V 0 domenu doMenuQ RSR o  %(�T�T 0 thestataname theStataNameS T�ST o  ()�R�R 0 	tmpdofile 	tmpDoFile�S  �U  P  f  $%�X  J I  09�QU�P�Q 0 pastetmpstata pasteTmpStataU VWV o  14�O�O 0 thestataname theStataNameW X�NX o  45�M�M 0 pasteme pasteMe�N  �P  G Y�LY l ::�K�J�I�K  �J  �I  �L    Z[Z l     �H�G�F�H  �G  �F  [ \]\ i    ^_^ I      �E�D�C�E 0 badfirstarg badFirstArg�D  �C  _ O     `a` I   �Bbc
�B .sysodlogaskr        TEXTb m    dd �ee \ T h e   f i r s t   a r g u m e n t   m u s t   b e   " c o m m a n d "   o r   " m e n u "c �Af�@
�A 
btnsf J    	gg h�?h m    ii �jj  C a n c e l�?  �@  a m     kk�                                                                                  MACS   alis    h  	Tucholsky                  �SlfH+   	�
Finder.app                                                      	��2H
        ����  	                CoreServices    �S��      �2�Z     	� 	Y� 	Y  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ] lml l     �>�=�<�>  �=  �<  m non i    pqp I      �;r�:�; 0 domenu doMenur sts o      �9�9 0 	stataname 	stataNamet u�8u o      �7�7 0 	tmpdofile 	tmpDoFile�8  �:  q k     �vv wxw l     �6yz�6  y K E if multiple instances ever work, be sure this gets written just once   z �{{ �   i f   m u l t i p l e   i n s t a n c e s   e v e r   w o r k ,   b e   s u r e   t h i s   g e t s   w r i t t e n   j u s t   o n c ex |}| r     ~~ I    �5��4
�5 .sysoexecTEXT���     TEXT� m     �� ��� 8 g e t c o n f   D A R W I N _ U S E R _ T E M P _ D I R�4   o      �3�3 
0 tmpdir  } ��� r    ��� l   ��2�1� b    ��� o    	�0�0 
0 tmpdir  � o   	 
�/�/ 0 	tmpdofile 	tmpDoFile�2  �1  � o      �.�. 0 	tmpdofile 	tmpDoFile� ��� l   �-���-  � < 6 need applescript-style file name to write to the file   � ��� l   n e e d   a p p l e s c r i p t - s t y l e   f i l e   n a m e   t o   w r i t e   t o   t h e   f i l e� ��� r    ��� 4    �,�
�, 
psxf� o    �+�+ 0 	tmpdofile 	tmpDoFile� o      �*�* "0 stupidapplefile stupidAppleFile� ��� Q    a���� k    A�� ��� I   �)��
�) .rdwropenshor       file� o    �(�( "0 stupidapplefile stupidAppleFile� �'��&
�' 
perm� m    �%
�% boovtrue�&  � ��� I    '�$��
�$ .rdwrseofnull���     ****� o     !�#�# "0 stupidapplefile stupidAppleFile� �"��!
�" 
set2� m   " #� �   �!  � ��� I  ( 3���
� .rdwrwritnull���     ****� l  ( -���� I  ( -���
� .JonsgClp****    ��� null�  �  �  �  � ���
� 
refn� o   . /�� "0 stupidapplefile stupidAppleFile�  � ��� I  4 ;���
� .rdwrwritnull���     ****� o   4 5�
� 
ret � ���
� 
refn� o   6 7�� "0 stupidapplefile stupidAppleFile�  � ��� I  < A���
� .rdwrclosnull���     ****� o   < =�� "0 stupidapplefile stupidAppleFile�  �  � R      ���
� .ascrerr ****      � ****�  �  � k   I a�� ��� I  I N�
��	
�
 .rdwrclosnull���     ****� o   I J�� "0 stupidapplefile stupidAppleFile�	  � ��� O   O a��� I  S `���
� .sysodlogaskr        TEXT� m   S T�� ��� L H a d   t r o u b l e   w i t h   t h e   t e m p o r a r y   d o - f i l e� ���
� 
btns� J   W \�� ��� m   W Z�� ���  C a n c e l�  �  � m   O P���                                                                                  MACS   alis    h  	Tucholsky                  �SlfH+   	�
Finder.app                                                      	��2H
        ����  	                CoreServices    �S��      �2�Z     	� 	Y� 	Y  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �  � ��� l  b b����  � #  applescript really is a pita   � ��� :   a p p l e s c r i p t   r e a l l y   i s   a   p i t a� ��� O   b q��� I  k p�� ��
� .miscactvnull��� ��� null�   ��  � 4   b h���
�� 
capp� o   f g���� 0 	stataname 	stataName� ��� l  r r��������  ��  ��  � ���� Q   r ����� I   u {������� 0 
dotmpstata 
doTmpStata� ���� o   v w���� 0 	stataname 	stataName��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   � ��� ��� I   � �������� "0 createmenuitems createMenuItems� ��� o   � ����� 0 	stataname 	stataName� ���� o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  � ��� l  � �������  � 8 2 need to be sure the menu item exists on first try   � ��� d   n e e d   t o   b e   s u r e   t h e   m e n u   i t e m   e x i s t s   o n   f i r s t   t r y� ��� I  � ������
�� .sysodelanull��� ��� nmbr� m   � ����� ��  � ���� Q   � ����� I   � �������� 0 
dotmpstata 
doTmpStata� ���� o   � ����� 0 	stataname 	stataName��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � O   � ���� I  � �����
�� .sysodlogaskr        TEXT� m   � ��� ��� v S o m e t h i n g   w e n t   w r o n g . . .   i s   y o u r   s t a t a   v e r s i o n   s e t   p r o p e r l y ?� �����
�� 
btns� J   � ��� ���� m   � ��� ���  C a n c e l��  ��  � m   � ����                                                                                  MACS   alis    h  	Tucholsky                  �SlfH+   	�
Finder.app                                                      	��2H
        ����  	                CoreServices    �S��      �2�Z     	� 	Y� 	Y  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��  o ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 
dotmpstata 
doTmpStata� ���� o      ���� 0 	stataname 	stataName��  ��  � O     /��� Z    .� ����� 1    ��
�� 
uien  O    * I   )����
�� .prcsclicuiel    ��� uiel n    % 4   " %��
�� 
menI m   # $ �  r u n   t m p   f i l e n    "	
	 4    "��
�� 
menE m     !���� 
 n     4    ��
�� 
menI m     � & A p p l e s c r i p t   h e l p e r s n     4    ��
�� 
menE m    ����  n     4    ��
�� 
mbri m     �  U s e r 4    ��
�� 
mbar m    ���� ��   4    ��
�� 
pcap o    ���� 0 	stataname 	stataName��  ��  � m     �                                                                                  sevs   alis    �  	Tucholsky                  �SlfH+   	�System Events.app                                               
/�2G�        ����  	                CoreServices    �S��      �2�     	� 	Y� 	Y  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �  l     ��������  ��  ��    i     !  I      ��"���� "0 createmenuitems createMenuItems" #$# o      ���� 0 	stataname 	stataName$ %��% o      ���� 0 	tmpdofile 	tmpDoFile��  ��  ! O     3&'& Z    2()����( 1    ��
�� 
uien) O    .*+* k    -,, -.- l   ��/0��  / * $ get the command window to the front   0 �11 H   g e t   t h e   c o m m a n d   w i n d o w   t o   t h e   f r o n t. 232 I   ��45
�� .prcskprsnull���    utxt4 m    66 �77  45 ��8��
�� 
faal8 m    ��
�� eMdsKcmd��  3 9:9 I   !��;��
�� .prcskprsnull���    utxt; b    <=< m    >> �?? r w i n d o w   m e n u   a p p e n d   s u b m e n u   " s t U s e r "   " A p p l e s c r i p t   h e l p e r s "= o    ��
�� 
ret ��  : @��@ I  " -��A��
�� .prcskprsnull���    utxtA b   " )BCB b   " 'DED b   " %FGF m   " #HH �II � w i n d o w   m e n u   a p p e n d   i t e m   " A p p l e s c r i p t   h e l p e r s "   " r u n   t m p   f i l e "   " d o  G o   # $���� 0 	tmpdofile 	tmpDoFileE m   % &JJ �KK  "C o   ' (��
�� 
ret ��  ��  + 4    ��L
�� 
pcapL o    ���� 0 	stataname 	stataName��  ��  ' m     MM�                                                                                  sevs   alis    �  	Tucholsky                  �SlfH+   	�System Events.app                                               
/�2G�        ����  	                CoreServices    �S��      �2�     	� 	Y� 	Y  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   NON l     ��������  ��  ��  O PQP i    RSR I      ��T���� 0 pastetmpstata pasteTmpStataT UVU o      ���� 0 	stataname 	stataNameV W��W o      ���� 0 pasteme pasteMe��  ��  S k     �XX YZY q      [[ ������ 0 oldclipboard oldClipBoard��  Z \]\ r     ^_^ I    ������
�� .JonsgClp****    ��� null��  ��  _ o      ���� 0 oldclipboard oldClipBoard] `a` Q    |bcdb k    Xee fgf I   ��h��
�� .JonspClpnull���     ****h o    ���� 0 pasteme pasteMe��  g i��i O    Xjkj Z    Wlm����l 1    ��
�� 
uienm O    Snon k   # Rpp qrq I  # ,��st
�� .prcskprsnull���    utxts m   # $uu �vv  Mt ��w��
�� 
faalw b   % (xyx m   % &��
�� eMdsKcmdy m   & '��
�� eMdsKsft��  r z{z l  - -��|}��  |  delay 1   } �~~  d e l a y   1{ � I  - 4����
�� .prcskprsnull���    utxt� m   - .�� ���  4� �����
�� 
faal� m   / 0��
�� eMdsKcmd��  � ��� l  5 5������  �  delay 1   � ���  d e l a y   1� ��� I  5 J�����
�� .prcsclicuiel    ��� uiel� n  5 F��� 4   ? F���
�� 
menI� l 	 B E������ m   B E�� ��� 
 P a s t e��  ��  � n   5 ?��� 4   < ?���
�� 
menE� m   = >�� ���  E d i t� n  5 <��� 4   9 <���
�� 
mbri� l 	 : ;������ m   : ;�� ���  E d i t��  ��  � 4   5 9���
�� 
mbar� m   7 8���� ��  � ���� I  K R���~
� .prcskprsnull���    utxt� o   K N�}
�} 
ret �~  ��  o 4     �|�
�| 
pcap� o    �{�{ 0 	stataname 	stataName��  ��  k m    ���                                                                                  sevs   alis    �  	Tucholsky                  �SlfH+   	�System Events.app                                               
/�2G�        ����  	                CoreServices    �S��      �2�     	� 	Y� 	Y  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  ��  c R      �z�y�x
�z .ascrerr ****      � ****�y  �x  d k   ` |�� ��� I  ` e�w��v
�w .JonspClpnull���     ****� o   ` a�u�u 0 oldclipboard oldClipBoard�v  � ��t� O   f |��� I  l {�s��
�s .sysodlogaskr        TEXT� m   l o�� ��� V H a d   t r o u b l e   p a s t i n g   t o   S t a t a   c o m m a n d   w i n d o w� �r��q
�r 
btns� J   r w�� ��p� m   r u�� ���  C a n c e l�p  �q  � m   f i���                                                                                  MACS   alis    h  	Tucholsky                  �SlfH+   	�
Finder.app                                                      	��2H
        ����  	                CoreServices    �S��      �2�Z     	� 	Y� 	Y  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �t  a ��o� I  } ��n��m
�n .JonspClpnull���     ****� o   } ~�l�l 0 oldclipboard oldClipBoard�m  �o  Q ��� l     �k�j�i�k  �j  �i  � ��� i    ��� I      �h��g�h "0 stripblanklines stripBlankLines� ��f� o      �e�e 0 thetext theText�f  �g  � k     i�� ��� q      �� �d��d 0 theparas theParas� �c�b�c 0 thepara thePara�b  � ��� r     ��� l    ��a�`� n     ��� 2   �_
�_ 
cpar� o     �^�^ 0 thetext theText�a  �`  � o      �]�] 0 theparas theParas� ��� r    
��� J    �\�\  � o      �[�[ 0 thecleanstuff theCleanStuff� ��� X    ^��Z�� k    Y�� ��� r    ��� m    �Y
�Y boovtrue� o      �X�X 0 eraseme  � ��� X    I��W�� Z   1 D���V�U� H   1 8�� E  1 7��� J   1 5�� ��� m   1 2�� ���   � ��T� m   2 3�� ���  	�T  � o   5 6�S�S 0 achar aChar� k   ; @�� ��� r   ; >��� m   ; <�R
�R boovfals� o      �Q�Q 0 eraseme  � ��P�  S   ? @�P  �V  �U  �W 0 achar aChar� n   " %��� 2   # %�O
�O 
cha � o   " #�N�N 0 thepara thePara� ��M� Z   J Y���L�K� H   J L�� o   J K�J�J 0 eraseme  � r   O U��� l  O R��I�H� c   O R��� o   O P�G�G 0 thepara thePara� m   P Q�F
�F 
TEXT�I  �H  � l     ��E�D� n      ���  ;   S T� o   R S�C�C 0 thecleanstuff theCleanStuff�E  �D  �L  �K  �M  �Z 0 thepara thePara� o    �B�B 0 theparas theParas� ��� r   _ d� � o   _ `�A
�A 
ret   l     �@�? 1   ` c�>
�> 
txdl�@  �?  � �= L   e i l  e h�<�; c   e h o   e f�:�: 0 thecleanstuff theCleanStuff m   f g�9
�9 
TEXT�<  �;  �=  �  l     �8�7�6�8  �7  �6   	�5	 l     �4�3�2�4  �3  �2  �5       �1
�0�/�.�-�,�1  
 �+�*�)�(�'�&�%�$�#�"�!� ��
�+ .aevtoappnull  �   � ****�* 0 badfirstarg badFirstArg�) 0 domenu doMenu�( 0 
dotmpstata 
doTmpStata�' "0 createmenuitems createMenuItems�& 0 pastetmpstata pasteTmpStata�% "0 stripblanklines stripBlankLines�$ 0 	thestatas 	theStatas�# 0 thestataname theStataName�"  �!  �   �  �   � ���
� .aevtoappnull  �   � ****� 0 args  �   ��������� 0 args  � 0 numargs numArgs� 0 pasteme pasteMe� 0 dothis doThis� 0 	tmpdofile 	tmpDoFile� 0 howmany howMany� 0 oldclipboard oldClipBoard� $0 defaulttmpdofile defaultTmpDoFile $ 4�� [ ^� u���� � � ��
 ��	 � ��� ���� � ����M� ��
� 
leng
� 
cobj� 0 badfirstarg badFirstArg�  �  
� .JonsgClp****    ��� null� "0 stripblanklines stripBlankLines
�
 
btns
�	 .sysodlogaskr        TEXT
� 
prcs  
� 
pnam� 0 	thestatas 	theStatas
� .corecnte****       ****
� .sysobeepnull��� ��� long� 0 thestataname theStataName
� 
capp
� .miscactvnull��� ��� null�  0 domenu doMenu�� 0 pastetmpstata pasteTmpStata�<�E�O��,E�O @��k/E�O��lv� 
)j+ Y hO�k ��l/E�O��  �E�Y hY �E�W X  )j+ O)*j 	k+ 
E�O��  � ���kvl UY hO�a   hY hOa  *a -a [a ,\Za @1E` UO_ j E�O�j  � *j Oa �a kvl UY 6�k � a �a kvl UOPY hOa  _ �k/a ,E` UO*a _ / *j  UO�a !  )_ �l+ "Y *_ �l+ #OP ��_�������� 0 badfirstarg badFirstArg��  ��     kd��i��
�� 
btns
�� .sysodlogaskr        TEXT�� � ���kvl U ��q�������� 0 domenu doMenu�� ����   ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile��   ���������� 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile�� 
0 tmpdir  �� "0 stupidapplefile stupidAppleFile ����������������������������������������������
�� .sysoexecTEXT���     TEXT
�� 
psxf
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� .JonsgClp****    ��� null
�� 
refn
�� .rdwrwritnull���     ****
�� 
ret 
�� .rdwrclosnull���     ****��  ��  
�� 
btns
�� .sysodlogaskr        TEXT
�� 
capp
�� .miscactvnull��� ��� null�� 0 
dotmpstata 
doTmpStata�� "0 createmenuitems createMenuItems
�� .sysodelanull��� ��� nmbr�� ��j E�O��%E�O*�/E�O .��el O��jl O*j �l 	O��l 	O�j W X  �j O� �a a kvl UO*a �/ *j UO *�k+ W :X  *��l+ Okj O *�k+ W X  � a a a kvl U ����������� 0 
dotmpstata 
doTmpStata�� ����   ���� 0 	stataname 	stataName��   ���� 0 	stataname 	stataName ��������������
�� 
uien
�� 
pcap
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicuiel    ��� uiel�� 0� ,*�,E $*�/ *�k/��/�k/��/�k/��/j 
UY hU ��!���� ���� "0 createmenuitems createMenuItems�� ��!�� !  ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile��   ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile  M����6������>��HJ
�� 
uien
�� 
pcap
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���    utxt
�� 
ret �� 4� 0*�,E (*�/ ���l O��%j O�%�%�%j UY hU ��S����"#���� 0 pastetmpstata pasteTmpStata�� ��$�� $  ������ 0 	stataname 	stataName�� 0 pasteme pasteMe��  " �������� 0 	stataname 	stataName�� 0 pasteme pasteMe�� 0 oldclipboard oldClipBoard# ���������u�����������������������������������
�� .JonsgClp****    ��� null
�� .JonspClpnull���     ****
�� 
uien
�� 
pcap
�� 
faal
�� eMdsKcmd
�� eMdsKsft
�� .prcskprsnull���    utxt
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicuiel    ��� uiel
�� 
ret ��  ��  
�� 
btns
�� .sysodlogaskr        TEXT�� �*j  E�O R�j O� D*�,E <*�/ 1����%l 	O���l 	O*�k/��/��/a a /j O_ j 	UY hUW #X  �j Oa  a a a kvl UO�j  �������%&���� "0 stripblanklines stripBlankLines�� ��'�� '  ���� 0 thetext theText��  % �������������� 0 thetext theText�� 0 theparas theParas�� 0 thepara thePara�� 0 thecleanstuff theCleanStuff�� 0 eraseme  �� 0 achar aChar& 
������������������
�� 
cpar
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
cha 
�� 
TEXT
�� 
ret 
�� 
txdl�� j��-E�OjvE�O R�[��l kh eE�O )��-[��l kh ��lv� 
fE�OY h[OY��O� ��&�6FY h[OY��O�*�,FO��& ��(�� (  )) **  ���+
�� 
pcap+ �,,  S t a t a S E �--  S t a t a S E�0  �/  �.  �-  �,   ascr  ��ޭ