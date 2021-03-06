FasdUAS 1.101.10   ��   ��    k             l      ��  ��   0*
http://veritrope.com
Export Selected Evernote Items as RTFD Files
Version 1.4
June 11, 2011

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/export-selected-evernote-items-as-rtfd-files/
Installation: Just run the script!

FastScripts Installation (Optional, but recommended):
--Download and Install FastScripts from http://www.red-sweater.com/fastscripts/index.html
--Copy script or an Alias to ~/Library/Scripts/Applications/Evernote
--Set up your keyboard shortcut

CHANGELOG:
1.40     UPDATED TO MAKE RTF CREATION DATE MATCH EVERNOTE ITEM
1.30    UPDATED TO UTILIZE NEW EVERNOTE APPLESCRIPT SELECTION AVAILABILITY
1.20    UPDATED TO FIX A COSMETIC ISSUE, CHANGE PATH FOR RTFD FILES
1.10     UPDATED TO USE NATIVE HTML EXPORT, CREATE RTFD FILES
1.00    INITIAL RELEASE
     � 	 	T 
 h t t p : / / v e r i t r o p e . c o m 
 E x p o r t   S e l e c t e d   E v e r n o t e   I t e m s   a s   R T F D   F i l e s 
 V e r s i o n   1 . 4 
 J u n e   1 1 ,   2 0 1 1 
 
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t : 
 h t t p : / / v e r i t r o p e . c o m / c o d e / e x p o r t - s e l e c t e d - e v e r n o t e - i t e m s - a s - r t f d - f i l e s / 
 I n s t a l l a t i o n :   J u s t   r u n   t h e   s c r i p t ! 
 
 F a s t S c r i p t s   I n s t a l l a t i o n   ( O p t i o n a l ,   b u t   r e c o m m e n d e d ) : 
 - - D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   f r o m   h t t p : / / w w w . r e d - s w e a t e r . c o m / f a s t s c r i p t s / i n d e x . h t m l 
 - - C o p y   s c r i p t   o r   a n   A l i a s   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / E v e r n o t e 
 - - S e t   u p   y o u r   k e y b o a r d   s h o r t c u t 
 
 C H A N G E L O G : 
 1 . 4 0           U P D A T E D   T O   M A K E   R T F   C R E A T I O N   D A T E   M A T C H   E V E R N O T E   I T E M 
 1 . 3 0         U P D A T E D   T O   U T I L I Z E   N E W   E V E R N O T E   A P P L E S C R I P T   S E L E C T I O N   A V A I L A B I L I T Y 
 1 . 2 0         U P D A T E D   T O   F I X   A   C O S M E T I C   I S S U E ,   C H A N G E   P A T H   F O R   R T F D   F I L E S 
 1 . 1 0           U P D A T E D   T O   U S E   N A T I V E   H T M L   E X P O R T ,   C R E A T E   R T F D   F I L E S 
 1 . 0 0         I N I T I A L   R E L E A S E 
   
  
 l     ��������  ��  ��        j     �� �� 0 
clean_text    m        �          j    �� �� 0 
cleantitle 
CleanTitle  m       �          j    �� �� 0 thenum theNum  m       �    0      j   	 �� �� 0 rtfpath RTFPath  m   	 
   �         !   l     ��������  ��  ��   !  " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   &   CHECK FOR GROWL     ' � ( ( "   C H E C K   F O R   G R O W L   %  ) * ) l     +���� + O      , - , r     . / . n    	 0 1 0 1    	��
�� 
pnam 1 2    ��
�� 
prcs / o      ���� 0 processnames   - m      2 2�                                                                                  sevs  alis    �  Macintosh HD               �0ڲH+   R�System Events.app                                               UK��Ɖ        ����  	                CoreServices    �1�      ���     R� R� R�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   *  3 4 3 l     ��������  ��  ��   4  5 6 5 l   = 7���� 7 Z    = 8 9���� 8 E    : ; : o    ���� 0 processnames   ; m     < < � = =  G r o w l H e l p e r A p p 9 O    9 > ? > k    8 @ @  A B A r     C D C J     E E  F G F m     H H � I I ( S u c c e s s   N o t i f i c a t i o n G  J�� J m     K K � L L ( F a i l u r e   N o t i f i c a t i o n��   D l      M���� M o      ���� ,0 allnotificationslist allNotificationsList��  ��   B  N O N r    $ P Q P J    " R R  S T S m     U U � V V ( S u c c e s s   N o t i f i c a t i o n T  W�� W m      X X � Y Y ( F a i l u r e   N o t i f i c a t i o n��   Q l      Z���� Z o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   O  [�� [ I  % 8���� \
�� .registernull��� ��� null��   \ �� ] ^
�� 
appl ] l 	 ' ( _���� _ m   ' ( ` ` � a a   E v e r n o t e   t o   R T F D��  ��   ^ �� b c
�� 
anot b l 
 ) * d���� d o   ) *���� ,0 allnotificationslist allNotificationsList��  ��   c �� e f
�� 
dnot e l 
 + , g���� g o   + ,���� 40 enablednotificationslist enabledNotificationsList��  ��   f �� h��
�� 
iapp h m   / 2 i i � j j  E v e r n o t e��  ��   ? m     k k�                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ��  ��  ��  ��   6  l m l l     ��������  ��  ��   m  n o n l      �� p q��   p  MAIN PROGRAM     q � r r  M A I N   P R O G R A M   o  s t s l     ��������  ��  ��   t  u v u l  >i w���� w O   >i x y x Q   Dh z { | z k   G � } }  ~  ~ l   G G�� � ���   � # PICK THE NOTES FROM THE LIST     � � � � : P I C K   T H E   N O T E S   F R O M   T H E   L I S T     � � � r   G P � � � l  G L ����� � 1   G L��
�� 
EV15��  ��   � o      ���� 0 selnotes SelNotes �  � � � l  Q Q��������  ��  ��   �  � � � Z   Q � � ��� � � l  Q V ����� � >  Q V � � � o   Q T���� 0 selnotes SelNotes � m   T U��
�� boovfals��  ��   � k   Y � � �  � � � l   Y Y�� � ���   �  PICK EXPORT DESTINATION    � � � � . P I C K   E X P O R T   D E S T I N A T I O N �  � � � r   Y t � � � I  Y p���� �
�� .sysostflalis    ��� null��   � �� � �
�� 
prmp � m   ] ` � � � � � P C h o o s e   T h e   D e s t i n a t i o n   F o l d e r   o r   V o l u m e : � �� ���
�� 
dflc � l  c j ����� � I  c j�� ���
�� .earsffdralis        afdr � m   c f��
�� afdmdesk��  ��  ��  ��   � o      ���� 0 saveloc SaveLoc �  � � � l  u u��������  ��  ��   �  � � � l   u u�� � ���   �  DO THE CONVERSION    � � � � " D O   T H E   C O N V E R S I O N �  � � � n  u � � � � I   v ��� ����� 0 
enexexport 
ENEXExport �  � � � o   v y���� 0 selnotes SelNotes �  ��� � o   y |���� 0 saveloc SaveLoc��  ��   �  f   u v �  � � � l  � ���������  ��  ��   �  ��� � Z   � � � ����� � E  � � � � � o   � ����� 0 processnames   � m   � � � � � � �  G r o w l H e l p e r A p p � l  � � � � � � O   � � � � � I  � ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 � � ����� � m   � � � � � � � ( S u c c e s s   N o t i f i c a t i o n��  ��   � �� � �
�� 
titl � l 	 � � ����� � m   � � � � � � � 2 S u c c e s s f u l   E x p o r t   t o   R T F !��  ��   � �� � �
�� 
desc � b   � � � � � l 	 � � ����� � m   � � � � � � � 4 N u m b e r   o f   N o t e s   E x p o r t e d :  ��  ��   � o   � ����� 0 thenum theNum � �� ���
�� 
appl � m   � � � � � � �   E v e r n o t e   t o   R T F D��   � m   � � � ��                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��   �   GROWL SUCCESS    � � � �    G R O W L   S U C C E S S��  ��  ��  ��   � Z   � � � � ��� � E  � � � � � o   � ����� 0 processnames   � m   � � � � � � �  G r o w l H e l p e r A p p � O   � � � � � l  � � � � � � I  � ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 � � ����� � m   � � � � � � � ( F a i l u r e   N o t i f i c a t i o n��  ��   � �� � �
�� 
titl � l 	 � � ����� � m   � � � � � � �  E x p o r t   F a i l u r e��  ��   � �� � �
�� 
desc � l 	 � � ���~ � m   � � � � � � � $ N o   n o t e s   s e l e c t e d !�  �~   � �} ��|
�} 
appl � m   � � � � � � �   E v e r n o t e   t o   R T F D�|   � %  GROWL FAILURE FOR NO SELECTION    � � � � >   G R O W L   F A I L U R E   F O R   N O   S E L E C T I O N � m   � � � ��                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��   �  � � � H   � � � � E  � � � � � o   � ��{�{ 0 processnames   � m   � � � � � � �  G r o w l H e l p e r A p p �  �z  l  � � I  � ��y
�y .sysodlogaskr        TEXT m   � � � 8 N o   h e a d l i n e   o r   t a b   s e l e c t e d ! �x�w
�x 
disp m   � ��v�v  �w   , & NON-GROWL ERROR MSG. FOR NO SELECTION    �		 L   N O N - G R O W L   E R R O R   M S G .   F O R   N O   S E L E C T I O N�z  ��   � 

 l  � ��u�t�s�u  �t  �s    l  � ��r�q�p�r  �q  �p   �o l   � ��n�n     ERROR HANDLING     �     E R R O R   H A N D L I N G  �o   { R      �m
�m .ascrerr ****      � **** o      �l�l 0 errtext errText �k�j
�k 
errn o      �i�i 0 errnum errNum�j   | Z  h�h E  o  �g�g 0 processnames   m   �  G r o w l H e l p e r A p p O  E l D  I D�f�e!
�f .notifygrnull��� ��� null�e  ! �d"#
�d 
name" l 	$�c�b$ m  %% �&& ( F a i l u r e   N o t i f i c a t i o n�c  �b  # �a'(
�a 
titl' l 	 )�`�_) m   ** �++  I m p o r t   F a i l u r e�`  �_  ( �^,-
�^ 
desc, b  #:./. b  #4010 b  #0232 b  #,454 b  #(676 m  #&88 �99 V E x p o r t   F a i l e d   d u e   t o   t h e   f o l l o w i n g   e r r o r :    7 o  &'�]�] 0 errtext errText5 o  (+�\
�\ 
ret 3 o  ,/�[
�[ 
ret 1 m  03:: �;;  N o t e   N a m e :  / l 
49<�Z�Y< o  49�X�X 0 
cleantitle 
CleanTitle�Z  �Y  - �W=�V
�W 
appl= m  ;>>> �??   E v e r n o t e   t o   R T F D�V     GROWL FAILURE FOR ERROR     �@@ 0   G R O W L   F A I L U R E   F O R   E R R O R m  AA�                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��   BCB H  HNDD E HMEFE o  HI�U�U 0 processnames  F m  ILGG �HH  G r o w l H e l p e r A p pC I�TI l QdJKLJ I Qd�SMN
�S .sysodlogaskr        TEXTM b  Q\OPO b  QZQRQ b  QVSTS m  QTUU �VV . I t e m   F a i l e d   t o   I m p o r t :  T o  TU�R�R 0 errnum errNumR o  VY�Q
�Q 
ret P o  Z[�P�P 0 errtext errTextN �OW�N
�O 
dispW m  _`�M�M  �N  K %  NON-GROWL ERROR MSG. FOR ERROR   L �XX >   N O N - G R O W L   E R R O R   M S G .   F O R   E R R O R�T  �h   y m   > AYY�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��   v Z[Z l     �L�K�J�L  �K  �J  [ \]\ l     �I�H�G�I  �H  �G  ] ^_^ l     �F�E�D�F  �E  �D  _ `a` l      �Cbc�C  b   SUBROUTINES    c �dd    S U B R O U T I N E S  a efe i    ghg I      �Bi�A�B 0 
enexexport 
ENEXExporti jkj o      �@�@ 0 selnotes SelNotesk l�?l o      �>�> 0 saveloc SaveLoc�?  �A  h k    hmm non l      �=pq�=  p  FIND FOLDER FOR NOTE   q �rr ( F I N D   F O L D E R   F O R   N O T Eo s�<s O    htut k   gvv wxw r    yzy m    �;�;  z o      �:�: 0 thenum theNumx {�9{ X   g|�8}| k   b~~ � r    !��� l   ��7�6� n    ��� 1    �5
�5 
pcnt� o    �4�4 0 selnote SelNote�7  �6  � o      �3�3 0 notetoexport noteToExport� ��� r   " *��� l  " (��2�1� n   " (��� 1   & (�0
�0 
ID  � n   " &��� 4   # &�/�
�/ 
cobj� m   $ %�.�. � o   " #�-�- 0 notetoexport noteToExport�2  �1  � o      �,�, 0 noteid NoteID� ��� r   + 3��� l  + 1��+�*� n   + 1��� 1   / 1�)
�) 
EVet� n   + /��� 4   , /�(�
�( 
cobj� m   - .�'�' � o   + ,�&�& 0 notetoexport noteToExport�+  �*  � o      �%�% 0 notename noteName� ��� r   4 >��� n   4 <��� l  8 <��$�#� n   8 <��� 1   : <�"
�" 
pnam� m   8 :�!
�! 
EVnb�$  �#  � n   4 8��� 4   5 8� �
�  
cobj� m   6 7�� � o   4 5�� 0 notetoexport noteToExport� o      �� 0 
evnotebook 
EVnotebook� ��� l  ? ?����  �  �  � ��� r   ? G��� l  ? E���� n   ? E��� 1   C E�
� 
EVdd� n   ? C��� 4   @ C��
� 
cobj� m   A B�� � o   ? @�� 0 notetoexport noteToExport�  �  � o      �� 0 notecreation noteCreation� ��� l  H H����  �  �  � ��� l   H H����  �  PREPARE HTML FOLDER    � ��� ( P R E P A R E   H T M L   F O L D E R  � ��� O   HT��� k   LS�� ��� r   L O��� m   L M�� ���  - e   s / ' / / g� o      �� 0 	singquote 	SingQuote� ��� l  P e���� r   P e��� I  P _���
� .sysoexecTEXT���     TEXT� l  P [���
� b   P [��� b   P W��� b   P U��� m   P Q�� ��� 
 e c h o  � n   Q T��� 1   R T�	
�	 
strq� o   Q R�� 0 notename noteName� m   U V�� ��� \     |   s e d   - e   ' s / : /   / g '   - e   ' s / " / / g '   - e   ' s /  /   / g '  � l  W Z���� n   W Z��� 1   X Z�
� 
strq� o   W X�� 0 	singquote 	SingQuote�  �  �  �
  �  � o      �� 0 
cleantitle 
CleanTitle� @ :CLEAN OUT COLONS FOR FILE PATH (SOUNDS GROSSER THAN IT IS)   � ��� t C L E A N   O U T   C O L O N S   F O R   F I L E   P A T H   ( S O U N D S   G R O S S E R   T H A N   I T   I S )� ��� r   f s��� l  f q���� b   f q��� l  f k�� ��� c   f k��� o   f g���� 0 saveloc SaveLoc� m   g j��
�� 
utxt�   ��  � o   k p���� 0 
cleantitle 
CleanTitle�  �  � o      ���� 0 archiveinput ArchiveInput� ��� l  t t��������  ��  ��  � ��� l   t t������  �  NEW HTML EXPORT    � ���   N E W   H T M L   E X P O R T  � ��� O   t ���� I  x �����
�� .EVRNenxpnull���     ****� l 
 x {������ J   x {�� ���� o   x y���� 0 notetoexport noteToExport��  ��  ��  � ����
�� 
kfil� l 
 ~ ������ o   ~ ���� 0 archiveinput ArchiveInput��  ��  � �����
�� 
Expf� m   � ���
�� Exffexht��  � m   t u���                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  � ��� l  � ���������  ��  ��  � ��� O   � �   k   � �  l   � �����    LOOK FOR RESOURCE FOLDER     � 2 L O O K   F O R   R E S O U R C E   F O L D E R   �� Q   � �	
��	 k   � �  r   � � l  � ����� 6  � � n   � � 2   � ���
�� 
file 4   � ���
�� 
cfol o   � ����� 0 archiveinput ArchiveInput =  � � l 	 � ����� 1   � ���
�� 
nmxt��  ��   m   � � �  h t m l��  ��   o      ���� 0 evnote EVNote �� r   � � l  � ����� b   � �  o   � ����� 0 
cleantitle 
CleanTitle  m   � �!! �"" 
 . h t m l��  ��   n      #$# 1   � ���
�� 
pnam$ l  � �%����% n   � �&'& 4   � ���(
�� 
cobj( m   � ����� ' o   � ����� 0 evnote EVNote��  ��  ��  
 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   m   � �))�                                                                                  MACS  alis    t  Macintosh HD               �0ڲH+   R�
Finder.app                                                      S����R        ����  	                CoreServices    �1�      �͒     R� R� R�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � *+* l  � ���������  ��  ��  + ,-, l   � ���./��  .  PREPARE FILENAME    / �00 " P R E P A R E   F I L E N A M E  - 121 r   � �343 c   � �565 l  � �7����7 b   � �898 b   � �:;: b   � �<=< b   � �>?> b   � �@A@ m   � �BB �CC  A o   � ����� 0 saveloc SaveLoc? o   � ����� 0 
cleantitle 
CleanTitle= m   � �DD �EE  :; o   � ����� 0 
cleantitle 
CleanTitle9 m   � �FF �GG 
 . h t m l��  ��  6 m   � ���
�� 
TEXT4 o      ���� 0 	inputfile 	InputFile2 HIH r   � �JKJ l  � �L����L n   � �MNM 1   � ���
�� 
strqN l  � �O����O n   � �PQP 1   � ���
�� 
psxpQ o   � ����� 0 	inputfile 	InputFile��  ��  ��  ��  K o      ���� 0 importposix ImportPOSIXI RSR r   �
TUT c   �VWV l  �X����X b   �YZY b   � [\[ b   � �]^] m   � �__ �``  ^ o   � ����� 0 saveloc SaveLoc\ o   � ����� 0 
cleantitle 
CleanTitleZ m   aa �bb 
 . r t f d��  ��  W m  ��
�� 
TEXTU o      ���� "0 savertflocation SaveRTFLocationS cdc r  efe l g����g n  hih 1  ��
�� 
strqi l j����j n  klk 1  ��
�� 
psxpl o  ���� "0 savertflocation SaveRTFLocation��  ��  ��  ��  f o      ���� 0 rtfpath RTFPathd mnm l ��������  ��  ��  n opo l  ��qr��  q  CONVERT THE FILE   r �ss   C O N V E R T   T H E   F I L Ep tut r  6vwv I 0��x��
�� .sysoexecTEXT���     TEXTx l ,y����y b  ,z{z b  (|}| b  &~~ b  "��� m  �� ��� @ t e x t u t i l     - c o n v e r t   r t f d   - o u t p u t  � o  !���� 0 rtfpath RTFPath m  "%�� ���   } o  &'���� 0 importposix ImportPOSIX{ m  (+�� ���  ��  ��  ��  w o      ���� 0 
clean_text  u ��� r  7?��� n 7=��� I  8=������� 0 dateustounix dateUSToUnix� ���� o  89���� 0 notecreation noteCreation��  ��  �  f  78� o      ���� 0 filecreated fileCreated� ���� I @S�����
�� .sysoexecTEXT���     TEXT� b  @O��� b  @I��� b  @E��� m  @C�� ���  t o u c h   - t  � o  CD���� 0 filecreated fileCreated� m  EH�� ���   � o  IN���� 0 rtfpath RTFPath��  ��  � m   H I���                                                                                  MACS  alis    t  Macintosh HD               �0ڲH+   R�
Finder.app                                                      S����R        ����  	                CoreServices    �1�      �͒     R� R� R�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� r  Ub��� [  U\��� o  UZ���� 0 thenum theNum� m  Z[���� � o      ���� 0 thenum theNum��  �8 0 selnote SelNote} o    ���� 0 selnotes SelNotes�9  u m     ���                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �<  f ��� l     ��������  ��  ��  � ��� l     ������  � * $CONVERT CREATION DATE TO UNIX FORMAT   � ��� H C O N V E R T   C R E A T I O N   D A T E   T O   U N I X   F O R M A T� ���� i    ��� I      ������� 0 dateustounix dateUSToUnix� ���� o      ���� 0 notecreation noteCreation��  ��  � k     ��� ��� r     ��� l    ������ n     ��� 1    ��
�� 
year� o     ���� 0 notecreation noteCreation��  ��  � o      ���� 0 y  � ��� r    ��� ]    ��� l   	������ n    	��� m    	��
�� 
mnth� o    ���� 0 notecreation noteCreation��  ��  � m   	 
���� � o      ���� 0 mo  � ��� Z   ����~� A    ��� o    �}�} 0 mo  � m    �|�| 
� r    ��� b    ��� m    �� ���  0� o    �{�{ 0 mo  � o      �z�z 0 mo  �  �~  � ��� r    #��� l   !��y�x� n    !��� 1    !�w
�w 
day � o    �v�v 0 notecreation noteCreation�y  �x  � o      �u�u 0 d  � ��� Z  $ 3���t�s� A   $ '��� o   $ %�r�r 0 d  � m   % &�q�q 
� r   * /��� b   * -��� m   * +�� ���  0� o   + ,�p�p 0 d  � o      �o�o 0 d  �t  �s  � ��� r   4 9��� l  4 7��n�m� n   4 7��� 1   5 7�l
�l 
hour� o   4 5�k�k 0 notecreation noteCreation�n  �m  � o      �j�j 0 h  � ��� Z  : I���i�h� A   : =��� o   : ;�g�g 0 h  � m   ; <�f�f 
� r   @ E��� b   @ C��� m   @ A�� ���  0� o   A B�e�e 0 h  � o      �d�d 0 h  �i  �h  � ��� r   J O��� l  J M��c�b� n   J M��� 1   K M�a
�a 
min � o   J K�`�` 0 notecreation noteCreation�c  �b  � o      �_�_ 0 m  � ��� Z  P _���^�]� A   P S��� o   P Q�\�\ 0 m  � m   Q R�[�[ 
� r   V [� � b   V Y m   V W �  0 o   W X�Z�Z 0 m    o      �Y�Y 0 m  �^  �]  �  r   ` e l  ` c	�X�W	 n   ` c

 m   a c�V
�V 
scnd o   ` a�U�U 0 notecreation noteCreation�X  �W   o      �T�T 0 s    Z  f u�S�R A   f i o   f g�Q�Q 0 s   m   g h�P�P 
 r   l q b   l o m   l m �  0 o   m n�O�O 0 s   o      �N�N 0 s  �S  �R   �M L   v � c   v � l  v ��L�K b   v � b   v �  b   v !"! b   v }#$# b   v {%&% b   v y'(' o   v w�J�J 0 y  ( o   w x�I�I 0 mo  & o   y z�H�H 0 d  $ o   { |�G�G 0 h  " o   } ~�F�F 0 m    m    �)) �**  . o   � ��E�E 0 s  �L  �K   m   � ��D
�D 
TEXT�M  ��       	�C+    ,-.�C  + �B�A�@�?�>�=�<�B 0 
clean_text  �A 0 
cleantitle 
CleanTitle�@ 0 thenum theNum�? 0 rtfpath RTFPath�> 0 
enexexport 
ENEXExport�= 0 dateustounix dateUSToUnix
�< .aevtoappnull  �   � ****, �;h�:�9/0�8�; 0 
enexexport 
ENEXExport�: �71�7 1  �6�5�6 0 selnotes SelNotes�5 0 saveloc SaveLoc�9  / �4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�4 0 selnotes SelNotes�3 0 saveloc SaveLoc�2 0 selnote SelNote�1 0 notetoexport noteToExport�0 0 noteid NoteID�/ 0 notename noteName�. 0 
evnotebook 
EVnotebook�- 0 notecreation noteCreation�, 0 	singquote 	SingQuote�+ 0 archiveinput ArchiveInput�* 0 evnote EVNote�) 0 	inputfile 	InputFile�( 0 importposix ImportPOSIX�' "0 savertflocation SaveRTFLocation�& 0 filecreated fileCreated0 +��%�$�#�"�!� �����������������2�!��BDF��_a������
�% 
kocl
�$ 
cobj
�# .corecnte****       ****
�" 
pcnt
�! 
ID  
�  
EVet
� 
EVnb
� 
pnam
� 
EVdd
� 
strq
� .sysoexecTEXT���     TEXT
� 
utxt
� 
kfil
� 
Expf
� Exffexht� 
� .EVRNenxpnull���     ****
� 
cfol
� 
file2  
� 
nmxt�  �  
� 
TEXT
� 
psxp� 0 dateustounix dateUSToUnix�8i�ejEc  OZ�[��l kh ��,E�O��k/�,E�O��k/�,E�O��k/�,�,E�O��k/�,E�O�	�E�O��,%�%��,%j Ec  O�a &b  %E�O� �kva �a a a  UO� : 1*a �/a -a [a ,\Za 81E�Ob  a %��k/�,FW X  hUOa �%b  %a %b  %a  %a !&E�O�a ",�,E�Oa #�%b  %a $%a !&E�O�a ",�,Ec  Oa %b  %a &%�%a '%j Ec   O)�k+ (E�Oa )�%a *%b  %j UOb  kEc  [OY��U- ����
34�	� 0 dateustounix dateUSToUnix� �5� 5  �� 0 notecreation noteCreation�
  3 ������� � 0 notecreation noteCreation� 0 y  � 0 mo  � 0 d  � 0 h  � 0 m  �  0 s  4 �����������������)��
�� 
year
�� 
mnth�� 

�� 
day 
�� 
hour
�� 
min 
�� 
scnd
�� 
TEXT�	 ���,E�O��,k E�O�� 
�%E�Y hO��,E�O�� 
�%E�Y hO��,E�O�� 
�%E�Y hO��,E�O�� 
�%E�Y hO��,E�O�� 
�%E�Y hO��%�%�%�%�%�%�&. ��6����78��
�� .aevtoappnull  �   � ****6 k    i99  )::  5;;  u����  ��  ��  7 ������ 0 errtext errText�� 0 errnum errNum8 = 2������ < k H K�� U X���� `������ i����Y������ ��������������� ��� ��� ��� � ��� � � � � � �������<%*8��:>GU
�� 
prcs
�� 
pnam�� 0 processnames  �� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList
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
EV15�� 0 selnotes SelNotes
�� 
prmp
�� 
dflc
�� afdmdesk
�� .earsffdralis        afdr�� 
�� .sysostflalis    ��� null�� 0 saveloc SaveLoc�� 0 
enexexport 
ENEXExport
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null
�� 
disp
�� .sysodlogaskr        TEXT�� 0 errtext errText< ������
�� 
errn�� 0 errnum errNum��  
�� 
ret ��j� 	*�-�,E�UO�� +� #��lvE�O��lvE�O*������a a a  UY hOa & �*a ,E` O_ f a*a a a a j a  E` O)_ _ l+ O�a   -� %*a !a "a #a $a %a &b  %�a 'a  (UY hY G�a ) '� *a !a *a #a +a %a ,�a -a  (UY �a . a /a 0jl 1Y hOPW hX 2 3�a 4 ;� 3*a !a 5a #a 6a %a 7�%_ 8%_ 8%a 9%b  %�a :a  (UY "�a ; a <�%_ 8%�%a 0jl 1Y hUascr  ��ޭ