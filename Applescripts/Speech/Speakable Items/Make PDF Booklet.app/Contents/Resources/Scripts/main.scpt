FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��"Make PDF Booklet" for iTuneswritten by Doug Adamsdougscripts@mac.com
v2.1 july 22 2012
- compatible with OS X 10.8
- minor code tweaks

v2.0 sept 29 2011
- written as a Cocoa-AppleScript applet for use with OS 10.6 and 10.7 only
- consolidates settings in a single window
- includes additional tag options

v1.0 may 9 2006
- initial release
Get more free AppleScripts and info on writing your ownat Doug's AppleScripts for iTunesdougscripts.com     � 	 	�  " M a k e   P D F   B o o k l e t "   f o r   i T u n e s  w r i t t e n   b y   D o u g   A d a m s  d o u g s c r i p t s @ m a c . c o m   
 v 2 . 1   j u l y   2 2   2 0 1 2 
 -   c o m p a t i b l e   w i t h   O S   X   1 0 . 8 
 -   m i n o r   c o d e   t w e a k s 
 
 v 2 . 0   s e p t   2 9   2 0 1 1 
 -   w r i t t e n   a s   a   C o c o a - A p p l e S c r i p t   a p p l e t   f o r   u s e   w i t h   O S   1 0 . 6   a n d   1 0 . 7   o n l y 
 -   c o n s o l i d a t e s   s e t t i n g s   i n   a   s i n g l e   w i n d o w 
 -   i n c l u d e s   a d d i t i o n a l   t a g   o p t i o n s 
 
 v 1 . 0   m a y   9   2 0 0 6 
 -   i n i t i a l   r e l e a s e 
  G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n  a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s  d o u g s c r i p t s . c o m    
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    6 0 Copyright 2012 Doug Adams. All rights reserved.     �   `   C o p y r i g h t   2 0 1 2   D o u g   A d a m s .   A l l   r i g h t s   r e s e r v e d .      l      ��  ��    X R
There may be a problem if iTunes Media does not already contain a "Books" folder
     �   � 
 T h e r e   m a y   b e   a   p r o b l e m   i f   i T u n e s   M e d i a   d o e s   n o t   a l r e a d y   c o n t a i n   a   " B o o k s "   f o l d e r 
      j     �� �� 0 
mainwindow 
mainWindow  4     �� 
�� 
pcls  m       �    m a i n W i n d o w      l     ��������  ��  ��       !   l     �� " #��   "   local objects    # � $ $    l o c a l   o b j e c t s !  % & % j    
�� '�� 0 workarea workArea ' J    	����   &  ( ) ( j    �� *�� 0 mytitle myTitle * m     + + � , ,   M a k e   P D F   B o o k l e t )  - . - l     ��������  ��  ��   .  / 0 / i     1 2 1 I     ������
�� .aevtoappnull  �   � ****��  ��   2 k     c 3 3  4 5 4 Z     + 6 7���� 6 l     8���� 8 =     9 : 9 I     �������� 0 
accesshook 
accessHook��  ��   : m    ��
�� boovfals��  ��   7 Q   
 ' ; < = ; O    > ? > I   ������
�� .aevtquitnull��� ��� null��  ��   ?  f     < R      �� @��
�� .ascrerr ****      � **** @ o      ���� 0 m  ��   = k    ' A A  B C B I   $�� D��
�� .ascrcmnt****      � **** D o     ���� 0 m  ��   C  E�� E L   % '����  ��  ��  ��   5  F G F l  , ,��������  ��  ��   G  H I H O  , D J K J r   4 C L M L n  4 = N O N I   9 =�������� 0 init  ��  ��   O I   4 9�������� 	0 alloc  ��  ��   M o      ���� 0 workarea workArea K o   , 1���� 0 
mainwindow 
mainWindow I  P Q P O  E S R S R r   M R T U T  f   M N U n      V W V o   O Q���� 0 
mainscript 
mainScript W  g   N O S o   E J���� 0 workarea workArea Q  X�� X O  T c Y Z Y I   \ b�� [���� 0 launch_   [  \�� \  f   ] ^��  ��   Z o   T Y���� 0 workarea workArea��   0  ] ^ ] l     ��������  ��  ��   ^  _ ` _ i     a b a I      �������� 0 
accesshook 
accessHook��  ��   b k     � c c  d e d Z     $ f g���� f =     h i h n     j k j I    �������� *0 checkitunesisactive checkItunesIsActive��  ��   k  f      i m    ��
�� boovfals g k   
   l l  m n m r   
  o p o l  
  q���� q I  
 �� r s
�� .sysodlogaskr        TEXT r m   
  t t � u u , i T u n e s   i s   n o t   r u n n i n g . s �� v w
�� 
btns v J     x x  y�� y m     z z � { {  O K��   w �� | }
�� 
dflt | m    ����  } �� ~ 
�� 
appr ~ m     � � � � � " C a n n o t   p r o c e e d . . .  �� � �
�� 
disp � m    ����   � �� ���
�� 
givu � m    ���� ��  ��  ��   p o      ���� 0 opt   n  ��� � L      � � m    ��
�� boovfals��  ��  ��   e  � � � l  % %��������  ��  ��   �  � � � Z   % I � ����� � =  % , � � � n  % * � � � I   & *�������� ,0 itunesisnotaccesible itunesIsNotAccesible��  ��   �  f   % & � m   * +��
�� boovtrue � k   / E � �  � � � r   / B � � � l  / @ ����� � I  / @�� � �
�� .sysodlogaskr        TEXT � m   / 0 � � � � � j C l o s e   a n y   u t i l i t y   w i n d o w s   t h a t   m a y   b e   o p e n   i n   i T u n e s . � �� � �
�� 
btns � J   1 4 � �  ��� � m   1 2 � � � � �  O K��   � �� � �
�� 
dflt � m   5 6����  � �� � �
�� 
appr � m   7 8 � � � � � " C a n n o t   p r o c e e d . . . � �� � �
�� 
disp � m   9 :����   � �� ���
�� 
givu � m   ; <���� ��  ��  ��   � o      ���� 0 opt   �  ��� � L   C E � � m   C D��
�� boovfals��  ��  ��   �  � � � l  J J��������  ��  ��   �  � � � Z   J � � ����� � n  J O � � � I   K O�������� 0 isfullscreen isFullScreen��  ��   �  f   J K � k   R � � �  � � � I  R Y�� ���
�� .sysodelanull��� ��� nmbr � m   R U � � ?�      ��   �  � � � r   Z | � � � l  Z z ����� � I  Z z�� � �
�� .sysodisAaleR        TEXT � m   Z ] � � � � � < i T u n e s   i s   i n   f u l l   s c r e e n   m o d e . � � � �
� 
mesS � m   ` c � � � � � T h i s   a p p l e t ' s   i n t e r f a c e   c a n n o t   b e   d i s p l a y e d   w i t h   i T u n e s   w h i l e   i n   f u l l   s c r e e n   m o d e . 
 	 	 
 Y o u   c a n   Q u i t   a n d   r e - l a u n c h   t h i s   a p p l e t   a f t e r   t a k i n g   i T u n e s   o u t   o f   f u l l   s c r e e n   m o d e . 
 
 O r   y o u   c a n   P r o c e e d   A n y w a y ,   b u t   i T u n e s   w i l l   n o t   b e   v i s i b l e   w h i l e   t h e   a p p l e t   i s   r u n n i n g . � �~ � �
�~ 
btns � J   d l � �  � � � m   d g � � � � �  Q u i t �  ��} � m   g j � � � � �  P r o c e e d   A n y w a y�}   � �| � �
�| 
dflt � m   m n�{�{  � �z � �
�z 
as A � m   q t�y
�y EAlTwarN � �x ��w
�x 
givu � m   u v�v�v �w  ��  ��   � o      �u�u 0 opt   �  ��t � Z   } � � ��s�r � =  } � � � � n   } � � � � 1   ~ ��q
�q 
bhit � o   } ~�p�p 0 opt   � m   � � � � � � �  q u i t � k   � � � �  � � � O  � � � � � I  � ��o�n�m
�o .miscactvnull��� ��� null�n  �m   � m   � � � ��                                                                                  hook  alis    6  Lion                       ��P�H+     j
iTunes.app                                                      X#�|4.        ����  	                Applications    �و�      �|z~       j  Lion:Applications: iTunes.app    
 i T u n e s . a p p  
  L i o n  Applications/iTunes.app   / ��   �  ��l � L   � � � � m   � ��k
�k boovfals�l  �s  �r  �t  ��  ��   �  � � � l  � ��j�i�h�j  �i  �h   �  ��g � L   � � � � m   � ��f
�f boovtrue�g   `  � � � l     �e�d�c�e  �d  �c   �  � � � i    � � � I      �b�a�`�b *0 checkitunesisactive checkItunesIsActive�a  �`   � O     � � � L     � � l    ��_�^ � I   �] ��\
�] .coredoexbool       obj  � l    ��[�Z � 6    � � � 3    �Y
�Y 
prcs � =    � � � 1   	 �X
�X 
pnam � m     � � � � �  i T u n e s�[  �Z  �\  �_  �^   � m      � ��                                                                                  sevs  alis    z  Lion                       ��P�H+     ESystem Events.app                                                ��ˇ�"        ����  	                CoreServices    �و�      ˈ%b       E   8   7  5Lion:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  L i o n  -System/Library/CoreServices/System Events.app   / ��   �  � � � l     �W�V�U�W  �V  �U   �  �  � i     I      �T�S�R�T ,0 itunesisnotaccesible itunesIsNotAccesible�S  �R   k     #  Q       t    	
	 O    e     n     1    �Q
�Q 
pnam 4    �P
�P 
cLiP m    �O�O  5    
�N�M
�N 
capp m     �   c o m . a p p l e . i T u n e s
�M kfrmID  
 m    �L�L  R      �K�J�I
�K .ascrerr ****      � ****�J  �I   L      m    �H
�H boovtrue �G L   ! # m   ! "�F
�F boovfals�G     l     �E�D�C�E  �D  �C    i    ! I      �B�A�@�B 0 isfullscreen isFullScreen�A  �@   Q     % O     !  O    "#" l   $%&$ L    '' l   (�?�>( e    )) n    *+* 1    �=
�= 
valL+ n    ,-, 4    �<.
�< 
attr. m    // �00  A X F u l l S c r e e n- 4    �;1
�; 
cwin1 m    �:�: �?  �>  %   or whatever   & �22    o r   w h a t e v e r# 4    �93
�9 
prcs3 m   	 
44 �55  i T u n e s! m    66�                                                                                  sevs  alis    z  Lion                       ��P�H+     ESystem Events.app                                                ��ˇ�"        ����  	                CoreServices    �و�      ˈ%b       E   8   7  5Lion:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  L i o n  -System/Library/CoreServices/System Events.app   / ��   R      �8�7�6
�8 .ascrerr ****      � ****�7  �6   L   # %77 m   # $�5
�5 boovfals 8�48 l     �3�2�1�3  �2  �1  �4       
�09:; +<=>?@�0  9 �/�.�-�,�+�*�)�(�/ 0 
mainwindow 
mainWindow�. 0 workarea workArea�- 0 mytitle myTitle
�, .aevtoappnull  �   � ****�+ 0 
accesshook 
accessHook�* *0 checkitunesisactive checkItunesIsActive�) ,0 itunesisnotaccesible itunesIsNotAccesible�( 0 isfullscreen isFullScreen: AA �'�&B
�' misccura
�& 
pclsB �CC  m a i n W i n d o w; �%�$�%  �$  < �# 2�"�!DE� 
�# .aevtoappnull  �   � ****�"  �!  D �� 0 m  E 	���������� 0 
accesshook 
accessHook
� .aevtquitnull��� ��� null� 0 m  �  
� .ascrcmnt****      � ****� 	0 alloc  � 0 init  � 0 
mainscript 
mainScript� 0 launch_  �  d*j+  f  " ) *j UW X  �j OhY hOb    *j+ j+ Ec  UOb   )*�,FUOb   *)k+ U= � b��FG�� 0 
accesshook 
accessHook�  �  F �� 0 opt  G � t� z�� ����
�	�� � � �� �� �� � � �����  � ���� *0 checkitunesisactive checkItunesIsActive
� 
btns
� 
dflt
� 
appr
� 
disp
� 
givu�
 �	 

� .sysodlogaskr        TEXT� ,0 itunesisnotaccesible itunesIsNotAccesible� 0 isfullscreen isFullScreen
� .sysodelanull��� ��� nmbr
� 
mesS
� 
as A
� EAlTwarN
� .sysodisAaleR        TEXT
�  
bhit
�� .miscactvnull��� ��� null� �)j+  f  ���kv�k���j��� E�OfY hO)j+ e  ���kv�k���j��� E�OfY hO)j+  Oa j Oa a a �a a lv�ka a ��� E�O�a ,a   a  *j UOfY hY hOe> �� �����HI���� *0 checkitunesisactive checkItunesIsActive��  ��  H  I  ���J�� ���
�� 
prcsJ  
�� 
pnam
�� .coredoexbool       obj �� � *�.�[�,\Z�81j U? ������KL���� ,0 itunesisnotaccesible itunesIsNotAccesible��  ��  K  L ������������
�� 
capp
�� kfrmID  
�� 
cLiP
�� 
pnam��  ��  �� $ kn)���0 	*�k/�,EUoW 	X  eOf@ ������MN���� 0 isfullscreen isFullScreen��  ��  M  N 	6��4����/������
�� 
prcs
�� 
cwin
�� 
attr
�� 
valL��  ��  �� & � *��/ *�k/��/�,EUUW 	X  fascr  ��ޭ