FasdUAS 1.101.10   ��   �� 0 	thescript 	theScript  k             l     ��������  ��  ��        i      	 
 	 I     ������
�� .aevtoappnull  �   � ****��  ��   
 k     �       l     ��������  ��  ��        l     ��  ��    + % find out if path finder is installed     �   J   f i n d   o u t   i f   p a t h   f i n d e r   i s   i n s t a l l e d      r         m     ��
�� boovtrue  o      ���� 0 pathfinder_installed        Q          O        r        n       !   1    ��
�� 
pnam ! 5    �� "��
�� 
appf " m     # # � $ $ 0 c o m . c o c o a t e c h . p a t h f i n d e r
�� kfrmID    o      ���� 0 
pathfinder 
pathFinder  m     % %�                                                                                  MACS  alis    t  Macintosh HD               �0ڲH+   R�
Finder.app                                                      S����R        ����  	                CoreServices    �1�      �͒     R� R� R�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��    R      ������
�� .ascrerr ****      � ****��  ��    r      & ' & m    ��
�� boovfals ' o      ���� 0 pathfinder_installed     ( ) ( l  ! !��������  ��  ��   )  * + * Z  ! 8 , -���� , o   ! "���� 0 pathfinder_installed   - O   % 4 . / . k   ) 3 0 0  1 2 1 l  ) )�� 3 4��   3 A ; if anyone knows a better way to find out if the script was    4 � 5 5 v   i f   a n y o n e   k n o w s   a   b e t t e r   w a y   t o   f i n d   o u t   i f   t h e   s c r i p t   w a s 2  6 7 6 l  ) )�� 8 9��   8 F @ launched from path finder, this would be a good place to put it    9 � : : �   l a u n c h e d   f r o m   p a t h   f i n d e r ,   t h i s   w o u l d   b e   a   g o o d   p l a c e   t o   p u t   i t 7  ;�� ; r   ) 3 < = < E   ) 1 > ? > l  ) / @���� @ e   ) / A A n   ) / B C B 1   , .��
�� 
pnam C 2  ) ,��
�� 
prcs��  ��   ? m   / 0 D D � E E  P a t h   F i n d e r = o      ���� (0 pathfinder_running pathFinder_running��   / m   % & F F�                                                                                  sevs  alis    �  Macintosh HD               �0ڲH+   R�System Events.app                                               UK��Ɖ        ����  	                CoreServices    �1�      ���     R� R� R�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   +  G H G l  9 9��������  ��  ��   H  I J I Z   9 L K L�� M K =  9 @ N O N c   9 > P Q P n   9 < R S R 1   : <��
�� 
pnam S  f   9 : Q m   < =��
�� 
TEXT O m   > ? T T � U U , o p e n   f o l d e r   i n   s u b l i m e L r   C F V W V m   C D��
�� boovfals W o      ���� 0 	openfiles 	openFiles��   M r   I L X Y X m   I J��
�� boovtrue Y o      ���� 0 	openfiles 	openFiles J  Z [ Z l  M M��������  ��  ��   [  \ ] \ Z   M � ^ _�� ` ^ F   M T a b a o   M N���� 0 pathfinder_installed   b o   Q R���� (0 pathfinder_running pathFinder_running _ k   W � c c  d e d l  W W��������  ��  ��   e  f�� f O   W � g h g Z   ^ � i j�� k i o   ^ _���� 0 	openfiles 	openFiles j k   b � l l  m n m r   b f o p o J   b d����   p o      ���� "0 finderselection finderSelection n  q r q r   g l s t s 1   g j��
�� 
slcT t o      ���� 0 selecteditems selectedItems r  u�� u X   m � v�� w v s    � x y x l   � z���� z c    � { | { n    � } ~ } 1   � ���
�� 
pthH ~ o    ����� 0 theitem theItem | m   � ���
�� 
alis��  ��   y l      ����  n       � � �  ;   � � � o   � ����� "0 finderselection finderSelection��  ��  �� 0 theitem theItem w o   p q���� 0 selecteditems selectedItems��  ��   k r   � � � � � n   � � � � � 1   � ���
�� 
pthH � n   � � � � � 1   � ���
�� 
tarG � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � 2  � ���
�� 
fwiD � o      ���� "0 finderselection finderSelection h 4   W [�� �
�� 
capp � o   Y Z���� 0 
pathfinder 
pathFinder��  ��   ` O   � � � � � Z   � � � ��� � � o   � ����� 0 	openfiles 	openFiles � Z   � � � ��� � � =  � � � � � 1   � ���
�� 
sele � J   � �����   � r   � � � � � c   � � � � � n   � � � � � m   � ���
�� 
cfol � l  � � ����� � 4  � ��� �
�� 
cwin � m   � ����� ��  ��   � m   � ���
�� 
TEXT � o      ���� "0 finderselection finderSelection��   � r   � � � � � c   � � � � � 1   � ���
�� 
sele � m   � ���
�� 
alst � o      ���� "0 finderselection finderSelection��   � r   � � � � � c   � � � � � n   � � � � � m   � ���
�� 
cfol � l  � � ����� � 4  � ��� �
�� 
cwin � m   � ����� ��  ��   � m   � ���
�� 
TEXT � o      ���� "0 finderselection finderSelection � m   � � � ��                                                                                  MACS  alis    t  Macintosh HD               �0ڲH+   R�
Finder.app                                                      S����R        ����  	                CoreServices    �1�      �͒     R� R� R�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   ]  � � � l  � ���������  ��  ��   �  ��� � I   � ��� ����� 0 st2   �  ��� � o   � ����� "0 finderselection finderSelection��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! script was drag-and-dropped onto    � � � � B   s c r i p t   w a s   d r a g - a n d - d r o p p e d   o n t o �  � � � i     � � � I     �� ���
�� .aevtodocnull  �    alis � l      ����� � o      ���� 0 thelist theList��  ��  ��   � I     �� ����� 0 st2   �  ��� � o    ���� 0 thelist theList��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   open in Sublime    � � � �     o p e n   i n   S u b l i m e �  � � � i     � � � I      � ��~� 0 st2   �  ��} � o      �|�| 0 listofaliases listOfAliases�}  �~   � O      � � � k     � �  � � � I   	�{ ��z
�{ .aevtodocnull  �    alis � o    �y�y 0 listofaliases listOfAliases�z   �  ��x � I  
 �w�v�u
�w .miscactvnull��� ��� null�v  �u  �x   � m      � ��                                                                                  subl  alis    n  Macintosh HD               �0ڲH+   R�Sublime Text 2.app                                              y.�����        ����  	                Applications    �1�      ��2     R�  -Macintosh HD:Applications: Sublime Text 2.app   &  S u b l i m e   T e x t   2 . a p p    M a c i n t o s h   H D  Applications/Sublime Text 2.app   / ��   �  ��t � l     �s�r�q�s  �r  �q  �t    �p � � ��p   � k       � �  � � � l      �o � ��o   �
*
	v. 2.1

This version does a little two-step in order to work on systems that do not have Path Finder installed
without popping up a dialog asking where it is. The idea here is to compile it with the needed terms
from Path Finder's dictionary but save that compiled script such that it can then be exported as an
application that no longer needs to have access to Path Finder in order to run.

Complicated, I know.

you will need to have Path Finder installed in order to compile or run this script
if you don't have Path Finder, you should just download the pre-compiled app from https://github.com/pjv/open-in-sublime/downloads

with Path Finder installed, you can run this script and it will create a new script in your home directory called "Open Folder in Sublime.scpt"
next you need to open that script in AppleScript Editor and Export as an application.

name the app "open folder in sublime" if you want it to always load the finder window directory
name it anything else if you want it to open the finder selection

*    � � � � * 
 	 v .   2 . 1 
 
 T h i s   v e r s i o n   d o e s   a   l i t t l e   t w o - s t e p   i n   o r d e r   t o   w o r k   o n   s y s t e m s   t h a t   d o   n o t   h a v e   P a t h   F i n d e r   i n s t a l l e d 
 w i t h o u t   p o p p i n g   u p   a   d i a l o g   a s k i n g   w h e r e   i t   i s .   T h e   i d e a   h e r e   i s   t o   c o m p i l e   i t   w i t h   t h e   n e e d e d   t e r m s 
 f r o m   P a t h   F i n d e r ' s   d i c t i o n a r y   b u t   s a v e   t h a t   c o m p i l e d   s c r i p t   s u c h   t h a t   i t   c a n   t h e n   b e   e x p o r t e d   a s   a n 
 a p p l i c a t i o n   t h a t   n o   l o n g e r   n e e d s   t o   h a v e   a c c e s s   t o   P a t h   F i n d e r   i n   o r d e r   t o   r u n . 
 
 C o m p l i c a t e d ,   I   k n o w . 
 
 y o u   w i l l   n e e d   t o   h a v e   P a t h   F i n d e r   i n s t a l l e d   i n   o r d e r   t o   c o m p i l e   o r   r u n   t h i s   s c r i p t 
 i f   y o u   d o n ' t   h a v e   P a t h   F i n d e r ,   y o u   s h o u l d   j u s t   d o w n l o a d   t h e   p r e - c o m p i l e d   a p p   f r o m   h t t p s : / / g i t h u b . c o m / p j v / o p e n - i n - s u b l i m e / d o w n l o a d s 
 
 w i t h   P a t h   F i n d e r   i n s t a l l e d ,   y o u   c a n   r u n   t h i s   s c r i p t   a n d   i t   w i l l   c r e a t e   a   n e w   s c r i p t   i n   y o u r   h o m e   d i r e c t o r y   c a l l e d   " O p e n   F o l d e r   i n   S u b l i m e . s c p t " 
 n e x t   y o u   n e e d   t o   o p e n   t h a t   s c r i p t   i n   A p p l e S c r i p t   E d i t o r   a n d   E x p o r t   a s   a n   a p p l i c a t i o n . 
 
 n a m e   t h e   a p p   " o p e n   f o l d e r   i n   s u b l i m e "   i f   y o u   w a n t   i t   t o   a l w a y s   l o a d   t h e   f i n d e r   w i n d o w   d i r e c t o r y 
 n a m e   i t   a n y t h i n g   e l s e   i f   y o u   w a n t   i t   t o   o p e n   t h e   f i n d e r   s e l e c t i o n 
 
 * �  � � � l     �n�m�l�n  �m  �l   �  � � � w       � � � k       � �  � � � l     �k�j�i�k  �j  �i   �  � � � h     �h �h 0 	thescript 	theScript �  ��g � l     �f�e�d�f  �e  �d  �g   ��                                                                                  PFdR  alis    n  Macintosh HD               �0ڲH+   uL�Path Finder.app                                                ơ?�&�        ����  	                scraps    �1�      �l�     uL� R�  2Macintosh HD:Applications: scraps: Path Finder.app     P a t h   F i n d e r . a p p    M a c i n t o s h   H D  #Applications/scraps/Path Finder.app   / ��   �  � � � l     �c�b�a�c  �b  �a   �  ��` � l     ��_�^ � I    �] � �
�] .sysostornull��� ��� scpt � o     �\�\ 0 	thescript 	theScript � �[ ��Z
�[ 
fpth � b     � � � l    ��Y�X � I   �W � �
�W .earsffdralis        afdr � m    �V
�V afdrcusr � �U ��T
�U 
rtyp � m    	�S
�S 
TEXT�T  �Y  �X   � m     � � � � � 6 O p e n   F o l d e r   i n   S u b l i m e . s c p t�Z  �_  �^  �`   �   � �R �   ��R   � �Q�P�Q 0 	thescript 	theScript
�P .aevtoappnull  �   � **** � �O ��N�M � ��L
�O .aevtoappnull  �   � **** � k      � �  ��K�K  �N  �M   �   � �J�I�H�G�F ��E
�J 
fpth
�I afdrcusr
�H 
rtyp
�G 
TEXT
�F .earsffdralis        afdr
�E .sysostornull��� ��� scpt�L b   ����l �%l    � �  � �D�C�B
�D .aevtoappnull  �   � ****
�C .aevtodocnull  �    alis�B 0 st2    �A 
�@�?�>
�A .aevtoappnull  �   � ****�@  �?   �=�<�;�:�9�8�7�= 0 pathfinder_installed  �< 0 
pathfinder 
pathFinder�; (0 pathfinder_running pathFinder_running�: 0 	openfiles 	openFiles�9 "0 finderselection finderSelection�8 0 selecteditems selectedItems�7 0 theitem theItem  %�6 #�5�4�3�2 F�1 D�0 T�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!
�6 
appf
�5 kfrmID  
�4 
pnam�3  �2  
�1 
prcs
�0 
TEXT
�/ 
bool
�. 
capp
�- 
slcT
�, 
kocl
�+ 
cobj
�* .corecnte****       ****
�) 
pthH
�( 
alis
�' 
fwiD
�& 
tarG
�% 
sele
�$ 
cwin
�# 
cfol
�" 
alst�! 0 st2  �> �eE�O � *���0�,E�UW 
X  fE�O� � *�-�,E�E�UY hO)�,�&�  fE�Y eE�O�	 ��& V*��/ K� 3jvE�O*�,E�O "�[�a l kh �a ,a &�6G[OY��Y *a -a k/a ,a ,E�UY C� >� ,*a ,jv  *a k/a ,�&E�Y *a ,a &E�Y *a k/a ,�&E�UO*�k+  �  ����
�  .aevtodocnull  �    alis� 0 thelist theList�   �� 0 thelist theList �� 0 st2  � *�k+   � ����� 0 st2  � �	� 	  �� 0 listofaliases listOfAliases�   �� 0 listofaliases listOfAliases  ���
� .aevtodocnull  �    alis
� .miscactvnull��� ��� null� � �j O*j U ascr  ��ޭ