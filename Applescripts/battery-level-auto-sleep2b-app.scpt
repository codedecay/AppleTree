FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� 
    Speakable items addition that recites current battery info.
    Open in AppleScript Editor and Save As� script without extension
    into login directory/Library/Speech/Speakable Items folder.
   
    Name suggestion: Battery level.

    Works exactly as coded. Though intended for visually challenged, it will
    output a text banner containing the speech content if audio is off.

    Tested on OS X 10.7.5 and 10.9
    VikingOSX, December 2013, Apple Support Community
   Version 1.2
      � 	 	�   
         S p e a k a b l e   i t e m s   a d d i t i o n   t h a t   r e c i t e s   c u r r e n t   b a t t e r y   i n f o . 
         O p e n   i n   A p p l e S c r i p t   E d i t o r   a n d   S a v e   A s &   s c r i p t   w i t h o u t   e x t e n s i o n 
         i n t o   l o g i n   d i r e c t o r y / L i b r a r y / S p e e c h / S p e a k a b l e   I t e m s   f o l d e r . 
       
         N a m e   s u g g e s t i o n :   B a t t e r y   l e v e l . 
 
         W o r k s   e x a c t l y   a s   c o d e d .   T h o u g h   i n t e n d e d   f o r   v i s u a l l y   c h a l l e n g e d ,   i t   w i l l 
         o u t p u t   a   t e x t   b a n n e r   c o n t a i n i n g   t h e   s p e e c h   c o n t e n t   i f   a u d i o   i s   o f f . 
 
         T e s t e d   o n   O S   X   1 0 . 7 . 5   a n d   1 0 . 9 
         V i k i n g O S X ,   D e c e m b e r   2 0 1 3 ,   A p p l e   S u p p o r t   C o m m u n i t y 
       V e r s i o n   1 . 2 
     
  
 i         I     ������
�� .miscidlenmbr    ��� null��  ��    k    �       r         m        �    5  o      ���� 0 
lowbattery 
lowBattery      r        J    ����    o      ���� 0 thelist theList      r   	     m   	 
   �      o      ���� 0 thepct thePct       r     ! " ! m     # # � $ $   " o      ���� 0 thehr theHr    % & % r     ' ( ' m     ) ) � * *   ( o      ���� 0 themin theMin &  + , + r     - . - m     / / � 0 0   . o      ���� 0 
expression   ,  1 2 1 l   ��������  ��  ��   2  3 4 3 r    $ 5 6 5 n    " 7 8 7 2    "��
�� 
cpar 8 n      9 : 9 m     ��
�� 
ctxt : l    ;���� ; I   �� <��
�� .sysoexecTEXT���     TEXT < m     = = � > >  p m s e t   - g   b a t t��  ��  ��   6 o      ���� 0 thelist theList 4  ? @ ? r   % . A B A I  % ,�� C��
�� .corecnte****       **** C n  % ( D E D 2  & (��
�� 
cobj E o   % &���� 0 thelist theList��   B o      ���� 0 itemcnt itemCnt @  F G F l  / /��������  ��  ��   G  H I H Z   / A J K���� J l  / 2 L���� L =   / 2 M N M o   / 0���� 0 itemcnt itemCnt N m   0 1���� ��  ��   K k   5 = O O  P Q P I  5 :�� R��
�� .sysottosnull���     TEXT R m   5 6 S S � T T R D e s k t o p   D e v i c e   n o t   e q u i p p e d   w i t h   b a t t e r y .��   Q  U�� U L   ; =����  ��  ��  ��   I  V W V l  B B��������  ��  ��   W  X Y X r   B K Z [ Z n   B I \ ] \ 4   F I�� ^
�� 
cwor ^ m   G H����  ] n  B F _ ` _ 4   C F�� a
�� 
cobj a m   D E����  ` o   B C���� 0 thelist theList [ o      ���� 0 thepct thePct Y  b c b Z   L � d e�� f d E   L R g h g n  L P i j i 4   M P�� k
�� 
cobj k m   N O����  j o   L M���� 0 thelist theList h m   P Q l l � m m   f i n i s h i n g   c h a r g e e k   U j n n  o p o r   U ^ q r q n   U \ s t s 4   Y \�� u
�� 
cwor u m   Z [����  t n  U Y v w v 4   V Y�� x
�� 
cobj x m   W X����  w o   U V���� 0 thelist theList r o      ���� 0 thehr theHr p  y�� y r   _ j z { z n   _ h | } | 4   c h�� ~
�� 
cwor ~ m   d g����  } n  _ c  �  4   ` c�� �
�� 
cobj � m   a b����  � o   _ `���� 0 thelist theList { o      ���� 0 themin theMin��  ��   f k   m � � �  � � � r   m x � � � n   m v � � � 4   q v�� �
�� 
cwor � m   r u����  � n  m q � � � 4   n q�� �
�� 
cobj � m   o p����  � o   m n���� 0 thelist theList � o      ���� 0 thehr theHr �  ��� � r   y � � � � n   y � � � � 4   } ��� �
�� 
cwor � m   ~ ����  � n  y } � � � 4   z }�� �
�� 
cobj � m   { |����  � o   y z���� 0 thelist theList � o      ���� 0 themin theMin��   c  � � � l  � ��� � ���   �  trim leading zero    � � � � " t r i m   l e a d i n g   z e r o �  � � � Z  � � � ����� � l  � � ����� � C  � � � � � o   � ����� 0 themin theMin � m   � � � � � � �  0��  ��   � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � �����  � m   � ������� � o   � ����� 0 themin theMin � o      ���� 0 themin theMin��  ��   �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ��� � � E   � � � � � n  � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 thelist theList � m   � � � � � � �  A C   P o w e r � k   � � � �  � � � r   � � � � � m   � � � � � � �  p o w e r   c o r d � o      ���� 0 powerstatus powerStatus �  ��� � r   � � � � � m   � � � � � � �  f u l l   c h a r g e . � o      ���� 0 chargestatus chargeStatus��  ��   � k   � � � �  � � � r   � � � � � m   � � � � � � �  b a t t e r y   p o w e r � o      ���� 0 powerstatus powerStatus �  ��� � r   � � � � � m   � � � � � � � & b a t t e r y   e x h a u s t i o n . � o      ���� 0 chargestatus chargeStatus��   �  � � � l  � ���������  ��  ��   �  � � � Z   �a � � � � � l  � � ����� � @  � � � � � o   � ����� 0 thepct thePct � m   � � � � � � �  9 9��  ��   � k   � � � �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  C u r r e n t l y   o n   � o   � ����� 0 powerstatus powerStatus � l 	 � � ����� � m   � � � � � � �     a t   f u l l   c h a r g e .��  ��   � o      ���� 0 
expression   �  ��� � l  � ���������  ��  ��  ��   �  � � � F   � � � � � l  � � ����� � =  � � � � � o   � ����� 0 thehr theHr � m   � � � � � � �  0��  ��   � l  � � ����� � >  � � � � � o   � ����� 0 themin theMin � m   � � � � � � �  0��  ��   �  � � � k   �	 � �  � � � r   � �  � b   � b   � b   � � b   � � b   � �	
	 b   � � b   � � m   � � �  C u r r e n t l y   o n   o   � ����� 0 powerstatus powerStatus l 	 � ����� m   � � � *   w i t h   t h e   b a t t e r y   a t  ��  ��  
 o   � ����� 0 thepct thePct l 	 � ���� m   � � �    p e r c e n t ,    ��  �   o   � ��~�~ 0 themin theMin m   � �    m i n u t e s   t o   o  �}�} 0 chargestatus chargeStatus  o      �|�| 0 
expression   � �{ l �z�y�x�z  �y  �x  �{   �  F   l �w�v =   o  �u�u 0 thehr theHr  m  !! �""  1�w  �v   l #�t�s# @ $%$ o  �r�r 0 themin theMin% m  && �''  0�t  �s   (�q( r   ?)*) b   =+,+ b   ;-.- b   7/0/ b   5121 b   1343 b   /565 b   +787 b   )9:9 b   %;<; m   #== �>>  C u r r e n t l y   o n  < o  #$�p�p 0 powerstatus powerStatus: l 	%(?�o�n? m  %(@@ �AA *   w i t h   t h e   b a t t e r y   a t  �o  �n  8 o  )*�m�m 0 thepct thePct6 l 	+.B�l�kB m  +.CC �DD  p e r c e n t   ,    �l  �k  4 o  /0�j�j 0 thehr theHr2 l 	14E�i�hE m  14FF �GG    h o u r ,   a n d  �i  �h  0 o  56�g�g 0 themin theMin. m  7:HH �II    m i n u t e s   t o  , o  ;<�f�f 0 chargestatus chargeStatus* o      �e�e 0 
expression  �q   � r  BaJKJ b  B_LML b  B]NON b  BYPQP b  BWRSR b  BSTUT b  BQVWV b  BMXYX b  BKZ[Z b  BG\]\ m  BE^^ �__  C u r r e n t l y   o n  ] o  EF�d�d 0 powerstatus powerStatus[ l 	GJ`�c�b` m  GJaa �bb *   w i t h   t h e   b a t t e r y   a t  �c  �b  Y o  KL�a�a 0 thepct thePctW l 	MPc�`�_c m  MPdd �ee  p e r c e n t   ,    �`  �_  U o  QR�^�^ 0 thehr theHrS l 	SVf�]�\f m  SVgg �hh    h o u r s ,   a n d  �]  �\  Q o  WX�[�[ 0 themin theMinO m  Y\ii �jj    m i n u t e s   t o  M o  ]^�Z�Z 0 chargestatus chargeStatusK o      �Y�Y 0 
expression   � klk l bb�X�W�V�X  �W  �V  l mnm l bb�Uop�U  o  say expression   p �qq  s a y   e x p r e s s i o nn rsr l bb�T�S�R�T  �S  �R  s tut Z  b�vw�Q�Pv A  bmxyx c  bgz{z o  bc�O�O 0 thepct thePct{ m  cf�N
�N 
longy c  gl|}| o  gh�M�M 0 
lowbattery 
lowBattery} m  hk�L
�L 
longw k  p�~~ � l pp�K���K  �  display dialog thePct   � ��� * d i s p l a y   d i a l o g   t h e P c t� ��� I pu�J��I
�J .sysottosnull���     TEXT� o  pq�H�H 0 
expression  �I  � ��G� O v���� I |��F�E�D
�F .fndrslepnull��� ��� null�E  �D  � m  vy���                                                                                  sevs  alis    �  MacintoshHD                �0ڲH+  c3�System Events.app                                              f�e�A��        ����  	                CoreServices    �1�      �A�9    c3�c3�c3�  <MacintoshHD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h H D  -System/Library/CoreServices/System Events.app   / ��  �G  �Q  �P  u ��� l ���C���C  � &  do shell script "pmset sleepnow"   � ��� @ d o   s h e l l   s c r i p t   " p m s e t   s l e e p n o w "� ��B� L  ���� m  ���A�A �B    ��@� l     �?�>�=�?  �>  �=  �@       �<���<  � �;
�; .miscidlenmbr    ��� null� �: �9�8���7
�: .miscidlenmbr    ��� null�9  �8  � 	�6�5�4�3�2�1�0�/�.�6 0 
lowbattery 
lowBattery�5 0 thelist theList�4 0 thepct thePct�3 0 thehr theHr�2 0 themin theMin�1 0 
expression  �0 0 itemcnt itemCnt�/ 0 powerstatus powerStatus�. 0 chargestatus chargeStatus� 2   # ) / =�-�,�+�*�) S�(�' l�&�%�$ � � � � � � � � � � ��#!&=@CFH^adgi�"��!� 
�- .sysoexecTEXT���     TEXT
�, 
ctxt
�+ 
cpar
�* 
cobj
�) .corecnte****       ****
�( .sysottosnull���     TEXT
�' 
cwor�& �% �$ 
�# 
bool
�" 
long
�! .fndrslepnull��� ��� null�  �7��E�OjvE�O�E�O�E�O�E�O�E�O�j �-�-E�O��-j 
E�O�k  �j OhY hO��l/�m/E�O��l/� ��l/��/E�O��l/�a /E�Y ��l/�a /E�O��l/��/E�O�a  �[�\[Zl\Zi2E�Y hO��k/a  a E�Oa E�Y a E�Oa E�O�a  a �%a %E�OPY ��a  	 �a a &  a �%a %�%a  %�%a !%�%E�OPY W�a " 	 �a #a & $a $�%a %%�%a &%�%a '%�%a (%�%E�Y !a )�%a *%�%a +%�%a ,%�%a -%�%E�O�a .&�a .& �j Oa / *j 0UY hOa 1 ascr  ��ޭ