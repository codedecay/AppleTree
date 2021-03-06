FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
"Needle Drop" for iTunes
written by Doug Adams
dougadams@mac.com

-- v3.0 April 29, 2008
-- runs as universal binary
-- quits (shortly) after iTunes is paused
-- prevents error and quits properly if first dialog is canceled

-- v2.8 August 27, 2006
-- fixed problem setting player position under some circumstances

-- v2.7 August 15, 2006
-- asks for how many seconds into a track to start playing, other slight improvements

-- v2.6 October 13, 2004
-- asks for number of seconds to play each track

-- v2.5 june 12 2003
--initial iTunes release
--(previous 1.x versions were for SoundJam)

Sound effects and music library publishers would let prospective buyers listen to and sample
record collections before they ordered them and charged them per-use, or per "needle-drop",
refering to the stylus of a phonograph. The first needle-drop, to actually listen to it 
and decide whether to make a purchase, was typically free.

I understand that nowadays, "needle drop" is a hip-hop DJ'ing technique.

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html

     � 	 	 
 " N e e d l e   D r o p "   f o r   i T u n e s 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 - -   v 3 . 0   A p r i l   2 9 ,   2 0 0 8 
 - -   r u n s   a s   u n i v e r s a l   b i n a r y 
 - -   q u i t s   ( s h o r t l y )   a f t e r   i T u n e s   i s   p a u s e d 
 - -   p r e v e n t s   e r r o r   a n d   q u i t s   p r o p e r l y   i f   f i r s t   d i a l o g   i s   c a n c e l e d 
 
 - -   v 2 . 8   A u g u s t   2 7 ,   2 0 0 6 
 - -   f i x e d   p r o b l e m   s e t t i n g   p l a y e r   p o s i t i o n   u n d e r   s o m e   c i r c u m s t a n c e s 
 
 - -   v 2 . 7   A u g u s t   1 5 ,   2 0 0 6 
 - -   a s k s   f o r   h o w   m a n y   s e c o n d s   i n t o   a   t r a c k   t o   s t a r t   p l a y i n g ,   o t h e r   s l i g h t   i m p r o v e m e n t s 
 
 - -   v 2 . 6   O c t o b e r   1 3 ,   2 0 0 4 
 - -   a s k s   f o r   n u m b e r   o f   s e c o n d s   t o   p l a y   e a c h   t r a c k 
 
 - -   v 2 . 5   j u n e   1 2   2 0 0 3 
 - - i n i t i a l   i T u n e s   r e l e a s e 
 - - ( p r e v i o u s   1 . x   v e r s i o n s   w e r e   f o r   S o u n d J a m ) 
 
 S o u n d   e f f e c t s   a n d   m u s i c   l i b r a r y   p u b l i s h e r s   w o u l d   l e t   p r o s p e c t i v e   b u y e r s   l i s t e n   t o   a n d   s a m p l e 
 r e c o r d   c o l l e c t i o n s   b e f o r e   t h e y   o r d e r e d   t h e m   a n d   c h a r g e d   t h e m   p e r - u s e ,   o r   p e r   " n e e d l e - d r o p " , 
 r e f e r i n g   t o   t h e   s t y l u s   o f   a   p h o n o g r a p h .   T h e   f i r s t   n e e d l e - d r o p ,   t o   a c t u a l l y   l i s t e n   t o   i t   
 a n d   d e c i d e   w h e t h e r   t o   m a k e   a   p u r c h a s e ,   w a s   t y p i c a l l y   f r e e . 
 
 I   u n d e r s t a n d   t h a t   n o w a d a y s ,   " n e e d l e   d r o p "   i s   a   h i p - h o p   D J ' i n g   t e c h n i q u e . 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / d o u g s c r i p t s . c o m / i t u n e s / 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e ;   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ;   e i t h e r   v e r s i o n   2   o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 G e t   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   b y   w r i t i n g   t o   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   I n c . ,   5 1   F r a n k l i n   S t r e e t ,   F i f t h   F l o o r ,   B o s t o n ,   M A     0 2 1 1 0 - 1 3 0 1 ,   U S A . 
 
 o r   v i s i t   h t t p : / / w w w . g n u . o r g / c o p y l e f t / g p l . h t m l 
 
   
  
 l     ��������  ��  ��        l     ��  ��    ) #-----------------------------------     �   F - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        l          p         ������ 0 
start_time  ��    / ) seconds into each track to begin playing     �   R   s e c o n d s   i n t o   e a c h   t r a c k   t o   b e g i n   p l a y i n g      l          p         ������ 0 needle_drop_interval  ��    !  seconds to play each track     �     6   s e c o n d s   t o   p l a y   e a c h   t r a c k   ! " ! l     ��������  ��  ��   "  # $ # i      % & % I     ������
�� .aevtoappnull  �   � ****��  ��   & k     l ' '  ( ) ( l     �� * +��   * * $ get number of seconds between songs    + � , , H   g e t   n u m b e r   o f   s e c o n d s   b e t w e e n   s o n g s )  - . - r     
 / 0 / n     1 2 1 I    �� 3���� 0 get_a_number   3  4 5 4 m     6 6 � 7 7 J P l a y   e a c h   t r a c k   f o r   h o w   m a n y   s e c o n d s ? 5  8 9 8 m     : : � ; ;   9  <�� < m     = = � > >  1 0��  ��   2  f      0 o      ���� 0 needle_drop_interval   .  ? @ ? l   ��������  ��  ��   @  A B A l   �� C D��   C * $ get seconds into each track to play    D � E E H   g e t   s e c o n d s   i n t o   e a c h   t r a c k   t o   p l a y B  F G F r     H I H n    J K J I    �� L���� 0 get_a_number   L  M N M m     O O � P P d H o w   m a n y   s e c o n d s   i n t o   e a c h   t r a c k   t o   s t a r t   p l a y i n g ? N  Q R Q m     S S � T T   R  U�� U m     V V � W W  0��  ��   K  f     I o      ���� 0 
start_time   G  X Y X l   ��������  ��  ��   Y  Z [ Z l   �� \ ]��   \ &   play first song in the playlist    ] � ^ ^ @   p l a y   f i r s t   s o n g   i n   t h e   p l a y l i s t [  _�� _ O    l ` a ` k    k b b  c d c I   ������
�� .miscactvnull��� ��� null��  ��   d  e f e r     % g h g 1     #��
�� 
pVol h o      ���� 0 v   f  i j i s   & + k l k m   & '����   l 1   ' *��
�� 
pVol j  m n m Z   , K o p�� q o >  , 2 r s r 1   , /��
�� 
sele s J   / 1����   p I  5 <�� t��
�� .hookPlaynull    ��� obj  t 1   5 8��
�� 
sele��  ��   q I  ? K�� u��
�� .hookPlaynull    ��� obj  u n   ? G v w v 1   C G��
�� 
pPly w 4  ? C�� x
�� 
cwin x m   A B���� ��   n  y z y I  L Q������
�� .hookPausnull        null��  ��   z  { | { s   R W } ~ } o   R S���� 0 v   ~ 1   S V��
�� 
pVol |   �  r   X _ � � � o   X Y���� 0 
start_time   � 1   Y ^��
�� 
pPos �  � � � I  ` e������
�� .hookPlaynull    ��� obj ��  ��   �  ��� � I  f k�� ���
�� .sysodelanull��� ��� long � o   f g���� 0 needle_drop_interval  ��  ��   a m     � ��                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��   $  � � � l     ��������  ��  ��   �  � � � i     � � � I     ������
�� .miscidlenmbr    ��� null��  ��   � k     6 � �  � � � O     3 � � � k    2 � �  � � � Z    � ����� � >   	 � � � 1    ��
�� 
pPlS � m    ��
�� ePlSkPSP � O    � � � I   ������
�� .aevtquitnull��� ��� obj ��  ��   �  f    ��  ��   �  � � � I    ������
�� .hookPausnull        null��  ��   �  � � � I  ! &������
�� .hookNextnull        null��  ��   �  � � � r   ' , � � � o   ' (���� 0 
start_time   � 1   ( +��
�� 
pPos �  ��� � I  - 2������
�� .hookPlaynull    ��� obj ��  ��  ��   � m      � ��                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��   �  ��� � L   4 6 � � o   4 5���� 0 needle_drop_interval  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ( " handler to get a number from user    � � � � D   h a n d l e r   t o   g e t   a   n u m b e r   f r o m   u s e r �  � � � i    � � � I      �� ����� 0 get_a_number   �  � � � o      ���� 0 pmpt   �  � � � o      ���� 0 addenda   �  ��� � o      ���� 
0 defnum  ��  ��   � k     h � �  � � � r      � � � l     ����� � I    �� � �
�� .sysodlogaskr        **** � b      � � � o     ���� 0 addenda   � o    ���� 0 pmpt   � �� � �
�� 
dtxt � o    ���� 
0 defnum   � �� � �
�� 
btns � J    
 � �  � � � m     � � � � �  C a n c e l   �  ��� � m     � � � � �  O K��   � �� � �
�� 
dflt � m    ����  � �� ���
�� 
appr � m     � � � � �  N e e d l e   D r o p��  ��  ��   � o      ���� 0 rez   �  � � � Z   + � ����� � C     � � � n     � � � 1    ��
�� 
bhit � o    ���� 0 rez   � m     � � � � �  c a n c e l � O   ' � � � I  ! &������
�� .aevtquitnull��� ��� obj ��  ��   �  f    ��  ��   �  � � � r   , 1 � � � n   , / � � � 1   - /��
�� 
ttxt � o   , -�� 0 rez   � o      �~�~ 0 mynumber myNumber �  ��} � Q   2 h � � � � k   5 R � �  � � � Z  5 K � ��|�{ � =  5 8 � � � o   5 6�z�z 0 mynumber myNumber � m   6 7 � � � � �   � I   ; G�y ��x�y 0 get_a_number   �  � � � o   < =�w�w 0 pmpt   �  � � � b   = B � � � b   = @ � � � m   = > � � � � � * E n t e r   o n l y   n u m b e r s . . . � o   > ?�v
�v 
ret  � o   @ A�u
�u 
ret  �  ��t � o   B C�s�s 
0 defnum  �t  �x  �|  �{   �  ��r � L   L R   l  L Q�q�p c   L Q o   L M�o�o 0 mynumber myNumber m   M P�n
�n 
long�q  �p  �r   � R      �m�l�k
�m .ascrerr ****      � ****�l  �k   � l  Z h I   Z h�j�i�j 0 get_a_number   	 o   [ \�h�h 0 pmpt  	 

 b   \ c b   \ a m   \ _ � * E n t e r   o n l y   n u m b e r s . . . o   _ `�g
�g 
ret  o   a b�f
�f 
ret  �e o   c d�d�d 
0 defnum  �e  �i     m number n    �    m   n u m b e r   n�}   �  l     �c�b�a�c  �b  �a    l     �`�_�^�`  �_  �^   �] i     I     �\�[�Z
�\ .aevtquitnull��� ��� obj �[  �Z   k     %  Q     �Y O    !  I   �X�W�V
�X .hookStopnull        null�W  �V  ! m    ""�                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��   R      �U�T�S
�U .ascrerr ****      � ****�T  �S  �Y   #$# M    %% I     �R�Q�P
�R .aevtquitnull��� ��� obj �Q  �P  $ &�O& R    %�N�M'
�N .ascrerr ****      � ****�M  ' �L(�K
�L 
errn( m   ! "�J�J���K  �O  �]       �I)*+,-�I  ) �H�G�F�E
�H .aevtoappnull  �   � ****
�G .miscidlenmbr    ��� null�F 0 get_a_number  
�E .aevtquitnull��� ��� obj * �D &�C�B./�A
�D .aevtoappnull  �   � ****�C  �B  .  /  6 : =�@�? O S V�> ��=�<�;�:�9�8�7�6�5�4�@ 0 get_a_number  �? 0 needle_drop_interval  �> 0 
start_time  
�= .miscactvnull��� ��� null
�< 
pVol�; 0 v  
�: 
sele
�9 .hookPlaynull    ��� obj 
�8 
cwin
�7 
pPly
�6 .hookPausnull        null
�5 
pPos
�4 .sysodelanull��� ��� long�A m)���m+ E�O)���m+ E�O� S*j 
O*�,E�Oj*�,GO*�,jv *�,j Y *�k/a ,j O*j O�*�,GO�*a ,FO*j O�j U+ �3 ��2�101�0
�3 .miscidlenmbr    ��� null�2  �1  0  1 
 ��/�.�-�,�+�*�)�(�'
�/ 
pPlS
�. ePlSkPSP
�- .aevtquitnull��� ��� obj 
�, .hookPausnull        null
�+ .hookNextnull        null�* 0 
start_time  
�) 
pPos
�( .hookPlaynull    ��� obj �' 0 needle_drop_interval  �0 7� 0*�,� ) *j UY hO*j O*j O�*�,FO*j UO�, �& ��%�$23�#�& 0 get_a_number  �% �"4�" 4  �!� ��! 0 pmpt  �  0 addenda  � 
0 defnum  �$  2 ������ 0 pmpt  � 0 addenda  � 
0 defnum  � 0 rez  � 0 mynumber myNumber3 �� � ��� ���� ��� � ������
� 
dtxt
� 
btns
� 
dflt
� 
appr� 
� .sysodlogaskr        ****
� 
bhit
� .aevtquitnull��� ��� obj 
� 
ttxt
� 
ret � 0 get_a_number  
� 
long�  �  �# i��%����lv�l��� E�O��,� ) *j UY hO��,E�O "��  *���%�%�m+ Y hO�a &W X  *�a �%�%�m+ - ��
�	56�
� .aevtquitnull��� ��� obj �
  �	  5  6 "������
� .hookStopnull        null�  �  
� .aevtquitnull��� ��� obj 
� 
errn���� & � *j UW X  hO)jd* O)��lhascr  ��ޭ