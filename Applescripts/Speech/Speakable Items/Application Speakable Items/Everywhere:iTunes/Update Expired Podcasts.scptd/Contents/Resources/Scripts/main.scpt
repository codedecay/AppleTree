FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
"Update Expired Podcasts" for iTunes
written by Doug Adams
dougadams@mac.com

v2.2 dec 12, 2011
-- exits if iTunes isn't running when launched (perhaps handy when running via launchd or other automatic launching scheme)

v2.1 sep 4, 2010
-- maintenance release
-- minor finesses

v2.0 aug 13, 2008
-- compatible with iTunes 7.7.1

v1.0 feb 15, 2007
-- initial release

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://dougscripts.com

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html

     � 	 		 
 " U p d a t e   E x p i r e d   P o d c a s t s "   f o r   i T u n e s 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 v 2 . 2   d e c   1 2 ,   2 0 1 1 
 - -   e x i t s   i f   i T u n e s   i s n ' t   r u n n i n g   w h e n   l a u n c h e d   ( p e r h a p s   h a n d y   w h e n   r u n n i n g   v i a   l a u n c h d   o r   o t h e r   a u t o m a t i c   l a u n c h i n g   s c h e m e ) 
 
 v 2 . 1   s e p   4 ,   2 0 1 0 
 - -   m a i n t e n a n c e   r e l e a s e 
 - -   m i n o r   f i n e s s e s 
 
 v 2 . 0   a u g   1 3 ,   2 0 0 8 
 - -   c o m p a t i b l e   w i t h   i T u n e s   7 . 7 . 1 
 
 v 1 . 0   f e b   1 5 ,   2 0 0 7 
 - -   i n i t i a l   r e l e a s e 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / d o u g s c r i p t s . c o m 
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
 l     ��������  ��  ��        l     ��  ��    [ U Delete/comment-out this line if you want iTunes to be launched when the script runs.     �   �   D e l e t e / c o m m e n t - o u t   t h i s   l i n e   i f   y o u   w a n t   i T u n e s   t o   b e   l a u n c h e d   w h e n   t h e   s c r i p t   r u n s .      l     ��  ��    V P Otherwise, if iTunes is not running when the script is run the script will quit     �   �   O t h e r w i s e ,   i f   i T u n e s   i s   n o t   r u n n i n g   w h e n   t h e   s c r i p t   i s   r u n   t h e   s c r i p t   w i l l   q u i t      l     ����  Z      ����  H        I     �������� *0 checkitunesisactive checkItunesIsActive��  ��    L   	 ����  ��  ��  ��  ��        l     ��������  ��  ��        l   �  ����   O    � ! " ! k    � # #  $ % $ I   ������
�� .ascrnoop****      � ****��  ��   %  & ' & l   ��������  ��  ��   '  (�� ( t    � ) * ) k    � + +  , - , r    * . / . 6   ( 0 1 0 3    ��
�� 
cPly 1 =    ' 2 3 2 1   ! #��
�� 
pSpK 3 m   $ &��
�� eSpKkSpP / o      ���� 0 podcast_playlist   -  4 5 4 l  + +��������  ��  ��   5  6 7 6 l  + +�� 8 9��   8   filter multiple names    9 � : : ,   f i l t e r   m u l t i p l e   n a m e s 7  ; < ; r   + / = > = J   + -����   > o      ���� 0 each_podcast   <  ? @ ? Q   0 I A B�� A r   3 @ C D C n  3 > E F E I   4 >�� G���� 0 get_discrete_list_of   G  H�� H e   4 : I I n   4 : J K J 1   7 9��
�� 
pAlb K n   4 7 L M L 2   5 7��
�� 
cTrk M o   4 5���� 0 podcast_playlist  ��  ��   F  f   3 4 D o      ���� 0 each_podcast   B R      ������
�� .ascrerr ****      � ****��  ��  ��   @  N O N l  J J��������  ��  ��   O  P Q P l  J J�� R S��   R   update the podcasts    S � T T (   u p d a t e   t h e   p o d c a s t s Q  U V U Z   J � W X���� W >  J N Y Z Y o   J K���� 0 each_podcast   Z J   K M����   X X   Q � [�� \ [ k   c � ] ]  ^ _ ^ r   c s ` a ` l  c o b���� b 6  c o c d c n   c f e f e 3   d f��
�� 
cTrk f o   c d���� 0 podcast_playlist   d E   g n g h g 1   h j��
�� 
pAlb h o   k m���� 0 this_podcast  ��  ��   a o      ���� 0 the_podcast   _  i j i Z  t � k l���� k =  t � m n m l  t | o���� o e   t | p p n   t | q r q m   w {��
�� 
pcls r o   t w���� 0 the_podcast  ��  ��   n m   | ��
�� 
list l r   � � s t s n   � � u v u 4   � ��� w
�� 
cobj w m   � �����  v o   � ����� 0 the_podcast   t o      ���� 0 the_podcast  ��  ��   j  x�� x I  � ��� y��
�� .hookUpd1null        null y o   � ����� 0 the_podcast  ��  ��  �� 0 this_podcast   \ o   T U���� 0 each_podcast  ��  ��   V  z�� z l  � ���������  ��  ��  ��   * m    ����,��   " m     { {�                                                                                  hook  alis    :  Mac HD                     �׫�H+  �cS
iTunes.app                                                      W�ñY�        ����  	                Applications    ���=      ñ��    �cS  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��     | } | l     ��������  ��  ��   }  ~  ~ i     � � � I      �� ����� 0 get_discrete_list_of   �  ��� � o      ���� 	0 list1  ��  ��   � k     U � �  � � � h     �� ��� 0 a   � j     �� ��� 0 list1ref   � o     ���� 	0 list1   �  � � � r     � � � J    
����   � o      ���� 	0 list2   �  � � � h    �� ��� 0 b   � j     �� ��� 0 list2ref   � o     ���� 	0 list2   �  � � � Y    O ��� � ��� � k   " J � �  � � � r   " * � � � n   " ( � � � 4   % (�� �
�� 
cobj � o   & '���� 0 i   � n  " % � � � o   # %���� 0 list1ref   � o   " #���� 0 a   � o      ���� 0 	this_item   �  ��� � P   + J � ��� � Z  0 I � ����� � F   0 > � � � >  0 3 � � � o   0 1���� 0 	this_item   � m   1 2 � � � � �   � H   6 < � � E  6 ; � � � n  6 9 � � � o   7 9���� 0 list2ref   � o   6 7���� 0 b   � o   9 :���� 0 	this_item   � r   A E � � � o   A B���� 0 	this_item   � n       � � �  ;   C D � o   B C���� 	0 list2  ��  ��   � ����
�� conscase��  ��  ��  �� 0 i   � m    ����  � n     � � � 1    ��
�� 
leng � o    ���� 	0 list1  ��   �  ��� � L   P U � � n  P T � � � o   Q S���� 0 list2ref   � o   P Q���� 0 b  ��     � � � l     ��������  ��  ��   �  � � � i    � � � I      ��~�}� *0 checkitunesisactive checkItunesIsActive�~  �}   � O     � � � L     � � l    ��|�{ � I   �z ��y
�z .coredoexbool       obj  � l    ��x�w � 6    � � � 3    �v
�v 
prcs � =    � � � 1    �u
�u 
pnam � m     � � � � �  i T u n e s�x  �w  �y  �|  �{   � 5     �t ��s
�t 
capp � m     � � � � �  s e v s
�s kfrmID   �  � � � l     �r�q�p�r  �q  �p   �  ��o � l     �n�m�l�n  �m  �l  �o       �k � � � ��k   � �j�i�h�j 0 get_discrete_list_of  �i *0 checkitunesisactive checkItunesIsActive
�h .aevtoappnull  �   � **** � �g ��f�e � ��d�g 0 get_discrete_list_of  �f �c ��c  �  �b�b 	0 list1  �e   � �a�`�_�^�]�\�a 	0 list1  �` 0 a  �_ 	0 list2  �^ 0 b  �] 0 i  �\ 0 	this_item   � �[ � ��Z � ��Y�X�W � ��V�U�[ 0 a   � �T ��S�R � ��Q
�T .ascrinit****      � **** � k      � �  ��P�P  �S  �R   � �O�O 0 list1ref   � �N�N 0 list1ref  �Q b   ��Z 0 b   � �M ��L�K � ��J
�M .ascrinit****      � **** � k      � �  ��I�I  �L  �K   � �H�H 0 list2ref   � �G�G 0 list2ref  �J b  �
�Y 
leng�X 0 list1ref  
�W 
cobj�V 0 list2ref  
�U 
bool�d V��K S�OjvE�O��K S�O 9k��,Ekh ��,�/E�O�g ��	 
��,��& 	��6FY hV[OY��O��,E � �F ��E�D � ��C�F *0 checkitunesisactive checkItunesIsActive�E  �D   �   � �B ��A�@ ��? ��>
�B 
capp
�A kfrmID  
�@ 
prcs �  
�? 
pnam
�> .coredoexbool       obj �C )���0 *�.�[�,\Z�81j U � �= ��<�; � ��:
�= .aevtoappnull  �   � **** � k     � � �   � �  �9�9  �<  �;   � �8�8 0 this_podcast   � �7 {�6�5�4 ��3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�7 *0 checkitunesisactive checkItunesIsActive
�6 .ascrnoop****      � ****�5,
�4 
cPly
�3 
pSpK
�2 eSpKkSpP�1 0 podcast_playlist  �0 0 each_podcast  
�/ 
cTrk
�. 
pAlb�- 0 get_discrete_list_of  �,  �+  
�* 
kocl
�) 
cobj
�( .corecnte****       ****�' 0 the_podcast  
�& 
pcls
�% 
list
�$ .hookUpd1null        null�: �*j+   hY hO� �*j O�n*�.�[�,\Z�81E�OjvE�O )��-�,Ek+ E�W X  hO�jv T N�[�a l kh  ��.�[�,\Z�@1E` O_ a ,Ea   _ a k/E` Y hO_ j [OY��Y hOPoUascr  ��ޭ