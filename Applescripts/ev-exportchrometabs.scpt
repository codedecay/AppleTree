FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
Veritrope.com
Export All Chrome Tabs to Evernote
VERSION 1.0
September 8, 2012

// AUTHORED BY:
Tony Giunta
http://piperedirect.com/

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// LIKE THIS SCRIPT?
If this AppleScript is helpful to you, please show your support here:
http://veritrope.com/support

// SCRIPT INFORMATION AND UPDATE PAGE
http://veritrope.com/code/export-all-chrome-tabs-to-evernote

// REQUIREMENTS
More details on the script information page.

// CHANGELOG
1.0  INITIAL RELEASE

     � 	 	 
 V e r i t r o p e . c o m 
 E x p o r t   A l l   C h r o m e   T a b s   t o   E v e r n o t e 
 V E R S I O N   1 . 0 
 S e p t e m b e r   8 ,   2 0 1 2 
 
 / /   A U T H O R E D   B Y : 
 T o n y   G i u n t a 
 h t t p : / / p i p e r e d i r e c t . c o m / 
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
 h t t p : / / v e r i t r o p e . c o m / c o d e / e x p o r t - a l l - c h r o m e - t a b s - t o - e v e r n o t e 
 
 / /   R E Q U I R E M E N T S 
 M o r e   d e t a i l s   o n   t h e   s c r i p t   i n f o r m a t i o n   p a g e . 
 
 / /   C H A N G E L O G 
 1 . 0     I N I T I A L   R E L E A S E 
 
   
  
 l     ��������  ��  ��        l      ��  ��    e _
======================================
// MAIN PROGRAM
======================================
     �   � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��  ��      PREPARE THE LIST     �   "   P R E P A R E   T H E   L I S T      l     ����  r         J     ����    o      ���� 0 url_list  ��  ��        l    ����  r        l     ����   c     ! " ! l   
 #���� # l   
 $���� $ I   
������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   " m   
 ��
�� 
TEXT��  ��    l      %���� % o      ���� 0 
date_stamp  ��  ��  ��  ��     & ' & l    (���� ( r     ) * ) b     + , + m     - - � . . : U R L   L i s t   f r o m   C h r o m e   T a b s   o n   , l    /���� / o    ���� 0 
date_stamp  ��  ��   * o      ���� 0 	notetitle 	NoteTitle��  ��   '  0 1 0 l     ��������  ��  ��   1  2 3 2 l     �� 4 5��   4   GET TABS FROM CHROME    5 � 6 6 *   G E T   T A B S   F R O M   C H R O M E 3  7 8 7 l   � 9���� 9 O    � : ; : k    � < <  = > = I   ������
�� .miscactvnull��� ��� null��  ��   >  ? @ ? r    % A B A 4    #�� C
�� 
cwin C m   ! "����  B o      ���� 0 chromewindow chromeWindow @  D�� D X   & � E�� F E Q   6 � G H�� G X   9 � I�� J I k   K { K K  L M L r   K P N O N l  K N P���� P n   K N Q R Q 1   L N��
�� 
pnam R o   K L���� 0 t  ��  ��   O o      ���� 0 tabtitle TabTitle M  S T S r   Q Z U V U l  Q V W���� W n   Q V X Y X 1   R V��
�� 
URL  Y o   Q R���� 0 t  ��  ��   V o      ���� 0 taburl TabURL T  Z [ Z r   [ t \ ] \ l  [ p ^���� ^ b   [ p _ ` _ b   [ l a b a b   [ h c d c b   [ d e f e b   [ ` g h g m   [ ^ i i � j j   h o   ^ _���� 0 tabtitle TabTitle f o   ` c��
�� 
ret  d o   d g���� 0 taburl TabURL b o   h k��
�� 
ret  ` o   l o��
�� 
ret ��  ��   ] o      ���� 0 tabinfo TabInfo [  k�� k s   u { l m l o   u x���� 0 tabinfo TabInfo m l      n���� n n       o p o  ;   y z p o   x y���� 0 url_list  ��  ��  ��  �� 0 t   J l  < ? q���� q n   < ? r s r 2  = ?��
�� 
CrTb s o   < =���� 0 w  ��  ��   H R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 w   F o   ) *���� 0 chromewindow chromeWindow��   ; m     t t�                                                                                  rimZ  alis    h  Macintosh HD               �0ڲH+   R�Google Chrome.app                                              �%��P�        ����  	                Applications    �1�      ���     R�  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��   8  u v u l     ��������  ��  ��   v  w x w l     �� y z��   y   CONVERT URL_LIST TO TEXT    z � { { 2   C O N V E R T   U R L _ L I S T   T O   T E X T x  | } | l  � � ~���� ~ r   � �  �  n  � � � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � o      ���� 0 	old_delim  ��  ��   }  � � � l  � � ����� � r   � � � � � o   � ���
�� 
ret  � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr��  ��   �  � � � l  � � ����� � r   � � � � � c   � � � � � o   � ����� 0 url_list   � m   � ���
�� 
ctxt � o      ���� 0 url_list  ��  ��   �  � � � l  � � ����� � r   � � � � � o   � ����� 0 	old_delim   � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  MAKE THE ITEM IN EVERNOTE    � � � � 2 M A K E   T H E   I T E M   I N   E V E R N O T E �  � � � l  � � ����� � O   � � � � � r   � � � � � l  � � ����� � I  � ����� �
�� .EVRNcrntnull��� ��� null��   � �� � �
�� 
Enxt � o   � ����� 0 url_list   � �� ���
�� 
Entt � o   � ����� 0 	notetitle 	NoteTitle��  ��  ��   � o      ���� 0 evnote EVNote � m   � � � ��                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � p j
======================================
// PREPARATORY SUBROUTINES
======================================
    � � � � � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R E P A R A T O R Y   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � l f
======================================
// UTILITY SUBROUTINES
======================================
    � � � � � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U T I L I T Y   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 �  � � � l     ����~��  �  �~   �  ��} � l      �| � ��|   � q k
======================================
// MAIN HANDLER SUBROUTINES
======================================
    � � � � � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   H A N D L E R   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
�}       �{ � ��{   � �z
�z .aevtoappnull  �   � **** � �y ��x�w � ��v
�y .aevtoappnull  �   � **** � k     � � �   � �   � �  & � �  7 � �  | � �  � � �  � � �  � � �  ��u�u  �x  �w   � �t�s�t 0 w  �s 0 t   � !�r�q�p�o -�n t�m�l�k�j�i�h�g�f�e�d�c i�b�a�`�_�^�]�\�[ ��Z�Y�X�W�V�r 0 url_list  
�q .misccurdldt    ��� null
�p 
TEXT�o 0 
date_stamp  �n 0 	notetitle 	NoteTitle
�m .miscactvnull��� ��� null
�l 
cwin�k 0 chromewindow chromeWindow
�j 
kocl
�i 
cobj
�h .corecnte****       ****
�g 
CrTb
�f 
pnam�e 0 tabtitle TabTitle
�d 
URL �c 0 taburl TabURL
�b 
ret �a 0 tabinfo TabInfo�`  �_  
�^ 
ascr
�] 
txdl�\ 0 	old_delim  
�[ 
ctxt
�Z 
Enxt
�Y 
Entt�X 
�W .EVRNcrntnull��� ��� null�V 0 evnote EVNote�v �jvE�O*j �&E�O��%E�O� w*j O*�k/E�O g�[��l kh   L F��-[��l kh ��,E�O�a ,E` Oa �%_ %_ %_ %_ %E` O_ �6G[OY��W X  h[OY��UO_ a ,E` O_ _ a ,FO�a &E�O_ _ a ,FOa  *a �a �a  E`  U ascr  ��ޭ