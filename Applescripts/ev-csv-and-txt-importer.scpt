FasdUAS 1.101.10   ��   ��    k             l      ��  ��   a[
Veritrope.com
Evernote - Text File / CSV Processor
Version 1.02
September 6, 2012

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// LIKE THIS SCRIPT?
If this AppleScript is helpful to you, please show your support here:
http://veritrope.com/support

// SCRIPT INFORMATION AND UPDATE PAGE
http://veritrope.com/code/evernote-csv-and-text-file-importer

// CHANGELOG:
1.02 -- Bug Fixes (Quote Character as Last Character of Record)
1.01 -- Additional Bug Fix for Unicode Support
1.0 (FINAL) -- Improved Date Detection, Fix for Location Data, Added Check / Fix for delimiters contained within "Escaped" columns
1.0 (Beta 3) -- Bug Fix for Unicode support
1.0 (Beta 2) -- Added better Unicode support
1.0 (Beta 1) -- Initial Test Release

// RECOMMENDED INSTALLATION AND USAGE INSTRUCTIONS:
-- You'll want to review your file beforehand and make note of how
-- rows and columns are separated (i.e., what character delimiters are used)

-- Since CSV or Text files can have many thousands of data points, I'd recommend
-- starting slowly with a subset of data and importing it into a separate folder.

     � 	 	
� 
 V e r i t r o p e . c o m 
 E v e r n o t e   -   T e x t   F i l e   /   C S V   P r o c e s s o r 
 V e r s i o n   1 . 0 2 
 S e p t e m b e r   6 ,   2 0 1 2 
 
 / /   T E R M S   O F   U S E : 
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e . 
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A . 
 
 / /   L I K E   T H I S   S C R I P T ? 
 I f   t h i s   A p p l e S c r i p t   i s   h e l p f u l   t o   y o u ,   p l e a s e   s h o w   y o u r   s u p p o r t   h e r e : 
 h t t p : / / v e r i t r o p e . c o m / s u p p o r t 
 
 / /   S C R I P T   I N F O R M A T I O N   A N D   U P D A T E   P A G E 
 h t t p : / / v e r i t r o p e . c o m / c o d e / e v e r n o t e - c s v - a n d - t e x t - f i l e - i m p o r t e r 
 
 / /   C H A N G E L O G : 
 1 . 0 2   - -   B u g   F i x e s   ( Q u o t e   C h a r a c t e r   a s   L a s t   C h a r a c t e r   o f   R e c o r d ) 
 1 . 0 1   - -   A d d i t i o n a l   B u g   F i x   f o r   U n i c o d e   S u p p o r t 
 1 . 0   ( F I N A L )   - -   I m p r o v e d   D a t e   D e t e c t i o n ,   F i x   f o r   L o c a t i o n   D a t a ,   A d d e d   C h e c k   /   F i x   f o r   d e l i m i t e r s   c o n t a i n e d   w i t h i n   " E s c a p e d "   c o l u m n s 
 1 . 0   ( B e t a   3 )   - -   B u g   F i x   f o r   U n i c o d e   s u p p o r t 
 1 . 0   ( B e t a   2 )   - -   A d d e d   b e t t e r   U n i c o d e   s u p p o r t 
 1 . 0   ( B e t a   1 )   - -   I n i t i a l   T e s t   R e l e a s e 
 
 / /   R E C O M M E N D E D   I N S T A L L A T I O N   A N D   U S A G E   I N S T R U C T I O N S : 
 - -   Y o u ' l l   w a n t   t o   r e v i e w   y o u r   f i l e   b e f o r e h a n d   a n d   m a k e   n o t e   o f   h o w 
 - -   r o w s   a n d   c o l u m n s   a r e   s e p a r a t e d   ( i . e . ,   w h a t   c h a r a c t e r   d e l i m i t e r s   a r e   u s e d ) 
 
 - -   S i n c e   C S V   o r   T e x t   f i l e s   c a n   h a v e   m a n y   t h o u s a n d s   o f   d a t a   p o i n t s ,   I ' d   r e c o m m e n d 
 - -   s t a r t i n g   s l o w l y   w i t h   a   s u b s e t   o f   d a t a   a n d   i m p o r t i n g   i t   i n t o   a   s e p a r a t e   f o l d e r . 
 
   
  
 l     ��������  ��  ��        l      ��  ��    ~ x
======================================
// USER SWITCHES (YOU CAN CHANGE THESE!)
======================================
     �   � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U S E R   S W I T C H E S   ( Y O U   C A N   C H A N G E   T H E S E ! ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��        l     ��  ��    = 7 CHANGE THIS TO FALSE TO ELIMINATE VERBOSE INSTRUCTIONS     �   n   C H A N G E   T H I S   T O   F A L S E   T O   E L I M I N A T E   V E R B O S E   I N S T R U C T I O N S      j     �� �� &0 show_instructions show_Instructions  m     ��
�� boovtrue      l     ��������  ��  ��        l     ��   ��    < 6 DELIMITERS THAT SEPARATE THE ROWS AND COLUMNS OF DATA      � ! ! l   D E L I M I T E R S   T H A T   S E P A R A T E   T H E   R O W S   A N D   C O L U M N S   O F   D A T A   " # " l     �� $ %��   $ * $ (YOU CAN ADD OR DELETE ITEMS BELOW)    % � & & H   ( Y O U   C A N   A D D   O R   D E L E T E   I T E M S   B E L O W ) #  ' ( ' j    
�� )�� 0 
delim_list 
delim_List ) J    	 * *  + , + m     - - � . .  T a b ,  / 0 / m     1 1 � 2 2  R e t u r n 0  3 4 3 m     5 5 � 6 6  , 4  7�� 7 m     8 8 � 9 9  ;��   (  : ; : l     ��������  ��  ��   ;  < = < l      �� > ?��   > � 
======================================
// OTHER PROPERTIES (USE CAUTION WHEN CHANGING)
======================================
    ? � @ @ � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   O T H E R   P R O P E R T I E S   ( U S E   C A U T I O N   W H E N   C H A N G I N G ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 =  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E "  SCRIPTNAME FOR DIALOG BOXES    F � G G 8   S C R I P T N A M E   F O R   D I A L O G   B O X E S D  H I H j    �� J�� 0 script_name script_Name J m     K K � L L ^ V e r i t r o p e . c o m   |   E v e r n o t e   C S V / T e x t   F i l e   I m p o r t e r I  M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q * $ MATCH COLUMN WITH EVERNOTE PROPERTY    R � S S H   M A T C H   C O L U M N   W I T H   E V E R N O T E   P R O P E R T Y P  T U T j     �� V��  0 evernote_props evernote_Props V J     W W  X Y X m     Z Z � [ [  ( N O N E ) Y  \ ] \ m     ^ ^ � _ _  N o t e   T i t l e ]  ` a ` m     b b � c c  N o t e   B o d y a  d e d m     f f � g g  T a g e  h i h m     j j � k k  C r e a t i o n   D a t e i  l m l m     n n � o o  S o u r c e   U R L m  p q p m     r r � s s  L o n g i t u d e q  t u t m     v v � w w  L a t i t u d e u  x�� x m     y y � z z  A l t i t u d e��   U  { | { l     ��������  ��  ��   |  } ~ } l      ��  ���    e _
======================================
// MAIN PROGRAM
======================================
    � � � � � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 ~  � � � l     �� � ���   � $  RESET OF TEXT ITEM DELIMITERS    � � � � <   R E S E T   O F   T E X T   I T E M   D E L I M I T E R S �  � � � l     ����� � r      � � � m      � � � � �   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   SCRIPT DESCRIPTION    � � � � &   S C R I P T   D E S C R I P T I O N �  � � � l   + ����� � Z    + � ����� � =    � � � o    ���� &0 show_instructions show_Instructions � m    ��
�� boovtrue � I   '�� � �
�� .sysodlogaskr        TEXT � l 	   ����� � m     � � � � �� T h i s   a p p l i c a t i o n   w i l l   a t t e m p t   t o   c r e a t e   n e w   E v e r n o t e   i t e m s   f r o m   d a t a   c o n t a i n e d   i n   a   C S V   o r   T e x t   f i l e . 
 
 Y o u   w i l l   n o w   b e   a s k e d   a   s e r i e s   o f   q u e s t i o n s   t o   h e l p   m a p   t h e   d a t a   t o   t h e   a p p r o p r i a t e   E v e r n o t e   i t e m   p r o p e r t y . 
 
 P r e s s   " O K "   t o   C o n t i n u e��  ��   � �� � �
�� 
appr � o    ���� 0 script_name script_Name � �� ���
�� 
disp � I   #�� � �
�� .sysorpthalis        TEXT � m     � � � � �  E v e r n o t e . i c n s � �� ���
�� 
in B � l    ����� � I   �� ���
�� .earsffdralis        afdr � m     � ��                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  , ����� � O   , � � � k   0 � �  � � � l  0 0�� � ���   �  
 PICK FILE    � � � �    P I C K   F I L E �  � � � r   0 ; � � � l  0 7 ����� � I  0 7���� �
�� .sysostdfalis    ��� null��   � �� ���
�� 
prmp � m   2 3 � � � � � z C h o o s e   C S V   o r   T X T   F i l e   T o   I m p o r t   A s   I n d i v i d u a l   E v e r n o t e   I t e m s��  ��  ��   � o      ���� 0 exportedfile exportedFile �  � � � l  < <��������  ��  ��   �  � � � l  < <�� � ���   �   CHOOSE NOTEBOOK    � � � �     C H O O S E   N O T E B O O K �  � � � r   < E � � � n  < A � � � I   = A�������� 0 pick_notebook pick_Notebook��  ��   �  f   < = � o      ���� 0 ev_notebook ev_Notebook �  � � � l  F F��������  ��  ��   �  � � � l  F F�� � ���   �   DELIMITER INSTRUCTIONS    � � � � .   D E L I M I T E R   I N S T R U C T I O N S �  � � � Z   F u � ����� � =  F M � � � o   F K���� &0 show_instructions show_Instructions � m   K L��
�� boovtrue � k   P q � �  � � � I  P U������
�� .miscactvnull��� ��� obj ��  ��   �  � � � l  V V��������  ��  ��   �  ��� � I  V q�� � �
�� .sysodlogaskr        TEXT � l 	 V Y ����� � m   V Y � � � � � I n   C S V   o r   t e x t   f i l e s ,   i n d i v i d u a l   r e c o r d s   o r   r o w   i t e m s   a r e   s e p a r a t e d   b y   a   d e l i m i t e r   - -   a   c h a r a c t e r   w h i c h   s e r v e s   a s   a   b o u n d r y .   O f t e n   t i m e s ,   t h i s   i s   a   r e t u r n   o r   n e w   l i n e . 
 
 T h e   n e x t   d i a l o g   w i l l   a s k   y o u   h o w   i t e m s   i n   y o u r   C S V   o r   t e x t   f i l e   a r e   s e p a r a t e d 
 
 
 P r e s s   " O K "   t o   C o n t i n u e��  ��   � �� � �
�� 
appr � o   Z _���� 0 script_name script_Name � �� ���
�� 
disp � I  ` m�� � �
�� .sysorpthalis        TEXT � m   ` c � � � � �  E v e r n o t e . i c n s � �� ���
�� 
in B � l  d i ����� � I  d i�� ���
�� .earsffdralis        afdr � m   d e � ��                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  ��  ��  ��   �  � � � I  v {������
�� .miscactvnull��� ��� obj ��  ��   �  � � � l  | |��������  ��  ��   �  � � � l  | |�� � ���   �   CHOOSE LINE DELIMITER    � � � � ,   C H O O S E   L I N E   D E L I M I T E R �  � � � r   | � �  � l  | ����� I  | ���
�� .gtqpchltns    @   @ ns   o   | ����� 0 
delim_list 
delim_List �
� 
appr o   � ��~�~ 0 script_name script_Name �}�|
�} 
prmp m   � � � V H o w   A r e   Y o u r   R e c o r d s   /   R o w   I t e m s   S e p a r a t e d ?�|  ��  ��    o      �{�{  0 line_delimiter line_Delimiter � 	
	 Z   � ��z =  � � o   � ��y�y  0 line_delimiter line_Delimiter m   � ��x
�x boovfals L   � ��w�w    =  � � l  � ��v�u n   � � 4   � ��t
�t 
cobj m   � ��s�s  o   � ��r�r  0 line_delimiter line_Delimiter�v  �u   m   � � �  R e t u r n  r   � � o   � ��q
�q 
ret  o      �p�p  0 line_delimiter line_Delimiter  =  � � !  l  � �"�o�n" n   � �#$# 4   � ��m%
�m 
cobj% m   � ��l�l $ o   � ��k�k  0 line_delimiter line_Delimiter�o  �n  ! m   � �&& �''  T a b (�j( r   � �)*) 1   � ��i
�i 
tab * o      �h�h  0 line_delimiter line_Delimiter�j  �z  
 +,+ l  � ��g�f�e�g  �f  �e  , -.- l  � ��d/0�d  /   DELIMITER INSTRUCTIONS   0 �11 .   D E L I M I T E R   I N S T R U C T I O N S. 232 Z   �45�c�b4 =  � �676 o   � ��a�a &0 show_instructions show_Instructions7 m   � ��`
�` boovtrue5 k   � 88 9:9 I  � ��_�^�]
�_ .miscactvnull��� ��� obj �^  �]  : ;<; l  � ��\�[�Z�\  �[  �Z  < =�Y= I  � �X>?
�X .sysodlogaskr        TEXT> l 	 � �@�W�V@ m   � �AA �BB  I n   C S V   o r   t e x t   f i l e s ,   c o l u m n s   o r   d a t a   i t e m s   w i t h i n   e a c h   r e c o r d   a r e   a l s o   s e p a r a t e d   b y   a   d e l i m i t e r .   O f t e n   t i m e s ,   t h i s   i s   a   c o m m a   o r   a   t a b . 
 
 T h e   n e x t   d i a l o g   w i l l   a s k   y o u   h o w   c o l u m n s   o r   d a t a   i t e m s   i n   y o u r   C S V   o r   t e x t   f i l e   a r e   s e p a r a t e d 
 
 
 P r e s s   " O K "   t o   C o n t i n u e�W  �V  ? �UCD
�U 
apprC o   � ��T�T 0 script_name script_NameD �SE�R
�S 
dispE I  � ��QFG
�Q .sysorpthalis        TEXTF m   � �HH �II  E v e r n o t e . i c n sG �PJ�O
�P 
in BJ l  � �K�N�MK I  � ��LL�K
�L .earsffdralis        afdrL m   � �MM�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �K  �N  �M  �O  �R  �Y  �c  �b  3 NON I 
�J�I�H
�J .miscactvnull��� ��� obj �I  �H  O PQP l �G�F�E�G  �F  �E  Q RSR l �DTU�D  T   CHOOSE COLUMN DELIMITER   U �VV 0   C H O O S E   C O L U M N   D E L I M I T E RS WXW r  "YZY l [�C�B[ I �A\]
�A .gtqpchltns    @   @ ns  \ o  �@�@ 0 
delim_list 
delim_List] �?^_
�? 
appr^ o  �>�> 0 script_name script_Name_ �=`�<
�= 
prmp` m  aa �bb Z H o w   A r e   Y o u r   C o l u m n s   O r   D a t a   I t e m s   S e p a r a t e d ?�<  �C  �B  Z o      �;�; 0 col_delimiter col_DelimiterX cdc Z  #cefg�:e = #(hih o  #&�9�9 0 col_delimiter col_Delimiteri m  &'�8
�8 boovfalsf L  +-�7�7  g jkj = 0<lml l 08n�6�5n n  08opo 4  38�4q
�4 
cobjq m  67�3�3 p o  03�2�2 0 col_delimiter col_Delimiter�6  �5  m m  8;rr �ss  R e t u r nk tut r  ?Fvwv o  ?B�1
�1 
ret w o      �0�0 0 col_delimiter col_Delimiteru xyx = IUz{z l IQ|�/�.| n  IQ}~} 4  LQ�-
�- 
cobj m  OP�,�, ~ o  IL�+�+ 0 col_delimiter col_Delimiter�/  �.  { m  QT�� ���  T a by ��*� r  X_��� 1  X[�)
�) 
tab � o      �(�( 0 col_delimiter col_Delimiter�*  �:  d ��� l dd�'�&�%�'  �&  �%  � ��� l dd�$���$  �   GET THE FILE CONTENTS   � ��� ,   G E T   T H E   F I L E   C O N T E N T S� ��� r  do��� I dk�#��"
�# .rdwropenshor       file� o  dg�!�! 0 exportedfile exportedFile�"  � o      � �  0 fileref fileRef� ��� r  p{��� l pw���� I pw���
� .rdwrread****        ****� o  ps�� 0 fileref fileRef�  �  �  � o      �� 0 file_contents file_Contents� ��� I |����
� .rdwrclosnull���     ****� o  |�� 0 exportedfile exportedFile�  � ��� l ������  �  �  � ��� l ������  � ( " MAKE A LIST WITH EACH ROW OF DATA   � ��� D   M A K E   A   L I S T   W I T H   E A C H   R O W   O F   D A T A� ��� r  ����� J  ����  � o      �� 0 
note_items 
note_Items� ��� r  ����� n ����� 1  ���
� 
txdl� 1  ���
� 
ascr� o      �� 0 
old_delims 
old_Delims� ��� r  ����� o  ����  0 line_delimiter line_Delimiter� n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� n  ����� 2  ���

�
 
citm� o  ���	�	 0 file_contents file_Contents� o      �� 0 
note_items 
note_Items� ��� r  ����� o  ���� 0 
old_delims 
old_Delims� n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� l ������  �  �  � ��� l ������  � #  TEST ITEMS BEFORE PROCESSING   � ��� :   T E S T   I T E M S   B E F O R E   P R O C E S S I N G� ��� r  ����� l ���� ��� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 
note_items 
note_Items�   ��  � o      ���� 0 	test_item 	test_Item� ��� r  ����� J  ������  � o      ���� 0 test_records test_Records� ��� l ����������  ��  ��  � ��� l ��������  � 2 , SCAN FOR ESCAPED DATA AND FIX, IF NECESSARY   � ��� X   S C A N   F O R   E S C A P E D   D A T A   A N D   F I X ,   I F   N E C E S S A R Y� ��� r  ����� n ����� I  ��������� 0 find_escaped find_Escaped� ���� o  ������ 0 	test_item 	test_Item��  ��  �  f  ��� o      ���� 0 	test_item 	test_Item� ��� l ����������  ��  ��  � ��� r  ����� n ����� 1  ����
�� 
txdl� 1  ����
�� 
ascr� o      ���� 0 
old_delims 
old_Delims� ��� r  ����� o  ������ 0 col_delimiter col_Delimiter� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2  ����
�� 
citm� o  ������ 0 	test_item 	test_Item� o      ���� 0 test_records test_Records� ��� r  ����� o  ������ 0 
old_delims 
old_Delims� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� l �������� I �������
�� .corecnte****       ****� o  ������ 0 test_records test_Records��  ��  ��  � o      ���� 0 column_count column_Count� � � I  <��
�� .sysodlogaskr        TEXT b    b    m    �   o  ���� 0 column_count column_Count m  
		 �

 P   C o l u m n   I t e m s   D e t e c t e d 
 
 I s   t h i s   c o r r e c t ? ��
�� 
appr o  ���� 0 script_name script_Name ��
�� 
btns J    m   �  Y E S �� m   �  N O��   ��
�� 
dflt m  " �  Y E S ��
�� 
cbtn m  %( �  N O ����
�� 
disp I )6�� !
�� .sysorpthalis        TEXT  m  ),"" �##  E v e r n o t e . i c n s! ��$��
�� 
in B$ l -2%����% I -2��&��
�� .earsffdralis        afdr& m  -.''�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��    ()( l ==��������  ��  ��  ) *+* l ==��,-��  ,   MAPPING INSTRUCTIONS   - �.. *   M A P P I N G   I N S T R U C T I O N S+ /0/ r  =C121 J  =?����  2 o      ���� 0 map_list map_List0 343 Z  Ds56����5 = DK787 o  DI���� &0 show_instructions show_Instructions8 m  IJ��
�� boovtrue6 k  No99 :;: I NS������
�� .miscactvnull��� ��� obj ��  ��  ; <��< I To��=>
�� .sysodlogaskr        TEXT= l 	TW?����? m  TW@@ �AA� W e   n o w   n e e d   t o   a s s i g n   e a c h   c o l u m n   o r   d a t a   i t e m   t o   a   p r o p e r t y   o f   a   n e w   E v e r n o t e   i t e m . 
 
 T h e   n e x t   d i a l o g s   w i l l   h e l p   y o u   " m a p "   c o l u m n s   o r   d a t a   i t e m s   f r o m   y o u r   C S V   o r   t e x t   f i l e   t o   E v e r n o t e   i t e m   p r o p e r t i e s . 
 
 
 P r e s s   " O K "   t o   C o n t i n u e��  ��  > ��BC
�� 
apprB o  X]���� 0 script_name script_NameC ��D��
�� 
dispD I ^k��EF
�� .sysorpthalis        TEXTE m  ^aGG �HH  E v e r n o t e . i c n sF ��I��
�� 
in BI l bgJ����J I bg��K��
�� .earsffdralis        afdrK m  bcLL�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  ��  ��  ��  4 MNM l tt��������  ��  ��  N OPO l tt��QR��  Q ) # MAP COLUMNS TO EVERNOTE PROPERTIES   R �SS F   M A P   C O L U M N S   T O   E V E R N O T E   P R O P E R T I E SP TUT I ty������
�� .miscactvnull��� ��� obj ��  ��  U VWV r  zXYX m  z{���� Y o      ���� 0 	map_count 	map_CountW Z[Z U  ��\]\ k  ��^^ _`_ r  ��aba o  ������ 0 	map_count 	map_Countb o      ���� 0 column_number column_Number` cdc r  ��efe b  ��ghg b  ��iji b  ��klk b  ��mnm m  ��oo �pp ( T h e   v a l u e   o f   c o l u m n  n o  ������ 0 column_number column_Numberl m  ��qq �rr 
   i s   "j l ��s����s c  ��tut n  ��vwv 4  ����x
�� 
cobjx o  ������ 0 column_number column_Numberw o  ������ 0 test_records test_Recordsu m  ����
�� 
ctxt��  ��  h m  ��yy �zz � " . 
 
 W h a t   E v e r n o t e   p r o p e r t y   w o u l d   y o u   l i k e   t h i s   t o   c o r r e s p o n d   t o ?f o      ���� 0 
map_prompt 
map_Promptd {|{ r  ��}~} l ������ I ������
�� .gtqpchltns    @   @ ns  � o  ������  0 evernote_props evernote_Props� ����
�� 
appr� o  ������ 0 script_name script_Name� �����
�� 
prmp� o  ������ 0 
map_prompt 
map_Prompt��  ��  ��  ~ o      ���� 0 col_item col_Item| ���� Z  �������� = ����� o  ������ 0 col_item col_Item� m  ����
�� boovfals� L  ������  ��  � k  ���� ��� s  ����� J  ���� ��� o  ������ 0 column_number column_Number� ���� o  ������ 0 col_item col_Item��  � n      ���  ;  ��� o  ������ 0 map_list map_List� ���� r  ����� l �������� [  ����� o  ������ 0 	map_count 	map_Count� m  ������ ��  ��  � o      ���� 0 	map_count 	map_Count��  ��  ] o  ������ 0 column_count column_Count[ ��� l ������~��  �  �~  � ��� l ���}���}  �   PREVIEW RESULTS   � ���     P R E V I E W   R E S U L T S� ��� r  ����� m  ���|�| � o      �{�{ 0 preview_count preview_Count� ��� r  ���� b  ���� b  ���� m  ���� ��� Z P R E V I E W   O F   T H E   D A T A   M A P P E D   T O   E V E R N O T E   F I E L D S� o  ��z
�z 
ret � o  �y
�y 
ret � o      �x�x 0 preview_text preview_Text� ��� X  j��w�� k  "e�� ��� r  "5��� l "1��v�u� n  "1��� 4  ,1�t�
�t 
cobj� m  /0�s�s � l ",��r�q� n  ",��� 4  %,�p�
�p 
cobj� o  (+�o�o 0 preview_count preview_Count� o  "%�n�n 0 map_list map_List�r  �q  �v  �u  � o      �m�m 0 test_property test_Property� ��� r  6O��� b  6K��� b  6G��� b  6A��� l 6=��l�k� c  6=��� o  69�j�j 0 test_property test_Property� m  9<�i
�i 
ctxt�l  �k  � m  =@�� ���  :  � l AF��h�g� c  AF��� o  AB�f�f 0 test_record test_Record� m  BE�e
�e 
ctxt�h  �g  � o  GJ�d
�d 
ret � o      �c�c 0 	test_text 	test_Text� ��� r  P[��� l PW��b�a� b  PW��� o  PS�`�` 0 preview_text preview_Text� o  SV�_�_ 0 	test_text 	test_Text�b  �a  � o      �^�^ 0 preview_text preview_Text� ��]� r  \e��� l \a��\�[� [  \a��� o  \_�Z�Z 0 preview_count preview_Count� m  _`�Y�Y �\  �[  � o      �X�X 0 preview_count preview_Count�]  �w 0 test_record test_Record� o  �W�W 0 test_records test_Records� ��� I k��V��
�V .sysodlogaskr        TEXT� o  kn�U�U 0 preview_text preview_Text� �T��
�T 
appr� o  ot�S�S 0 script_name script_Name� �R��Q
�R 
disp� I u��P��
�P .sysorpthalis        TEXT� m  ux�� ���  E v e r n o t e . i c n s� �O��N
�O 
in B� l y~��M�L� I y~�K��J
�K .earsffdralis        afdr� m  yz���                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �J  �M  �L  �N  �Q  � ��� l ���I�H�G�I  �H  �G  � ��� l ���F���F  � ' ! PROCESS EACH ROW INTO A NEW NOTE   � ��� B   P R O C E S S   E A C H   R O W   I N T O   A   N E W   N O T E� ��� Z  �����E�D� = ����� o  ���C�C &0 show_instructions show_Instructions� m  ���B
�B boovtrue� k  ���� ��� I ���A�@�?
�A .miscactvnull��� ��� obj �@  �?  �  �>  I ���=
�= .sysodlogaskr        TEXT b  �� b  �� l 	���<�; m  �� �		  Y o u r   i m p o r t   o f  �<  �;   l ��
�:�9
 I ���8�7
�8 .corecnte****       **** o  ���6�6 0 
note_items 
note_Items�7  �:  �9   m  �� � l   i t e m s   i s   n o w   r e a d y   t o   s t a r t ! 
 
 
 P r e s s   " O K "   t o   C o n t i n u e �5
�5 
appr o  ���4�4 0 script_name script_Name �3�2
�3 
disp I ���1
�1 .sysorpthalis        TEXT m  �� �  E v e r n o t e . i c n s �0�/
�0 
in B l ���.�- I ���,�+
�, .earsffdralis        afdr m  ���                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �+  �.  �-  �/  �2  �>  �E  �D  �  I ���*�)�(
�* .miscactvnull��� ��� obj �)  �(    r  �� m  ���'�'   o      �&�& 0 thenum theNum   l ���%�$�#�%  �$  �#    !"! l ���"#$�"  #   SPECIAL CASE FOR TAGS   $ �%% ,   S P E C I A L   C A S E   F O R   T A G S" &'& r  ��()( J  ���!�!  ) o      � �  0 	note_tags 	note_Tags' *+* l ������  �  �  + ,�, X  �-�.- k  �// 010 l ���23�  2    RESET EVERNOTE PROPERTIES   3 �44 4   R E S E T   E V E R N O T E   P R O P E R T I E S1 565 r  ��787 m  ��99 �::  8 o      �� 0 
note_title 
note_Title6 ;<; r  ��=>= m  ��?? �@@  > o      �� 0 	note_body 	note_Body< ABA r  �CDC m  ��EE �FF  D o      �� 0 note_source note_SourceB GHG r  IJI m  KK �LL  J o      �� 0 note_altitude note_AltitudeH MNM r  OPO m  QQ �RR  P o      �� 0 note_lat note_LatN STS r  UVU m  WW �XX  V o      �� 0 	note_long 	note_LongT YZY r  #[\[ m  ]] �^^  \ o      �� 0 note_alt note_AltZ _`_ r  $+aba m  $'cc �dd  b o      �� 0 note_creation note_Creation` efe r  ,3ghg m  ,/ii �jj  h o      �� 0 note_author note_Authorf klk l 44����  �  �  l mnm l 44�op�  o   RESET RECORD PROPERTY   p �qq ,   R E S E T   R E C O R D   P R O P E R T Yn rsr r  4:tut J  46��  u o      �� 0 note_records note_Recordss vwv l ;;�
�	��
  �	  �  w xyx l ;;�z{�  z 2 , SCAN FOR ESCAPED DATA AND FIX, IF NECESSARY   { �|| X   S C A N   F O R   E S C A P E D   D A T A   A N D   F I X ,   I F   N E C E S S A R Yy }~} r  ;C� n ;A��� I  <A���� 0 find_escaped find_Escaped� ��� o  <=�� 0 	note_item 	note_Item�  �  �  f  ;<� o      �� 0 	note_item 	note_Item~ ��� l DD�� ���  �   ��  � ��� l DD������  � &   PROCESS RECORD INTO COLUMN DATA   � ��� @   P R O C E S S   R E C O R D   I N T O   C O L U M N   D A T A� ��� r  DK��� n DG��� 1  EG��
�� 
txdl� 1  DE��
�� 
ascr� o      ���� 0 
old_delims 
old_Delims� ��� r  LS��� o  LO���� 0 col_delimiter col_Delimiter� n     ��� 1  PR��
�� 
txdl� 1  OP��
�� 
ascr� ��� r  T]��� n  TY��� 2  UY��
�� 
citm� o  TU���� 0 	note_item 	note_Item� o      ���� 0 note_records note_Records� ��� r  ^e��� o  ^a���� 0 
old_delims 
old_Delims� n     ��� 1  bd��
�� 
txdl� 1  ab��
�� 
ascr� ��� l ff��������  ��  ��  � ��� l ff������  � ) # MAP COLUMNS TO EVERNOTE PROPERTIES   � ��� F   M A P   C O L U M N S   T O   E V E R N O T E   P R O P E R T I E S� ��� r  fk��� m  fg���� � o      ���� 0 
note_count 
note_Count� ��� X  l������ k  ���� ��� Q  ������� k  ���� ��� r  ����� l �������� n  ����� 4  �����
�� 
cobj� m  ������ � l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 
note_count 
note_Count� o  ������ 0 map_list map_List��  ��  ��  ��  � o      ���� 0 note_property note_Property� ��� l ����������  ��  ��  � ��� l ��������  � %  WHICH EVERNOTE PROPERTY IS IT?   � ��� >   W H I C H   E V E R N O T E   P R O P E R T Y   I S   I T ?� ���� Z  �������� = ����� l �������� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 note_property note_Property��  ��  � m  ���� ���  ( N O N E )� r  ����� l �������� n  ����� 1  ����
�� 
pcnt� o  ������ 0 note_record note_Record��  ��  � o      ���� 0 	note_none 	note_None� ��� = ����� l �������� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 note_property note_Property��  ��  � m  ���� ���  N o t e   T i t l e� ��� r  ����� l �������� n  ����� 1  ����
�� 
pcnt� o  ������ 0 note_record note_Record��  ��  � o      ���� 0 
note_title 
note_Title� ��� = ����� l �������� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 note_property note_Property��  ��  � m  ���� ���  N o t e   B o d y� ��� Z  ������� = ����� o  ������ 0 	note_body 	note_Body� m  ���� �    � r  �� l ������ n  �� 1  ����
�� 
pcnt o  ������ 0 note_record note_Record��  ��   o      ���� 0 	note_body 	note_Body��  � r  � b  �	 b  ��

 o  ������ 0 	note_body 	note_Body o  ����
�� 
ret 	 l � ���� n  �  1  � ��
�� 
pcnt o  ������ 0 note_record note_Record��  ��   o      ���� 0 	note_body 	note_Body�  =  l ���� n   4  ��
�� 
cobj m  ����  o  ���� 0 note_property note_Property��  ��   m   �  C r e a t i o n   D a t e  k  1  r  $ l   ����  c   !"! n  #$# 1  ��
�� 
pcnt$ o  ���� 0 note_record note_Record" m  ��
�� 
TEXT��  ��   o      ���� 0 note_creation note_Creation %��% r  %1&'& n %-()( I  &-��*���� 0 setdate setDate* +��+ o  &)���� 0 note_creation note_Creation��  ��  )  f  %&' o      ���� 0 note_creation note_Creation��   ,-, = 4@./. l 4<0����0 n  4<121 4  7<��3
�� 
cobj3 m  :;���� 2 o  47���� 0 note_property note_Property��  ��  / m  <?44 �55  S o u r c e   U R L- 676 r  CL898 l CH:����: n  CH;<; 1  DH��
�� 
pcnt< o  CD���� 0 note_record note_Record��  ��  9 o      ���� 0 note_source note_Source7 =>= = O[?@? l OWA����A n  OWBCB 4  RW��D
�� 
cobjD m  UV���� C o  OR���� 0 note_property note_Property��  ��  @ m  WZEE �FF  L o n g i t u d e> GHG r  ^gIJI l ^cK����K n  ^cLML 1  _c��
�� 
pcntM o  ^_���� 0 note_record note_Record��  ��  J o      ���� 0 	note_long 	note_LongH NON = jvPQP l jrR����R n  jrSTS 4  mr��U
�� 
cobjU m  pq���� T o  jm���� 0 note_property note_Property��  ��  Q m  ruVV �WW  L a t i t u d eO XYX r  y�Z[Z l y~\����\ n  y~]^] 1  z~��
�� 
pcnt^ o  yz���� 0 note_record note_Record��  ��  [ o      ���� 0 note_lat note_LatY _`_ = ��aba l ��c����c n  ��ded 4  ����f
�� 
cobjf m  ������ e o  ���� 0 note_property note_Property��  ��  b m  ��gg �hh  A l t i t u d e` iji r  ��klk l ��m�~�}m n  ��non 1  ���|
�| 
pcnto o  ���{�{ 0 note_record note_Record�~  �}  l o      �z�z 0 note_alt note_Altj pqp = ��rsr l ��t�y�xt n  ��uvu 4  ���ww
�w 
cobjw m  ���v�v v o  ���u�u 0 note_property note_Property�y  �x  s m  ��xx �yy  T a gq z�tz Z  ��{|�s�r{ > ��}~} l ���q�p n  ����� 1  ���o
�o 
pcnt� o  ���n�n 0 note_record note_Record�q  �p  ~ m  ���� ���  | s  ����� l ����m�l� n  ����� 1  ���k
�k 
pcnt� o  ���j�j 0 note_record note_Record�m  �l  � n      ���  ;  ��� o  ���i�i 0 	note_tags 	note_Tags�s  �r  �t  ��  ��  � R      �h�g�f
�h .ascrerr ****      � ****�g  �f  ��  � ��e� r  ����� l ����d�c� [  ����� o  ���b�b 0 
note_count 
note_Count� m  ���a�a �d  �c  � o      �`�` 0 
note_count 
note_Count�e  �� 0 note_record note_Record� o  or�_�_ 0 note_records note_Records� ��� l ���^�]�\�^  �]  �\  � ��� l ���[���[  � - ' PUT BACK REPLACED COMMAS, IF NECESSARY   � ��� N   P U T   B A C K   R E P L A C E D   C O M M A S ,   I F   N E C E S S A R Y� ��� l ���Z���Z  � B < (html_Comma set as string below to work with download link)   � ��� x   ( h t m l _ C o m m a   s e t   a s   s t r i n g   b e l o w   t o   w o r k   w i t h   d o w n l o a d   l i n k )� ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  4 4 ;� m  ���Y
�Y 
TEXT� o      �X�X 0 
html_comma 
html_Comma� ��� Z ����W�V� E  ����� o  ���U�U 0 	note_body 	note_Body� o  ���T�T 0 
html_comma 
html_Comma� r   ��� n  ��� I  �S��R�S 0 replace_comma replace_Comma� ��� o  �Q�Q 0 	note_body 	note_Body� ��� o  �P�P 0 
html_comma 
html_Comma� ��O� m  
�� ���  ,�O  �R  �  f   � o      �N�N 0 	note_body 	note_Body�W  �V  � ��� Z 7���M�L� E  ��� o  �K�K 0 
note_title 
note_Title� o  �J�J 0 
html_comma 
html_Comma� r  !3��� n !/��� I  "/�I��H�I 0 replace_comma replace_Comma� ��� o  "%�G�G 0 
note_title 
note_Title� ��� o  %(�F�F 0 
html_comma 
html_Comma� ��E� m  (+�� ���  ,�E  �H  �  f  !"� o      �D�D 0 
note_title 
note_Title�M  �L  � ��� l 88�C�B�A�C  �B  �A  � ��� l 88�@���@  �   MAKE THE NOTE   � ���    M A K E   T H E   N O T E� ��?� O  8��� k  <�� ��� r  <Y��� l <U��>�=� I <U�<�;�
�< .EVRNcrntnull��� ��� null�;  � �:��
�: 
Enxt� o  @C�9�9 0 	note_body 	note_Body� �8��
�8 
Entt� o  FI�7�7 0 
note_title 
note_Title� �6��5
�6 
Ennb� o  LO�4�4 0 ev_notebook ev_Notebook�5  �>  �=  � o      �3�3 0 importednote importedNote� ��� l ZZ�2���2  �   TAGS   � ��� 
   T A G S� ��� Z  Z����1�0� > Z`��� o  Z]�/�/ 0 	note_tags 	note_Tags� J  ]_�.�.  � k  c��� ��� r  co��� n ck��� I  dk�-��,�- 0 	tag_check 	Tag_Check� ��+� o  dg�*�* 0 	note_tags 	note_Tags�+  �,  �  f  cd� o      �)�) 0 tag_list tag_List� ��� I p}�(��
�( .EVRNassnnull���     ****� o  ps�'�' 0 tag_list tag_List� �&��%
�& 
EV13� o  vy�$�$ 0 importednote importedNote�%  � ��#� r  ~���� J  ~��"�"  � o      �!�! 0 	note_tags 	note_Tags�#  �1  �0  � � � l ��� ���   �  �     l ����     ADD OTHER PROPERTIES    � *   A D D   O T H E R   P R O P E R T I E S  Z  ��	�� > ��

 o  ���� 0 note_creation note_Creation m  �� �  	 r  �� o  ���� 0 note_creation note_Creation n       1  ���
� 
EVdd o  ���� 0 importednote importedNote�  �    Z  ���� > �� o  ���� 0 note_source note_Source m  �� �   r  �� o  ���� 0 note_creation note_Creation n       1  ���
� 
EVsu o  ���� 0 importednote importedNote�  �    Z  �� !��  > ��"#" o  ���� 0 	note_long 	note_Long# m  ��$$ �%%  ! r  ��&'& o  ���� 0 	note_long 	note_Long' n      ()( 1  ���
� 
EVlo) o  ���� 0 importednote importedNote�  �   *+* Z  ��,-�
�	, > ��./. o  ���� 0 note_lat note_Lat/ m  ��00 �11  - r  ��232 o  ���� 0 note_lat note_Lat3 n      454 1  ���
� 
EVla5 o  ���� 0 importednote importedNote�
  �	  + 676 Z  �
89��8 > ��:;: o  ���� 0 note_alt note_Alt; m  ��<< �==  9 r  �>?> o  ���� 0 note_alt note_Alt? n      @A@ 1  � 
�  
EVatA o  ����� 0 importednote importedNote�  �  7 BCB l ��������  ��  ��  C D��D r  EFE [  GHG o  ���� 0 thenum theNumH m  ���� F o      ���� 0 thenum theNum��  � m  89II�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �?  � 0 	note_item 	note_Item. o  ������ 0 
note_items 
note_Items�   � m   , -JJ�                                                                                  MACS  alis    t  Macintosh HD               �0ڲH+   R�
Finder.app                                                      S����R        ����  	                CoreServices    �1�      �͒     R� R� R�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   � KLK l     ��������  ��  ��  L MNM l      ��OP��  O p j
======================================
// PREPARATORY SUBROUTINES
======================================
   P �QQ � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R E P A R A T O R Y   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
N RSR l     ��������  ��  ��  S TUT l     ��VW��  V   PICK NOTEBOOK   W �XX    P I C K   N O T E B O O KU YZY i   ! $[\[ I      �������� 0 pick_notebook pick_Notebook��  ��  \ k     �]] ^_^ l     ��`a��  ` , &PREPARE A EVERNOTE'S LIST OF NOTEBOOKS   a �bb L P R E P A R E   A   E V E R N O T E ' S   L I S T   O F   N O T E B O O K S_ c��c O     �ded k    �ff ghg I   	������
�� .miscactvnull��� ��� obj ��  ��  h iji r   
 klk J   
 ����  l o      ���� "0 listofnotebooks listOfNotebooksj mnm l   ��������  ��  ��  n opo l   ��qr��  q   GET THE NOTEBOOK LIST   r �ss ,   G E T   T H E   N O T E B O O K   L I S Tp tut r    vwv 2    ��
�� 
EVnbw o      ���� 0 evnotebooks EVNotebooksu xyx X    4z��{z k   % /|| }~} r   % *� l  % (������ l  % (������ n   % (��� 1   & (��
�� 
pnam� o   % &���� "0 currentnotebook currentNotebook��  ��  ��  ��  � o      ���� *0 currentnotebookname currentNotebookName~ ���� s   + /��� o   + ,���� *0 currentnotebookname currentNotebookName� l     ������ n      ���  ;   - .� o   , -���� "0 listofnotebooks listOfNotebooks��  ��  ��  �� "0 currentnotebook currentNotebook{ o    ���� 0 evnotebooks EVNotebooksy ��� l  5 5��������  ��  ��  � ��� l  5 5������  �   SORT THE LIST   � ���    S O R T   T H E   L I S T� ��� r   5 =��� n  5 ;��� I   6 ;������� 0 simple_sort  � ���� o   6 7���� "0 listofnotebooks listOfNotebooks��  ��  �  f   5 6� o      ����  0 folders_sorted Folders_sorted� ��� l  > >��������  ��  ��  � ��� l  > >������  �   GET THE DEFAULT NOTEBOOK   � ��� 2   G E T   T H E   D E F A U L T   N O T E B O O K� ��� r   > N��� n   > L��� 1   J L��
�� 
pnam� l  > J������ 6  > J��� 2   > A��
�� 
EVnb� =  B I��� 1   C E��
�� 
EVnd� m   F H��
�� boovtrue��  ��  � o      ���� 0 list_default list_Default� ��� l  O O��������  ��  ��  � ��� l  O O������  � ( " USER SELECTION FROM NOTEBOOK LIST   � ��� D   U S E R   S E L E C T I O N   F R O M   N O T E B O O K   L I S T� ��� r   O j��� I  O h����
�� .gtqpchltns    @   @ ns  � o   O P����  0 folders_sorted Folders_sorted� ����
�� 
appr� o   Q V���� 0 script_name script_Name� ����
�� 
prmp� l 	 W X������ m   W X�� ��� � W h i c h   E v e r n o t e   N o t e b o o k   W o u l d   Y o u   L i k e   T o   I m p o r t   I t e m s   I n t o ? 
 ( D e f a u l t   N o t e b o o k   H i g h l i g h t e d )��  ��  � ����
�� 
okbt� m   Y Z�� ���  O K� ����
�� 
cnbt� m   [ ^�� ���  N e w   N o t e b o o k� �����
�� 
inSL� o   a b���� 0 list_default list_Default��  � o      ���� 0 selnotebook SelNotebook� ��� l  k k��������  ��  ��  � ��� l  k k������  � !  CREATE NEW NOTEBOOK OPTION   � ��� 6   C R E A T E   N E W   N O T E B O O K   O P T I O N� ���� Z   k ������� l  k n������ =  k n��� o   k l���� 0 selnotebook SelNotebook� m   l m��
�� boovfals��  ��  � k   q ��� ��� r   q ���� n   q ���� l 	 � ������� 1   � ���
�� 
ttxt��  ��  � l  q ������� I  q �����
�� .sysodlogaskr        TEXT� m   q t�� ��� 0 E n t e r   N e w   N o t e b o o k   N a m e :� ����
�� 
appr� o   u z���� 0 script_name script_Name� �����
�� 
dtxt� m   } ��� ���  ��  ��  ��  � o      ���� 0 	userinput 	userInput� ���� r   � ���� o   � ����� 0 	userinput 	userInput� o      ���� 0 
evnotebook 
EVnotebook��  ��  � r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 selnotebook SelNotebook� o      ���� 0 
evnotebook 
EVnotebook��  e m     ���                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  Z ��� l     ��������  ��  ��  � ��� l     ������  � ; 5 ASSEMBLE TAG LIST, CREATING TAGS IF THEY DON'T EXIST   � ��� j   A S S E M B L E   T A G   L I S T ,   C R E A T I N G   T A G S   I F   T H E Y   D O N ' T   E X I S T� ��� i   % (��� I      ������� 0 	tag_check 	Tag_Check� ���� o      ���� 0 thetags theTags��  ��  � k     J��    O     G k    F  r     J    ����   o      ���� 0 	finaltags 	finalTags 	��	 X   	 F
��
 Z    A�� l   #���� H    # l   "��� I   "�~�}
�~ .coredoexnull���     **** 5    �|�{
�| 
EVtg o    �z�z 0 thetag theTag
�{ kfrmname�}  ��  �  ��  ��   k   & 7  r   & 2 I  & 0�y
�y .corecrel****      � null m   & '�x
�x 
EVtg �w�v
�w 
prdt K   ( , �u�t
�u 
pnam o   ) *�s�s 0 thetag theTag�t  �v   o      �r�r 0 maketag makeTag �q r   3 7  o   3 4�p�p 0 maketag makeTag  n      !"!  ;   5 6" o   4 5�o�o 0 	finaltags 	finalTags�q  ��   r   : A#$# 4   : >�n%
�n 
EVtg% o   < =�m�m 0 thetag theTag$ n      &'&  ;   ? @' o   > ?�l�l 0 	finaltags 	finalTags�� 0 thetag theTag o    �k�k 0 thetags theTags��   m     ((�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��   )�j) L   H J** o   H I�i�i 0 	finaltags 	finalTags�j  � +,+ l     �h�g�f�h  �g  �f  , -.- l      �e/0�e  / l f
======================================
// UTILITY SUBROUTINES
======================================
   0 �11 � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U T I L I T Y   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
. 232 l     �d�c�b�d  �c  �b  3 454 l     �a67�a  6   SET THE DATE   7 �88    S E T   T H E   D A T E5 9:9 i   ) ,;<; I      �`=�_�` 0 setdate setDate= >�^> o      �]�] 0 datetext dateText�^  �_  < k     �?? @A@ l     �\BC�\  B   TRY TO PARSE DATE   C �DD $   T R Y   T O   P A R S E   D A T EA E�[E Q     �FGHF r    	IJI 4    �ZK
�Z 
ldt K o    �Y�Y 0 datetext dateTextJ o      �X�X 0 the_date  G R      �W�V�U
�W .ascrerr ****      � ****�V  �U  H k    �LL MNM l   �T�S�R�T  �S  �R  N OPO l   �QQR�Q  Q : 4 IF IT DOESN'T WORK, TRY TO DETECT AND REFORMAT DATE   R �SS h   I F   I T   D O E S N ' T   W O R K ,   T R Y   T O   D E T E C T   A N D   R E F O R M A T   D A T EP TUT r    VWV m    XX �YY  W n     Z[Z 1    �P
�P 
txdl[ 1    �O
�O 
ascrU \]\ r    ^_^ n   `a` 1    �N
�N 
txdla 1    �M
�M 
ascr_ o      �L�L 0 oldtid oldTID] bcb l   �K�J�I�K  �J  �I  c ded l   �Hfg�H  f ' ! TEST FOR VARIOUS DATE SEPARATORS   g �hh B   T E S T   F O R   V A R I O U S   D A T E   S E P A R A T O R Se iji Z    Hklm�Gk E     non o    �F�F 0 datetext dateTexto m    pp �qq  -l r   # (rsr m   # $tt �uu  -s n     vwv 1   % '�E
�E 
txdlw 1   $ %�D
�D 
ascrm xyx E   + .z{z o   + ,�C�C 0 datetext dateText{ m   , -|| �}}  /y ~~ r   1 6��� m   1 2�� ���  /� n     ��� 1   3 5�B
�B 
txdl� 1   2 3�A
�A 
ascr ��� E   9 <��� o   9 :�@�@ 0 datetext dateText� m   : ;�� ���  .� ��?� r   ? D��� m   ? @�� ���  .� n     ��� 1   A C�>
�> 
txdl� 1   @ A�=
�= 
ascr�?  �G  j ��� l  I I�<�;�:�<  �;  �:  � ��� l  I I�9���9  � $  DETECT THE YEAR, IF POSSIBLE�   � ��� <   D E T E C T   T H E   Y E A R ,   I F   P O S S I B L E &� ��� l  I I�8���8  �   (ASSUMES Y/M/D T FORMAT)   � ��� 2   ( A S S U M E S   Y / M / D   T   F O R M A T )� ��� r   I U��� n   I S��� l  M S��7�6� I  M S�5��4
�5 .corecnte****       ****� 2  M O�3
�3 
cha �4  �7  �6  � l  I M��2�1� n   I M��� 4  J M�0�
�0 
cwor� m   K L�/�/ � o   I J�.�. 0 datetext dateText�2  �1  � o      �-�- 0 	charcount 	charCount� ��,� Z   V ����+�*� =  V Y��� o   V W�)�) 0 	charcount 	charCount� m   W X�(�( � k   \ ��� ��� r   \ b��� l  \ `��'�&� n   \ `��� 4  ] `�%�
�% 
cwor� m   ^ _�$�$ � o   \ ]�#�# 0 datetext dateText�'  �&  � o      �"�" 0 y  � ��� r   c q��� c   c o��� b   c k��� l  c g��!� � n   c g��� 4  d g��
� 
cwor� m   e f�� � o   c d�� 0 datetext dateText�!  �   � m   g j�� ���  /� m   k n�
� 
TEXT� o      �� 0 m  � ��� r   r ���� c   r ~��� b   r z��� l  r v���� n   r v��� 4  s v��
� 
cwor� m   t u�� � o   r s�� 0 datetext dateText�  �  � m   v y�� ���  /� m   z }�
� 
TEXT� o      �� 0 d  � ��� r   � ���� m   � ��� ���   � n     ��� 1   � ��
� 
txdl� 1   � ��
� 
ascr� ��� r   � ���� l  � ����� n   � ���� 4  � ���
� 
citm� m   � ��� � o   � ��� 0 datetext dateText�  �  � o      �� 0 t  � ��� r   � ���� o   � ��� 0 oldtid oldTID� n     ��� 1   � ��

�
 
txdl� 1   � ��	
�	 
ascr� ��� r   � ���� c   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ��� 0 m  � o   � ��� 0 d  � o   � ��� 0 y  � 1   � ��
� 
spac� o   � ��� 0 t  � m   � ��
� 
TEXT� o      �� 0 datetext dateText� ��� r   � ���� 4   � �� �
�  
ldt � o   � ����� 0 datetext dateText� o      ���� 0 the_date  �  �+  �*  �,  �[  : ��� l     ��������  ��  ��  � � � l     ����     SORT SUBROUTINE    �     S O R T   S U B R O U T I N E   i   - 0 I      ������ 0 simple_sort   	��	 o      ���� 0 my_list  ��  ��   k     u

  r      J     ����   l     ���� o      ���� 0 
index_list  ��  ��    r    	 J    ����   l     ���� o      ���� 0 sorted_list  ��  ��    U   
 r k    m  r     m     �   l      ����  o      ���� 0 low_item  ��  ��   !"! Y    c#��$%��# Z   ) ^&'����& H   ) -(( E  ) ,)*) l  ) *+����+ o   ) *���� 0 
index_list  ��  ��  * o   * +���� 0 i  ' k   0 Z,, -.- r   0 8/0/ c   0 6121 n   0 4343 4   1 4��5
�� 
cobj5 o   2 3���� 0 i  4 o   0 1���� 0 my_list  2 m   4 5��
�� 
ctxt0 o      ���� 0 	this_item  . 6��6 Z   9 Z789��7 =  9 <:;: l  9 :<����< o   9 :���� 0 low_item  ��  ��  ; m   : ;== �>>  8 k   ? F?? @A@ r   ? BBCB o   ? @���� 0 	this_item  C l     D����D o      ���� 0 low_item  ��  ��  A E��E r   C FFGF o   C D���� 0 i  G l     H����H o      ���� 0 low_item_index  ��  ��  ��  9 IJI A I LKLK o   I J���� 0 	this_item  L l  J KM����M o   J K���� 0 low_item  ��  ��  J N��N k   O VOO PQP r   O RRSR o   O P���� 0 	this_item  S l     T����T o      ���� 0 low_item  ��  ��  Q U��U r   S VVWV o   S T���� 0 i  W l     X����X o      ���� 0 low_item_index  ��  ��  ��  ��  ��  ��  ��  ��  �� 0 i  $ m    ���� % l   $Y����Y n    $Z[Z m   ! #��
�� 
nmbr[ n   !\]\ 2   !��
�� 
cobj] o    ���� 0 my_list  ��  ��  ��  " ^_^ r   d h`a` l  d eb����b o   d e���� 0 low_item  ��  ��  a l     c����c n      ded  ;   f ge o   e f���� 0 sorted_list  ��  ��  _ f��f r   i mghg l  i ji����i o   i j���� 0 low_item_index  ��  ��  h l     j����j n      klk  ;   k ll l  j km����m o   j k���� 0 
index_list  ��  ��  ��  ��  ��   l   n����n l   o����o n    pqp m    ��
�� 
nmbrq n   rsr 2   ��
�� 
cobjs o    ���� 0 my_list  ��  ��  ��  ��   t��t L   s uuu l  s tv����v o   s t���� 0 sorted_list  ��  ��  ��   wxw l     ��������  ��  ��  x yzy l      ��{|��  { p j
======================================
// ESCAPED DATA PROCESSING
======================================
   | �}} � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   E S C A P E D   D A T A   P R O C E S S I N G 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
z ~~ l     ��������  ��  ��   ��� l     ������  � < 6 FIND ESCAPED DATA (I.E., "HERE IS SOME DATA, RIGHT?")   � ��� l   F I N D   E S C A P E D   D A T A   ( I . E . ,   " H E R E   I S   S O M E   D A T A ,   R I G H T ? " )� ��� i   1 4��� I      ������� 0 find_escaped find_Escaped� ���� o      ���� 0 theitem theItem��  ��  � k     ��� ��� r     ��� n     ��� 1    ��
�� 
pcnt� o     ���� 0 theitem theItem� o      ���� 0 thecontents theContents� ��� l   ��������  ��  ��  � ��� Z    �������� E    	��� o    ���� 0 theitem theItem� m    �� ���  "� k    ��� ��� r    ��� J    ����  � o      ���� 0 	the_chars 	the_Chars� ��� l   ��������  ��  ��  � ��� l   ������  � 0 * THE CHARS IS EVERY CHARACTER IN WHOLE ROW   � ��� T   T H E   C H A R S   I S   E V E R Y   C H A R A C T E R   I N   W H O L E   R O W� ��� r    ��� n    ��� 2    ��
�� 
cha � o    ���� 0 theitem theItem� o      ���� 0 	the_chars 	the_Chars� ��� l   ��������  ��  ��  � ��� l   ������  � "  EXTRACT TEXT BETWEEN QUOTES   � ��� 8   E X T R A C T   T E X T   B E T W E E N   Q U O T E S� ��� l   ����  � / ) QUEUE UP ESCAPED ITEM NUMBERS (IN PAIRS)   � ��� R   Q U E U E   U P   E S C A P E D   I T E M   N U M B E R S   ( I N   P A I R S )� ��� r    ��� m    �~�~ � o      �}�} 0 
esc_number 
esc_Number� ��� l   �|�{�z�|  �{  �z  � ��� V    ���� k   # ��� ��� l  # #�y���y  � E ? ESC LIST CONTAINS POSITIONS OF QUOTE CHARACTERS FOR ENTIRE ROW   � ��� ~   E S C   L I S T   C O N T A I N S   P O S I T I O N S   O F   Q U O T E   C H A R A C T E R S   F O R   E N T I R E   R O W� ��� r   # +��� n  # )��� I   $ )�x��w�x  0 items_position items_Position� ��v� o   $ %�u�u 0 	the_chars 	the_Chars�v  �w  �  f   # $� o      �t�t 0 esc_list esc_List� ��� l  , ,�s�r�q�s  �r  �q  � ��� l  , ,�p���p  � @ : ESC NUMBER CONTAINS COUNT OF ESCAPED ITEMS FOR ENTIRE ROW   � ��� t   E S C   N U M B E R   C O N T A I N S   C O U N T   O F   E S C A P E D   I T E M S   F O R   E N T I R E   R O W� ��� r   , 7��� c   , 5��� ^   , 3��� l  , 1��o�n� I  , 1�m��l
�m .corecnte****       ****� o   , -�k�k 0 esc_list esc_List�l  �o  �n  � m   1 2�j�j � m   3 4�i
�i 
long� o      �h�h 0 
esc_number 
esc_Number� ��� l  8 8�g�f�e�g  �f  �e  � ��� l  8 8�d���d  � ) # ASSEMBLE THE TEXT BEFORE THE QUOTE   � ��� F   A S S E M B L E   T H E   T E X T   B E F O R E   T H E   Q U O T E� ��� r   8 @��� \   8 >��� l  8 <��c�b� n   8 <��� 4   9 <�a�
�a 
cobj� m   : ;�`�` � o   8 9�_�_ 0 esc_list esc_List�c  �b  � m   < =�^�^ � o      �]�] 0 pre_end pre_END� ��� l  A A�\�[�Z�\  �[  �Z  � ��� l  A A�Y���Y  � ; 5 AND IF THE QUOTE IS THE FIRST CHARACTER OF THE ITEM�   � ��� j   A N D   I F   T H E   Q U O T E   I S   T H E   F I R S T   C H A R A C T E R   O F   T H E   I T E M &� ��� Z   A \���X�� =  A D   o   A B�W�W 0 pre_end pre_END m   B C�V�V  � r   G J m   G H �   o      �U�U 0 pre_text pre_Text�X  � r   M \ c   M Z	 l  M X
�T�S
 n   M X 7  N X�R
�R 
cobj m   R T�Q�Q  o   U W�P�P 0 pre_end pre_END o   M N�O�O 0 	the_chars 	the_Chars�T  �S  	 m   X Y�N
�N 
TEXT o      �M�M 0 pre_text pre_Text�  l  ] ]�L�K�J�L  �K  �J    l  ] ]�I�I   ( " ASSEMBLE THE TEXT AFTER THE QUOTE    � D   A S S E M B L E   T H E   T E X T   A F T E R   T H E   Q U O T E  r   ] e [   ] c l  ] a�H�G n   ] a 4   ^ a�F
�F 
cobj m   _ `�E�E  o   ] ^�D�D 0 esc_list esc_List�H  �G   m   a b�C�C  o      �B�B 0 post_end post_END  !  l  f f�A�@�?�A  �@  �?  ! "#" l  f f�>$%�>  $ : 4 AND IF THE QUOTE IS THE LAST CHARACTER OF THE ITEM�   % �&& h   A N D   I F   T H E   Q U O T E   I S   T H E   L A S T   C H A R A C T E R   O F   T H E   I T E M &# '(' Z   f �)*�=+) ?  f m,-, o   f g�<�< 0 post_end post_END- l  g l.�;�:. I  g l�9/�8
�9 .corecnte****       ****/ o   g h�7�7 0 	the_chars 	the_Chars�8  �;  �:  * r   p s010 m   p q22 �33  1 o      �6�6 0 	post_text 	post_Text�=  + r   v �454 c   v �676 l  v �8�5�48 n   v �9:9 7  w ��3;<
�3 
cobj; o   { }�2�2 0 post_end post_END<  ;   ~ : o   v w�1�1 0 	the_chars 	the_Chars�5  �4  7 m   � ��0
�0 
TEXT5 o      �/�/ 0 	post_text 	post_Text( =>= l  � ��.�-�,�.  �-  �,  > ?@? l  � ��+AB�+  A , & ASSEMBLE THE TEXT OF THE ESCAPED ITEM   B �CC L   A S S E M B L E   T H E   T E X T   O F   T H E   E S C A P E D   I T E M@ DED r   � �FGF [   � �HIH l  � �J�*�)J n   � �KLK 4   � ��(M
�( 
cobjM m   � ��'�' L o   � ��&�& 0 esc_list esc_List�*  �)  I m   � ��%�% G o      �$�$ 0 
char_start 
char_StartE NON r   � �PQP \   � �RSR l  � �T�#�"T n   � �UVU 4   � ��!W
�! 
cobjW m   � �� �  V o   � ��� 0 esc_list esc_List�#  �"  S m   � ��� Q o      �� 0 char_end char_EndO XYX r   � �Z[Z c   � �\]\ l  � �^��^ n   � �_`_ 7  � ��ab
� 
ctxta o   � ��� 0 
char_start 
char_Startb o   � ��� 0 char_end char_End` o   � ��� 0 	the_chars 	the_Chars�  �  ] m   � ��
� 
ctxt[ o      ��  0 escaped_column escaped_ColumnY cdc l  � �����  �  �  d efe l  � ��gh�  g 0 * REPLACE COMMAS IN ESCAPED COLUMN CONTENTS   h �ii T   R E P L A C E   C O M M A S   I N   E S C A P E D   C O L U M N   C O N T E N T Sf jkj Z   � �lm��l E   � �non o   � ���  0 escaped_column escaped_Columno m   � �pp �qq  ,m k   � �rr sts l  � ��uv�  u B < (html_Comma set as string below to work with download link)   v �ww x   ( h t m l _ C o m m a   s e t   a s   s t r i n g   b e l o w   t o   w o r k   w i t h   d o w n l o a d   l i n k )t xyx r   � �z{z c   � �|}| b   � �~~ m   � ��� ���  & # m   � ��� ���  4 4 ;} m   � ��
� 
TEXT{ o      �� 0 
html_comma 
html_Commay ��
� r   � ���� n  � ���� I   � ��	���	 0 replace_comma replace_Comma� ��� o   � ���  0 escaped_column escaped_Column� ��� m   � ��� ���  ,� ��� o   � ��� 0 
html_comma 
html_Comma�  �  �  f   � �� o      ��  0 escaped_column escaped_Column�
  �  �  k ��� l  � �����  �  �  � ��� l  � �� ���   �    REASSEMBLE ROW FROM PARTS   � ��� 4   R E A S S E M B L E   R O W   F R O M   P A R T S� ��� r   � ���� c   � ���� b   � ���� b   � ���� o   � ����� 0 pre_text pre_Text� o   � �����  0 escaped_column escaped_Column� o   � ����� 0 	post_text 	post_Text� m   � ���
�� 
TEXT� o      ���� 0 escaped_item escaped_Item� ��� l  � ���������  ��  ��  � ��� l  � �������  � ( " SET UP FOR NEXT ITEM (IF PRESENT)   � ��� D   S E T   U P   F O R   N E X T   I T E M   ( I F   P R E S E N T )� ��� r   � ���� n   � ���� 2   � ���
�� 
cha � o   � ����� 0 escaped_item escaped_Item� o      ���� 0 	the_chars 	the_Chars� ��� r   � ���� l  � ������� \   � ���� o   � ����� 0 
esc_number 
esc_Number� m   � ����� ��  ��  � o      ���� 0 
esc_number 
esc_Number� ���� l  � ���������  ��  ��  ��  � ?   "��� o     ���� 0 
esc_number 
esc_Number� m     !����  � ���� r   � ���� l  � ������� c   � ���� o   � ����� 0 	the_chars 	the_Chars� m   � ���
�� 
TEXT��  ��  � o      ���� 0 theitem theItem��  ��  ��  � ���� L   � ��� o   � ����� 0 theitem theItem��  � ��� l     ��������  ��  ��  � ��� l     ������  � 1 + DETERMINE ITEM POSITION OF QUOTATION MARKS   � ��� V   D E T E R M I N E   I T E M   P O S I T I O N   O F   Q U O T A T I O N   M A R K S� ��� i   5 8��� I      �������  0 items_position items_Position� ���� o      ���� 0 	the_chars 	the_Chars��  ��  � k     7�� ��� r     ��� J     ����  � o      ���� 0 esc_list esc_List� ��� r    ��� m    ���� � o      ���� 0 the_position the_Position� ��� X   	 4����� k    /�� ��� Z    )������� =   ��� n    ��� 1    ��
�� 
pcnt� o    ���� 0 the_char the_Char� m    �� ���  "� s   ! %��� o   ! "���� 0 the_position the_Position� l     ������ n      ���  ;   # $� o   " #���� 0 esc_list esc_List��  ��  ��  ��  � ���� r   * /��� l  * -������ [   * -��� o   * +���� 0 the_position the_Position� m   + ,���� ��  ��  � o      ���� 0 the_position the_Position��  �� 0 the_char the_Char� o    ���� 0 	the_chars 	the_Chars� ���� L   5 7�� o   5 6���� 0 esc_list esc_List��  � ��� l     ��������  ��  ��  � ��� l     ������  � ) # REPLACE COMMAS INSIDE ESCAPED DATA   � ��� F   R E P L A C E   C O M M A S   I N S I D E   E S C A P E D   D A T A� ���� i   9 <��� I      ������� 0 replace_comma replace_Comma� ��� o      ���� 0 the_text the_Text� 	 		  o      ���� 0 the_original the_Original	 	��	 o      ���� "0 the_replacement the_Replacement��  ��  � k     &		 			 r     			 n    				 1    ��
�� 
txdl		 1     ��
�� 
ascr	 o      ���� 0 oldtid oldTID	 	
		
 r    			 o    ���� 0 the_original the_Original	 n     			 1    
��
�� 
txdl	 1    ��
�� 
ascr	 			 r    			 n    			 2   ��
�� 
citm	 o    ���� 0 the_text the_Text	 o      ����  0 thesourceitems theSourceItems	 			 r    			 o    ���� "0 the_replacement the_Replacement	 n     			 1    ��
�� 
txdl	 1    ��
�� 
ascr	 			 r    			 c    	 	!	  o    ����  0 thesourceitems theSourceItems	! m    ��
�� 
TEXT	 o      ���� 0 the_text the_Text	 	"	#	" r    #	$	%	$ o    ���� 0 oldtid oldTID	% n     	&	'	& 1     "��
�� 
txdl	' 1     ��
�� 
ascr	# 	(��	( L   $ &	)	) o   $ %���� 0 the_text the_Text��  ��       ��	*��	+ K	,	-	.	/	0	1	2	3	4��  	* �������������������������� &0 show_instructions show_Instructions�� 0 
delim_list 
delim_List�� 0 script_name script_Name��  0 evernote_props evernote_Props�� 0 pick_notebook pick_Notebook�� 0 	tag_check 	Tag_Check�� 0 setdate setDate�� 0 simple_sort  �� 0 find_escaped find_Escaped��  0 items_position items_Position�� 0 replace_comma replace_Comma
�� .aevtoappnull  �   � ****
�� boovtrue	+ ��	5�� 	5   - 1 5 8	, ��	6�� 		6 	  Z ^ b f j n r v y	- ��\����	7	8���� 0 pick_notebook pick_Notebook��  ��  	7 	�������������������� "0 listofnotebooks listOfNotebooks�� 0 evnotebooks EVNotebooks�� "0 currentnotebook currentNotebook�� *0 currentnotebookname currentNotebookName��  0 folders_sorted Folders_sorted�� 0 list_default list_Default�� 0 selnotebook SelNotebook�� 0 	userinput 	userInput�� 0 
evnotebook 
EVnotebook	8 ���������������	9��~�}��|��{��z�y�x��w��v�u�t
�� .miscactvnull��� ��� obj 
�� 
EVnb
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 0 simple_sort  	9  
� 
EVnd
�~ 
appr
�} 
prmp
�| 
okbt
�{ 
cnbt
�z 
inSL�y 

�x .gtqpchltns    @   @ ns  
�w 
dtxt�v 
�u .sysodlogaskr        TEXT
�t 
ttxt�� �� �*j OjvE�O*�-E�O �[��l kh ��,E�O��6G[OY��O)�k+ E�O*�-�[�,\Ze81�,E�O��b  �����a a �a  E�O�f  $a �b  a a a  a ,E�O�E�Y ��k/E�U	. �s��r�q	:	;�p�s 0 	tag_check 	Tag_Check�r �o	<�o 	<  �n�n 0 thetags theTags�q  	: �m�l�k�j�m 0 thetags theTags�l 0 	finaltags 	finalTags�k 0 thetag theTag�j 0 maketag makeTag	; 
(�i�h�g�f�e�d�c�b�a
�i 
kocl
�h 
cobj
�g .corecnte****       ****
�f 
EVtg
�e kfrmname
�d .coredoexnull���     ****
�c 
prdt
�b 
pnam
�a .corecrel****      � null�p K� DjvE�O <�[��l kh *��0j  ���ll 	E�O��6FY 	*�/�6F[OY��UO�	/ �`<�_�^	=	>�]�` 0 setdate setDate�_ �\	?�\ 	?  �[�[ 0 datetext dateText�^  	= �Z�Y�X�W�V�U�T�S�Z 0 datetext dateText�Y 0 the_date  �X 0 oldtid oldTID�W 0 	charcount 	charCount�V 0 y  �U 0 m  �T 0 d  �S 0 t  	> �R�Q�PX�O�Npt|����M�L�K�J��I���H�G
�R 
ldt �Q  �P  
�O 
ascr
�N 
txdl
�M 
cwor
�L 
cha 
�K .corecnte****       ****�J 
�I 
TEXT
�H 
citm
�G 
spac�] � *�/E�W �X  ���,FO��,E�O�� 
���,FY �� 
���,FY �� 
���,FY hO��k/�-j E�O��  Y��k/E�O��l/a %a &E�O��m/a %a &E�Oa ��,FO�a l/E�O���,FO��%�%_ %�%a &E�O*�/E�Y h	0 �F�E�D	@	A�C�F 0 simple_sort  �E �B	B�B 	B  �A�A 0 my_list  �D  	@ �@�?�>�=�<�;�:�@ 0 my_list  �? 0 
index_list  �> 0 sorted_list  �= 0 low_item  �< 0 i  �; 0 	this_item  �: 0 low_item_index  	A �9�8�7=
�9 
cobj
�8 
nmbr
�7 
ctxt�C vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�	1 �6��5�4	C	D�3�6 0 find_escaped find_Escaped�5 �2	E�2 	E  �1�1 0 theitem theItem�4  	C �0�/�.�-�,�+�*�)�(�'�&�%�$�#�0 0 theitem theItem�/ 0 thecontents theContents�. 0 	the_chars 	the_Chars�- 0 
esc_number 
esc_Number�, 0 esc_list esc_List�+ 0 pre_end pre_END�* 0 pre_text pre_Text�) 0 post_end post_END�( 0 	post_text 	post_Text�' 0 
char_start 
char_Start�& 0 char_end char_End�%  0 escaped_column escaped_Column�$ 0 
html_comma 
html_Comma�# 0 escaped_item escaped_Item	D �"��!� ����2�p����
�" 
pcnt
�! 
cha �   0 items_position items_Position
� .corecnte****       ****
� 
long
� 
cobj
� 
TEXT
� 
ctxt� 0 replace_comma replace_Comma�3 ��,E�O�� �jvE�O��-E�OkE�O �h�j)�k+ E�O�j l!�&E�O��k/kE�O�j  �E�Y �[�\[Zk\Z�2�&E�O��l/kE�O��j  �E�Y �[�\[Z�\62�&E�O��k/kE�O��l/kE�O�[�\[Z�\Z�2�&E�O�� ��%�&E�O)��m+ E�Y hO��%�%�&E�O��-E�O�kE�OP[OY�AO��&E�Y hO�	2 ����	F	G��  0 items_position items_Position� �	H� 	H  �� 0 	the_chars 	the_Chars�  	F ����� 0 	the_chars 	the_Chars� 0 esc_list esc_List� 0 the_position the_Position� 0 the_char the_Char	G �����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pcnt� 8jvE�OkE�O *�[��l kh ��,�  	��6GY hO�kE�[OY��O�	3 ���
�		I	J�� 0 replace_comma replace_Comma�
 �	K� 	K  ���� 0 the_text the_Text� 0 the_original the_Original� "0 the_replacement the_Replacement�	  	I ���� ��� 0 the_text the_Text� 0 the_original the_Original� "0 the_replacement the_Replacement�  0 oldtid oldTID��  0 thesourceitems theSourceItems	J ��������
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT� '��,E�O���,FO��-E�O���,FO��&E�O���,FO�	4 ��	L����	M	N��
�� .aevtoappnull  �   � ****	L k    	O	O  �	P	P  �	Q	Q  �����  ��  ��  	M �������� 0 test_record test_Record�� 0 	note_item 	note_Item�� 0 note_record note_Record	N � ����� ����� ��� ���������J�� ����������� � ���������&��AHa��r���������������������������	������"����@G����oq��y���������������������9��?��E��K��Q��W��]��c��i��������������������4EVgx�������������������������������������$��0��<��
�� 
ascr
�� 
txdl
�� 
appr
�� 
disp
�� 
in B
�� .earsffdralis        afdr
�� .sysorpthalis        TEXT�� 
�� .sysodlogaskr        TEXT
�� 
prmp
�� .sysostdfalis    ��� null�� 0 exportedfile exportedFile�� 0 pick_notebook pick_Notebook�� 0 ev_notebook ev_Notebook
�� .miscactvnull��� ��� obj 
�� .gtqpchltns    @   @ ns  ��  0 line_delimiter line_Delimiter
�� 
cobj
�� 
ret 
�� 
tab �� 0 col_delimiter col_Delimiter
�� .rdwropenshor       file�� 0 fileref fileRef
�� .rdwrread****        ****�� 0 file_contents file_Contents
�� .rdwrclosnull���     ****�� 0 
note_items 
note_Items�� 0 
old_delims 
old_Delims
�� 
citm�� 0 	test_item 	test_Item�� 0 test_records test_Records�� 0 find_escaped find_Escaped
�� .corecnte****       ****�� 0 column_count column_Count
�� 
btns
�� 
dflt
�� 
cbtn�� 
�� 0 map_list map_List�� 0 	map_count 	map_Count�� 0 column_number column_Number
�� 
ctxt�� 0 
map_prompt 
map_Prompt�� 0 col_item col_Item�� 0 preview_count preview_Count�� 0 preview_text preview_Text
�� 
kocl�� 0 test_property test_Property�� 0 	test_text 	test_Text�� 0 thenum theNum�� 0 	note_tags 	note_Tags�� 0 
note_title 
note_Title�� 0 	note_body 	note_Body�� 0 note_source note_Source�� 0 note_altitude note_Altitude�� 0 note_lat note_Lat�� 0 	note_long 	note_Long�� 0 note_alt note_Alt�� 0 note_creation note_Creation�� 0 note_author note_Author�� 0 note_records note_Records�� 0 
note_count 
note_Count�� 0 note_property note_Property
�� 
pcnt�� 0 	note_none 	note_None
�� 
TEXT�� 0 setdate setDate��  ��  �� 0 
html_comma 
html_Comma�� 0 replace_comma replace_Comma
�� 
Enxt
�� 
Entt
�� 
Ennb�� 
�� .EVRNcrntnull��� ��� null�� 0 importednote importedNote�� 0 	tag_check 	Tag_Check�� 0 tag_list tag_List
�� 
EV13
�� .EVRNassnnull���     ****
�� 
EVdd
�� 
EVsu
�� 
EVlo
�� 
EVla
�� 
EVat�����,FOb   e  ��b  ����j 	l 
� Y hO��*��l E` O)j+ E` Ob   e  &*j Oa �b  �a ��j 	l 
� Y hO*j Ob  �b  �a � E` O_ f  hY 5_ a k/a   _ E` Y _ a k/a   _ E` Y hOb   e  &*j Oa �b  �a  ��j 	l 
� Y hO*j Ob  �b  �a !� E` "O_ "f  hY 5_ "a k/a #  _ E` "Y _ "a k/a $  _ E` "Y hO_ j %E` &O_ &j 'E` (O_ j )OjvE` *O��,E` +O_ ��,FO_ (a ,-E` *O_ +��,FO_ *a k/E` -OjvE` .O)_ -k+ /E` -O��,E` +O_ "��,FO_ -a ,-E` .O_ +��,FO_ .j 0E` 1Oa 2_ 1%a 3%�b  a 4a 5a 6lva 7a 8a 9a :�a ;��j 	l 
a < OjvE` =Ob   e  &*j Oa >�b  �a ?��j 	l 
� Y hO*j OkE` @O t_ 1kh_ @E` AOa B_ A%a C%_ .a _ A/a D&%a E%E` FOb  �b  �_ F� E` GO_ Gf  hY _ A_ Glv_ =6GO_ @kE` @[OY��OkE` HOa I_ %_ %E` JO ]_ .[a Ka l 0kh  _ =a _ H/a l/E` LO_ La D&a M%�a D&%_ %E` NO_ J_ N%E` JO_ HkE` H[OY��O_ J�b  �a O��j 	l 
� Ob   e  2*j Oa P_ *j 0%a Q%�b  �a R��j 	l 
� Y hO*j OjE` SOjvE` TOC_ *[a Ka l 0kh a UE` VOa WE` XOa YE` ZOa [E` \Oa ]E` ^Oa _E` `Oa aE` bOa cE` dOa eE` fOjvE` gO)�k+ /E�O��,E` +O_ "��,FO�a ,-E` gO_ +��,FOkE` hOx_ g[a Ka l 0kh M_ =a _ h/a l/E` iO_ ia k/a j  �a k,E` lY_ ia k/a m  �a k,E` VY _ ia k/a n  ,_ Xa o  �a k,E` XY _ X_ %�a k,%E` XY �_ ia k/a p  �a k,a q&E` dO)_ dk+ rE` dY �_ ia k/a s  �a k,E` ZY �_ ia k/a t  �a k,E` `Y e_ ia k/a u  �a k,E` ^Y J_ ia k/a v  �a k,E` bY /_ ia k/a w  �a k,a x �a k,_ T6GY hY hW X y zhO_ hkE` h[OY��Oa {a |%a q&E` }O_ X_ } )_ X_ }a ~m+ E` XY hO_ V_ } )_ V_ }a �m+ E` VY hO� �*a �_ Xa �_ Va �_ a � �E` �O_ Tjv &)_ Tk+ �E` �O_ �a �_ �l �OjvE` TY hO_ da � _ d_ �a �,FY hO_ Za � _ d_ �a �,FY hO_ `a � _ `_ �a �,FY hO_ ^a � _ ^_ �a �,FY hO_ ba � _ b_ �a �,FY hO_ SkE` SU[OY��U ascr  ��ޭ