FasdUAS 1.101.10   ��   ��    k             l      ��  ��    ( " version 2.1.2 - January 24, 2016      � 	 	 D   v e r s i o n   2 . 1 . 2   -   J a n u a r y   2 4 ,   2 0 1 6     
  
 l      ��  ��    , & sends contents of clipboard to Stata      �   L   s e n d s   c o n t e n t s   o f   c l i p b o a r d   t o   S t a t a        l      ��  ��    U O allows running from command window, as a temporary do-file or via a menu item      �   �   a l l o w s   r u n n i n g   f r o m   c o m m a n d   w i n d o w ,   a s   a   t e m p o r a r y   d o - f i l e   o r   v i a   a   m e n u   i t e m        l      ��  ��    N H applescript bug: single bar in front of "include" causes compile error      �   �   a p p l e s c r i p t   b u g :   s i n g l e   b a r   i n   f r o n t   o f   " i n c l u d e "   c a u s e s   c o m p i l e   e r r o r        l      ��  ��    W Q args are: { "command" | "menu" | "dofile" || "include" } [ name-of-tmp-dofile ]      �   �   a r g s   a r e :   {   " c o m m a n d "   |   " m e n u "   |   " d o f i l e "   | |   " i n c l u d e "   }   [   n a m e - o f - t m p - d o f i l e   ]        i        !   I     �� "��
�� .aevtoappnull  �   � **** " o      ���� 0 args  ��   ! k    � # #  $ % $ l     �� & '��   &  - initializations    ' � ( ( " -   i n i t i a l i z a t i o n s %  ) * ) q       + + �� ,�� 0 numargs numArgs , �� -�� 0 pasteme pasteMe - �� .�� 0 dothis doThis . ������ 0 	tmpdofile 	tmpDoFile��   *  / 0 / q       1 1 �� 2�� 0 howmanystatas howManyStatas 2 �� 3�� 0 	thestatas 	theStatas 3 �� 4�� 0 thestataname theStataName 4 ������ "0 thestataversion theStataVersion��   0  5 6 5 q       7 7 ������ 0 	olddelims 	oldDelims��   6  8 9 8 q       : : ������ $0 defaulttmpdofile defaultTmpDoFile��   9  ; < ; r      = > = m      ? ? � @ @  f e e d S t a t a . d o > o      ���� $0 defaulttmpdofile defaultTmpDoFile <  A B A q     C C ������ 0 uiok UIOK��   B  D E D l   �� F G��   F . ( first check that UI scripting will work    G � H H P   f i r s t   c h e c k   t h a t   U I   s c r i p t i n g   w i l l   w o r k E  I J I O     K L K Z     M N�� O M 1    ��
�� 
uien N r     P Q P m    ��
�� boovtrue Q o      ���� 0 uiok UIOK��   O r     R S R m    ��
�� boovfals S o      ���� 0 uiok UIOK L m     T T�                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   J  U�� U l  � V W X V Z   � Y Z�� [ Y H     \ \ o    ���� 0 uiok UIOK Z O    c ] ^ ] Z   # b _ `�� a _ A   # * b c b l  # ( d���� d n  # ( e f e I   $ (�������� 0 getosxversion getOSXversion��  ��   f  f   # $��  ��   c m   ( )����  ` k   - E g g  h i h I  - 6�� j k
�� .sysodlogaskr        TEXT j m   - . l l � m m � W h e n   S y s t e m   P r e f r e n c e s   o p e n s ,   b e   s u r e   t h a t   ' E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s '   i s   c h e c k e d ,   t h e n   t r y   a g a i n . k �� n��
�� 
btns n J   / 2 o o  p�� p m   / 0 q q � r r  O K��  ��   i  s t s I  7 <������
�� .miscactvnull��� ��� null��  ��   t  u�� u r   = E v w v 4   = A�� x
�� 
xppb x m   ? @ y y � z z H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s w 1   A D��
�� 
xpcp��  ��   a k   H b { {  | } | I  H Q�� ~ 
�� .sysodlogaskr        TEXT ~ m   H I � � � � � W h e n   S y s t e m   P r e f r e n c e s   o p e n s ,   s e l e c t   t h e   P r i v a c y   t a b ,   t h e n   s e l e c t   t h e   A c c e s s i b i l i t y   i t e m   a n d   b e   s u r e   y o u r   v e r s i o n   o f   E m a c s   i s   c h e c k e d .  �� ���
�� 
btns � J   J M � �  ��� � m   J K � � � � �  O K��  ��   }  � � � I  R W������
�� .miscactvnull��� ��� null��  ��   �  ��� � r   X b � � � 4   X ^�� �
�� 
xppb � m   Z ] � � � � � : c o m . a p p l e . p r e f e r e n c e . s e c u r i t y � 1   ^ a��
�� 
xpcp��   ^ m      � ��                                                                                  sprf  alis    t  	Tucholsky                  �Y�H+     �System Preferences.app                                           ������        ����  	                Applications    �Y?�      ���       �  .Tucholsky:Applications: System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p   	 T u c h o l s k y  #Applications/System Preferences.app   / ��  ��   [ k   f� � �  � � � l  f f�� � ���   � ' ! check proper number of arguments    � � � � B   c h e c k   p r o p e r   n u m b e r   o f   a r g u m e n t s �  � � � r   f m � � � l  f k ����� � n   f k � � � 1   g k��
�� 
leng � o   f g���� 0 args  ��  ��   � o      ���� 0 numargs numArgs �  � � � Q   n � � � � � k   q � � �  � � � r   q y � � � n   q w � � � 4   r w�� �
�� 
cobj � m   u v����  � o   q r���� 0 args   � o      ���� 0 dothis doThis �  � � � Z   z � � ����� � H   z � � � E   z � � � � J   z � � �  � � � m   z } � � � � �  c o m m a n d �  � � � m   } � � � � � �  m e n u �  � � � m   � � � � � � �  d o f i l e �  ��� � m   � � � � � � �  i n c l u d e��   � o   � ����� 0 dothis doThis � n  � � � � � I   � ��������� 0 badfirstarg badFirstArg��  ��   �  f   � ���  ��   �  ��� � Z   � � � ��� � � ?   � � � � � o   � ����� 0 numargs numArgs � m   � �����  � k   � � � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 args   � o      ���� 0 	tmpdofile 	tmpDoFile �  ��� � Z   � � � ����� � =   � � � � � o   � ����� 0 	tmpdofile 	tmpDoFile � m   � � � � � � �   � r   � � � � � o   � ����� $0 defaulttmpdofile defaultTmpDoFile � o      ���� 0 	tmpdofile 	tmpDoFile��  ��  ��  ��   � r   � � � � � o   � ����� $0 defaulttmpdofile defaultTmpDoFile � o      ���� 0 	tmpdofile 	tmpDoFile��   � R      ������
�� .ascrerr ****      � ****��  ��   � l  � � � � � � n  � � � � � I   � ��������� 0 badfirstarg badFirstArg��  ��   �  f   � � �   no arguments    � � � �    n o   a r g u m e n t s �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � U O grab clipboard, strip totally blank lines, to check if there is anything to do    � � � � �   g r a b   c l i p b o a r d ,   s t r i p   t o t a l l y   b l a n k   l i n e s ,   t o   c h e c k   i f   t h e r e   i s   a n y t h i n g   t o   d o �  � � � l  � ��� � ���   � 9 3   Aside: perhaps this should be on the emacs side?    � � � � f       A s i d e :   p e r h a p s   t h i s   s h o u l d   b e   o n   t h e   e m a c s   s i d e ? �  � � � l  � ��� � ���   � X R   for now it will stay here... could be wrong behavior, plus it is simpler to do     � � � � �       f o r   n o w   i t   w i l l   s t a y   h e r e . . .   c o u l d   b e   w r o n g   b e h a v i o r ,   p l u s   i t   i s   s i m p l e r   t o   d o   �  � � � l  � ��� � ���   �       in Applescript (!)    � � � � .           i n   A p p l e s c r i p t   ( ! ) �  � � � r   � � � � � n  � � � � � I   � ��� ����� "0 stripblanklines stripBlankLines �  ��� � I  � �������
�� .JonsgClp****    ��� null��  ��  ��  ��   �  f   � � � o      ���� 0 pasteme pasteMe �    Z   � ����� =   � � o   � ����� 0 pasteme pasteMe m   � � �   O   � �	 I  � ���

�� .sysodlogaskr        TEXT
 m   � � � , N o t h i n g   t o   s e n d   S t a t a ! ����
�� 
btns J   � � �� m   � � �  C a n c e l��  ��  	 m   � ��                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��    l  � ���������  ��  ��    l  � �����   \ V in the best of worlds, it would be possible to allow looping through the instances of    � �   i n   t h e   b e s t   o f   w o r l d s ,   i t   w o u l d   b e   p o s s i b l e   t o   a l l o w   l o o p i n g   t h r o u g h   t h e   i n s t a n c e s   o f  l  � ���   5 /   Stata to send the same code to each instance    � ^       S t a t a   t o   s e n d   t h e   s a m e   c o d e   t o   e a c h   i n s t a n c e  !  O   �"#" r   �$%$ l  �&�~�}& 6  �'(' 2   ��|
�| 
prcs( E  )*) 1  �{
�{ 
pnam* m  ++ �,, 
 S t a t a�~  �}  % o      �z�z 0 	thestatas 	theStatas# m   � �--�                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  ! ./. l �y�x�w�y  �x  �w  / 010 r  232 l 4�v�u4 I �t5�s
�t .corecnte****       ****5 o  �r�r 0 	thestatas 	theStatas�s  �v  �u  3 o      �q�q 0 howmanystatas howManyStatas1 676 Z  s89�p:8 = !;<; o  �o�o 0 howmanystatas howManyStatas< m   �n�n  9 O  $>=>= k  *=?? @A@ I */�m�l�k
�m .sysobeepnull��� ��� long�l  �k  A B�jB I 0=�iCD
�i .sysodlogaskr        TEXTC m  03EE �FF " N o   S t a t a   r u n n i n g !D �hG�g
�h 
btnsG J  49HH I�fI m  47JJ �KK  C a n c e l�f  �g  �j  > m  $'LL�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �p  : k  AsMM NON Z  AaPQ�e�dP ?  ADRSR o  AB�c�c 0 howmanystatas howManyStatasS m  BC�b�b Q k  G]TT UVU O  G[WXW I MZ�aYZ
�a .sysodlogaskr        TEXTY m  MP[[ �\\ @ n o t h i n g   f o r   m u l t i p l e   s t a t a ' s   y e tZ �`]�_
�` 
btns] J  QV^^ _�^_ m  QT`` �aa  C a n c e l�^  �_  X m  GJbb�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  V cdc l \\�]ef�]  e : 4 Stata can use the same name for different processes   f �gg h   S t a t a   c a n   u s e   t h e   s a m e   n a m e   f o r   d i f f e r e n t   p r o c e s s e sd hih l \\�\jk�\  j J D so... the it is impossible to cycle through Stata processes by name   k �ll �   s o . . .   t h e   i t   i s   i m p o s s i b l e   t o   c y c l e   t h r o u g h   S t a t a   p r o c e s s e s   b y   n a m ei m�[m l  \\�Zno�Z  n � � tell application "System Events"					set theStatas to (the file of every process whose name contains "Stata")				 end tell				repeat with aStata in theStatas				end repeat
				   o �ppj   t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 	 	 	 s e t   t h e S t a t a s   t o   ( t h e   f i l e   o f   e v e r y   p r o c e s s   w h o s e   n a m e   c o n t a i n s   " S t a t a " )  	 	 	 	   e n d   t e l l  	 	 	 	 r e p e a t   w i t h   a S t a t a   i n   t h e S t a t a s  	 	 	 	 e n d   r e p e a t 
 	 	 	 	�[  �e  �d  O qrq l bb�Yst�Y  s : 4 know there is exactly one instance of Stata running   t �uu h   k n o w   t h e r e   i s   e x a c t l y   o n e   i n s t a n c e   o f   S t a t a   r u n n i n gr vwv l bb�Xxy�X  x   can finally get to work   y �zz 0   c a n   f i n a l l y   g e t   t o   w o r kw {�W{ O  bs|}| r  fr~~ l fp��V�U� l fp��T�S� n  fp��� 1  lp�R
�R 
pnam� l fl��Q�P� n  fl��� 4 gl�O�
�O 
cobj� m  jk�N�N � o  fg�M�M 0 	thestatas 	theStatas�Q  �P  �T  �S  �V  �U   o      �L�L 0 thestataname theStataName} m  bc���                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �W  7 ��� l tt�K�J�I�K  �J  �I  � ��� l tt�H���H  � $  Stata *must* be made active		   � ��� <   S t a t a   * m u s t *   b e   m a d e   a c t i v e 	 	� ��� O  t���� k  x��� ��� r  x���� l x���G�F� n  x���� 1  ~��E
�E 
bnid� l x~��D�C� 4  x~�B�
�B 
prcs� o  |}�A�A 0 thestataname theStataName�D  �C  �G  �F  � o      �@�@ "0 thestataversion theStataVersion� ��� r  ����� n ����� 1  ���?
�? 
txdl� 1  ���>
�> 
ascr� o      �=�= 0 theolddelims theOldDelims� ��� r  ����� J  ���� ��<� m  ���� ���  c o m . s t a t a . s t a t a�<  � n     ��� 1  ���;
�; 
txdl� 1  ���:
�: 
ascr� ��� r  ����� l ����9�8� n  ����� 4 ���7�
�7 
citm� m  ���6�6��� o  ���5�5 "0 thestataversion theStataVersion�9  �8  � o      �4�4 "0 thestataversion theStataVersion� ��� r  ����� o  ���3�3 0 theolddelims theOldDelims� n     ��� 1  ���2
�2 
txdl� 1  ���1
�1 
ascr� ��0� r  ����� m  ���/
�/ boovtrue� n      ��� 1  ���.
�. 
pisf� 4  ���-�
�- 
prcs� l ����,�+� o  ���*�* 0 thestataname theStataName�,  �+  �0  � m  tu���                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  � ��� l ���)�(�'�)  �(  �'  � ��&� Z  �����%�� = ����� o  ���$�$ 0 dothis doThis� m  ���� ���  c o m m a n d� Z  �����#�� @  ����� o  ���"�" "0 thestataversion theStataVersion� m  ���!�! � n ����� I  ��� ���   0 dostatacommand doStataCommand� ��� o  ���� 0 thestataname theStataName� ��� o  ���� 0 pasteme pasteMe�  �  �  f  ���#  � n ����� I  ������ 0 pastetmpstata pasteTmpStata� ��� o  ���� 0 thestataname theStataName� ��� o  ���� 0 pasteme pasteMe�  �  �  f  ���%  � n ����� I  ������ 0 dotmpdofile doTmpDofile� ��� o  ���� 0 thestataname theStataName� ��� o  ���� 0 	tmpdofile 	tmpDoFile� ��� o  ���� 0 dothis doThis�  �  �  f  ���&   W ' !- from test of UI being turned on    X ��� B -   f r o m   t e s t   o f   U I   b e i n g   t u r n e d   o n��    ��� l     ����  �  �  � ��� i    ��� I      ���� 0 badfirstarg badFirstArg�  �  � O     ��� I   �
��
�
 .sysodlogaskr        TEXT� m    �� ��� \ T h e   f i r s t   a r g u m e n t   m u s t   b e   " c o m m a n d "   o r   " m e n u "� �	��
�	 
btns� J    	�� ��� m    �� ���  C a n c e l�  �  � m     ���                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  � ��� l     ����  �  �  � ��� i    ��� I      � �� 0 dotmpdofile doTmpDofile   o      �� 0 	stataname 	stataName  o      � �  0 	tmpdofile 	tmpDoFile �� o      ���� 0 dowhat doWhat��  �  � k       l     ��	
��  	 K E if multiple instances ever work, be sure this gets written just once   
 � �   i f   m u l t i p l e   i n s t a n c e s   e v e r   w o r k ,   b e   s u r e   t h i s   g e t s   w r i t t e n   j u s t   o n c e  q       ���� 
0 tmpdir   ������ "0 stupidapplefile stupidAppleFile��    l     ����   X R need to change this, because it changes the working directory in Stata on the Mac    � �   n e e d   t o   c h a n g e   t h i s ,   b e c a u s e   i t   c h a n g e s   t h e   w o r k i n g   d i r e c t o r y   i n   S t a t a   o n   t h e   M a c  r      I    ����
�� .sysoexecTEXT���     TEXT m      � 8 g e t c o n f   D A R W I N _ U S E R _ T E M P _ D I R��   o      ���� 
0 tmpdir    r     l    ����  b    !"! o    	���� 
0 tmpdir  " o   	 
���� 0 	tmpdofile 	tmpDoFile��  ��   o      ���� 0 	tmpdofile 	tmpDoFile #$# l   ��%&��  % < 6 need applescript-style file name to write to the file   & �'' l   n e e d   a p p l e s c r i p t - s t y l e   f i l e   n a m e   t o   w r i t e   t o   t h e   f i l e$ ()( r    *+* 4    ��,
�� 
psxf, o    ���� 0 	tmpdofile 	tmpDoFile+ o      ���� "0 stupidapplefile stupidAppleFile) -.- Q    a/01/ k    A22 343 I   ��56
�� .rdwropenshor       file5 o    ���� "0 stupidapplefile stupidAppleFile6 ��7��
�� 
perm7 m    ��
�� boovtrue��  4 898 I    '��:;
�� .rdwrseofnull���     ****: o     !���� "0 stupidapplefile stupidAppleFile; ��<��
�� 
set2< m   " #����  ��  9 =>= I  ( 3��?@
�� .rdwrwritnull���     ****? l  ( -A����A I  ( -������
�� .JonsgClp****    ��� null��  ��  ��  ��  @ ��B��
�� 
refnB o   . /���� "0 stupidapplefile stupidAppleFile��  > CDC I  4 ;��EF
�� .rdwrwritnull���     ****E o   4 5��
�� 
ret F ��G��
�� 
refnG o   6 7���� "0 stupidapplefile stupidAppleFile��  D H��H I  < A��I��
�� .rdwrclosnull���     ****I o   < =���� "0 stupidapplefile stupidAppleFile��  ��  0 R      ������
�� .ascrerr ****      � ****��  ��  1 k   I aJJ KLK I  I N��M��
�� .rdwrclosnull���     ****M o   I J���� "0 stupidapplefile stupidAppleFile��  L N��N O   O aOPO I  S `��QR
�� .sysodlogaskr        TEXTQ m   S TSS �TT L H a d   t r o u b l e   w i t h   t h e   t e m p o r a r y   d o - f i l eR ��U��
�� 
btnsU J   W \VV W��W m   W ZXX �YY  C a n c e l��  ��  P m   O PZZ�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  . [\[ l  b b��]^��  ] #  applescript really is a pita   ^ �__ :   a p p l e s c r i p t   r e a l l y   i s   a   p i t a\ `a` O   b qbcb I  k p������
�� .miscactvnull��� ��� null��  ��  c 4   b h��d
�� 
cappd o   f g���� 0 	stataname 	stataNamea e��e Z   r fg��hf =   r wiji o   r s���� 0 dowhat doWhatj m   s vkk �ll  m e n ug Q   z �mnom I   } ���p���� 0 	doviamenu 	doViaMenup q��q o   ~ ���� 0 	stataname 	stataName��  ��  n R      ������
�� .ascrerr ****      � ****��  ��  o k   � �rr sts I   � ���u���� "0 createmenuitems createMenuItemsu vwv o   � ����� 0 	stataname 	stataNamew x��x o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  t yzy l  � ���{|��  { 8 2 need to be sure the menu item exists on first try   | �}} d   n e e d   t o   b e   s u r e   t h e   m e n u   i t e m   e x i s t s   o n   f i r s t   t r yz ~~ I  � ������
�� .sysodelanull��� ��� nmbr� m   � ����� ��   ���� Q   � ����� I   � �������� 0 	doviamenu 	doViaMenu� ���� o   � ����� 0 	stataname 	stataName��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � O   � ���� I  � �����
�� .sysodlogaskr        TEXT� m   � ��� ��� v S o m e t h i n g   w e n t   w r o n g . . .   i s   y o u r   s t a t a   v e r s i o n   s e t   p r o p e r l y ?� �����
�� 
btns� J   � ��� ���� m   � ��� ���  C a n c e l��  ��  � m   � ����                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��  h l  � ���� Z   � ������ =   � ���� o   � ����� 0 dowhat doWhat� m   � ��� ���  i n c l u d e� Q   � ����� n  � ���� I   � �������� 0 pastetmpstata pasteTmpStata� ��� o   � ����� 0 	stataname 	stataName� ���� b   � ���� m   � ��� ���  i n c l u d e  � o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  �  f   � �� R      ������
�� .ascrerr ****      � ****��  ��  � O   � ���� I  � �����
�� .sysodlogaskr        TEXT� m   � ��� ��� \ H a d   t r o u b l e   r u n n i n g   v i a   t e m p o r a r y   i n c l u d e   f i l e� �����
�� 
btns� J   � ��� ���� m   � ��� ���  C a n c e l��  ��  � m   � ����                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  � l  � ���� Q   � ���� k   ��� ��� l  � �������  � = 7 'open' changes directory as an unavoidable side-effect   � ��� n   ' o p e n '   c h a n g e s   d i r e c t o r y   a s   a n   u n a v o i d a b l e   s i d e - e f f e c t� ��� l  � �������  �   open stupidAppleFile   � ��� *   o p e n   s t u p i d A p p l e F i l e� ���� n  ���� I   �������� 0 pastetmpstata pasteTmpStata� ��� o   � ����� 0 	stataname 	stataName� ���� b   � ��� m   � ��� ���  d o  � o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  �  f   � ���  � R      ������
�� .ascrerr ****      � ****��  ��  � O   ��� I ����
�� .sysodlogaskr        TEXT� m  �� ��� R H a d   t r o u b l e   r u n n i n g   v i a   t e m p o r a r y   d o - f i l e� �����
�� 
btns� J  �� ���� m  �� ���  C a n c e l��  ��  � m  ���                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �   doing via dofile   � ��� "   d o i n g   v i a   d o f i l e� I C doing via dofile or include--- needs fixing for multiple instances   � ��� �   d o i n g   v i a   d o f i l e   o r   i n c l u d e - - -   n e e d s   f i x i n g   f o r   m u l t i p l e   i n s t a n c e s��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������ 0 	doviamenu 	doViaMenu� ��~� o      �}�} 0 	stataname 	stataName�~  �  � O     /��� Z    .���|�{� 1    �z
�z 
uien� O    *��� I   )�y��x
�y .prcsclicnull��� ��� uiel� n    %��� 4   " %�w�
�w 
menI� m   # $�� ���  r u n   t m p   f i l e� n    "��� 4    "�v�
�v 
menE� m     !�u�u � n    ��� 4    �t�
�t 
menI� m    �� ��� & A p p l e s c r i p t   h e l p e r s� n    ��� 4    �s�
�s 
menE� m    �r�r � n    � � 4    �q
�q 
mbri m     �  U s e r  4    �p
�p 
mbar m    �o�o �x  � 4    �n
�n 
pcap o    �m�m 0 	stataname 	stataName�|  �{  � m     �                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �  l     �l�k�j�l  �k  �j   	
	 i     I      �i�h�i "0 createmenuitems createMenuItems  o      �g�g 0 	stataname 	stataName �f o      �e�e 0 	tmpdofile 	tmpDoFile�f  �h   O     G Z    F�d�c 1    �b
�b 
uien O    B k    A  l   �a�a   * $ get the command window to the front    � H   g e t   t h e   c o m m a n d   w i n d o w   t o   t h e   f r o n t  I   #�`�_
�` .prcsclicnull��� ��� uiel n    !  4    �^"
�^ 
menI" m    ## �$$  C o m m a n d! n    %&% 4    �]'
�] 
menE' m    (( �))  W i n d o w& n   *+* 4    �\,
�\ 
mbri, m    -- �..  W i n d o w+ 4    �[/
�[ 
mbar/ m    �Z�Z �_   010 I  $ +�Y2�X
�Y .prcskprsnull���     ctxt2 b   $ '343 m   $ %55 �66 r w i n d o w   m e n u   a p p e n d   s u b m e n u   " s t U s e r "   " A p p l e s c r i p t   h e l p e r s "4 o   % &�W
�W 
ret �X  1 787 I  , 7�V9�U
�V .prcskprsnull���     ctxt9 b   , 3:;: b   , 1<=< b   , />?> m   , -@@ �AA � w i n d o w   m e n u   a p p e n d   i t e m   " A p p l e s c r i p t   h e l p e r s "   " r u n   t m p   f i l e "   " d o  ? o   - .�T�T 0 	tmpdofile 	tmpDoFile= m   / 0BB �CC  "; o   1 2�S
�S 
ret �U  8 D�RD I  8 A�QE�P
�Q .prcskprsnull���     ctxtE b   8 =FGF m   8 ;HH �II & w i n d o w   m e n u   r e f r e s hG o   ; <�O
�O 
ret �P  �R   4    �NJ
�N 
pcapJ o    �M�M 0 	stataname 	stataName�d  �c   m     KK�                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  
 LML l     �L�K�J�L  �K  �J  M NON i    PQP I      �IR�H�I  0 dostatacommand doStataCommandR STS o      �G�G 0 	stataname 	stataNameT U�FU o      �E�E 0 
thecommand 
theCommand�F  �H  Q Q     *VWXV w    YZY O    [\[ k    ]] ^_^ l   �D`a�D  `  		activate   a �bb  	 a c t i v a t e_ c�Cc I   �Bde
�B .STscDoCa****      � ****d o    �A�A 0 
thecommand 
theCommande �@f�?�@ 0 addtoreview addToReviewf m    �>
�> boovtrue�?  �C  \ 4    	�=g
�= 
cappg o    �<�< 0 	stataname 	stataNameZ�                                                                                  S5x8  alis    �  	Tucholsky                  �Y�H+   �aStataMP.app                                                     �����        ����  	                Stata14     �Y?�      � S     �a �N �%   �  GTucholsky:Applications: AAApplications: MathTools: Stata14: StataMP.app     S t a t a M P . a p p   	 T u c h o l s k y  9Applications/AAApplications/MathTools/Stata14/StataMP.app   / ��  W R      �;�:�9
�; .ascrerr ****      � ****�:  �9  X O    *hih I    )�8jk
�8 .sysodlogaskr        TEXTj m     !ll �mm l H a d   t r o u b l e   p a s s i n g   c o m m a n d ( s )   t o   S t a t a   c o m m a n d   w i n d o wk �7n�6
�7 
btnsn J   " %oo p�5p m   " #qq �rr  C a n c e l�5  �6  i m    ss�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  O tut l     �4�3�2�4  �3  �2  u vwv l     �1�0�/�1  �0  �/  w xyx i    z{z I      �.|�-�. 0 pastetmpstata pasteTmpStata| }~} o      �,�, 0 	stataname 	stataName~ �+ o      �*�* 0 pasteme pasteMe�+  �-  { k     ��� ��� q      �� �)�(�) 0 oldclipboard oldClipBoard�(  � ��� r     ��� I    �'�&�%
�' .JonsgClp****    ��� null�&  �%  � o      �$�$ 0 oldclipboard oldClipBoard� ��� Q    ����� k    h�� ��� I   �#��"
�# .JonspClpnull���     ****� l   ��!� � c    ��� o    �� 0 pasteme pasteMe� m    �
� 
ctxt�!  �   �"  � ��� O    h��� Z    g����� 1    �
� 
uien� O    c��� k   % b�� ��� I  % 6���
� .prcsclicnull��� ��� uiel� n  % 2��� 4   / 2��
� 
menI� m   0 1�� ���  C o m m a n d� n   % /��� 4   , /��
� 
menE� m   - .�� ���  W i n d o w� n  % ,��� 4   ) ,��
� 
mbri� m   * +�� ���  W i n d o w� 4   % )��
� 
mbar� m   ' (�� �  � ��� I  7 <���
� .sysodelanull��� ��� nmbr� m   7 8�� ?ə������  � ��� I  = T���
� .prcsclicnull��� ��� uiel� n  = P��� 4   K P��
� 
menI� l 	 L O���� m   L O�� ��� 
 P a s t e�  �  � n   = K��� 4   F K��
� 
menE� m   G J�� ���  E d i t� n  = F��� 4   A F�
�
�
 
mbri� m   B E�� ���  E d i t� 4   = A�	�
�	 
mbar� m   ? @�� �  � ��� l  U U����  � > 8 added delay when seeing odd behavior on machine at work   � ��� p   a d d e d   d e l a y   w h e n   s e e i n g   o d d   b e h a v i o r   o n   m a c h i n e   a t   w o r k� ��� l  U U����  � U O it seems that a delay of under 0.2 seconds makes things weird on fast machines   � ��� �   i t   s e e m s   t h a t   a   d e l a y   o f   u n d e r   0 . 2   s e c o n d s   m a k e s   t h i n g s   w e i r d   o n   f a s t   m a c h i n e s� ��� I  U Z���
� .sysodelanull��� ��� nmbr� m   U V�� ?ə������  � ��� I  [ b���
� .prcskprsnull���     ctxt� o   [ ^� 
�  
ret �  �  � 4    "���
�� 
pcap� o     !���� 0 	stataname 	stataName�  �  � m    ���                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �  � R      ������
�� .ascrerr ****      � ****��  ��  � k   p ��� ��� I  p u�����
�� .JonspClpnull���     ****� o   p q���� 0 oldclipboard oldClipBoard��  � ���� O   v ���� I  | �����
�� .sysodlogaskr        TEXT� m   | �� ��� V H a d   t r o u b l e   p a s t i n g   t o   S t a t a   c o m m a n d   w i n d o w� �����
�� 
btns� J   � ��� ���� m   � ��� ���  C a n c e l��  ��  � m   v y���                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  � ���� I  � ������
�� .JonspClpnull���     ****� o   � ����� 0 oldclipboard oldClipBoard��  ��  y ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� "0 stripblanklines stripBlankLines� ���� o      ���� 0 thetext theText��  ��  � k     i�� ��� q      �� ����� 0 theparas theParas� ����� 0 thepara thePara� ����� 0 achar aChar� ����� 0 thecleanstuff theCleanStuff� ������ 0 eraseme  ��  � ��� r        l    ���� n      2   ��
�� 
cpar o     ���� 0 thetext theText��  ��   o      ���� 0 theparas theParas�  r    
 J    ����   o      ���� 0 thecleanstuff theCleanStuff 	
	 X    ^�� k    Y  r     m    ��
�� boovtrue o      ���� 0 eraseme    X    I�� Z   1 D���� H   1 8 E  1 7 J   1 5  m   1 2 �     ��  m   2 3!! �""  	��   o   5 6���� 0 achar aChar k   ; @## $%$ r   ; >&'& m   ; <��
�� boovfals' o      ���� 0 eraseme  % (��(  S   ? @��  ��  ��  �� 0 achar aChar n   " %)*) 2   # %��
�� 
cha * o   " #���� 0 thepara thePara +��+ Z   J Y,-����, H   J L.. o   J K���� 0 eraseme  - r   O U/0/ l  O R1����1 c   O R232 o   O P���� 0 thepara thePara3 m   P Q��
�� 
TEXT��  ��  0 l     4����4 n      565  ;   S T6 o   R S���� 0 thecleanstuff theCleanStuff��  ��  ��  ��  ��  �� 0 thepara thePara o    ���� 0 theparas theParas
 787 r   _ d9:9 o   _ `��
�� 
ret : l     ;����; 1   ` c��
�� 
txdl��  ��  8 <��< L   e i== l  e h>����> c   e h?@? o   e f���� 0 thecleanstuff theCleanStuff@ m   f g��
�� 
TEXT��  ��  ��  � ABA l     ��������  ��  ��  B C��C i     #DED I      �������� 0 getosxversion getOSXversion��  ��  E k     FF GHG q      II ������ $0 thefullosversion theFullOSVersion��  H JKJ r     LML m     NN �OO  .M l     P����P 1    ��
�� 
txdl��  ��  K QRQ O    STS r   
 UVU l  
 W����W 1   
 ��
�� 
vers��  ��  V o      ���� $0 thefullosversion theFullOSVersionT m    XX�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  R Y��Y L    ZZ n    [\[ 4    ��]
�� 
citm] m    ���� \ o    ���� $0 thefullosversion theFullOSVersion��  ��       ��^_`abcdefgh������������������  ^ ������������������������������������
�� .aevtoappnull  �   � ****�� 0 badfirstarg badFirstArg�� 0 dotmpdofile doTmpDofile�� 0 	doviamenu 	doViaMenu�� "0 createmenuitems createMenuItems��  0 dostatacommand doStataCommand�� 0 pastetmpstata pasteTmpStata�� "0 stripblanklines stripBlankLines�� 0 getosxversion getOSXversion�� 0 theolddelims theOldDelims��  ��  ��  ��  ��  ��  ��  ��  _ �� !����ij��
�� .aevtoappnull  �   � ****�� 0 args  ��  i ��������~�}�|�{�z�y�x�w�� 0 args  �� 0 numargs numArgs�� 0 pasteme pasteMe� 0 dothis doThis�~ 0 	tmpdofile 	tmpDoFile�} 0 howmanystatas howManyStatas�| 0 	thestatas 	theStatas�{ 0 thestataname theStataName�z "0 thestataversion theStataVersion�y 0 	olddelims 	oldDelims�x $0 defaulttmpdofile defaultTmpDoFile�w 0 uiok UIOKj 8 ? T�v ��u�t l�s q�r�q�p y�o � � ��n�m � � � ��l�k ��j�i�h�g�fk�e+�d�cEJ[`�b�a�`�_��^�]��\�[�Z�Y
�v 
uien�u 0 getosxversion getOSXversion�t 
�s 
btns
�r .sysodlogaskr        TEXT
�q .miscactvnull��� ��� null
�p 
xppb
�o 
xpcp
�n 
leng
�m 
cobj�l �k 0 badfirstarg badFirstArg�j  �i  
�h .JonsgClp****    ��� null�g "0 stripblanklines stripBlankLines
�f 
prcsk  
�e 
pnam
�d .corecnte****       ****
�c .sysobeepnull��� ��� long
�b 
bnid
�a 
ascr
�` 
txdl�_ 0 theolddelims theOldDelims
�^ 
citm
�] 
pisf�\ �[  0 dostatacommand doStataCommand�Z 0 pastetmpstata pasteTmpStata�Y 0 dotmpdofile doTmpDofile����E�O� *�,E eE�Y fE�UO� I� A)j+ � ���kvl 	O*j 
O*��/*�,FY ���kvl 	O*j 
O*�a /*�,FUY��a ,E�O R�a k/E�Oa a a a a v� 
)j+ Y hO�k �a l/E�O�a   �E�Y hY �E�W X  )j+ O)*j k+ E�O�a   a  a  �a !kvl 	UY hO� *a "-a #[a $,\Za %@1E�UO�j &E�O�j  a  *j 'Oa (�a )kvl 	UY 4�k a  a *�a +kvl 	UOPY hO� �a k/a $,E�UO� J*a "�/a ,,E�O_ -a .,E` /Oa 0kv_ -a .,FO�a 1i/E�O_ /_ -a .,FOe*a "�/a 2,FUO�a 3  �a 4 )��l+ 5Y 	)��l+ 6Y 
)���m+ 7` �X��W�Vlm�U�X 0 badfirstarg badFirstArg�W  �V  l  m ���T��S
�T 
btns
�S .sysodlogaskr        TEXT�U � ���kvl Ua �R��Q�Pno�O�R 0 dotmpdofile doTmpDofile�Q �Np�N p  �M�L�K�M 0 	stataname 	stataName�L 0 	tmpdofile 	tmpDoFile�K 0 dowhat doWhat�P  n �J�I�H�G�F�J 0 	stataname 	stataName�I 0 	tmpdofile 	tmpDoFile�H 0 dowhat doWhat�G 
0 tmpdir  �F "0 stupidapplefile stupidAppleFileo #�E�D�C�B�A�@�?�>�=�<�;�:�9ZS�8X�7�6�5k�4�3�2�����1�����
�E .sysoexecTEXT���     TEXT
�D 
psxf
�C 
perm
�B .rdwropenshor       file
�A 
set2
�@ .rdwrseofnull���     ****
�? .JonsgClp****    ��� null
�> 
refn
�= .rdwrwritnull���     ****
�< 
ret 
�; .rdwrclosnull���     ****�:  �9  
�8 
btns
�7 .sysodlogaskr        TEXT
�6 
capp
�5 .miscactvnull��� ��� null�4 0 	doviamenu 	doViaMenu�3 "0 createmenuitems createMenuItems
�2 .sysodelanull��� ��� nmbr�1 0 pastetmpstata pasteTmpStata�O!�j E�O��%E�O*�/E�O .��el O��jl O*j �l 	O��l 	O�j W X  �j O� �a a kvl UO*a �/ *j UO�a   I *�k+ W :X  *��l+ Okj O *�k+ W X  � a a a kvl UY a�a   / )�a �%l+ W X  � a a a kvl UY , )�a  �%l+ W X  � a !a a "kvl Ub �0��/�.qr�-�0 0 	doviamenu 	doViaMenu�/ �,s�, s  �+�+ 0 	stataname 	stataName�.  q �*�* 0 	stataname 	stataNamer �)�(�'�&�%�$���#
�) 
uien
�( 
pcap
�' 
mbar
�& 
mbri
�% 
menE
�$ 
menI
�# .prcsclicnull��� ��� uiel�- 0� ,*�,E $*�/ *�k/��/�k/��/�k/��/j 
UY hUc �"�!� tu��" "0 createmenuitems createMenuItems�! �v� v  ��� 0 	stataname 	stataName� 0 	tmpdofile 	tmpDoFile�   t ��� 0 	stataname 	stataName� 0 	tmpdofile 	tmpDoFileu K����-�(�#�5��@BH
� 
uien
� 
pcap
� 
mbar
� 
mbri
� 
menE
� 
menI
� .prcsclicnull��� ��� uiel
� 
ret 
� .prcskprsnull���     ctxt� H� D*�,E <*�/ 1*�k/��/��/��/j 
O��%j O�%�%�%j Oa �%j UY hUd �Q��wx��  0 dostatacommand doStataCommand� �y� y  ��
� 0 	stataname 	stataName�
 0 
thecommand 
theCommand�  w �	��	 0 	stataname 	stataName� 0 
thecommand 
theCommandx Z�����sl�q�
� 
capp� 0 addtoreview addToReview
� .STscDoCa****      � ****�  �  
� 
btns
� .sysodlogaskr        TEXT� + �Z*�/ 	��el UW X  � ���kvl 
Ue � {����z{���  0 pastetmpstata pasteTmpStata�� ��|�� |  ������ 0 	stataname 	stataName�� 0 pasteme pasteMe��  z �������� 0 	stataname 	stataName�� 0 pasteme pasteMe�� 0 oldclipboard oldClipBoard{ ���������������������������������������������
�� .JonsgClp****    ��� null
�� 
ctxt
�� .JonspClpnull���     ****
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
�� .prcsclicnull��� ��� uiel
�� .sysodelanull��� ��� nmbr
�� 
ret 
�� .prcskprsnull���     ctxt��  ��  
�� 
btns
�� .sysodlogaskr        TEXT�� �*j  E�O b��&j O� R*�,E J*�/ ?*�k/��/��/��/j O�j O*�k/�a /�a /�a /j O�j O_ j UY hUW #X  �j Oa  a a a kvl UO�j f �������}~���� "0 stripblanklines stripBlankLines�� ����   ���� 0 thetext theText��  } �������������� 0 thetext theText�� 0 theparas theParas�� 0 thepara thePara�� 0 achar aChar�� 0 thecleanstuff theCleanStuff�� 0 eraseme  ~ 
����������!������
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
txdl�� j��-E�OjvE�O R�[��l kh eE�O )��-[��l kh ��lv� 
fE�OY h[OY��O� ��&�6FY h[OY��O�*�,FO��&g ��E���������� 0 getosxversion getOSXversion��  ��  � ���� $0 thefullosversion theFullOSVersion� N��X����
�� 
txdl
�� 
vers
�� 
citm�� �*�,FO� *�,E�UO��l/Eh ���  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ