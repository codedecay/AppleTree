FasdUAS 1.101.10   ��   ��    k             l      ��  ��   :4
Veritrope.com
Apple Mail -- Text File Exporter - Single file w/ Only Basic Header Info.
Version 1.0
Sept 15, 2011

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/apple-mail-headers-to-a-text-file

// CHANGELOG:

1.0  Initial Release

// RECOMMENDED INSTALLATION INSTRUCTIONS:

FastScripts Installation (Optional, but recommended):
--Download and Install FastScripts from http://www.red-sweater.com/fastscripts/index.html
--Copy script or an Alias to ~/Library/Scripts/Applications/NAME OF APP
--Set up your keyboard shortcut
     � 	 	h 
 V e r i t r o p e . c o m 
 A p p l e   M a i l   - -   T e x t   F i l e   E x p o r t e r   -   S i n g l e   f i l e   w /   O n l y   B a s i c   H e a d e r   I n f o . 
 V e r s i o n   1 . 0 
 S e p t   1 5 ,   2 0 1 1 
 
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t : 
 h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - h e a d e r s - t o - a - t e x t - f i l e 
 
 / /   C H A N G E L O G : 
 
 1 . 0     I n i t i a l   R e l e a s e 
 
 / /   R E C O M M E N D E D   I N S T A L L A T I O N   I N S T R U C T I O N S : 
 
 F a s t S c r i p t s   I n s t a l l a t i o n   ( O p t i o n a l ,   b u t   r e c o m m e n d e d ) : 
 - - D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   f r o m   h t t p : / / w w w . r e d - s w e a t e r . c o m / f a s t s c r i p t s / i n d e x . h t m l 
 - - C o p y   s c r i p t   o r   a n   A l i a s   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / N A M E   O F   A P P 
 - - S e t   u p   y o u r   k e y b o a r d   s h o r t c u t 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l      ��  ��     y
======================================
// PROPERTIES (USE CAUTION WHEN CHANGING)
======================================
     �   � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R O P E R T I E S   ( U S E   C A U T I O N   W H E N   C H A N G I N G ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��        j     �� �� 0 	growlname 	growlName  m        �    M a i l T e x t E x p o r t      j    �� �� 0 appname appName  m       �    M a i l       j    �� !�� 0 successcount successCount ! m     " " � # #  0    $ % $ l     ��������  ��  ��   %  & ' & l      �� ( )��   ( e _
======================================
// MAIN PROGRAM
======================================
    ) � * * � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 '  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   /  CHECK FOR GROWL    0 � 1 1  C H E C K   F O R   G R O W L .  2 3 2 l     4���� 4 O      5 6 5 r     7 8 7 n    	 9 : 9 1    	��
�� 
pnam : 2    ��
�� 
prcs 8 o      ���� 0 processnames   6 m      ; ;�                                                                                  sevs  alis    �  Macintosh HD               �0ڲH+   R�System Events.app                                               UK��Ɖ        ����  	                CoreServices    �1�      ���     R� R� R�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   3  < = < l   L >���� > Z    L ? @���� ? I    �� A���� 0 appisrunning appIsRunning A  B�� B m     C C � D D  G r o w l H e l p e r A p p��  ��   @ k    H E E  F G F r     H I H m    ��
�� boovtrue I o      ���� 0 	isrunning 	isRunning G  J�� J O    H K L K k    G M M  N O N r    $ P Q P J    " R R  S T S m     U U � V V ( S u c c e s s   N o t i f i c a t i o n T  W�� W m      X X � Y Y ( F a i l u r e   N o t i f i c a t i o n��   Q o      ���� ,0 allnotificationslist allNotificationsList O  Z [ Z r   % + \ ] \ J   % ) ^ ^  _ ` _ m   % & a a � b b ( S u c c e s s   N o t i f i c a t i o n `  c�� c m   & ' d d � e e ( F a i l u r e   N o t i f i c a t i o n��   ] o      ���� 40 enablednotificationslist enabledNotificationsList [  f�� f I  , G���� g
�� .registernull��� ��� null��   g �� h i
�� 
appl h o   . 3���� 0 	growlname 	growlName i �� j k
�� 
anot j o   4 5���� ,0 allnotificationslist allNotificationsList k �� l m
�� 
dnot l o   8 9���� 40 enablednotificationslist enabledNotificationsList m �� n��
�� 
iapp n o   < A���� 0 appname appName��  ��   L m     o o�                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ��  ��  ��  ��  ��   =  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t ) #TEMP FILES PROCESSED ON THE DESKTOP    u � v v F T E M P   F I L E S   P R O C E S S E D   O N   T H E   D E S K T O P s  w x w l  M � y���� y O   M � z { z k   S � | |  } ~ } Z  S r  �����  l  S _ ����� � I  S _�� ���
�� .coredoexbool        obj  � l  S [ ����� � 4   S [�� �
�� 
cfol � m   W Z � � � � � $ T e m p   E x p o r t   F o l d e r��  ��  ��  ��  ��   � r   b n � � � l  b j ����� � l  b j ����� � 4   b j�� �
�� 
cfol � m   f i � � � � � $ T e m p   E x p o r t   F o l d e r��  ��  ��  ��   � o      ���� 0 	folderloc 	FolderLoc��  ��   ~  � � � Z   s � � ����� � H   s � � � l  s  ����� � I  s �� ���
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
TEXT � o      ���� 0 saveloc SaveLoc��   { m   M P � ��                                                                                  MACS  alis    t  Macintosh HD               �0ڲH+   R�
Finder.app                                                      S����R        ����  	                CoreServices    �1�      �͒     R� R� R�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   x  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  APPLE MAIL ITEM SELECTION    � � � � 2 A P P L E   M A I L   I T E M   S E L E C T I O N �  � � � l  �I ����� � O   �I � � � Q   �H � � � � k   �� � �  � � � Z   �� � � ��� � l  � � ����� � >  � � � � � 1   � ���
�� 
slct � J   � �����  ��  ��   � k   �� � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � 1   � ���
�� 
slct � o      ���� 0 themessages theMessages �  � � � r   � � � � � m   � �����  � o      ���� 	0 msgnr   �  � � � X   �N ��� � � k   �I � �  � � � r   � � � � � l  � � ����� � n   � � � � � 2  � ���
�� 
trcp � o   � ����� 0 thismessage thisMessage��  ��   � o      �� 0 recipientlist   �  � � � l  � ��~�}�|�~  �}  �|   �  � � � l   � ��{ � ��{   � 4 .Adding the Recipients in a separate variable      � � � � \ A d d i n g   t h e   R e c i p i e n t s   i n   a   s e p a r a t e   v a r i a b l e     �  � � � r   � � � � m   �  � � � � �  T o :   � o      �z�z 0 therecipients theRecipients �  � � � X  7 ��y � � r  2 � � � b  . � � � l * ��x�w � c  * � � � b  & � � � b  " � � � o  �v�v 0 therecipients theRecipients � m  ! � � � � �    � l "% ��u�t � n  "% � � � 1  #%�s
�s 
pnam � o  "#�r�r $0 currentrecipient CurrentRecipient�u  �t   � m  &)�q
�q 
ctxt�x  �w   � m  *- � � � � �    � o      �p�p 0 therecipients theRecipients�y $0 currentrecipient CurrentRecipient � o  �o�o 0 recipientlist   �    l 88�n�m�l�n  �m  �l    l 88�k�k   : 4�and also the cc-Recipients in a separate variable      � h & a n d   a l s o   t h e   c c - R e c i p i e n t s   i n   a   s e p a r a t e   v a r i a b l e      r  8A	
	 n  8= 2 9=�j
�j 
crcp o  89�i�i 0 thismessage thisMessage
 o      �h�h "0 ccrecipientlist CcRecipientList  r  BI m  BE �   o      �g�g "0 theccrecipients theCcRecipients  Z  J��f�e ?  JS l JQ�d�c l JQ�b�a I JQ�`�_
�` .corecnte****       **** o  JM�^�^ "0 ccrecipientlist CcRecipientList�_  �b  �a  �d  �c   m  QR�]�]   k  V�  r  V]  m  VY!! �""  C C :    o      �\�\ "0 theccrecipients theCcRecipients #$# X  ^�%�[&% r  t�'(' b  t�)*) l t�+�Z�Y+ c  t�,-, b  t./. b  t{010 o  tw�X�X "0 theccrecipients theCcRecipients1 m  wz22 �33   / l {~4�W�V4 n  {~565 1  |~�U
�U 
pnam6 o  {|�T�T (0 currentccrecipient CurrentCCRecipient�W  �V  - m  ��S
�S 
ctxt�Z  �Y  * m  ��77 �88   ( o      �R�R "0 theccrecipients theCcRecipients�[ (0 currentccrecipient CurrentCCRecipient& o  ad�Q�Q "0 ccrecipientlist CcRecipientList$ 9�P9 r  ��:;: l ��<�O�N< b  ��=>= o  ���M�M "0 theccrecipients theCcRecipients> o  ���L
�L 
ret �O  �N  ; o      �K�K "0 theccrecipients theCcRecipients�P  �f  �e   ?@? l ���J�I�H�J  �I  �H  @ ABA r  ��CDC l ��E�G�FE n  ��FGF 1  ���E
�E 
subjG o  ���D�D 0 thismessage thisMessage�G  �F  D o      �C�C 0 mytitle myTitleB HIH r  ��JKJ c  ��LML l ��N�B�AN n  ��OPO 1  ���@
�@ 
ctntP o  ���?�? 0 thismessage thisMessage�B  �A  M m  ���>
�> 
ctxtK o      �=�= 0 	mycontent 	myContentI QRQ r  ��STS l ��U�<�;U n  ��VWV 1  ���:
�: 
rptoW o  ���9�9 0 thismessage thisMessage�<  �;  T o      �8�8 0 	replyaddr 	ReplyAddrR XYX r  ��Z[Z l ��\�7�6\ n  ��]^] 1  ���5
�5 
sndr^ o  ���4�4 0 thismessage thisMessage�7  �6  [ o      �3�3 0 afzender  Y _`_ r  ��aba l ��c�2�1c n  ��ded 1  ���0
�0 
rdrce o  ���/�/ 0 thismessage thisMessage�2  �1  b o      �.�. 0 	emaildate 	EmailDate` fgf r  ��hih l ��j�-�,j n  ��klk 1  ���+
�+ 
rasol o  ���*�* 0 thismessage thisMessage�-  �,  i o      �)�) 0 	thesource 	theSourceg mnm l ���(�'�&�(  �'  �&  n opo l ���%qr�%  q + %Custom header with some standard data   r �ss J C u s t o m   h e a d e r   w i t h   s o m e   s t a n d a r d   d a t ap tut r  �vwv b  � xyx b  ��z{z b  ��|}| b  ��~~ b  ����� b  ����� b  ����� m  ���� ���  D a t e :  � o  ���$�$ 0 	emaildate 	EmailDate� o  ���#
�# 
ret � l 	����"�!� m  ���� ���  S u b j e c t :  �"  �!   o  ��� �  0 mytitle myTitle} o  ���
� 
ret { l 	������ m  ���� ���  F r o m :  �  �  y o  ���� 0 afzender  w o      �� 0 customheader CustomHeaderu ��� l ����  �  �  � ��� l ����  �  CLEAN TITLE FOR FILE   � ��� ( C L E A N   T I T L E   F O R   F I L E� ��� r  ��� n ��� 1  �
� 
txdl� 1  �
� 
ascr� o      �� &0 previousdelimiter previousDelimiter� ��� r  ��� o  �� 0 mytitle myTitle� o      �� 0 potentialname potentialName� ��� r  ��� J  ��  � o      �� 0 	legalname 	legalName� ��� r   :��� J   6�� ��� m   #�� ���  .� ��� m  #&�� ���  ,� ��� m  &)�� ���  /� ��� m  ),�� ���  :� ��� m  ,/�� ���  [� ��� m  /2�� ���  ]�  � o      �� &0 illegalcharacters illegalCharacters� ��� X  ;u���� k  Up�� ��� r  U\��� c  UZ��� o  UV�� 0 thischaracter thisCharacter� m  VY�
� 
ctxt� o      �
�
 0 thischaracter thisCharacter� ��	� Z  ]p����� H  ]c�� E ]b��� o  ]`�� &0 illegalcharacters illegalCharacters� o  `a�� 0 thischaracter thisCharacter� r  fl��� o  fg�� 0 thischaracter thisCharacter� l     ���� n      ���  ;  jk� o  gj�� 0 	legalname 	legalName�  �  �  �  �	  � 0 thischaracter thisCharacter� l >E�� ��� n  >E��� 2 AE��
�� 
cha � o  >A���� 0 potentialname potentialName�   ��  � ��� l vv��������  ��  ��  � ��� r  v���� m  vy�� ���  � n     ��� 1  |���
�� 
txdl� 1  y|��
�� 
ascr� ��� l ����������  ��  ��  � ��� Z  �������� ? ����� n  ����� 1  ����
�� 
leng� o  ������ 0 	legalname 	legalName� m  ������  � r  ����� c  ����� n  ����� 7 ������
�� 
cobj� m  ������ � m  ������  � o  ������ 0 	legalname 	legalName� m  ����
�� 
ctxt� o      ���� 0 	legalname 	legalName��  � r  ����� c  ����� o  ������ 0 	legalname 	legalName� m  ����
�� 
ctxt� o      ���� 0 	legalname 	legalName� ��� l ����������  ��  ��  � ��� r  ����� o  ������ &0 previousdelimiter previousDelimiter� n     � � 1  ����
�� 
txdl  1  ����
�� 
ascr�  r  �� o  ������ 0 	legalname 	legalName o      ���� 0 thefilename theFileName  l ����������  ��  ��    l ����	
��  	  EXPORT TO TXT FILE   
 � $ E X P O R T   T O   T X T   F I L E  r  �� o  ������ 0 	mycontent 	myContent o      ���� 0 thetext theText  l ������   U O              set theFilePath to (SaveLoc & msgnr & "_" & theFileName & ".txt")    � �                             s e t   t h e F i l e P a t h   t o   ( S a v e L o c   &   m s g n r   &   " _ "   &   t h e F i l e N a m e   &   " . t x t " )  r  �� l ������ b  �� o  ������ 0 saveloc SaveLoc m  �� � " M e s s a g e D i g e s t . t x t��  ��   o      ���� 0 thefilepath theFilePath  r  �� !  [  ��"#" o  ������ 	0 msgnr  # m  ������ ! o      ���� 	0 msgnr   $%$ r  ��&'& I ����()
�� .rdwropenshor       file( o  ������ 0 thefilepath theFilePath) ��*��
�� 
perm* m  ����
�� boovtrue��  ' o      ���� $0 thefilereference theFileReference% +,+ I �3��-.
�� .rdwrwritnull���     ****- l �/����/ b  �010 b  �232 b  �454 b  �	676 b  �898 b  �:;: o  ������ 0 customheader CustomHeader; o  � ��
�� 
ret 9 o  ���� 0 therecipients theRecipients7 o  ��
�� 
ret 5 o  	���� "0 theccrecipients theCcRecipients3 m  << �==  - - - - - - - - - -1 o  ��
�� 
ret ��  ��  . ��>?
�� 
wrat> l !@����@ [  !ABA m  ���� B l  C����C I  ��D��
�� .rdwrgeofcomp       ****D o  ���� $0 thefilereference theFileReference��  ��  ��  ��  ��  ? ��EF
�� 
refnE o  $'���� $0 thefilereference theFileReferenceF ��G��
�� 
as  G m  *-��
�� 
utf8��  , HIH l 44��JK��  J A ; write s2 starting at (1 + (get eof theFileReference)) to f   K �LL v   w r i t e   s 2   s t a r t i n g   a t   ( 1   +   ( g e t   e o f   t h e F i l e R e f e r e n c e ) )   t o   fI MNM I 4;��O��
�� .rdwrclosnull���     ****O o  47���� $0 thefilereference theFileReference��  N P��P r  <IQRQ [  <CSTS o  <A���� 0 successcount successCountT m  AB���� R o      ���� 0 successcount successCount��  �� 0 thismessage thisMessage � o   � ����� 0 themessages theMessages � UVU l OO��������  ��  ��  V WXW l OO��YZ��  Y   GROWL   Z �[[    G R O W LX \��\ Z  O�]^����] E OT_`_ o  OP���� 0 processnames  ` m  PSaa �bb  G r o w l H e l p e r A p p^ k  W�cc ded O  W�fgf l [�hijh I [�����k
�� .notifygrnull��� ��� null��  k ��lm
�� 
namel l 	_bn����n m  _boo �pp ( S u c c e s s   N o t i f i c a t i o n��  ��  m ��qr
�� 
titlq l 	ehs����s m  ehtt �uu  E x p o r t   S u c c e s s��  ��  r ��vw
�� 
descv b  kxxyx b  ktz{z m  kn|| �}} , S u c c e s s f u l l y   E x p o r t e d  { o  ns���� 0 successcount successCounty l 	tw~����~ m  tw ��� 6   M e s s a g e s   t o   E x p o r t   F o l d e r !��  ��  w �����
�� 
appl� o  y~���� 0 	growlname 	growlName��  i   GROWL SUCCESS   j ���    G R O W L   S U C C E S Sg m  WX���                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  e ���� r  ����� m  ������  � o      ���� 0 successcount successCount��  ��  ��  ��   � ��� E ����� o  ������ 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� ��� O  ����� l ������ I �������
�� .notifygrnull��� ��� null��  � ����
�� 
name� l 	�������� m  ���� ��� ( F a i l u r e   N o t i f i c a t i o n��  ��  � ����
�� 
titl� l 	�������� m  ���� ���  E x p o r t   F a i l u r e��  ��  � ����
�� 
desc� l 	�������� m  ���� ��� < N o   M e s s a g e s   o r   N o t e s   S e l e c t e d !��  ��  � �����
�� 
appl� o  ������ 0 	growlname 	growlName��  � %  GROWL FAILURE FOR NO SELECTION   � ��� >   G R O W L   F A I L U R E   F O R   N O   S E L E C T I O N� m  �����                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  � ��� H  ���� E ����� o  ������ 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� ���� l ������ I ������
�� .sysodlogaskr        TEXT� m  ���� ��� < N o   M e s s a g e s   o r   N o t e s   S e l e c t e d !� ���~
� 
disp� m  ���}�}  �~  � , & NON-GROWL ERROR MSG. FOR NO SELECTION   � ��� L   N O N - G R O W L   E R R O R   M S G .   F O R   N O   S E L E C T I O N��  ��   � ��|� l  ���{���{  �   ERROR HANDLING    � ���     E R R O R   H A N D L I N G  �|   � R      �z��
�z .ascrerr ****      � ****� o      �y�y 0 errtext errText� �x��w
�x 
errn� o      �v�v 0 errnum errNum�w   � k  �H�� ��� Z  �F����u� E ����� o  ���t�t 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� O  �#��� l �"���� I �"�s�r�
�s .notifygrnull��� ��� null�r  � �q��
�q 
name� l 	����p�o� m  ���� ��� ( F a i l u r e   N o t i f i c a t i o n�p  �o  � �n��
�n 
titl� l 	����m�l� m  ���� ���  I m p o r t   F a i l u r e�m  �l  � �k��
�k 
desc� b  ��� b  ��� b  ��� b  ��� b  ��� m  �� ��� " F a i l e d   t o   e x p o r t  � o  �j
�j 
ret � o  �i�i 0 mytitle myTitle� l 	��h�g� m  �� ��� <     d u e   t o   t h e   f o l l o w i n g   e r r o r :  �h  �g  � o  �f
�f 
ret � l 
��e�d� o  �c�c 0 errtext errText�e  �d  � �b��a
�b 
appl� o  �`�` 0 	growlname 	growlName�a  �   GROWL FAILURE FOR ERROR   � ��� 0   G R O W L   F A I L U R E   F O R   E R R O R� m  �����                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  � ��� H  &,�� E &+��� o  &'�_�_ 0 processnames  � m  '*�� ���  G r o w l H e l p e r A p p� ��^� l /B���� I /B�]��
�] .sysodlogaskr        TEXT� b  /:��� b  /8��� b  /4� � m  /2 � . I t e m   F a i l e d   t o   E x p o r t :    o  23�\�\ 0 errnum errNum� o  47�[
�[ 
ret � o  89�Z�Z 0 errtext errText� �Y�X
�Y 
disp m  =>�W�W  �X  � %  NON-GROWL ERROR MSG. FOR ERROR   � � >   N O N - G R O W L   E R R O R   M S G .   F O R   E R R O R�^  �u  � �V l GG�U�T�S�U  �T  �S  �V   � m   � ��                                                                                  emal  alis    F  Macintosh HD               �0ڲH+   R�Mail.app                                                        Ts�0w        ����  	                Applications    �1�      �h�     R�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��  ��   �  l     �R�Q�P�R  �Q  �P   	
	 l      �O�O   p j
======================================
// PREPARATORY SUBROUTINES
======================================
    � � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R E P A R A T O R Y   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

  l     �N�M�L�N  �M  �L    l     �K�K    MAKE LIST OF RUNNING APPS    � 2 M A K E   L I S T   O F   R U N N I N G   A P P S  i   	  I      �J�I�J 0 appisrunning appIsRunning �H o      �G�G 0 appname appName�H  �I   O     E     l   	�F�E n    	 !  1    	�D
�D 
pnam! 2   �C
�C 
prcs�F  �E   o   	 
�B�B 0 appname appName m     ""�                                                                                  sevs  alis    �  Macintosh HD               �0ڲH+   R�System Events.app                                               UK��Ɖ        ����  	                CoreServices    �1�      ���     R� R� R�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   #$# l     �A�@�?�A  �@  �?  $ %&% l      �>'(�>  ' l f
======================================
// UTILITY SUBROUTINES
======================================
   ( �)) � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U T I L I T Y   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
& *+* l     �=�<�;�=  �<  �;  + ,-, l     �:./�:  .  REPLACE SUBROUTINE   / �00 $ R E P L A C E   S U B R O U T I N E- 1�91 i    232 I      �84�7�8 0 replacestring replaceString4 565 o      �6�6 0 	thestring 	theString6 787 o      �5�5 &0 theoriginalstring theOriginalString8 9�49 o      �3�3 0 thenewstring theNewString�4  �7  3 k     f:: ;<; r     =>= J     ?? @A@ n    BCB 1    �2
�2 
txdlC 1     �1
�1 
ascrA D�0D o    �/�/ &0 theoriginalstring theOriginalString�0  > J      EE FGF o      �.�. 0 od  G H�-H n     IJI 1    �,
�, 
txdlJ 1    �+
�+ 
ascr�-  < KLK r    MNM n    OPO 2   �*
�* 
citmP o    �)�) 0 	thestring 	theStringN o      �(�(  0 thestringparts theStringPartsL QRQ Z    ]ST�'�&S ?   %UVU l   #W�%�$W I   #�#X�"
�# .corecnte****       ****X o    �!�!  0 thestringparts theStringParts�"  �%  �$  V m   # $� �  T k   ( YYY Z[Z r   ( 0\]\ c   ( .^_^ n   ( ,`a` 4   ) ,�b
� 
citmb m   * +�� a o   ( )��  0 thestringparts theStringParts_ m   , -�
� 
TEXT] o      �� 0 	thestring 	theString[ c�c X   1 Yd�ed r   K Tfgf c   K Rhih b   K Pjkj b   K Nlml o   K L�� 0 	thestring 	theStringm o   L M�� 0 thenewstring theNewStringk o   N O�� 0 eachpart eachParti m   P Q�
� 
TEXTg o      �� 0 	thestring 	theString� 0 eachpart eachParte n   4 ?non 7  5 ?�pq
� 
cobjp m   9 ;�� q m   < >����o o   4 5��  0 thestringparts theStringParts�  �'  �&  R rsr r   ^ ctut o   ^ _�� 0 od  u n     vwv 1   ` b�
� 
txdlw 1   _ `�
� 
ascrs x�x L   d fyy o   d e�� 0 	thestring 	theString�  �9       �
z   "{|}�
  z �	������	 0 	growlname 	growlName� 0 appname appName� 0 successcount successCount� 0 appisrunning appIsRunning� 0 replacestring replaceString
� .aevtoappnull  �   � ****{ ���~� � 0 appisrunning appIsRunning� ����� �  ���� 0 appname appName�  ~ ���� 0 appname appName "����
�� 
prcs
�� 
pnam�  � 	*�-�,�U| ��3���������� 0 replacestring replaceString�� ����� �  �������� 0 	thestring 	theString�� &0 theoriginalstring theOriginalString�� 0 thenewstring theNewString��  � �������������� 0 	thestring 	theString�� &0 theoriginalstring theOriginalString�� 0 thenewstring theNewString�� 0 od  ��  0 thestringparts theStringParts�� 0 eachpart eachPart� ��������������
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
kocl�� g��,�lvE[�k/E�Z[�l/��,FZO��-E�O�j k 6��k/�&E�O '�[�\[Zl\Zi2[��l kh ��%�%�&E�[OY��Y hO���,FO�} �����������
�� .aevtoappnull  �   � ****� k    I��  2��  <��  w��  �����  ��  ��  � �������������� 0 thismessage thisMessage�� $0 currentrecipient CurrentRecipient�� (0 currentccrecipient CurrentCCRecipient�� 0 thischaracter thisCharacter�� 0 errtext errText�� 0 errnum errNum� � ;������ C���� o U X�� a d�������������� ��� ��� ��� ����������� ����������������������� ��� ��� �������!27��������������������������������������������������������������������<��������������a��o��t��|���������������������
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
ctxt
�� 
crcp�� "0 ccrecipientlist CcRecipientList�� "0 theccrecipients theCcRecipients
�� 
ret 
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
wrat
�� .rdwrgeofcomp       ****
�� 
refn
�� 
as  
�� 
utf8
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
�� .sysodlogaskr        TEXT�� 0 errtext errText� ������
�� 
errn�� 0 errnum errNum��  ��J� 	*�-�,E�UO*�k+  7eE�O� +��lvE�O��lvE�O*�b   ��a �a b  a  UY hOa  f*a a /j  *a a /E` Y hO*a a /j  )*a a a a j a �a  la ! "E` Y hO_ a #&E` $UOa %� *a &,jv�*a &,E` 'OkE` (Op_ '[a a )l *kh  �a +-E` ,Oa -E` .O 1_ ,[a a )l *kh _ .a /%��,%a 0&a 1%E` .[OY��O�a 2-E` 3Oa 4E` 5O_ 3j *j Ka 6E` 5O 1_ 3[a a )l *kh _ 5a 7%��,%a 0&a 8%E` 5[OY��O_ 5_ 9%E` 5Y hO�a :,E` ;O�a <,a 0&E` =O�a >,E` ?O�a @,E` AO�a B,E` CO�a D,E` EOa F_ C%_ 9%a G%_ ;%_ 9%a H%_ A%E` IO_ Ja K,E` LO_ ;E` MOjvE` NOa Oa Pa Qa Ra Sa Ta !vE` UO 9_ Ma V-[a a )l *kh �a 0&E�O_ U� �_ N6FY h[OY��Oa W_ Ja K,FO_ Na X,a Y _ N[a )\[Zk\Za Y2a 0&E` NY _ Na 0&E` NO_ L_ Ja K,FO_ NE` ZO_ =E` [O_ $a \%E` ]O_ (kE` (O_ ]a ^el _E` `O_ I_ 9%_ .%_ 9%_ 5%a a%_ 9%a bk_ `j ca d_ `a ea fa ! gO_ `j hOb  kEc  [OY��O�a i ;� +*a ja ka la ma na ob  %a p%�b   a  qUOjEc  Y hY I�a r )� !*a ja sa la ta na u�b   a  qUY �a v a wa xjl yY hOPW jX z {�a | ;� 3*a ja }a la ~a na _ 9%_ ;%a �%_ 9%�%�b   a  qUY "�a � a ��%_ 9%�%a xjl yY hOPU ascr  ��ޭ