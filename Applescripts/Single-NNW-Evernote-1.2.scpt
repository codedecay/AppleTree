FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
http://veritrope.comSingle Headline or Tab -- NNW to Evernote
Version 1.2
August 09, 2009 

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/tips/netnewswire-to-evernote-single-headline-or-tab-export-applescript		Some choices inspired by the following scripts/authors:
	-- Ernie Soffronoff
	-- Daniel N. Byler's DEVONthink script
	-- NetNewsWire To Pukka and Yojimbo
	-- Jan Erik Mostrom's script
	-- David Nunez scripts
	-- MANY, MANY OTHERS!
			Installation: Just drop it into the NetNewsWire Script Folder!			

FastScripts Installation (Optional, but recommended): 
--Download and Install FastScripts from http://www.red-sweater.com/fastscripts/index.html
--Copy script or an Alias to ~/Library/Scripts/Applications/NetNewsWire
--Set up your keyboard shortcut

CHANGELOG:
1.20   WORK-AROUND FOR MISSING (DESCRIPTION OF SELECTEDHEADLINE) ELEMENT
1.10     STREAMLINING (DEFAULT NOTEBOOK OPTION, CODE CONSOLIDATION) AND VARIOUS COSMETIC IMPROVEMENTS
1.01	ADDED "SOURCE URL" FUNCTIONALITY
1.00	INITIAL RELEASE     � 	 	, 
 h t t p : / / v e r i t r o p e . c o m  S i n g l e   H e a d l i n e   o r   T a b   - -   N N W   t o   E v e r n o t e 
 V e r s i o n   1 . 2 
 A u g u s t   0 9 ,   2 0 0 9   
 
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t : 
 h t t p : / / v e r i t r o p e . c o m / t i p s / n e t n e w s w i r e - t o - e v e r n o t e - s i n g l e - h e a d l i n e - o r - t a b - e x p o r t - a p p l e s c r i p t  	  	 S o m e   c h o i c e s   i n s p i r e d   b y   t h e   f o l l o w i n g   s c r i p t s / a u t h o r s : 
 	 - -   E r n i e   S o f f r o n o f f 
 	 - -   D a n i e l   N .   B y l e r ' s   D E V O N t h i n k   s c r i p t 
 	 - -   N e t N e w s W i r e   T o   P u k k a   a n d   Y o j i m b o 
 	 - -   J a n   E r i k   M o s t r o m ' s   s c r i p t 
 	 - -   D a v i d   N u n e z   s c r i p t s 
 	 - -   M A N Y ,   M A N Y   O T H E R S ! 
 	 	 	  I n s t a l l a t i o n :   J u s t   d r o p   i t   i n t o   t h e   N e t N e w s W i r e   S c r i p t   F o l d e r ! 	 	 	  
 
 F a s t S c r i p t s   I n s t a l l a t i o n   ( O p t i o n a l ,   b u t   r e c o m m e n d e d ) :   
 - - D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   f r o m   h t t p : / / w w w . r e d - s w e a t e r . c o m / f a s t s c r i p t s / i n d e x . h t m l 
 - - C o p y   s c r i p t   o r   a n   A l i a s   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / N e t N e w s W i r e 
 - - S e t   u p   y o u r   k e y b o a r d   s h o r t c u t 
 
 C H A N G E L O G : 
 1 . 2 0       W O R K - A R O U N D   F O R   M I S S I N G   ( D E S C R I P T I O N   O F   S E L E C T E D H E A D L I N E )   E L E M E N T 
 1 . 1 0           S T R E A M L I N I N G   ( D E F A U L T   N O T E B O O K   O P T I O N ,   C O D E   C O N S O L I D A T I O N )   A N D   V A R I O U S   C O S M E T I C   I M P R O V E M E N T S 
 1 . 0 1 	 A D D E D   " S O U R C E   U R L "   F U N C T I O N A L I T Y 
 1 . 0 0 	 I N I T I A L   R E L E A S E    
  
 j     �� �� 0 nnwtitle NNWTitle  m        �          j    �� �� 0 nnwtag NNWTag  m       �          j    �� �� 0 nnwbody NNWBody  m       �          j   	 �� �� 0 
evnotebook 
EVnotebook  m   	 
   �          j    ��  �� 0 selheadline selHeadline   m     ! ! � " "     # $ # l      �� % &��   %   CHECK FOR GROWL     & � ' ' "   C H E C K   F O R   G R O W L   $  ( ) ( l     *���� * O      + , + r     - . - n    	 / 0 / 1    	��
�� 
pnam 0 2    ��
�� 
prcs . o      ���� 0 processnames   , m      1 1�                                                                                  sevs   alis    �  	SUPERDOJO                  �F�6H+   '�System Events.app                                               3���        ����  	                CoreServices    �G,v      ��C     '� 
. 
,  7SUPERDOJO:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 S U P E R D O J O  -System/Library/CoreServices/System Events.app   / ��  ��  ��   )  2 3 2 l   = 4���� 4 Z    = 5 6���� 5 E    7 8 7 o    ���� 0 processnames   8 m     9 9 � : :  G r o w l H e l p e r A p p 6 O    9 ; < ; k    8 = =  > ? > r     @ A @ J     B B  C D C m     E E � F F ( S u c c e s s   N o t i f i c a t i o n D  G�� G m     H H � I I ( F a i l u r e   N o t i f i c a t i o n��   A l      J���� J o      ���� ,0 allnotificationslist allNotificationsList��  ��   ?  K L K r    $ M N M J    " O O  P Q P m     R R � S S ( S u c c e s s   N o t i f i c a t i o n Q  T�� T m      U U � V V ( F a i l u r e   N o t i f i c a t i o n��   N l      W���� W o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   L  X�� X I  % 8���� Y
�� .register****      � ****��   Y �� Z [
�� 
appl Z l 	 ' ( \���� \ m   ' ( ] ] � ^ ^ . N e t N e w s W i r e   t o   E v e r n o t e��  ��   [ �� _ `
�� 
anot _ l 
 ) * a���� a o   ) *���� ,0 allnotificationslist allNotificationsList��  ��   ` �� b c
�� 
dnot b l 
 + , d���� d o   + ,���� 40 enablednotificationslist enabledNotificationsList��  ��   c �� e��
�� 
iapp e m   / 2 f f � g g  E v e r n o t e��  ��   < m     h h(                                                                                  GRRR   alis    �  	SUPERDOJO                  �F�6H+   ֠GrowlHelperApp.app                                              �C�n̥        ����  	                	Resources     �G,v      �o�     ֠ ֜ ֛ �� ��  VSUPERDOJO:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p   	 S U P E R D O J O  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  ��  ��  ��  ��   3  i j i l     ��������  ��  ��   j  k l k l      �� m n��   m  MAIN PROGRAM     n � o o  M A I N   P R O G R A M   l  p q p l  >; r���� r O   >; s t s k   D: u u  v w v I  D I������
�� .miscactvnull��� ��� null��  ��   w  x�� x Q   J: y z { y l  M� | } ~ | k   M�    � � � Z   M� � � � � � l  M T ����� � >  M T � � � 1   M R��
�� 
SeTb � m   R S����  ��  ��   � l  WD � � � � k   WD � �  � � � r   W ` � � � 1   W \��
�� 
TbUr � o      ���� 0 urlslist urlsList �  � � � r   a j � � � 1   a f��
�� 
SeTb � o      ���� 0 ixcurrenttab ixCurrentTab �  � � � r   k t � � � 1   k p��
�� 
TbTl � o      ���� 0 	titlelist 	titleList �  � � � n  u  � � � I   v �� ����� 0 	tagandbag 	TagandBag �  ��� � o   v {���� 0 
evnotebook 
EVnotebook��  ��   �  f   u v �  � � � O   � � � � l  � � � � � Q   � � ��� � Z   � � � ��� � � >  � � � � � o   � ����� 0 
evnotebook 
EVnotebook � m   � � � � � � �   � I  � ����� �
�� .EVRNcrntnull��� ��� null��   � �� � �
�� 
Ennu � l 
 � � ����� � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � l  � � ����� � [   � � � � � o   � ����� 0 ixcurrenttab ixCurrentTab � m   � ����� ��  ��   � o   � ����� 0 urlslist urlsList��  ��  ��  ��   � �� � �
�� 
Entt � l 
 � � ����� � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � l  � � ����� � [   � � � � � o   � ����� 0 ixcurrenttab ixCurrentTab � m   � ����� ��  ��   � o   � ����� 0 	titlelist 	titleList��  ��  ��  ��   � �� � �
�� 
Engg � l 
 � � ����� � o   � ����� 0 nnwtag NNWTag��  ��   � �� ���
�� 
Ennb � o   � ����� 0 
evnotebook 
EVnotebook��  ��   � I  � ����� �
�� .EVRNcrntnull��� ��� null��   � �� � �
�� 
Ennu � l 
 � � ����� � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � l  � � ����� � [   � � � � � o   � ����� 0 ixcurrenttab ixCurrentTab � m   � ����� ��  ��   � o   � ����� 0 urlslist urlsList��  ��  ��  ��   � �� � �
�� 
Entt � l 
 � � ����� � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � l  � � ����� � [   � � � � � o   � ����� 0 ixcurrenttab ixCurrentTab � m   � ����� ��  ��   � o   � ����� 0 	titlelist 	titleList��  ��  ��  ��   � �� ���
�� 
Engg � o   � ����� 0 nnwtag NNWTag��   � R      ����~
�� .ascrerr ****      � ****�  �~  ��   �   CREATE THE NOTE FROM TAB    � � � � 2   C R E A T E   T H E   N O T E   F R O M   T A B � m   � � � ��                                                                                  EVRN   alis    L  	SUPERDOJO                  �F�6H+   �Evernote.app                                                   3�>Ɣr�        ����  	                Applications    �G,v      Ɣ�     �  #SUPERDOJO:Applications:Evernote.app     E v e r n o t e . a p p   	 S U P E R D O J O  Applications/Evernote.app   / ��   �  � � � l �}�|�{�}  �|  �{   �  ��z � Z  D � ��y�x � E 
 � � � o  �w�w 0 processnames   � m  	 � � � � �  G r o w l H e l p e r A p p � l @ � � � � O  @ � � � I ?�v�u �
�v .notifygr****      � ****�u   � �t � �
�t 
name � l 	 ��s�r � m   � � � � � ( S u c c e s s   N o t i f i c a t i o n�s  �r   � �q � �
�q 
titl � l 	 ��p�o � m   � � � � �  I m p o r t   S u c c e s s�p  �o   � �n � �
�n 
desc � b  !5 � � � b  !1 � � � l 	!$ ��m�l � m  !$   � . S u c c e s s f u l l y   e x p o r t e d   "�m  �l   � l $0�k�j n  $0 4  '0�i
�i 
cobj l */�h�g [  */ o  *-�f�f 0 ixcurrenttab ixCurrentTab m  -.�e�e �h  �g   o  $'�d�d 0 	titlelist 	titleList�k  �j   � l 	14	�c�b	 m  14

 �  "   t o   E v e r n o t e�c  �b   � �a�`
�a 
appl m  69 � . N e t N e w s W i r e   t o   E v e r n o t e�`   � m  (                                                                                  GRRR   alis    �  	SUPERDOJO                  �F�6H+   ֠GrowlHelperApp.app                                              �C�n̥        ����  	                	Resources     �G,v      �o�     ֠ ֜ ֛ �� ��  VSUPERDOJO:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p   	 S U P E R D O J O  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   �   GROWL SUCCESS    � �    G R O W L   S U C C E S S�y  �x  �z   �  IT'S A TAB!    � �  I T ' S   A   T A B ! �  I GP�_�^
�_ .coredoexbool    ��� obj  1  GL�]
�] 
SeHe�^   �\ l S� k  S�  r  S^ 1  SX�[
�[ 
SeHe o      �Z�Z 0 selheadline selHeadline  r  _l !  l _h"�Y�X" n  _h#$# 1  dh�W
�W 
Link$ 1  _d�V
�V 
SeHe�Y  �X  ! o      �U�U 0 nnwurl NNWURL %&% r  m|'(' l mv)�T�S) n  mv*+* 1  rv�R
�R 
Titl+ 1  mr�Q
�Q 
SeHe�T  �S  ( o      �P�P 0 nnwtitle NNWTitle& ,-, Q  }�./�O. l ��0120 Z  ��34�N53 I ���M6�L
�M .coredoexbool    ��� obj 6 l ��7�K�J7 n  ��898 1  ���I
�I 
Dscr9 1  ���H
�H 
SeHe�K  �J  �L  4 r  ��:;: l ��<�G�F< n  ��=>= 1  ���E
�E 
Dscr> 1  ���D
�D 
SeHe�G  �F  ; o      �C�C 0 nnwbody NNWBody�N  5 r  ��?@? l ��A�B�AA n  ��BCB 1  ���@
�@ 
SumrC 1  ���?
�? 
SeHe�B  �A  @ o      �>�> 0 nnwbody NNWBody1 0 * HACK FOR MISSING BODY TEXT IN SOME ITEMS!   2 �DD T   H A C K   F O R   M I S S I N G   B O D Y   T E X T   I N   S O M E   I T E M S !/ R      �=�<�;
�= .ascrerr ****      � ****�<  �;  �O  - EFE l ���:�9�8�:  �9  �8  F GHG n ��IJI I  ���7K�6�7 0 	tagandbag 	TagandBagK L�5L o  ���4�4 0 
evnotebook 
EVnotebook�5  �6  J  f  ��H MNM O  �NOPO l �MQRSQ Q  �MTU�3T Z  �DVW�2XV > ��YZY o  ���1�1 0 
evnotebook 
EVnotebookZ m  ��[[ �\\  W k  �]] ^_^ r  �`a` I ��0�/b
�0 .EVRNcrntnull��� ��� null�/  b �.cd
�. 
Enhlc o  ���-�- 0 nnwbody NNWBodyd �,ef
�, 
Entte o  ���+�+ 0 nnwtitle NNWTitlef �*gh
�* 
Ennbg o  ���)�) 0 
evnotebook 
EVnotebookh �(i�'
�( 
Enggi o  ���&�& 0 nnwtag NNWTag�'  a o      �%�% 0 n  _ j�$j r  klk o  
�#�# 0 nnwurl NNWURLl n      mnm 1  �"
�" 
EVsun o  
�!�! 0 n  �$  �2  X k  Doo pqp r  8rsr I 4� �t
�  .EVRNcrntnull��� ��� null�  t �uv
� 
Enhlu o  �� 0 nnwbody NNWBodyv �wx
� 
Enttw o  !&�� 0 nnwtitle NNWTitlex �y�
� 
Enggy o  ).�� 0 nnwtag NNWTag�  s o      �� 0 n  q z�z r  9D{|{ o  9<�� 0 nnwurl NNWURL| n      }~} 1  ?C�
� 
EVsu~ o  <?�� 0 n  �  U R      ���
� .ascrerr ****      � ****�  �  �3  R $  CREATE THE NOTE FROM HEADLINE   S � <   C R E A T E   T H E   N O T E   F R O M   H E A D L I N EP m  �����                                                                                  EVRN   alis    L  	SUPERDOJO                  �F�6H+   �Evernote.app                                                   3�>Ɣr�        ����  	                Applications    �G,v      Ɣ�     �  #SUPERDOJO:Applications:Evernote.app     E v e r n o t e . a p p   	 S U P E R D O J O  Applications/Evernote.app   / ��  N ��� Z  O������ E OT��� o  OP�� 0 processnames  � m  PS�� ���  G r o w l H e l p e r A p p� O  W���� l [����� I [���
�
� .notifygr****      � ****�
  � �	��
�	 
name� l 	_b���� m  _b�� ��� ( S u c c e s s   N o t i f i c a t i o n�  �  � ���
� 
titl� l 	eh���� m  eh�� ���  I m p o r t   S u c c e s s�  �  � ���
� 
desc� b  kx��� b  kt��� m  kn�� ��� . S u c c e s s f u l l y   e x p o r t e d   "� o  ns�� 0 nnwtitle NNWTitle� l 	tw��� � m  tw�� ���  "   t o   E v e r n o t e�  �   � �����
�� 
appl� m  y|�� ��� . N e t N e w s W i r e   t o   E v e r n o t e��  �   GROWL SUCCESS   � ���    G R O W L   S U C C E S S� m  WX��(                                                                                  GRRR   alis    �  	SUPERDOJO                  �F�6H+   ֠GrowlHelperApp.app                                              �C�n̥        ����  	                	Resources     �G,v      �o�     ֠ ֜ ֛ �� ��  VSUPERDOJO:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p   	 S U P E R D O J O  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  �  �  �    IT'S A HEADLINE!    ���   I T ' S   A   H E A D L I N E !�\   � Z  �������� E ����� o  ������ 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� O  ����� l ������ I �������
�� .notifygr****      � ****��  � ����
�� 
name� l 	�������� m  ���� ��� ( F a i l u r e   N o t i f i c a t i o n��  ��  � ����
�� 
titl� l 	�������� m  ���� ���  I m p o r t   F a i l u r e��  ��  � ����
�� 
desc� l 	�������� m  ���� ��� 8 N o   h e a d l i n e   o r   t a b   s e l e c t e d !��  ��  � �����
�� 
appl� m  ���� ��� . N e t N e w s W i r e   t o   E v e r n o t e��  � %  GROWL FAILURE FOR NO SELECTION   � ��� >   G R O W L   F A I L U R E   F O R   N O   S E L E C T I O N� m  ����(                                                                                  GRRR   alis    �  	SUPERDOJO                  �F�6H+   ֠GrowlHelperApp.app                                              �C�n̥        ����  	                	Resources     �G,v      �o�     ֠ ֜ ֛ �� ��  VSUPERDOJO:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p   	 S U P E R D O J O  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  � ��� H  ���� E ����� o  ������ 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� ���� l ������ I ������
�� .sysodlogaskr        TEXT� m  ���� ��� 8 N o   h e a d l i n e   o r   t a b   s e l e c t e d !� �����
�� 
disp� m  ������  ��  � , & NON-GROWL ERROR MSG. FOR NO SELECTION   � ��� L   N O N - G R O W L   E R R O R   M S G .   F O R   N O   S E L E C T I O N��  ��   � ��� l ����������  ��  ��  � ���� l  ��������  �   ERROR HANDLING    � ���     E R R O R   H A N D L I N G  ��   }   IS IT A TAB OR A HEADLINE?    ~ ��� 4 I S   I T   A   T A B   O R   A   H E A D L I N E ? z R      ����
�� .ascrerr ****      � ****� o      ���� 0 errtext errText� �����
�� 
errn� o      ���� 0 errnum errNum��   { Z  �:������ E ����� o  ������ 0 processnames  � m  ���� ���  G r o w l H e l p e r A p p� O  ���� l ����� I ������
�� .notifygr****      � ****��  � ����
�� 
name� l 	�������� m  ���� ��� ( F a i l u r e   N o t i f i c a t i o n��  ��  � ����
�� 
titl� l 	�������� m  ���� ���  I m p o r t   F a i l u r e��  ��  � ����
�� 
desc� b  ���� b  �
   b  � b  � b  �� m  �� �		 " F a i l e d   t o   e x p o r t   o  ����
�� 
ret  o  ����� 0 nnwtitle NNWTitle l 	
����
 m   � > "     d u e   t o   t h e   f o l l o w i n g   e r r o r :  ��  ��   o  	��
�� 
ret � l 

���� o  
���� 0 errtext errText��  ��  � ����
�� 
appl m   � . N e t N e w s W i r e   t o   E v e r n o t e��  �   GROWL FAILURE FOR ERROR   � � 0   G R O W L   F A I L U R E   F O R   E R R O R� m  ��(                                                                                  GRRR   alis    �  	SUPERDOJO                  �F�6H+   ֠GrowlHelperApp.app                                              �C�n̥        ����  	                	Resources     �G,v      �o�     ֠ ֜ ֛ �� ��  VSUPERDOJO:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p   	 S U P E R D O J O  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  �  H    E  o  ���� 0 processnames   m   �  G r o w l H e l p e r A p p �� l #6 I #6��
�� .sysodlogaskr        TEXT b  #. !  b  #,"#" b  #($%$ m  #&&& �'' . I t e m   F a i l e d   t o   I m p o r t :  % o  &'���� 0 errnum errNum# o  (+��
�� 
ret ! o  ,-���� 0 errtext errText ��(��
�� 
disp( m  12����  ��   %  NON-GROWL ERROR MSG. FOR ERROR    �)) >   N O N - G R O W L   E R R O R   M S G .   F O R   E R R O R��  ��  ��   t m   > A**�                                                                                  Nnw*   alis    V  	SUPERDOJO                  �F�6H+   �NetNewsWire.app                                                H�0Ơ�        ����  	                Applications    �G,v      Ơ@�     �  &SUPERDOJO:Applications:NetNewsWire.app     N e t N e w s W i r e . a p p   	 S U P E R D O J O  Applications/NetNewsWire.app  / ��  ��  ��   q +,+ l <H-����- O  <H./. I BG������
�� .miscactvnull��� ��� null��  ��  / m  <?00�                                                                                  Nnw*   alis    V  	SUPERDOJO                  �F�6H+   �NetNewsWire.app                                                H�0Ơ�        ����  	                Applications    �G,v      Ơ@�     �  &SUPERDOJO:Applications:NetNewsWire.app     N e t N e w s W i r e . a p p   	 S U P E R D O J O  Applications/NetNewsWire.app  / ��  ��  ��  , 121 l     ��������  ��  ��  2 343 l      ��56��  5   SUBROUTINES    6 �77    S U B R O U T I N E S  4 898 l     ��:;��  : &  "TAGGING AND BAGGING" SUBROUTINE   ; �<< @ " T A G G I N G   A N D   B A G G I N G "   S U B R O U T I N E9 =>= i    ?@? I      ��A���� 0 	tagandbag 	TagandBagA B��B o      ���� 0 
evnotebook 
EVnotebook��  ��  @ O     {CDC k    zEE FGF l   HIJH r    KLK l   	M����M n    	NON 1    	��
�� 
DsNmO 1    ��
�� 
SeSu��  ��  L o      ���� 0 
defaulttag 
defaultTagI 6 0DEFAULT TAG IS SELECTED SUBSCRIPTION NAME/FOLDER   J �PP ` D E F A U L T   T A G   I S   S E L E C T E D   S U B S C R I P T I O N   N A M E / F O L D E RG QRQ I   7��ST
�� .sysodlogaskr        TEXTS b    UVU m    WW �XX  V l 	  Y����Y m    ZZ �[[ r N O T E :   D e f a u l t   T a g   i s   t h e   h i g h l i g h t e d   s u b s c r i p t i o n   f o l d e r .��  ��  T ��\]
�� 
appr\ m    ^^ �__ ^ E n t e r   Y o u r   T a g s   ( s e p a r a t e d   b y   c o l o n s   o r   c o m m a s )] ��`a
�� 
dtxt` o    ���� 0 
defaulttag 
defaultTaga ��bc
�� 
btnsb J    dd efe m    gg �hh 4 C r e a t e   i n   D e f a u l t   N o t e b o o kf iji m    kk �ll 2 S e l e c t   N o t e b o o k   f r o m   L i s tj m��m m    nn �oo  C a n c e l��  c ��pq
�� 
dfltp m    rr �ss 4 C r e a t e   i n   D e f a u l t   N o t e b o o kq ��tu
�� 
cbtnt l 	  v����v m    ww �xx  C a n c e l��  ��  u ��y��
�� 
dispy I    1��z{
�� .sysorpthalis        TEXTz m     #|| �}}  E v e r n o t e . i c n s{ ��~��
�� 
in B~ l  & -���� I  & -�����
�� .earsffdralis        afdr� m   & )���                                                                                  EVRN   alis    L  	SUPERDOJO                  �F�6H+   �Evernote.app                                                   3�>Ɣr�        ����  	                Applications    �G,v      Ɣ�     �  #SUPERDOJO:Applications:Evernote.app     E v e r n o t e . a p p   	 S U P E R D O J O  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  R ��� r   8 =��� l  8 ;������ 1   8 ;��
�� 
rslt��  ��  � o      ���� 0 dialogresult  � ��� r   > E��� n   > C��� 1   ? C��
�� 
ttxt� o   > ?���� 0 dialogresult  � o      ���� 0 tagtext tagText� ��� r   F M��� n   F K��� 1   G K��
�� 
bhit� o   F G���� 0 dialogresult  � o      ���� 0 	buttonsel 	ButtonSel� ��� r   N X��� J   N V�� ��� m   N Q�� ���  :� ���� m   Q T�� ���  ,��  � o      ���� 0 	thedelims 	theDelims� ��� r   Y f��� n  Y `��� I   Z `������� 0 tag_list Tag_List� ��� o   Z [���� 0 tagtext tagText� ���� o   [ \���� 0 	thedelims 	theDelims��  ��  �  f   Y Z� o      ���� 0 nnwtag NNWTag� ���� Z  g z������� =  g l��� o   g h���� 0 	buttonsel 	ButtonSel� m   h k�� ��� 2 S e l e c t   N o t e b o o k   f r o m   L i s t� r   o v��� n  o t��� I   p t�������� 0 notebook_list Notebook_List��  ��  �  f   o p� o      �� 0 
evnotebook 
EVnotebook��  ��  ��  D m     ���                                                                                  Nnw*   alis    V  	SUPERDOJO                  �F�6H+   �NetNewsWire.app                                                H�0Ơ�        ����  	                Applications    �G,v      Ơ@�     �  &SUPERDOJO:Applications:NetNewsWire.app     N e t N e w s W i r e . a p p   	 S U P E R D O J O  Applications/NetNewsWire.app  / ��  > ��� l     �~�}�|�~  �}  �|  � ��� l     �{���{  �  TAG SELECTION SUBROUTINE   � ��� 0 T A G   S E L E C T I O N   S U B R O U T I N E� ��� i    ��� I      �z��y�z 0 tag_list Tag_List� ��� o      �x�x 0 tagtext tagText� ��w� o      �v�v 0 	thedelims 	theDelims�w  �y  � k     U�� ��� r     ��� n    ��� 1    �u
�u 
txdl� 1     �t
�t 
ascr� o      �s�s 0 	olddelims 	oldDelims� ��� r    ��� J    	�� ��r� o    �q�q 0 tagtext tagText�r  � o      �p�p 0 thelist theList� ��� X    L��o�� k    G�� ��� r    !��� o    �n�n 0 adelim aDelim� n     ��� 1     �m
�m 
txdl� 1    �l
�l 
ascr� ��� r   " &��� J   " $�k�k  � o      �j�j 0 newlist newList� ��� X   ' C��i�� r   7 >��� b   7 <��� o   7 8�h�h 0 newlist newList� n   8 ;��� 2  9 ;�g
�g 
citm� o   8 9�f�f 0 anitem anItem� o      �e�e 0 newlist newList�i 0 anitem anItem� o   * +�d�d 0 thelist theList� ��c� r   D G��� o   D E�b�b 0 newlist newList� o      �a�a 0 thelist theList�c  �o 0 adelim aDelim� o    �`�` 0 	thedelims 	theDelims� ��� L   M O�� o   M N�_�_ 0 thelist theList� ��^� r   P U��� o   P Q�]�] 0 	olddelims 	oldDelims� n     ��� 1   R T�\
�\ 
txdl� 1   Q R�[
�[ 
ascr�^  � ��� l     �Z�Y�X�Z  �Y  �X  � ��� l     �W���W  � - 'EVERNOTE NOTEBOOK SELECTION SUBROUTINE    � ��� N E V E R N O T E   N O T E B O O K   S E L E C T I O N   S U B R O U T I N E  � ��� i    ��� I      �V�U�T�V 0 notebook_list Notebook_List�U  �T  � O        k    ~  I   	�S�R�Q
�S .miscactvnull��� ��� null�R  �Q    l   
 	 r   
 

 J   
 �P�P   o      �O�O "0 listofnotebooks listOfNotebooks 2 ,PREPARE TO GET EVERNOTE'S LIST OF NOTEBOOKS    	 � X P R E P A R E   T O   G E T   E V E R N O T E ' S   L I S T   O F   N O T E B O O K S    l     r     2    �N
�N 
EVnb o      �M�M 0 evnotebooks EVNotebooks  GET THE NOTEBOOK LIST     � , G E T   T H E   N O T E B O O K   L I S T    X    4�L k   % /  r   % * l  % (�K�J l  % (�I�H n   % ( !  1   & (�G
�G 
pnam! o   % &�F�F "0 currentnotebook currentNotebook�I  �H  �K  �J   o      �E�E *0 currentnotebookname currentNotebookName "�D" s   + /#$# o   + ,�C�C *0 currentnotebookname currentNotebookName$ l     %�B�A% n      &'&  ;   - .' o   , -�@�@ "0 listofnotebooks listOfNotebooks�B  �A  �D  �L "0 currentnotebook currentNotebook o    �?�? 0 evnotebooks EVNotebooks ()( l   5 =*+,* r   5 =-.- n  5 ;/0/ I   6 ;�>1�=�> 0 simple_sort  1 2�<2 o   6 7�;�; "0 listofnotebooks listOfNotebooks�<  �=  0  f   5 6. o      �:�:  0 folders_sorted Folders_sorted+  SORT THE LIST    , �33  S O R T   T H E   L I S T  ) 454 l   > O6786 r   > O9:9 I  > M�9;<
�9 .gtqpchltns    @   @ ns  ; o   > ?�8�8  0 folders_sorted Folders_sorted< �7=>
�7 
appr= m   @ A?? �@@ 0 S e l e c t   E v e r n o t e   N o t e b o o k> �6AB
�6 
prmpA l 	 B CC�5�4C m   B CDD �EE 4 C u r r e n t   E v e r n o t e   N o t e b o o k s�5  �4  B �3FG
�3 
okbtF m   D EHH �II  O KG �2J�1
�2 
cnbtJ m   F GKK �LL  N e w   N o t e b o o k�1  : o      �0�0 0 selnotebook SelNotebook7 ( "USER SELECTION FROM NOTEBOOK LIST    8 �MM D U S E R   S E L E C T I O N   F R O M   N O T E B O O K   L I S T  5 N�/N Z   P ~OP�.QO l  P SR�-�,R =  P SSTS o   P Q�+�+ 0 selnotebook SelNotebookT m   Q R�*
�* boovfals�-  �,  P l  V qUVWU k   V qXX YZY r   V i[\[ n   V g]^] l 	 c g_�)�(_ 1   c g�'
�' 
ttxt�)  �(  ^ l  V c`�&�%` I  V c�$ab
�$ .sysodlogaskr        TEXTa m   V Ycc �dd 0 E n t e r   N e w   N o t e b o o k   N a m e :b �#e�"
�# 
dtxte m   \ _ff �gg  �"  �&  �%  \ o      �!�! 0 	userinput 	userInputZ h� h r   j qiji o   j k�� 0 	userinput 	userInputj o      �� 0 
evnotebook 
EVnotebook�   V ! CREATE NEW NOTEBOOK OPTION    W �kk 6 C R E A T E   N E W   N O T E B O O K   O P T I O N  �.  Q r   t ~lml n   t xnon 4   u x�p
� 
cobjp m   v w�� o o   t u�� 0 selnotebook SelNotebookm o      �� 0 
evnotebook 
EVnotebook�/   m     qq�                                                                                  EVRN   alis    L  	SUPERDOJO                  �F�6H+   �Evernote.app                                                   3�>Ɣr�        ����  	                Applications    �G,v      Ɣ�     �  #SUPERDOJO:Applications:Evernote.app     E v e r n o t e . a p p   	 S U P E R D O J O  Applications/Evernote.app   / ��  � rsr l     ����  �  �  s tut l     �vw�  v  SORT SUBROUTINE   w �xx  S O R T   S U B R O U T I N Eu yzy i    {|{ I      �}�� 0 simple_sort  } ~�~ o      �� 0 my_list  �  �  | k     u ��� r     ��� J     ��  � l     ���� o      �� 0 
index_list  �  �  � ��� r    	��� J    ��  � l     ���� o      �
�
 0 sorted_list  �  �  � ��� U   
 r��� k    m�� ��� r    ��� m    �� ���  � l     ��	�� o      �� 0 low_item  �	  �  � ��� Y    c������ Z   ) ^����� H   ) -�� E  ) ,��� l  ) *���� o   ) *� �  0 
index_list  �  �  � o   * +���� 0 i  � k   0 Z�� ��� r   0 8��� c   0 6��� n   0 4��� 4   1 4���
�� 
cobj� o   2 3���� 0 i  � o   0 1���� 0 my_list  � m   4 5��
�� 
ctxt� o      ���� 0 	this_item  � ���� Z   9 Z������ =  9 <��� l  9 :������ o   9 :���� 0 low_item  ��  ��  � m   : ;�� ���  � k   ? F�� ��� r   ? B��� o   ? @���� 0 	this_item  � l     ������ o      ���� 0 low_item  ��  ��  � ���� r   C F��� o   C D���� 0 i  � l     ������ o      ���� 0 low_item_index  ��  ��  ��  � ��� A I L��� o   I J���� 0 	this_item  � l  J K������ o   J K���� 0 low_item  ��  ��  � ���� k   O V�� ��� r   O R��� o   O P���� 0 	this_item  � l     ������ o      ���� 0 low_item  ��  ��  � ���� r   S V��� o   S T���� 0 i  � l     ������ o      ���� 0 low_item_index  ��  ��  ��  ��  ��  ��  �  �  � 0 i  � m    ���� � l   $������ n    $��� m   ! #��
�� 
nmbr� n   !��� 2   !��
�� 
cobj� o    ���� 0 my_list  ��  ��  �  � ��� r   d h��� l  d e������ o   d e���� 0 low_item  ��  ��  � l     ������ n      ���  ;   f g� o   e f���� 0 sorted_list  ��  ��  � ���� r   i m��� l  i j������ o   i j���� 0 low_item_index  ��  ��  � l     ������ n      ���  ;   k l� l  j k������ o   j k���� 0 
index_list  ��  ��  ��  ��  ��  � l   ������ l   ������ n    ��� m    ��
�� 
nmbr� n   ��� 2   ��
�� 
cobj� o    ���� 0 my_list  ��  ��  ��  ��  � ���� L   s u�� l  s t������ o   s t���� 0 sorted_list  ��  ��  ��  z ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ���     !�������  � 
���������������������� 0 nnwtitle NNWTitle�� 0 nnwtag NNWTag�� 0 nnwbody NNWBody�� 0 
evnotebook 
EVnotebook�� 0 selheadline selHeadline�� 0 	tagandbag 	TagandBag�� 0 tag_list Tag_List�� 0 notebook_list Notebook_List�� 0 simple_sort  
�� .aevtoappnull  �   � ****� ��@���������� 0 	tagandbag 	TagandBag�� ����� �  ���� 0 
evnotebook 
EVnotebook��  � �������������� 0 
evnotebook 
EVnotebook�� 0 
defaulttag 
defaultTag�� 0 dialogresult  �� 0 tagtext tagText�� 0 	buttonsel 	ButtonSel�� 0 	thedelims 	theDelims�  �����WZ��^����gkn��r��w��|������������������������
�� 
SeSu
�� 
DsNm
�� 
appr
�� 
dtxt
�� 
btns
�� 
dflt
�� 
cbtn
�� 
disp
�� 
in B
�� .earsffdralis        afdr
�� .sysorpthalis        TEXT�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt
�� 
bhit�� 0 tag_list Tag_List�� 0 notebook_list Notebook_List�� |� x*�,�,E�O��%�������mv����a a a a j l a  O_ E�O�a ,E�O�a ,E�Oa a lvE�O)��l+ Ec  O�a   )j+ E�Y hU� ������������� 0 tag_list Tag_List�� ����� �  ������ 0 tagtext tagText�� 0 	thedelims 	theDelims��  � ����������~�}�� 0 tagtext tagText�� 0 	thedelims 	theDelims�� 0 	olddelims 	oldDelims�� 0 thelist theList� 0 adelim aDelim�~ 0 newlist newList�} 0 anitem anItem� �|�{�z�y�x�w
�| 
ascr
�{ 
txdl
�z 
kocl
�y 
cobj
�x .corecnte****       ****
�w 
citm�� V��,E�O�kvE�O ?�[��l kh ���,FOjvE�O �[��l kh ���-%E�[OY��O�E�[OY��O�O���,F� �v��u�t���s�v 0 notebook_list Notebook_List�u  �t  � �r�q�p�o�n�m�l�r "0 listofnotebooks listOfNotebooks�q 0 evnotebooks EVNotebooks�p "0 currentnotebook currentNotebook�o *0 currentnotebookname currentNotebookName�n  0 folders_sorted Folders_sorted�m 0 selnotebook SelNotebook�l 0 	userinput 	userInput� q�k�j�i�h�g�f�e�d?�cD�bH�aK�`�_c�^f�]�\
�k .miscactvnull��� ��� null
�j 
EVnb
�i 
kocl
�h 
cobj
�g .corecnte****       ****
�f 
pnam�e 0 simple_sort  
�d 
appr
�c 
prmp
�b 
okbt
�a 
cnbt�` 
�_ .gtqpchltns    @   @ ns  
�^ 
dtxt
�] .sysodlogaskr        TEXT
�\ 
ttxt�s �� |*j OjvE�O*�-E�O �[��l kh ��,E�O��6G[OY��O)�k+ E�O���������a  E�O�f   a a a l a ,E�O�Ec  Y ��k/Ec  U� �[|�Z�Y� �X�[ 0 simple_sort  �Z �W�W   �V�V 0 my_list  �Y  � �U�T�S�R�Q�P�O�U 0 my_list  �T 0 
index_list  �S 0 sorted_list  �R 0 low_item  �Q 0 i  �P 0 	this_item  �O 0 low_item_index    �N�M��L�
�N 
cobj
�M 
nmbr
�L 
ctxt�X vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�� �K�J�I�H
�K .aevtoappnull  �   � **** k    H  (  2  p +�G�G  �J  �I   �F�E�F 0 errtext errText�E 0 errnum errNum W 1�D�C�B 9 h E H�A R U�@�? ]�>�=�< f�;�:*�9�8�7�6�5�4�3�2 � ��1�0�/�.�-�,�+�*�) ��( ��' ��& 
�%�$�#�"�!� ��[�������������������	����&
�D 
prcs
�C 
pnam�B 0 processnames  �A ,0 allnotificationslist allNotificationsList�@ 40 enablednotificationslist enabledNotificationsList
�? 
appl
�> 
anot
�= 
dnot
�< 
iapp�; 
�: .register****      � ****
�9 .miscactvnull��� ��� null
�8 
SeTb
�7 
TbUr�6 0 urlslist urlsList�5 0 ixcurrenttab ixCurrentTab
�4 
TbTl�3 0 	titlelist 	titleList�2 0 	tagandbag 	TagandBag
�1 
Ennu
�0 
cobj
�/ 
Entt
�. 
Engg
�- 
Ennb
�, .EVRNcrntnull��� ��� null�+ �*  �)  
�( 
name
�' 
titl
�& 
desc
�% .notifygr****      � ****
�$ 
SeHe
�# .coredoexbool    ��� obj 
�" 
Link�! 0 nnwurl NNWURL
�  
Titl
� 
Dscr
� 
Sumr
� 
Enhl� 0 n  
� 
EVsu
� 
disp
� .sysodlogaskr        TEXT� 0 errtext errText	 ���
� 
errn� 0 errnum errNum�  
� 
ret �HI� 	*�-�,E�UO�� +� #��lvE�O��lvE�O*������a a a  UY hOa �*j O�*a ,j �*a ,E` O*a ,E` O*a ,E` O)b  k+ Oa   vb  a  :*a _ a  _ k/a !_ a  _ k/a "b  a #b  a  $Y /*a _ a  _ k/a !_ a  _ k/a "b  a % $W X & 'hUO�a ( 8� 0*a )a *a +a ,a -a ._ a  _ k/%a /%�a 0a  1UY hY�*a 2,j 39*a 2,Ec  O*a 2,a 4,E` 5O*a 2,a 6,Ec   O 6*a 2,a 7,j 3 *a 2,a 7,Ec  Y *a 2,a 8,Ec  W X & 'hO)b  k+ Oa  � zb  a 9 <*a :b  a !b   a #b  a "b  a  $E` ;O_ 5_ ;a <,FY 1*a :b  a !b   a "b  a % $E` ;O_ 5_ ;a <,FW X & 'hUO�a = 1� )*a )a >a +a ?a -a @b   %a A%�a Ba  1UY hY G�a C '� *a )a Da +a Ea -a F�a Ga  1UY �a H a Ia Jjl KY hOPW hX L M�a N ;� 3*a )a Oa +a Pa -a Q_ R%b   %a S%_ R%�%�a Ta  1UY "�a U a V�%_ R%�%a Jjl KY hUOa  *j Uascr  ��ޭ