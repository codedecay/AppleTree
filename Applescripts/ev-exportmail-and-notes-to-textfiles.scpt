FasdUAS 1.101.10   ��   ��    k             l      ��  ��   |v
http://veritrope.com
Apple Mail -- Text File Exporter
Version 1.1
January 17, 2011
Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/export-apple-mail-messages-and-notes-to-text-files

Installation: Just double-click on the script!

FastScripts Installation (Optional, but recommended):
--Download and Install FastScripts from http://www.red-sweater.com/fastscripts/index.html
--Copy script or an Alias to ~/Library/Scripts/Applications/Mail
--Set up your keyboard shortcut

CHANGELOG:
1.10    ADDED INCREMENTAL COUNTER FOR MESSAGES WITH SAME TITLES (THANKS HANS ERIK!)
1.00    INITIAL RELEASE
     � 	 	� 
 h t t p : / / v e r i t r o p e . c o m 
 A p p l e   M a i l   - -   T e x t   F i l e   E x p o r t e r 
 V e r s i o n   1 . 1 
 J a n u a r y   1 7 ,   2 0 1 1 
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t : 
 h t t p : / / v e r i t r o p e . c o m / c o d e / e x p o r t - a p p l e - m a i l - m e s s a g e s - a n d - n o t e s - t o - t e x t - f i l e s 
 
 I n s t a l l a t i o n :   J u s t   d o u b l e - c l i c k   o n   t h e   s c r i p t ! 
 
 F a s t S c r i p t s   I n s t a l l a t i o n   ( O p t i o n a l ,   b u t   r e c o m m e n d e d ) : 
 - - D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   f r o m   h t t p : / / w w w . r e d - s w e a t e r . c o m / f a s t s c r i p t s / i n d e x . h t m l 
 - - C o p y   s c r i p t   o r   a n   A l i a s   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / M a i l 
 - - S e t   u p   y o u r   k e y b o a r d   s h o r t c u t 
 
 C H A N G E L O G : 
 1 . 1 0         A D D E D   I N C R E M E N T A L   C O U N T E R   F O R   M E S S A G E S   W I T H   S A M E   T I T L E S   ( T H A N K S   H A N S   E R I K ! ) 
 1 . 0 0         I N I T I A L   R E L E A S E 
   
  
 l     ��������  ��  ��        j     �� �� 0 	growlname 	growlName  m        �    M a i l T e x t E x p o r t      j    �� �� 0 appname appName  m       �    M a i l      j    �� �� 0 successcount successCount  m       �    0      l     ��������  ��  ��        l      ��   ��      CHECK FOR GROWL       � ! ! "   C H E C K   F O R   G R O W L     " # " l     $���� $ O      % & % r     ' ( ' n    	 ) * ) 1    	��
�� 
pnam * 2    ��
�� 
prcs ( o      ���� 0 processnames   & m      + +�                                                                                  sevs  alis    �  Macintosh HD               �0ڲH+   R�System Events.app                                               UK��Ɖ        ����  	                CoreServices    �1�      ���     R� R� R�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   #  , - , l   L .���� . Z    L / 0���� / I    �� 1���� 0 appisrunning appIsRunning 1  2�� 2 m     3 3 � 4 4  G r o w l H e l p e r A p p��  ��   0 k    H 5 5  6 7 6 r     8 9 8 m    ��
�� boovtrue 9 o      ���� 0 	isrunning 	isRunning 7  :�� : O    H ; < ; k    G = =  > ? > r    $ @ A @ J    " B B  C D C m     E E � F F ( S u c c e s s   N o t i f i c a t i o n D  G�� G m      H H � I I ( F a i l u r e   N o t i f i c a t i o n��   A o      ���� ,0 allnotificationslist allNotificationsList ?  J K J r   % + L M L J   % ) N N  O P O m   % & Q Q � R R ( S u c c e s s   N o t i f i c a t i o n P  S�� S m   & ' T T � U U ( F a i l u r e   N o t i f i c a t i o n��   M o      ���� 40 enablednotificationslist enabledNotificationsList K  V�� V I  , G���� W
�� .registernull��� ��� null��   W �� X Y
�� 
appl X o   . 3���� 0 	growlname 	growlName Y �� Z [
�� 
anot Z o   4 5���� ,0 allnotificationslist allNotificationsList [ �� \ ]
�� 
dnot \ o   8 9���� 40 enablednotificationslist enabledNotificationsList ] �� ^��
�� 
iapp ^ o   < A���� 0 appname appName��  ��   < m     _ _�                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ��  ��  ��  ��  ��   -  ` a ` l     ��������  ��  ��   a  b c b l      �� d e��   d  MAIN PROGRAM     e � f f  M A I N   P R O G R A M   c  g h g l     ��������  ��  ��   h  i j i l      �� k l��   k ) #TEMP FILES PROCESSED ON THE DESKTOP    l � m m F T E M P   F I L E S   P R O C E S S E D   O N   T H E   D E S K T O P j  n o n l  M � p���� p O   M � q r q k   S � s s  t u t Z  S r v w���� v l  S _ x���� x I  S _�� y��
�� .coredoexbool        obj  y l  S [ z���� z 4   S [�� {
�� 
cfol { m   W Z | | � } } $ T e m p   E x p o r t   F o l d e r��  ��  ��  ��  ��   w r   b n ~  ~ l  b j ����� � l  b j ����� � 4   b j�� �
�� 
cfol � m   f i � � � � � $ T e m p   E x p o r t   F o l d e r��  ��  ��  ��    o      ���� 0 	folderloc 	FolderLoc��  ��   u  � � � Z   s � � ����� � H   s � � � l  s  ����� � I  s �� ���
�� .coredoexbool        obj  � l  s { ����� � 4   s {�� �
�� 
cfol � m   w z � � � � � $ T e m p   E x p o r t   F o l d e r��  ��  ��  ��  ��   � r   � � � � � l  � � ����� � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
cfol � �� � �
�� 
insh � l  � � ����� � I  � ��� ���
�� .earsffdralis        afdr � m   � ���
�� afdmdesk��  ��  ��   � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � m   � � � � � � � $ T e m p   E x p o r t   F o l d e r��  ��  ��  ��   � o      ���� 0 	folderloc 	FolderLoc��  ��   �  ��� � r   � � � � � c   � � � � � o   � ����� 0 	folderloc 	FolderLoc � m   � ���
�� 
TEXT � o      ���� 0 saveloc SaveLoc��   r m   M P � ��                                                                                  MACS  alis    t  Macintosh HD               �0ڲH+   R�
Finder.app                                                      S����R        ����  	                CoreServices    �1�      �͒     R� R� R�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   o  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �   APPLE MAIL ITEM SELECTION     � � � � 4 A P P L E   M A I L   I T E M   S E L E C T I O N   �  � � � l  �U ����� � O   �U � � � Q   �T � � � � k   �� � �  � � � Z   �� � � ��� � l  � � ����� � >  � � � � � 1   � ���
�� 
slct � J   � �����  ��  ��   � k   �� � �  � � � r   � � � � � 1   � ���
�� 
slct � o      ���� 0 themessages theMessages �  � � � r   � � � � � m   � �����  � o      ���� 	0 msgnr   �  � � � X   �Z ��� � � k   �U � �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
subj � o   � ����� 0 thismessage thisMessage��  ��   � o      ���� 0 mytitle myTitle �  � � � r   �
 � � � c   � � � � l  � ����� � n   � � � � 1   ���
�� 
ctnt � o   � ����� 0 thismessage thisMessage��  ��   � m  ��
�� 
ctxt � o      ���� 0 	mycontent 	myContent �  � � � r   � � � l  ����� � n   � � � 1  ��
�� 
rpto � o  �� 0 thismessage thisMessage��  ��   � o      �~�~ 0 	replyaddr 	ReplyAddr �  � � � r   � � � l  ��}�| � n   � � � 1  �{
�{ 
rdrc � o  �z�z 0 thismessage thisMessage�}  �|   � o      �y�y 0 	emaildate 	EmailDate �  � � � r  ( � � � l $ ��x�w � n  $ � � � 1   $�v
�v 
raso � o   �u�u 0 thismessage thisMessage�x  �w   � o      �t�t 0 	thesource 	theSource �  � � � l ))�s�r�q�s  �r  �q   �  � � � l  ))�p � ��p   �  CLEAN TITLE FOR FILE     � � � � * C L E A N   T I T L E   F O R   F I L E   �  � � � r  )4 � � � n )0 � � � 1  ,0�o
�o 
txdl � 1  ),�n
�n 
ascr � o      �m�m &0 previousdelimiter previousDelimiter �  � � � r  5< �  � o  58�l�l 0 mytitle myTitle  o      �k�k 0 potentialname potentialName �  r  =C J  =?�j�j   o      �i�i 0 	legalname 	legalName  r  D^ J  DZ		 

 m  DG �  .  m  GJ �  ,  m  JM �  /  m  MP �  :  m  PS �  [ �h m  SV �    ]�h   o      �g�g &0 illegalcharacters illegalCharacters !"! X  _�#�f$# k  y�%% &'& r  y�()( c  y~*+* o  yz�e�e 0 thischaracter thisCharacter+ m  z}�d
�d 
ctxt) o      �c�c 0 thischaracter thisCharacter' ,�b, Z  ��-.�a�`- H  ��// E ��010 o  ���_�_ &0 illegalcharacters illegalCharacters1 o  ���^�^ 0 thischaracter thisCharacter. r  ��232 o  ���]�] 0 thischaracter thisCharacter3 l     4�\�[4 n      565  ;  ��6 o  ���Z�Z 0 	legalname 	legalName�\  �[  �a  �`  �b  �f 0 thischaracter thisCharacter$ l bi7�Y�X7 n  bi898 2 ei�W
�W 
cha 9 o  be�V�V 0 potentialname potentialName�Y  �X  " :;: l ���U�T�S�U  �T  �S  ; <=< r  ��>?> m  ��@@ �AA  ? n     BCB 1  ���R
�R 
txdlC 1  ���Q
�Q 
ascr= DED l ���P�O�N�P  �O  �N  E FGF Z  ��HI�MJH ? ��KLK n  ��MNM 1  ���L
�L 
lengN o  ���K�K 0 	legalname 	legalNameL m  ���J�J  I r  ��OPO c  ��QRQ n  ��STS 7 ���IUV
�I 
cobjU m  ���H�H V m  ���G�G  T o  ���F�F 0 	legalname 	legalNameR m  ���E
�E 
ctxtP o      �D�D 0 	legalname 	legalName�M  J r  ��WXW c  ��YZY o  ���C�C 0 	legalname 	legalNameZ m  ���B
�B 
ctxtX o      �A�A 0 	legalname 	legalNameG [\[ l ���@�?�>�@  �?  �>  \ ]^] r  ��_`_ o  ���=�= &0 previousdelimiter previousDelimiter` n     aba 1  ���<
�< 
txdlb 1  ���;
�; 
ascr^ cdc r  ��efe o  ���:�: 0 	legalname 	legalNamef o      �9�9 0 thefilename theFileNamed ghg l ���8�7�6�8  �7  �6  h iji l  ���5kl�5  k  EXPORT TO TXT FILE    l �mm & E X P O R T   T O   T X T   F I L E  j non r  ��pqp o  ���4�4 0 	mycontent 	myContentq o      �3�3 0 thetext theTexto rsr r  �tut l �v�2�1v b  �wxw b  �yzy b  �{|{ b  ��}~} o  ���0�0 0 saveloc SaveLoc~ o  ���/�/ 	0 msgnr  | m  � ���  _z o  �.�. 0 thefilename theFileNamex m  
�� ���  . t x t�2  �1  u o      �-�- 0 thefilepath theFilePaths ��� r  ��� [  ��� o  �,�, 	0 msgnr  � m  �+�+ � o      �*�* 	0 msgnr  � ��� r  )��� I %�)��
�) .rdwropenshor       file� o  �(�( 0 thefilepath theFilePath� �'��&
�' 
perm� m   !�%
�% boovtrue�&  � o      �$�$ $0 thefilereference theFileReference� ��� I *?�#��
�# .rdwrwritnull���     ****� o  *-�"�" 0 thetext theText� �!��
�! 
refn� o  03� �  $0 thefilereference theFileReference� ���
� 
as  � m  69�
� 
utf8�  � ��� I @G���
� .rdwrclosnull���     ****� o  @C�� $0 thefilereference theFileReference�  � ��� r  HU��� [  HO��� o  HM�� 0 successcount successCount� m  MN�� � o      �� 0 successcount successCount�  �� 0 thismessage thisMessage � o   � ��� 0 themessages theMessages � ��� l [[����  �  �  � ��� l  [[����  �   GROWL    � ���    G R O W L  � ��� l [[����  �  �  � ��� Z  [������ E [`��� o  [\�
�
 0 processnames  � m  \_�� ���  G r o w l H e l p e r A p p� k  c��� ��� O  c���� l g����� I g��	��
�	 .notifygrnull��� ��� null�  � ���
� 
name� l 	kn���� m  kn�� ��� ( S u c c e s s   N o t i f i c a t i o n�  �  � ���
� 
titl� l 	qt���� m  qt�� ���  E x p o r t   S u c c e s s�  �  � ���
� 
desc� b  w���� b  w���� m  wz�� ��� , S u c c e s s f u l l y   E x p o r t e d  � o  z� �  0 successcount successCount� l 	�������� m  ���� ��� 6   M e s s a g e s   t o   E x p o r t   F o l d e r !��  ��  � �����
�� 
appl� o  ������ 0 	growlname 	growlName��  �   GROWL SUCCESS   � ���    G R O W L   S U C C E S S� m  cd���                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  � ���� r  ����� m  ������  � o      ���� 0 successcount successCount��  �  �  �   � ��� E ����� o  ������ 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� ��� O  ����� l ������ I �������
�� .notifygrnull��� ��� null��  � ����
�� 
name� l 	�������� m  ���� ��� ( F a i l u r e   N o t i f i c a t i o n��  ��  � ����
�� 
titl� l 	�������� m  ���� ���  E x p o r t   F a i l u r e��  ��  � ����
�� 
desc� l 	�������� m  ���� ��� < N o   M e s s a g e s   o r   N o t e s   S e l e c t e d !��  ��  � �����
�� 
appl� o  ������ 0 	growlname 	growlName��  � %  GROWL FAILURE FOR NO SELECTION   � ��� >   G R O W L   F A I L U R E   F O R   N O   S E L E C T I O N� m  �����                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  � ��� H  ���� E ����� o  ������ 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� ���� l ������ I ������
�� .sysodlogaskr        TEXT� m  ��   � < N o   M e s s a g e s   o r   N o t e s   S e l e c t e d !� ����
�� 
disp m  ������  ��  � , & NON-GROWL ERROR MSG. FOR NO SELECTION   � � L   N O N - G R O W L   E R R O R   M S G .   F O R   N O   S E L E C T I O N��  ��   � �� l  ������     ERROR HANDLING     �     E R R O R   H A N D L I N G  ��   � R      ��	
�� .ascrerr ****      � **** o      ���� 0 errtext errText	 ��
��
�� 
errn
 o      ���� 0 errnum errNum��   � k  �T  Z  �R�� E �� o  ������ 0 processnames   m  �� �  G r o w l H e l p e r A p p O  �/ l �. I �.����
�� .notifygrnull��� ��� null��   ��
�� 
name l 	���� m   � ( F a i l u r e   N o t i f i c a t i o n��  ��   �� !
�� 
titl  l 	
"����" m  
## �$$  I m p o r t   F a i l u r e��  ��  ! ��%&
�� 
desc% b  "'(' b   )*) b  +,+ b  -.- b  /0/ m  11 �22 " F a i l e d   t o   e x p o r t  0 o  ��
�� 
ret . o  ���� 0 mytitle myTitle, l 	3����3 m  44 �55 > "     d u e   t o   t h e   f o l l o w i n g   e r r o r :  ��  ��  * o  ��
�� 
ret ( l 
 !6����6 o   !���� 0 errtext errText��  ��  & ��7��
�� 
appl7 o  #(���� 0 	growlname 	growlName��     GROWL FAILURE FOR ERROR    �88 0   G R O W L   F A I L U R E   F O R   E R R O R m  ��99�                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��   :;: H  28<< E 27=>= o  23���� 0 processnames  > m  36?? �@@  G r o w l H e l p e r A p p; A��A l ;NBCDB I ;N��EF
�� .sysodlogaskr        TEXTE b  ;FGHG b  ;DIJI b  ;@KLK m  ;>MM �NN . I t e m   F a i l e d   t o   E x p o r t :  L o  >?���� 0 errnum errNumJ o  @C��
�� 
ret H o  DE���� 0 errtext errTextF ��O��
�� 
dispO m  IJ����  ��  C %  NON-GROWL ERROR MSG. FOR ERROR   D �PP >   N O N - G R O W L   E R R O R   M S G .   F O R   E R R O R��  ��   Q��Q l SS��������  ��  ��  ��   � m   � �RR�                                                                                  emal  alis    F  Macintosh HD               �0ڲH+   R�Mail.app                                                        Ts�0w        ����  	                Applications    �1�      �h�     R�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��  ��   � STS l     ��������  ��  ��  T UVU l     ��������  ��  ��  V WXW l      ��YZ��  Y   SUBROUTINES    Z �[[    S U B R O U T I N E S  X \]\ l     ��������  ��  ��  ] ^_^ i   	 `a` I      ��b���� 0 appisrunning appIsRunningb c��c o      ���� 0 appname appName��  ��  a O    ded E    fgf l   	h����h n    	iji 1    	��
�� 
pnamj 2   ��
�� 
prcs��  ��  g o   	 
���� 0 appname appNamee m     kk�                                                                                  sevs  alis    �  Macintosh HD               �0ڲH+   R�System Events.app                                               UK��Ɖ        ����  	                CoreServices    �1�      ���     R� R� R�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  _ lml l     ��������  ��  ��  m non l     ��pq��  p  REPLACE SUBROUTINE   q �rr $ R E P L A C E   S U B R O U T I N Eo s��s i    tut I      ��v���� 0 replacestring replaceStringv wxw o      ���� 0 	thestring 	theStringx yzy o      ���� &0 theoriginalstring theOriginalStringz {��{ o      ���� 0 thenewstring theNewString��  ��  u k     f|| }~} r     � J     �� ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� ���� o    ���� &0 theoriginalstring theOriginalString��  � J      �� ��� o      ���� 0 od  � ���� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr��  ~ ��� r    ��� n    ��� 2   ��
�� 
citm� o    ���� 0 	thestring 	theString� o      ����  0 thestringparts theStringParts� ��� Z    ]������� ?   %��� l   #������ I   #�����
�� .corecnte****       ****� o    ����  0 thestringparts theStringParts��  ��  ��  � m   # $���� � k   ( Y�� ��� r   ( 0��� c   ( .��� n   ( ,��� 4   ) ,���
�� 
citm� m   * +���� � o   ( )����  0 thestringparts theStringParts� m   , -��
�� 
TEXT� o      ���� 0 	thestring 	theString� ���� X   1 Y����� r   K T��� c   K R��� b   K P��� b   K N��� o   K L���� 0 	thestring 	theString� o   L M�� 0 thenewstring theNewString� o   N O�~�~ 0 eachpart eachPart� m   P Q�}
�} 
TEXT� o      �|�| 0 	thestring 	theString�� 0 eachpart eachPart� n   4 ?��� 7  5 ?�{��
�{ 
cobj� m   9 ;�z�z � m   < >�y�y��� o   4 5�x�x  0 thestringparts theStringParts��  ��  ��  � ��� r   ^ c��� o   ^ _�w�w 0 od  � n     ��� 1   ` b�v
�v 
txdl� 1   _ `�u
�u 
ascr� ��t� L   d f�� o   d e�s�s 0 	thestring 	theString�t  ��       �r�   ����r  � �q�p�o�n�m�l�q 0 	growlname 	growlName�p 0 appname appName�o 0 successcount successCount�n 0 appisrunning appIsRunning�m 0 replacestring replaceString
�l .aevtoappnull  �   � ****� �ka�j�i���h�k 0 appisrunning appIsRunning�j �g��g �  �f�f 0 appname appName�i  � �e�e 0 appname appName� k�d�c
�d 
prcs
�c 
pnam�h � 	*�-�,�U� �bu�a�`���_�b 0 replacestring replaceString�a �^��^ �  �]�\�[�] 0 	thestring 	theString�\ &0 theoriginalstring theOriginalString�[ 0 thenewstring theNewString�`  � �Z�Y�X�W�V�U�Z 0 	thestring 	theString�Y &0 theoriginalstring theOriginalString�X 0 thenewstring theNewString�W 0 od  �V  0 thestringparts theStringParts�U 0 eachpart eachPart� �T�S�R�Q�P�O�N
�T 
ascr
�S 
txdl
�R 
cobj
�Q 
citm
�P .corecnte****       ****
�O 
TEXT
�N 
kocl�_ g��,�lvE[�k/E�Z[�l/��,FZO��-E�O�j k 6��k/�&E�O '�[�\[Zl\Zi2[��l kh ��%�%�&E�[OY��Y hO���,FO�� �M��L�K���J
�M .aevtoappnull  �   � ****� k    U��  "��  ,��  n��  ��I�I  �L  �K  � �H�G�F�E�H 0 thismessage thisMessage�G 0 thischaracter thisCharacter�F 0 errtext errText�E 0 errnum errNum� o +�D�C�B 3�A�@ _ E H�? Q T�>�=�<�;�:�9�8 ��7 |�6 ��5 ��4�3�2�1�0 ��/�.�-�,R�+�*�)�(�'�&�%�$�#�"�!� �����������@������������
�	���������������� ��� �#1��4?M
�D 
prcs
�C 
pnam�B 0 processnames  �A 0 appisrunning appIsRunning�@ 0 	isrunning 	isRunning�? ,0 allnotificationslist allNotificationsList�> 40 enablednotificationslist enabledNotificationsList
�= 
appl
�< 
anot
�; 
dnot
�: 
iapp�9 
�8 .registernull��� ��� null
�7 
cfol
�6 .coredoexbool        obj �5 0 	folderloc 	FolderLoc
�4 
kocl
�3 
insh
�2 afdmdesk
�1 .earsffdralis        afdr
�0 
prdt�/ 
�. .corecrel****      � null
�- 
TEXT�, 0 saveloc SaveLoc
�+ 
slct�* 0 themessages theMessages�) 	0 msgnr  
�( 
cobj
�' .corecnte****       ****
�& 
subj�% 0 mytitle myTitle
�$ 
ctnt
�# 
ctxt�" 0 	mycontent 	myContent
�! 
rpto�  0 	replyaddr 	ReplyAddr
� 
rdrc� 0 	emaildate 	EmailDate
� 
raso� 0 	thesource 	theSource
� 
ascr
� 
txdl� &0 previousdelimiter previousDelimiter� 0 potentialname potentialName� 0 	legalname 	legalName� &0 illegalcharacters illegalCharacters
� 
cha 
� 
leng�  � 0 thefilename theFileName� 0 thetext theText� 0 thefilepath theFilePath
� 
perm
� .rdwropenshor       file� $0 thefilereference theFileReference
� 
refn
� 
as  
�
 
utf8�	 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****
� 
name
� 
titl
� 
desc
� .notifygrnull��� ��� null
� 
disp
� .sysodlogaskr        TEXT�  0 errtext errText� ������
�� 
errn�� 0 errnum errNum��  
�� 
ret �JV� 	*�-�,E�UO*�k+  7eE�O� +��lvE�O��lvE�O*�b   ��a �a b  a  UY hOa  f*a a /j  *a a /E` Y hO*a a /j  )*a a a a j a �a  la ! "E` Y hO_ a #&E` $UOa %�,*a &,jv�*a &,E` 'OkE` (O|_ '[a a )l *kh  �a +,E` ,O�a -,a .&E` /O�a 0,E` 1O�a 2,E` 3O�a 4,E` 5O_ 6a 7,E` 8O_ ,E` 9OjvE` :Oa ;a <a =a >a ?a @a !vE` AO 9_ 9a B-[a a )l *kh �a .&E�O_ A� �_ :6FY h[OY��Oa C_ 6a 7,FO_ :a D,a E _ :[a )\[Zk\Za E2a .&E` :Y _ :a .&E` :O_ 8_ 6a 7,FO_ :E` FO_ /E` GO_ $_ (%a H%_ F%a I%E` JO_ (kE` (O_ Ja Kel LE` MO_ Ga N_ Ma Oa Pa Q RO_ Mj SOb  kEc  [OY��O�a T ;� +*a Ua Va Wa Xa Ya Zb  %a [%�b   a  \UOjEc  Y hY I�a ] )� !*a Ua ^a Wa _a Ya `�b   a  \UY �a a a ba cjl dY hOPW jX e f�a g ;� 3*a Ua ha Wa ia Ya j_ k%_ ,%a l%_ k%�%�b   a  \UY "�a m a n�%_ k%�%a cjl dY hOPU ascr  ��ޭ