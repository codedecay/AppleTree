FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
http://veritrope.com
Apple Mail -- Text File Exporter w/ Basic Header Info.
Version 1.0
April 17, 2011

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/apple-mail-export-to-text-file-w-basic-header-info

Adapted from the original script by Hans Erik Hazelhorst
http://veritrope.com/code/export-apple-mail-messages-and-notes-to-text-files

Installation: Just double-click on the script!

CHANGELOG:
1.00    INITIAL RELEASE
     � 	 	� 
 h t t p : / / v e r i t r o p e . c o m 
 A p p l e   M a i l   - -   T e x t   F i l e   E x p o r t e r   w /   B a s i c   H e a d e r   I n f o . 
 V e r s i o n   1 . 0 
 A p r i l   1 7 ,   2 0 1 1 
 
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t : 
 h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - e x p o r t - t o - t e x t - f i l e - w - b a s i c - h e a d e r - i n f o 
 
 A d a p t e d   f r o m   t h e   o r i g i n a l   s c r i p t   b y   H a n s   E r i k   H a z e l h o r s t 
 h t t p : / / v e r i t r o p e . c o m / c o d e / e x p o r t - a p p l e - m a i l - m e s s a g e s - a n d - n o t e s - t o - t e x t - f i l e s 
 
 I n s t a l l a t i o n :   J u s t   d o u b l e - c l i c k   o n   t h e   s c r i p t ! 
 
 C H A N G E L O G : 
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
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   o  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �   APPLE MAIL ITEM SELECTION     � � � � 4 A P P L E   M A I L   I T E M   S E L E C T I O N   �  � � � l  �U ����� � O   �U � � � Q   �T � � � � k   �� � �  � � � Z   �� � � ��� � l  � � ����� � >  � � � � � 1   � ���
�� 
slct � J   � �����  ��  ��   � k   �� � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � 1   � ���
�� 
slct � o      ���� 0 themessages theMessages �  � � � r   � � � � � m   � �����  � o      ���� 	0 msgnr   �  � � � X   �Z ��� � � k   �U � �  � � � r   � � � � � l  � � ����� � n   � � � � � 2  � ���
�� 
trcp � o   � ����� 0 thismessage thisMessage��  ��   � o      ���� 0 recipientlist   �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   � 4 .Adding the Recipients in a separate variable      � � � � \ A d d i n g   t h e   R e c i p i e n t s   i n   a   s e p a r a t e   v a r i a b l e     �  � � � r   � � � � m   �  � � � � �  r e c i p i e n t s = � o      ���� 0 therecipients theRecipients �  � � � X  = ��� � � r  8 � � � c  4 � � � b  0 � � � b  , � � � b  ( � � � b  " � � � o  �� 0 therecipients theRecipients � o  !�~
�~ 
ret  � l 	"' ��}�| � l "' ��{�z � n  "' � � � 1  #'�y
�y 
radd � o  "#�x�x $0 currentrecipient CurrentRecipient�{  �z  �}  �|   � m  (+ � � � � �  ;   � l 	,/ ��w�v � l ,/ ��u�t � n  ,/ � � � 1  -/�s
�s 
pnam � o  ,-�r�r $0 currentrecipient CurrentRecipient�u  �t  �w  �v   � m  03�q
�q 
ctxt � o      �p�p 0 therecipients theRecipients�� $0 currentrecipient CurrentRecipient � o  �o�o 0 recipientlist   �  � � � l >>�n�m�l�n  �m  �l   �  � � � l  >>�k � �k   � < 6...and also the cc-Recipients in a separate variable       � l . . . a n d   a l s o   t h e   c c - R e c i p i e n t s   i n   a   s e p a r a t e   v a r i a b l e     �  r  >G n  >C 2 ?C�j
�j 
crcp o  >?�i�i 0 thismessage thisMessage o      �h�h "0 ccrecipientlist CcRecipientList 	 r  HO

 m  HK �  c c _ r e c i p i e n t s = o      �g�g "0 theccrecipients theCcRecipients	  X  P��f r  f� c  f b  f{ b  fw b  fs b  fm o  fi�e�e "0 theccrecipients theCcRecipients o  il�d
�d 
ret  l 	mr�c�b l mr�a�` n  mr !  1  nr�_
�_ 
radd! o  mn�^�^ (0 currentccrecipient CurrentCCRecipient�a  �`  �c  �b   m  sv"" �##  ;   l 	wz$�]�\$ l wz%�[�Z% n  wz&'& 1  xz�Y
�Y 
pnam' o  wx�X�X (0 currentccrecipient CurrentCCRecipient�[  �Z  �]  �\   m  {~�W
�W 
ctxt o      �V�V "0 theccrecipients theCcRecipients�f (0 currentccrecipient CurrentCCRecipient o  SV�U�U "0 ccrecipientlist CcRecipientList ()( l ���T�S�R�T  �S  �R  ) *+* r  ��,-, l ��.�Q�P. n  ��/0/ 1  ���O
�O 
subj0 o  ���N�N 0 thismessage thisMessage�Q  �P  - o      �M�M 0 mytitle myTitle+ 121 r  ��343 c  ��565 l ��7�L�K7 n  ��898 1  ���J
�J 
ctnt9 o  ���I�I 0 thismessage thisMessage�L  �K  6 m  ���H
�H 
ctxt4 o      �G�G 0 	mycontent 	myContent2 :;: r  ��<=< l ��>�F�E> n  ��?@? 1  ���D
�D 
rpto@ o  ���C�C 0 thismessage thisMessage�F  �E  = o      �B�B 0 	replyaddr 	ReplyAddr; ABA r  ��CDC l ��E�A�@E n  ��FGF 1  ���?
�? 
sndrG o  ���>�> 0 thismessage thisMessage�A  �@  D o      �=�= 0 afzender  B HIH r  ��JKJ l ��L�<�;L n  ��MNM 1  ���:
�: 
rdrcN o  ���9�9 0 thismessage thisMessage�<  �;  K o      �8�8 0 	emaildate 	EmailDateI OPO r  ��QRQ l ��S�7�6S n  ��TUT 1  ���5
�5 
rasoU o  ���4�4 0 thismessage thisMessage�7  �6  R o      �3�3 0 	thesource 	theSourceP VWV l ���2�1�0�2  �1  �0  W XYX l  ���/Z[�/  Z - 'Custom header with some standard data     [ �\\ N C u s t o m   h e a d e r   w i t h   s o m e   s t a n d a r d   d a t a    Y ]^] r  � _`_ b  ��aba b  ��cdc b  ��efe b  ��ghg b  ��iji b  ��klk b  ��mnm b  ��opo b  ��qrq b  ��sts b  ��uvu b  ��wxw m  ��yy �zz  t i t e l =x o  ���.�. 0 mytitle myTitlev o  ���-
�- 
ret t m  ��{{ �||  R e p l y T o =r o  ���,�, 0 	replyaddr 	ReplyAddrp o  ���+
�+ 
ret n l 	��}�*�)} m  ��~~ � 
 D a t e =�*  �)  l o  ���(�( 0 	emaildate 	EmailDatej o  ���'
�' 
ret h m  ���� ���  S e n d e r =f o  ���&�& 0 afzender  d o  ���%
�% 
ret b m  ���� ���  - - - - - - - - - -` o      �$�$ 0 customheader CustomHeader^ ��� l �#�"�!�#  �"  �!  � ��� l  � ���   �  CLEAN TITLE FOR FILE    � ��� * C L E A N   T I T L E   F O R   F I L E  � ��� r  ��� n ��� 1  �
� 
txdl� 1  �
� 
ascr� o      �� &0 previousdelimiter previousDelimiter� ��� r  ��� o  �� 0 mytitle myTitle� o      �� 0 potentialname potentialName� ��� r  ��� J  ��  � o      �� 0 	legalname 	legalName� ��� r  6��� J  2�� ��� m  �� ���  .� ��� m  "�� ���  ,� ��� m  "%�� ���  /� ��� m  %(�� ���  :� ��� m  (+�� ���  [� ��� m  +.�� ���  ]�  � o      �� &0 illegalcharacters illegalCharacters� ��� X  7q���� k  Ql�� ��� r  QX��� c  QV��� o  QR�� 0 thischaracter thisCharacter� m  RU�
� 
ctxt� o      �� 0 thischaracter thisCharacter� ��� Z  Yl����� H  Y_�� E Y^��� o  Y\�� &0 illegalcharacters illegalCharacters� o  \]�� 0 thischaracter thisCharacter� r  bh��� o  bc�� 0 thischaracter thisCharacter� l     ���� n      ���  ;  fg� o  cf�
�
 0 	legalname 	legalName�  �  �  �  �  � 0 thischaracter thisCharacter� l :A��	�� n  :A��� 2 =A�
� 
cha � o  :=�� 0 potentialname potentialName�	  �  � ��� l rr����  �  �  � ��� r  r}��� m  ru�� ���  � n     ��� 1  x|�
� 
txdl� 1  ux�
� 
ascr� ��� l ~~� �����   ��  ��  � ��� Z  ~������� ? ~���� n  ~���� 1  ����
�� 
leng� o  ~����� 0 	legalname 	legalName� m  ������  � r  ����� c  ����� n  ����� 7 ������
�� 
cobj� m  ������ � m  ������  � o  ������ 0 	legalname 	legalName� m  ����
�� 
ctxt� o      ���� 0 	legalname 	legalName��  � r  ����� c  ����� o  ������ 0 	legalname 	legalName� m  ����
�� 
ctxt� o      ���� 0 	legalname 	legalName� ��� l ����������  ��  ��  � ��� r  ����� o  ������ &0 previousdelimiter previousDelimiter� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� o  ������ 0 	legalname 	legalName� o      ���� 0 thefilename theFileName� ��� l ����������  ��  ��  � ��� l  ����� ��  �  EXPORT TO TXT FILE      � & E X P O R T   T O   T X T   F I L E  �  r  �� o  ������ 0 	mycontent 	myContent o      ���� 0 thetext theText  r  ��	 l ��
����
 b  �� b  �� b  �� b  �� o  ������ 0 saveloc SaveLoc o  ������ 	0 msgnr   m  �� �  _ o  ������ 0 thefilename theFileName m  �� �  . t x t��  ��  	 o      ���� 0 thefilepath theFilePath  r  �� [  �� o  ������ 	0 msgnr   m  ������  o      ���� 	0 msgnr    r  �  I ����!"
�� .rdwropenshor       file! o  ������ 0 thefilepath theFilePath" ��#��
�� 
perm# m  ����
�� boovtrue��    o      ���� $0 thefilereference theFileReference $%$ I ?��&'
�� .rdwrwritnull���     ****& l -(����( b  -)*) b  )+,+ b  %-.- b  !/0/ b  121 b  343 b  565 b  787 b  9:9 b  	;<; o  ���� 0 customheader CustomHeader< o  ��
�� 
ret : o  	���� 0 therecipients theRecipients8 o  ��
�� 
ret 6 m  == �>>  - - - - - - - - - -4 o  ��
�� 
ret 2 o  ���� "0 theccrecipients theCcRecipients0 o   ��
�� 
ret . m  !$?? �@@  - - - - - - - - - -, o  %(��
�� 
ret * o  ),���� 0 thetext theText��  ��  ' ��AB
�� 
refnA o  03���� $0 thefilereference theFileReferenceB ��C��
�� 
as  C m  69��
�� 
utf8��  % DED I @G��F��
�� .rdwrclosnull���     ****F o  @C���� $0 thefilereference theFileReference��  E G��G r  HUHIH [  HOJKJ o  HM���� 0 successcount successCountK m  MN���� I o      ���� 0 successcount successCount��  �� 0 thismessage thisMessage � o   � ����� 0 themessages theMessages � LML l [[��������  ��  ��  M NON l  [[��PQ��  P   GROWL    Q �RR    G R O W L  O STS l [[��������  ��  ��  T U��U Z  [�VW����V E [`XYX o  [\���� 0 processnames  Y m  \_ZZ �[[  G r o w l H e l p e r A p pW k  c�\\ ]^] O  c�_`_ l g�abca I g�����d
�� .notifygrnull��� ��� null��  d ��ef
�� 
namee l 	kng����g m  knhh �ii ( S u c c e s s   N o t i f i c a t i o n��  ��  f ��jk
�� 
titlj l 	qtl����l m  qtmm �nn  E x p o r t   S u c c e s s��  ��  k ��op
�� 
desco b  w�qrq b  w�sts m  wzuu �vv , S u c c e s s f u l l y   E x p o r t e d  t o  z���� 0 successcount successCountr l 	��w����w m  ��xx �yy 6   M e s s a g e s   t o   E x p o r t   F o l d e r !��  ��  p ��z��
�� 
applz o  ������ 0 	growlname 	growlName��  b   GROWL SUCCESS   c �{{    G R O W L   S U C C E S S` m  cd||�                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ^ }��} r  ��~~ m  ������   o      ���� 0 successcount successCount��  ��  ��  ��   � ��� E ����� o  ������ 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� ��� O  ����� l ������ I �������
�� .notifygrnull��� ��� null��  � ����
�� 
name� l 	�������� m  ���� ��� ( F a i l u r e   N o t i f i c a t i o n��  ��  � ����
�� 
titl� l 	�������� m  ���� ���  E x p o r t   F a i l u r e��  ��  � ����
�� 
desc� l 	�������� m  ���� ��� < N o   M e s s a g e s   o r   N o t e s   S e l e c t e d !��  ��  � �����
�� 
appl� o  ������ 0 	growlname 	growlName��  � %  GROWL FAILURE FOR NO SELECTION   � ��� >   G R O W L   F A I L U R E   F O R   N O   S E L E C T I O N� m  �����                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  � ��� H  ���� E ����� o  ������ 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� ���� l ������ I ������
�� .sysodlogaskr        TEXT� m  ���� ��� < N o   M e s s a g e s   o r   N o t e s   S e l e c t e d !� �����
�� 
disp� m  ������  ��  � , & NON-GROWL ERROR MSG. FOR NO SELECTION   � ��� L   N O N - G R O W L   E R R O R   M S G .   F O R   N O   S E L E C T I O N��  ��   � ���� l  ��������  �   ERROR HANDLING    � ���     E R R O R   H A N D L I N G  ��   � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errtext errText� �����
�� 
errn� o      ���� 0 errnum errNum��   � k  �T�� ��� Z  �R������ E ����� o  ������ 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� O  �/��� l �.���� I �.��~�
� .notifygrnull��� ��� null�~  � �}��
�} 
name� l 	��|�{� m  �� ��� ( F a i l u r e   N o t i f i c a t i o n�|  �{  � �z��
�z 
titl� l 	
��y�x� m  
�� ���  I m p o r t   F a i l u r e�y  �x  � �w��
�w 
desc� b  "��� b   ��� b  ��� b  ��� b  ��� m  �� ��� " F a i l e d   t o   e x p o r t  � o  �v
�v 
ret � o  �u�u 0 mytitle myTitle� l 	��t�s� m  �� ��� > "     d u e   t o   t h e   f o l l o w i n g   e r r o r :  �t  �s  � o  �r
�r 
ret � l 
 !��q�p� o   !�o�o 0 errtext errText�q  �p  � �n��m
�n 
appl� o  #(�l�l 0 	growlname 	growlName�m  �   GROWL FAILURE FOR ERROR   � ��� 0   G R O W L   F A I L U R E   F O R   E R R O R� m  �����                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  � ��� H  28�� E 27��� o  23�k�k 0 processnames  � m  36�� ���  G r o w l H e l p e r A p p� ��j� l ;N���� I ;N�i��
�i .sysodlogaskr        TEXT� b  ;F��� b  ;D��� b  ;@��� m  ;>�� ��� . I t e m   F a i l e d   t o   E x p o r t :  � o  >?�h�h 0 errnum errNum� o  @C�g
�g 
ret � o  DE�f�f 0 errtext errText� �e��d
�e 
disp� m  IJ�c�c  �d  � %  NON-GROWL ERROR MSG. FOR ERROR   � ��� >   N O N - G R O W L   E R R O R   M S G .   F O R   E R R O R�j  ��  � ��b� l SS�a�`�_�a  �`  �_  �b   � m   � ����                                                                                  emal  alis    F  Macintosh HD               �0ڲH+   R�Mail.app                                                        Ts�0w        ����  	                Applications    �1�      �h�     R�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��  ��   �    l     �^�]�\�^  �]  �\    l     �[�Z�Y�[  �Z  �Y    l      �X�X     SUBROUTINES     �    S U B R O U T I N E S   	
	 l     �W�V�U�W  �V  �U  
  i   	  I      �T�S�T 0 appisrunning appIsRunning �R o      �Q�Q 0 appname appName�R  �S   O     E     l   	�P�O n    	 1    	�N
�N 
pnam 2   �M
�M 
prcs�P  �O   o   	 
�L�L 0 appname appName m     �                                                                                  sevs  alis    �  Macintosh HD               �0ڲH+   R�System Events.app                                               UK��Ɖ        ����  	                CoreServices    �1�      ���     R� R� R�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    l     �K�J�I�K  �J  �I    l     �H�H    REPLACE SUBROUTINE    � $ R E P L A C E   S U B R O U T I N E  �G  i    !"! I      �F#�E�F 0 replacestring replaceString# $%$ o      �D�D 0 	thestring 	theString% &'& o      �C�C &0 theoriginalstring theOriginalString' (�B( o      �A�A 0 thenewstring theNewString�B  �E  " k     f)) *+* r     ,-, J     .. /0/ n    121 1    �@
�@ 
txdl2 1     �?
�? 
ascr0 3�>3 o    �=�= &0 theoriginalstring theOriginalString�>  - J      44 565 o      �<�< 0 od  6 7�;7 n     898 1    �:
�: 
txdl9 1    �9
�9 
ascr�;  + :;: r    <=< n    >?> 2   �8
�8 
citm? o    �7�7 0 	thestring 	theString= o      �6�6  0 thestringparts theStringParts; @A@ Z    ]BC�5�4B ?   %DED l   #F�3�2F I   #�1G�0
�1 .corecnte****       ****G o    �/�/  0 thestringparts theStringParts�0  �3  �2  E m   # $�.�. C k   ( YHH IJI r   ( 0KLK c   ( .MNM n   ( ,OPO 4   ) ,�-Q
�- 
citmQ m   * +�,�, P o   ( )�+�+  0 thestringparts theStringPartsN m   , -�*
�* 
TEXTL o      �)�) 0 	thestring 	theStringJ R�(R X   1 YS�'TS r   K TUVU c   K RWXW b   K PYZY b   K N[\[ o   K L�&�& 0 	thestring 	theString\ o   L M�%�% 0 thenewstring theNewStringZ o   N O�$�$ 0 eachpart eachPartX m   P Q�#
�# 
TEXTV o      �"�" 0 	thestring 	theString�' 0 eachpart eachPartT n   4 ?]^] 7  5 ?�!_`
�! 
cobj_ m   9 ;� �  ` m   < >����^ o   4 5��  0 thestringparts theStringParts�(  �5  �4  A aba r   ^ ccdc o   ^ _�� 0 od  d n     efe 1   ` b�
� 
txdlf 1   _ `�
� 
ascrb g�g L   d fhh o   d e�� 0 	thestring 	theString�  �G       �i   jkl�  i ������� 0 	growlname 	growlName� 0 appname appName� 0 successcount successCount� 0 appisrunning appIsRunning� 0 replacestring replaceString
� .aevtoappnull  �   � ****j ���mn�� 0 appisrunning appIsRunning� �o� o  �� 0 appname appName�  m �� 0 appname appNamen �
�	
�
 
prcs
�	 
pnam� � 	*�-�,�Uk �"��pq�� 0 replacestring replaceString� �r� r  ���� 0 	thestring 	theString� &0 theoriginalstring theOriginalString� 0 thenewstring theNewString�  p � �����������  0 	thestring 	theString�� &0 theoriginalstring theOriginalString�� 0 thenewstring theNewString�� 0 od  ��  0 thestringparts theStringParts�� 0 eachpart eachPartq ��������������
�� 
ascr
�� 
txdl
�� 
cobj
�� 
citm
�� .corecnte****       ****
�� 
TEXT
�� 
kocl� g��,�lvE[�k/E�Z[�l/��,FZO��-E�O�j k 6��k/�&E�O '�[�\[Zl\Zi2[��l kh ��%�%�&E�[OY��Y hO���,FO�l ��s����tu��
�� .aevtoappnull  �   � ****s k    Uvv  "ww  ,xx  nyy  �����  ��  ��  t �������������� 0 thismessage thisMessage�� $0 currentrecipient CurrentRecipient�� (0 currentccrecipient CurrentCCRecipient�� 0 thischaracter thisCharacter�� 0 errtext errText�� 0 errnum errNumu � +������ 3���� _ E H�� Q T�������������� ��� |�� ��� ����������� ������������������������ ������� ���������"������������������������y{~�����������������������������������������=?������������Z��h��m��ux��������������z�������
�� 
prcs
�� 
pnam�� 0 processnames  �� 0 appisrunning appIsRunning�� 0 	isrunning 	isRunning�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� 
cfol
�� .coredoexbool        obj �� 0 	folderloc 	FolderLoc
�� 
kocl
�� 
insh
�� afdmdesk
�� .earsffdralis        afdr
�� 
prdt�� 
�� .corecrel****      � null
�� 
TEXT�� 0 saveloc SaveLoc
�� 
slct�� 0 themessages theMessages�� 	0 msgnr  
�� 
cobj
�� .corecnte****       ****
�� 
trcp�� 0 recipientlist  �� 0 therecipients theRecipients
�� 
ret 
�� 
radd
�� 
ctxt
�� 
crcp�� "0 ccrecipientlist CcRecipientList�� "0 theccrecipients theCcRecipients
�� 
subj�� 0 mytitle myTitle
�� 
ctnt�� 0 	mycontent 	myContent
�� 
rpto�� 0 	replyaddr 	ReplyAddr
�� 
sndr�� 0 afzender  
�� 
rdrc�� 0 	emaildate 	EmailDate
�� 
raso�� 0 	thesource 	theSource�� 0 customheader CustomHeader
�� 
ascr
�� 
txdl�� &0 previousdelimiter previousDelimiter�� 0 potentialname potentialName�� 0 	legalname 	legalName�� &0 illegalcharacters illegalCharacters
�� 
cha 
�� 
leng��  �� 0 thefilename theFileName�� 0 thetext theText�� 0 thefilepath theFilePath
�� 
perm
�� .rdwropenshor       file�� $0 thefilereference theFileReference
�� 
refn
�� 
as  
�� 
utf8�� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null
�� 
disp
�� .sysodlogaskr        TEXT�� 0 errtext errTextz ������
�� 
errn�� 0 errnum errNum��  ��V� 	*�-�,E�UO*�k+  7eE�O� +��lvE�O��lvE�O*�b   ��a �a b  a  UY hOa  f*a a /j  *a a /E` Y hO*a a /j  )*a a a a j a �a  la ! "E` Y hO_ a #&E` $UOa %�,*a &,jv�*a &,E` 'OkE` (O|_ '[a a )l *kh  �a +-E` ,Oa -E` .O 7_ ,[a a )l *kh _ ._ /%�a 0,%a 1%��,%a 2&E` .[OY��O�a 3-E` 4Oa 5E` 6O 7_ 4[a a )l *kh _ 6_ /%�a 0,%a 7%��,%a 2&E` 6[OY��O�a 8,E` 9O�a :,a 2&E` ;O�a <,E` =O�a >,E` ?O�a @,E` AO�a B,E` COa D_ 9%_ /%a E%_ =%_ /%a F%_ A%_ /%a G%_ ?%_ /%a H%E` IO_ Ja K,E` LO_ 9E` MOjvE` NOa Oa Pa Qa Ra Sa Ta !vE` UO 9_ Ma V-[a a )l *kh �a 2&E�O_ U� �_ N6FY h[OY��Oa W_ Ja K,FO_ Na X,a Y _ N[a )\[Zk\Za Y2a 2&E` NY _ Na 2&E` NO_ L_ Ja K,FO_ NE` ZO_ ;E` [O_ $_ (%a \%_ Z%a ]%E` ^O_ (kE` (O_ ^a _el `E` aO_ I_ /%_ .%_ /%a b%_ /%_ 6%_ /%a c%_ /%_ [%a d_ aa ea fa g hO_ aj iOb  kEc  [OY��O�a j ;� +*a ka la ma na oa pb  %a q%�b   a  rUOjEc  Y hY I�a s )� !*a ka ta ma ua oa v�b   a  rUY �a w a xa yjl zY hOPW jX { |�a } ;� 3*a ka ~a ma a oa �_ /%_ 9%a �%_ /%�%�b   a  rUY "�a � a ��%_ /%�%a yjl zY hOPUascr  ��ޭ