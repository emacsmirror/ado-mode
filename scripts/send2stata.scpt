FasdUAS 1.101.10   ��   ��    k             l      ��  ��    F @ need some method for working with multiple instances of Stata.      � 	 	 �   n e e d   s o m e   m e t h o d   f o r   w o r k i n g   w i t h   m u l t i p l e   i n s t a n c e s   o f   S t a t a .     
  
 l      ��  ��    ? 9 currently bombs if there are multiple instances running      �   r   c u r r e n t l y   b o m b s   i f   t h e r e   a r e   m u l t i p l e   i n s t a n c e s   r u n n i n g        i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 args  ��    k    r       l     ��  ��      set args to {"menu"}     �   *   s e t   a r g s   t o   { " m e n u " }      l     ��  ��     - initializations     �   " -   i n i t i a l i z a t i o n s       l     �� ! "��   !  set args to {"command"}    " � # # . s e t   a r g s   t o   { " c o m m a n d " }    $ % $ q       & & �� '�� 0 numargs numArgs ' �� (�� 0 pasteme pasteMe ( �� )�� 0 dothis doThis ) ������ 0 	tmpdofile 	tmpDoFile��   %  * + * q       , , ������ 0 howmany howMany��   +  - . - q       / / ������ $0 defaulttmpdofile defaultTmpDoFile��   .  0 1 0 r      2 3 2 m      4 4 � 5 5  f e e d S t a t a . d o 3 o      ���� $0 defaulttmpdofile defaultTmpDoFile 1  6 7 6 q     8 8 ������ 0 noui noUI��   7  9 : 9 l   �� ; <��   ; . ( first check that UI scripting will work    < � = = P   f i r s t   c h e c k   t h a t   U I   s c r i p t i n g   w i l l   w o r k :  > ? > O     @ A @ Z     B C�� D B 1    ��
�� 
uien C r     E F E m    ��
�� boovtrue F o      ���� 0 uiok UIOK��   D r     G H G m    ��
�� boovfals H o      ���� 0 uiok UIOK A m     I I�                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��   ?  J�� J l  r K L M K Z   r N O�� P N H     Q Q o    ���� 0 uiok UIOK O O    < R S R k   # ; T T  U V U I  # ,�� W X
�� .sysodlogaskr        TEXT W m   # $ Y Y � Z Z � W h e n   S y s t e m   P r e f r e n c e s   o p e n s ,   b e   s u r e   t h a t   ' E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s '   i s   c h e c k e d ,   t h e n   t r y   a g a i n . X �� [��
�� 
btns [ J   % ( \ \  ]�� ] m   % & ^ ^ � _ _  O K��  ��   V  ` a ` I  - 2������
�� .miscactvnull��� ��� null��  ��   a  b�� b r   3 ; c d c 4   3 7�� e
�� 
xppb e m   5 6 f f � g g H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s d 1   7 :��
�� 
xpcp��   S m      h h�                                                                                  sprf   alis    j  Malcom                     �ꫣH+   	System Preferences.app                                          좿�5�        ����  	                Applications    ����      ���     	  *Malcom:Applications:System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p    M a l c o m  #Applications/System Preferences.app   / ��  ��   P k   ?r i i  j k j l  ? ?�� l m��   l ' ! check proper number of arguments    m � n n B   c h e c k   p r o p e r   n u m b e r   o f   a r g u m e n t s k  o p o r   ? D q r q l  ? B s���� s n   ? B t u t 1   @ B��
�� 
leng u o   ? @���� 0 args  ��  ��   r o      ���� 0 numargs numArgs p  v w v Q   E � x y z x k   H � { {  | } | r   H N ~  ~ n   H L � � � 4   I L�� �
�� 
cobj � m   J K����  � o   H I���� 0 args    o      ���� 0 dothis doThis }  � � � Z   O d � ����� � H   O X � � E   O W � � � J   O U � �  � � � m   O P � � � � �  c o m m a n d �  ��� � m   P S � � � � �  m e n u��   � o   U V���� 0 dothis doThis � n  [ ` � � � I   \ `�������� 0 badfirstarg badFirstArg��  ��   �  f   [ \��  ��   �  ��� � Z   e � � ��� � � ?   e h � � � o   e f���� 0 numargs numArgs � m   f g����  � k   k � � �  � � � r   k q � � � n   k o � � � 4   l o�� �
�� 
cobj � m   m n����  � o   k l���� 0 args   � o      ���� 0 	tmpdofile 	tmpDoFile �  ��� � Z   r � � ����� � =   r w � � � o   r s���� 0 	tmpdofile 	tmpDoFile � m   s v � � � � �   � r   z } � � � o   z {���� $0 defaulttmpdofile defaultTmpDoFile � o      ���� 0 	tmpdofile 	tmpDoFile��  ��  ��  ��   � r   � � � � � o   � ����� $0 defaulttmpdofile defaultTmpDoFile � o      ���� 0 	tmpdofile 	tmpDoFile��   y R      ������
�� .ascrerr ****      � ****��  ��   z l  � � � � � � n  � � � � � I   � ��������� 0 badfirstarg badFirstArg��  ��   �  f   � � �   no arguments    � � � �    n o   a r g u m e n t s w  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � U O grab clipboard, strip totally blank lines, to check if there is anything to do    � � � � �   g r a b   c l i p b o a r d ,   s t r i p   t o t a l l y   b l a n k   l i n e s ,   t o   c h e c k   i f   t h e r e   i s   a n y t h i n g   t o   d o �  � � � l  � ��� � ���   � 9 3   Aside: perhaps this should be on the emacs side?    � � � � f       A s i d e :   p e r h a p s   t h i s   s h o u l d   b e   o n   t h e   e m a c s   s i d e ? �  � � � l  � ��� � ���   � X R   for now it will stay here... could be wrong behavior, plus it is simpler to do     � � � � �       f o r   n o w   i t   w i l l   s t a y   h e r e . . .   c o u l d   b e   w r o n g   b e h a v i o r ,   p l u s   i t   i s   s i m p l e r   t o   d o   �  � � � l  � ��� � ���   �       in Applescript (!)    � � � � .           i n   A p p l e s c r i p t   ( ! ) �  � � � r   � � � � � n  � � � � � I   � ��� ����� "0 stripblanklines stripBlankLines �  ��� � I  � �������
�� .JonsgClp****    ��� null��  ��  ��  ��   �  f   � � � o      ���� 0 pasteme pasteMe �  � � � Z   � � � ����� � =   � � � � � o   � ����� 0 pasteme pasteMe � m   � � � � � � �   � O   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � , N o t h i n g   t o   s e n d   S t a t a ! � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  C a n c e l��  ��   � m   � � � ��                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � S M in the best of worlds, it would be possible to loop through the instances of    � � � � �   i n   t h e   b e s t   o f   w o r l d s ,   i t   w o u l d   b e   p o s s i b l e   t o   l o o p   t h r o u g h   t h e   i n s t a n c e s   o f �  � � � l  � ��� � ���   � 5 /   Stata to send the same code to each instance    � � � � ^       S t a t a   t o   s e n d   t h e   s a m e   c o d e   t o   e a c h   i n s t a n c e �  � � � O   � � � � � r   � � � � � l  � � ����� � 6  � � � � � 2   � ���
�� 
prcs � E   � � � � � 1   � ���
�� 
pnam � m   � � � � � � � 
 S t a t a��  ��   � o      ���� 0 	thestatas 	theStatas � m   � � � ��                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��   �  �  � l  � ���������  ��  ��     r   � � l  � ����� I  � �����
�� .corecnte****       **** o   � ����� 0 	thestatas 	theStatas��  ��  ��   o      ���� 0 howmany howMany  Z   �B	
��	 =  � � o   � ����� 0 howmany howMany m   � �����  
 O   � k   �
  I  � �������
�� .sysobeepnull��� ��� long��  ��   �� I  �
��
�� .sysodlogaskr        TEXT m   �  � " N o   S t a t a   r u n n i n g ! ��~
� 
btns J   �} m   �  C a n c e l�}  �~  ��   m   � ��                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  ��   k  B   Z  .!"�|�{! ?  #$# o  �z�z 0 howmany howMany$ m  �y�y " k  *%% &'& O  (()( I '�x*+
�x .sysodlogaskr        TEXT* m  ,, �-- @ n o t h i n g   f o r   m u l t i p l e   s t a t a ' s   y e t+ �w.�v
�w 
btns. J  #// 0�u0 m  !11 �22  C a n c e l�u  �v  ) m  33�                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  ' 454 l ))�t67�t  6 J D a PITA, because Stata can use the same name for different processes   7 �88 �   a   P I T A ,   b e c a u s e   S t a t a   c a n   u s e   t h e   s a m e   n a m e   f o r   d i f f e r e n t   p r o c e s s e s5 9:9 l ))�s;<�s  ; Q K so... the following code doesn't work. It is here as a reminder and a stub   < �== �   s o . . .   t h e   f o l l o w i n g   c o d e   d o e s n ' t   w o r k .   I t   i s   h e r e   a s   a   r e m i n d e r   a n d   a   s t u b: >�r> l  ))�q?@�q  ?/) tell application "System Events"			set theStatas to (the file of every process whose name contains "Stata")		end tell		repeat with aStata in theStatas			doByFile(theFile, doThis, tmpDoFile)			--- doByFile will need to rely on frontmost applications, which could be dangerous.		end repeat
		   @ �AAR   t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 	 s e t   t h e S t a t a s   t o   ( t h e   f i l e   o f   e v e r y   p r o c e s s   w h o s e   n a m e   c o n t a i n s   " S t a t a " )  	 	 e n d   t e l l  	 	 r e p e a t   w i t h   a S t a t a   i n   t h e S t a t a s  	 	 	 d o B y F i l e ( t h e F i l e ,   d o T h i s ,   t m p D o F i l e )  	 	 	 - - -   d o B y F i l e   w i l l   n e e d   t o   r e l y   o n   f r o n t m o s t   a p p l i c a t i o n s ,   w h i c h   c o u l d   b e   d a n g e r o u s .  	 	 e n d   r e p e a t 
 	 	�r  �|  �{    BCB l //�p�o�n�p  �o  �n  C DED l //�mFG�m  F : 4 know there is exactly one instance of Stata running   G �HH h   k n o w   t h e r e   i s   e x a c t l y   o n e   i n s t a n c e   o f   S t a t a   r u n n i n gE IJI l //�lKL�l  K   can finally get to work   L �MM 0   c a n   f i n a l l y   g e t   t o   w o r kJ N�kN O  /BOPO r  3AQRQ l 3=S�j�iS l 3=T�h�gT n  3=UVU 1  9=�f
�f 
pnamV l 39W�e�dW n  39XYX 4 69�cZ
�c 
cobjZ m  78�b�b Y o  36�a�a 0 	thestatas 	theStatas�e  �d  �h  �g  �j  �i  R o      �`�` 0 thestataname theStataNameP m  /0[[�                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��  �k   \]\ l CC�_�^�]�_  �^  �]  ] ^_^ l CC�\`a�\  ` : 4 without the following, things get really strange...   a �bb h   w i t h o u t   t h e   f o l l o w i n g ,   t h i n g s   g e t   r e a l l y   s t r a n g e . . ._ cdc O  CTefe I NS�[�Z�Y
�[ .miscactvnull��� ��� null�Z  �Y  f 4  CK�Xg
�X 
cappg o  GJ�W�W 0 thestataname theStataNamed hih l UU�V�U�T�V  �U  �T  i j�Sj Z  Urkl�Rmk = UZnon o  UV�Q�Q 0 dothis doThiso m  VYpp �qq  m e n ul n ]frsr I  ^f�Pt�O�P 0 domenu doMenut uvu o  ^a�N�N 0 thestataname theStataNamev w�Mw o  ab�L�L 0 	tmpdofile 	tmpDoFile�M  �O  s  f  ]^�R  m I  ir�Kx�J�K 0 pastetmpstata pasteTmpStatax yzy o  jm�I�I 0 thestataname theStataNamez {�H{ o  mn�G�G 0 pasteme pasteMe�H  �J  �S   L ' !- from test of UI being turned on    M �|| B -   f r o m   t e s t   o f   U I   b e i n g   t u r n e d   o n��    }~} l     �F�E�D�F  �E  �D  ~ � i    ��� I      �C�B�A�C 0 badfirstarg badFirstArg�B  �A  � O     ��� I   �@��
�@ .sysodlogaskr        TEXT� m    �� ��� \ T h e   f i r s t   a r g u m e n t   m u s t   b e   " c o m m a n d "   o r   " m e n u "� �?��>
�? 
btns� J    	�� ��=� m    �� ���  C a n c e l�=  �>  � m     ���                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  � ��� l     �<�;�:�<  �;  �:  � ��� i    ��� I      �9��8�9 0 domenu doMenu� ��� o      �7�7 0 	stataname 	stataName� ��6� o      �5�5 0 	tmpdofile 	tmpDoFile�6  �8  � k     ��� ��� l     �4���4  � K E if multiple instances ever work, be sure this gets written just once   � ��� �   i f   m u l t i p l e   i n s t a n c e s   e v e r   w o r k ,   b e   s u r e   t h i s   g e t s   w r i t t e n   j u s t   o n c e� ��� r     ��� I    �3��2
�3 .sysoexecTEXT���     TEXT� m     �� ��� 8 g e t c o n f   D A R W I N _ U S E R _ T E M P _ D I R�2  � o      �1�1 
0 tmpdir  � ��� r    ��� l   ��0�/� b    ��� o    	�.�. 
0 tmpdir  � o   	 
�-�- 0 	tmpdofile 	tmpDoFile�0  �/  � o      �,�, 0 	tmpdofile 	tmpDoFile� ��� l   �+���+  � < 6 need applescript-style file name to write to the file   � ��� l   n e e d   a p p l e s c r i p t - s t y l e   f i l e   n a m e   t o   w r i t e   t o   t h e   f i l e� ��� r    ��� 4    �*�
�* 
psxf� o    �)�) 0 	tmpdofile 	tmpDoFile� o      �(�( "0 stupidapplefile stupidAppleFile� ��� Q    a���� k    A�� ��� I   �'��
�' .rdwropenshor       file� o    �&�& "0 stupidapplefile stupidAppleFile� �%��$
�% 
perm� m    �#
�# boovtrue�$  � ��� I    '�"��
�" .rdwrseofnull���     ****� o     !�!�! "0 stupidapplefile stupidAppleFile� � ��
�  
set2� m   " #��  �  � ��� I  ( 3���
� .rdwrwritnull���     ****� l  ( -���� I  ( -���
� .JonsgClp****    ��� null�  �  �  �  � ���
� 
refn� o   . /�� "0 stupidapplefile stupidAppleFile�  � ��� I  4 ;���
� .rdwrwritnull���     ****� o   4 5�
� 
ret � ���
� 
refn� o   6 7�� "0 stupidapplefile stupidAppleFile�  � ��� I  < A���
� .rdwrclosnull���     ****� o   < =�� "0 stupidapplefile stupidAppleFile�  �  � R      ��
�	
� .ascrerr ****      � ****�
  �	  � k   I a�� ��� I  I N���
� .rdwrclosnull���     ****� o   I J�� "0 stupidapplefile stupidAppleFile�  � ��� O   O a��� I  S `���
� .sysodlogaskr        TEXT� m   S T�� ��� L H a d   t r o u b l e   w i t h   t h e   t e m p o r a r y   d o - f i l e� ���
� 
btns� J   W \�� ��� m   W Z�� ���  C a n c e l�  �  � m   O P���                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  �  � ��� l  b b� ���   � #  applescript really is a pita   � ��� :   a p p l e s c r i p t   r e a l l y   i s   a   p i t a� ��� O   b q��� I  k p������
�� .miscactvnull��� ��� null��  ��  � 4   b h���
�� 
capp� o   f g���� 0 	stataname 	stataName� ��� l  r r��������  ��  ��  � ���� Q   r ����� I   u {������� 0 
dotmpstata 
doTmpStata� ���� o   v w���� 0 	stataname 	stataName��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   � ��� ��� I   � �������� "0 createmenuitems createMenuItems� ��� o   � ����� 0 	stataname 	stataName� ���� o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  � ��� l  � ��� ��    8 2 need to be sure the menu item exists on first try    � d   n e e d   t o   b e   s u r e   t h e   m e n u   i t e m   e x i s t s   o n   f i r s t   t r y�  I  � �����
�� .sysodelanull��� ��� nmbr m   � ����� ��   �� Q   � �	 I   � ���
���� 0 
dotmpstata 
doTmpStata
 �� o   � ����� 0 	stataname 	stataName��  ��   R      ������
�� .ascrerr ****      � ****��  ��  	 O   � � I  � ���
�� .sysodlogaskr        TEXT m   � � � v S o m e t h i n g   w e n t   w r o n g . . .   i s   y o u r   s t a t a   v e r s i o n   s e t   p r o p e r l y ? ����
�� 
btns J   � � �� m   � � �  C a n c e l��  ��   m   � ��                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  ��  ��  �  l     ��������  ��  ��    i     I      ������ 0 
dotmpstata 
doTmpStata �� o      ���� 0 	stataname 	stataName��  ��   O     / !  Z    ."#����" 1    ��
�� 
uien# O    *$%$ I   )��&��
�� .prcsclicuiel    ��� uiel& n    %'(' 4   " %��)
�� 
menI) m   # $** �++  r u n   t m p   f i l e( n    ",-, 4    "��.
�� 
menE. m     !���� - n    /0/ 4    ��1
�� 
menI1 m    22 �33 & A p p l e s c r i p t   h e l p e r s0 n    454 4    ��6
�� 
menE6 m    ���� 5 n    787 4    ��9
�� 
mbri9 m    :: �;;  U s e r8 4    ��<
�� 
mbar< m    ���� ��  % 4    ��=
�� 
pcap= o    ���� 0 	stataname 	stataName��  ��  ! m     >>�                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��   ?@? l     ��������  ��  ��  @ ABA i    CDC I      ��E���� "0 createmenuitems createMenuItemsE FGF o      ���� 0 	stataname 	stataNameG H��H o      ���� 0 	tmpdofile 	tmpDoFile��  ��  D O     3IJI Z    2KL����K 1    ��
�� 
uienL O    .MNM k    -OO PQP l   ��RS��  R * $ get the command window to the front   S �TT H   g e t   t h e   c o m m a n d   w i n d o w   t o   t h e   f r o n tQ UVU I   ��WX
�� .prcskprsnull���    utxtW m    YY �ZZ  4X ��[��
�� 
faal[ m    ��
�� eMdsKcmd��  V \]\ I   !��^��
�� .prcskprsnull���    utxt^ b    _`_ m    aa �bb r w i n d o w   m e n u   a p p e n d   s u b m e n u   " s t U s e r "   " A p p l e s c r i p t   h e l p e r s "` o    ��
�� 
ret ��  ] c��c I  " -��d��
�� .prcskprsnull���    utxtd b   " )efe b   " 'ghg b   " %iji m   " #kk �ll � w i n d o w   m e n u   a p p e n d   i t e m   " A p p l e s c r i p t   h e l p e r s "   " r u n   t m p   f i l e "   " d o  j o   # $���� 0 	tmpdofile 	tmpDoFileh m   % &mm �nn  "f o   ' (��
�� 
ret ��  ��  N 4    ��o
�� 
pcapo o    ���� 0 	stataname 	stataName��  ��  J m     pp�                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��  B qrq l     ��������  ��  ��  r sts i    uvu I      ��w���� 0 pastetmpstata pasteTmpStataw xyx o      ���� 0 	stataname 	stataNamey z��z o      ���� 0 pasteme pasteMe��  ��  v k     �{{ |}| q      ~~ ������ 0 oldclipboard oldClipBoard��  } � r     ��� I    ������
�� .JonsgClp****    ��� null��  ��  � o      ���� 0 oldclipboard oldClipBoard� ��� Q    z���� k    V�� ��� I   �����
�� .JonspClpnull���     ****� l   ������ c    ��� o    ���� 0 pasteme pasteMe� m    ��
�� 
ctxt��  ��  ��  � ���� O    V��� Z    U������� 1    ��
�� 
uien� O    Q��� k   % P�� ��� I  % ,����
�� .prcskprsnull���    utxt� m   % &�� ���  4� �����
�� 
faal� m   ' (��
�� eMdsKcmd��  � ��� l  - -������  �  delay 1   � ���  d e l a y   1� ��� I  - @�����
�� .prcsclicuiel    ��� uiel� n  - <��� 4   7 <���
�� 
menI� l 	 8 ;������ m   8 ;�� ��� 
 P a s t e��  ��  � n   - 7��� 4   4 7���
�� 
menE� m   5 6�� ���  E d i t� n  - 4��� 4   1 4���
�� 
mbri� m   2 3�� ���  E d i t� 4   - 1���
�� 
mbar� m   / 0���� ��  � ��� l  A A������  � > 8 added delay when seeing odd behavior on machine at work   � ��� p   a d d e d   d e l a y   w h e n   s e e i n g   o d d   b e h a v i o r   o n   m a c h i n e   a t   w o r k� ��� l  A A������  � U O it seems that a delay of under 0.2 seconds makes things weird on fast machines   � ��� �   i t   s e e m s   t h a t   a   d e l a y   o f   u n d e r   0 . 2   s e c o n d s   m a k e s   t h i n g s   w e i r d   o n   f a s t   m a c h i n e s� ��� I  A H�����
�� .sysodelanull��� ��� nmbr� m   A D�� ?ə�������  � ��� I  I P�~��}
�~ .prcskprsnull���    utxt� o   I L�|
�| 
ret �}  �  � 4    "�{�
�{ 
pcap� o     !�z�z 0 	stataname 	stataName��  ��  � m    ���                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��  ��  � R      �y�x�w
�y .ascrerr ****      � ****�x  �w  � k   ^ z�� ��� I  ^ c�v��u
�v .JonspClpnull���     ****� o   ^ _�t�t 0 oldclipboard oldClipBoard�u  � ��s� O   d z��� I  j y�r��
�r .sysodlogaskr        TEXT� m   j m�� ��� V H a d   t r o u b l e   p a s t i n g   t o   S t a t a   c o m m a n d   w i n d o w� �q��p
�q 
btns� J   p u�� ��o� m   p s�� ���  C a n c e l�o  �p  � m   d g���                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  �s  � ��n� I  { ��m��l
�m .JonspClpnull���     ****� o   { |�k�k 0 oldclipboard oldClipBoard�l  �n  t ��� l     �j�i�h�j  �i  �h  � ��� i    ��� I      �g��f�g "0 stripblanklines stripBlankLines� ��e� o      �d�d 0 thetext theText�e  �f  � k     i�� ��� q      �� �c��c 0 theparas theParas� �b�a�b 0 thepara thePara�a  � ��� r     ��� l    ��`�_� n     ��� 2   �^
�^ 
cpar� o     �]�] 0 thetext theText�`  �_  � o      �\�\ 0 theparas theParas� ��� r    
��� J    �[�[  � o      �Z�Z 0 thecleanstuff theCleanStuff� ��� X    ^��Y�� k    Y�� ��� r    ��� m    �X
�X boovtrue� o      �W�W 0 eraseme  � ��� X    I��V � Z   1 D�U�T H   1 8 E  1 7 J   1 5  m   1 2		 �

    �S m   2 3 �  	�S   o   5 6�R�R 0 achar aChar k   ; @  r   ; > m   ; <�Q
�Q boovfals o      �P�P 0 eraseme   �O  S   ? @�O  �U  �T  �V 0 achar aChar  n   " % 2   # %�N
�N 
cha  o   " #�M�M 0 thepara thePara� �L Z   J Y�K�J H   J L o   J K�I�I 0 eraseme   r   O U l  O R�H�G c   O R o   O P�F�F 0 thepara thePara m   P Q�E
�E 
TEXT�H  �G   l     �D�C n       !   ;   S T! o   R S�B�B 0 thecleanstuff theCleanStuff�D  �C  �K  �J  �L  �Y 0 thepara thePara� o    �A�A 0 theparas theParas� "#" r   _ d$%$ o   _ `�@
�@ 
ret % l     &�?�>& 1   ` c�=
�= 
txdl�?  �>  # '�<' L   e i(( l  e h)�;�:) c   e h*+* o   e f�9�9 0 thecleanstuff theCleanStuff+ m   f g�8
�8 
TEXT�;  �:  �<  � ,-, l     �7�6�5�7  �6  �5  - .�4. l     �3�2�1�3  �2  �1  �4       �0/0123456�/78�.�-�,�+�0  / �*�)�(�'�&�%�$�#�"�!� ���
�* .aevtoappnull  �   � ****�) 0 badfirstarg badFirstArg�( 0 domenu doMenu�' 0 
dotmpstata 
doTmpStata�& "0 createmenuitems createMenuItems�% 0 pastetmpstata pasteTmpStata�$ "0 stripblanklines stripBlankLines�# 0 uiok UIOK�" 0 	thestatas 	theStatas�! 0 thestataname theStataName�   �  �  �  0 � ��9:�
� .aevtoappnull  �   � ****� 0 args  �  9 ��������� 0 args  � 0 numargs numArgs� 0 pasteme pasteMe� 0 dothis doThis� 0 	tmpdofile 	tmpDoFile� 0 howmany howMany� $0 defaulttmpdofile defaultTmpDoFile� 0 noui noUI: + 4 I�� h Y� ^��� f�
�	� � �� ����� � � � ��;� �� ����,1����p����
� 
uien� 0 uiok UIOK
� 
btns
� .sysodlogaskr        TEXT
� .miscactvnull��� ��� null
� 
xppb
�
 
xpcp
�	 
leng
� 
cobj� 0 badfirstarg badFirstArg�  �  
� .JonsgClp****    ��� null� "0 stripblanklines stripBlankLines
� 
prcs;  
� 
pnam�  0 	thestatas 	theStatas
�� .corecnte****       ****
�� .sysobeepnull��� ��� long�� 0 thestataname theStataName
�� 
capp�� 0 domenu doMenu�� 0 pastetmpstata pasteTmpStata�s�E�O� *�,E eE�Y fE�UO� "� ���kvl O*j 	O*��/*�,FUY5��,E�O D��k/E�O�a lv� 
)j+ Y hO�k ��l/E�O�a   �E�Y hY �E�W X  )j+ O)*j k+ E�O�a   a  a �a kvl UY hO� *a -a [a ,\Za @1E` UO_ j  E�O�j  a  *j !Oa "�a #kvl UY 6�k a  a $�a %kvl UOPY hO� _ �k/a ,E` &UO*a '_ &/ *j 	UO�a (  )_ &�l+ )Y *_ &�l+ *1 �������<=���� 0 badfirstarg badFirstArg��  ��  <  = �������
�� 
btns
�� .sysodlogaskr        TEXT�� � ���kvl U2 �������>?���� 0 domenu doMenu�� ��@�� @  ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile��  > ���������� 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile�� 
0 tmpdir  �� "0 stupidapplefile stupidAppleFile? ��������������������������������������������
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
�� .sysodelanull��� ��� nmbr�� ��j E�O��%E�O*�/E�O .��el O��jl O*j �l 	O��l 	O�j W X  �j O� �a a kvl UO*a �/ *j UO *�k+ W :X  *��l+ Okj O *�k+ W X  � a a a kvl U3 ������AB���� 0 
dotmpstata 
doTmpStata�� ��C�� C  ���� 0 	stataname 	stataName��  A ���� 0 	stataname 	stataNameB >��������:����2*��
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
UY hU4 ��D����DE���� "0 createmenuitems createMenuItems�� ��F�� F  ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile��  D ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFileE p����Y������a��km
�� 
uien
�� 
pcap
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���    utxt
�� 
ret �� 4� 0*�,E (*�/ ���l O��%j O�%�%�%j UY hU5 ��v����GH���� 0 pastetmpstata pasteTmpStata�� ��I�� I  ������ 0 	stataname 	stataName�� 0 pasteme pasteMe��  G �������� 0 	stataname 	stataName�� 0 pasteme pasteMe�� 0 oldclipboard oldClipBoardH �����������������������������������������������
�� .JonsgClp****    ��� null
�� 
ctxt
�� .JonspClpnull���     ****
�� 
uien
�� 
pcap
�� 
faal
�� eMdsKcmd
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
�� .sysodelanull��� ��� nmbr
�� 
ret ��  ��  
�� 
btns
�� .sysodlogaskr        TEXT�� �*j  E�O P��&j O� @*�,E 8*�/ -���l 	O*�k/��/��/�a /j Oa j O_ j 	UY hUW #X  �j Oa  a a a kvl UO�j 6 �������JK���� "0 stripblanklines stripBlankLines�� ��L�� L  ���� 0 thetext theText��  J �������������� 0 thetext theText�� 0 theparas theParas�� 0 thepara thePara�� 0 thecleanstuff theCleanStuff�� 0 eraseme  �� 0 achar aCharK 
����������	������
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
fE�OY h[OY��O� ��&�6FY h[OY��O�*�,FO��&
�/ boovtrue7 ��M�� M  NN OO  I��P
�� 
pcapP �QQ  S t a t a M P8 �RR  S t a t a M P�.  �-  �,  �+   ascr  ��ޭ