FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
http://veritrope.com
NetNewsWire To TextEdit
Written by David A. Cox
Version 1.0
July 13, 2011

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/netnewswire-to-textedit
     � 	 	� 
 h t t p : / / v e r i t r o p e . c o m 
 N e t N e w s W i r e   T o   T e x t E d i t 
 W r i t t e n   b y   D a v i d   A .   C o x 
 V e r s i o n   1 . 0 
 J u l y   1 3 ,   2 0 1 1 
 
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t : 
 h t t p : / / v e r i t r o p e . c o m / c o d e / n e t n e w s w i r e - t o - t e x t e d i t 
   
  
 l     ��������  ��  ��        l     ��  ��    _ YSet the file to use for saving your links by dragging the file between the "" marks below     �   � S e t   t h e   f i l e   t o   u s e   f o r   s a v i n g   y o u r   l i n k s   b y   d r a g g i n g   t h e   f i l e   b e t w e e n   t h e   " "   m a r k s   b e l o w      l     ����  r         m        �      o      ���� 0 path2textfile Path2TextFile��  ��        l     ��������  ��  ��        l     ��  ��    ; 5Lets make sure the file path is not still blanked out     �   j L e t s   m a k e   s u r e   t h e   f i l e   p a t h   i s   n o t   s t i l l   b l a n k e d   o u t       l    !���� ! Z     " #���� " =    $ % $ o    ���� 0 path2textfile Path2TextFile % m     & & � ' '   # I  
 �� (��
�� .sysodlogaskr        TEXT ( m   
  ) ) � * * � Y o u   n e e d   t o   o p e n   t h i s   s c r i p t   i n   A p p l e S c r i p t   E d i t o r , 
 a n d   s e t   t h e   p a t h   f o r   t h e   f i l e   y o u   w o u l d   l i k e   t o   u s e   t o   s t o r e   y o u r   l i n k s��  ��  ��  ��  ��      + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / = 7Here we set up all our defaults and clear out variables    0 � 1 1 n H e r e   w e   s e t   u p   a l l   o u r   d e f a u l t s   a n d   c l e a r   o u t   v a r i a b l e s .  2 3 2 j     �� 4�� 0 documentname   4 m      5 5 � 6 6   3  7 8 7 j    �� 9�� 0 
currenturl 
currentUrl 9 m     : : � ; ;   8  < = < j    �� >�� 0 currenttitle currentTitle > m     ? ? � @ @   =  A B A l    C���� C r     D E D m    ��
�� boovfals E o      ���� 0 nsfw NSFW��  ��   B  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J E ?Let's try to open the document in TextEdit in case it is closed    K � L L ~ L e t ' s   t r y   t o   o p e n   t h e   d o c u m e n t   i n   T e x t E d i t   i n   c a s e   i t   i s   c l o s e d I  M N M l     �� O P��   O 	 try    P � Q Q  t r y N  R S R l   " T���� T O    " U V U I   !�� W��
�� .aevtodocnull  �    alis W o    ���� 0 path2textfile Path2TextFile��   V m     X X�                                                                                  ttxt  alis    V  Macintosh HD               �0ڲH+   R�TextEdit.app                                                    UWV�
��        ����  	                Applications    �1�      �
��     R�  'Macintosh HD:Applications: TextEdit.app     T e x t E d i t . a p p    M a c i n t o s h   H D  Applications/TextEdit.app   / ��  ��  ��   S  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ] ? 9Let's figure out what the file name is we are to write to    ^ � _ _ r L e t ' s   f i g u r e   o u t   w h a t   t h e   f i l e   n a m e   i s   w e   a r e   t o   w r i t e   t o \  ` a ` l  # ( b c d b r   # ( e f e n  # & g h g 1   $ &��
�� 
txdl h 1   # $��
�� 
ascr f o      ���� 0 olddelimiters oldDelimiters c * $ always preserve original delimiters    d � i i H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s a  j k j l  ) 0 l���� l r   ) 0 m n m J   ) , o o  p�� p m   ) * q q � r r  /��   n n      s t s 1   - /��
�� 
txdl t 1   , -��
�� 
ascr��  ��   k  u v u l  1 ; w���� w r   1 ; x y x n   1 5 z { z 4  2 5�� |
�� 
citm | m   3 4������ { o   1 2���� 0 path2textfile Path2TextFile y o      ���� 0 documentname  ��  ��   v  } ~ } l  < A ����  r   < A � � � o   < =���� 0 olddelimiters oldDelimiters � n      � � � 1   > @��
�� 
txdl � 1   = >��
�� 
ascr��  ��   ~  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � _ YHere we get the URL and name of the current article by calling another part of the script    � � � � � H e r e   w e   g e t   t h e   U R L   a n d   n a m e   o f   t h e   c u r r e n t   a r t i c l e   b y   c a l l i n g   a n o t h e r   p a r t   o f   t h e   s c r i p t �  � � � l  B G ����� � I   B G�������� 0 geturlfromnnw getURLfromNNW��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � V PHere we create the dialog to get the clever opening you want to use for the link    � � � � � H e r e   w e   c r e a t e   t h e   d i a l o g   t o   g e t   t h e   c l e v e r   o p e n i n g   y o u   w a n t   t o   u s e   f o r   t h e   l i n k �  � � � l  H | ����� � r   H | � � � l  H x ����� � I  H x�� � �
�� .sysodlogaskr        TEXT � m   H I � � � � � , C l e v e r   Q u i p   a b o v e   U R L   � �� � �
�� 
appr � l 	 J O ����� � o   J O���� 0 currenttitle currentTitle��  ��   � �� � �
�� 
disp � l 
 R U ����� � m   R U��
�� stic    ��  ��   � �� � �
�� 
dtxt � l 	 X ] ����� � o   X ]���� 0 currenttitle currentTitle��  ��   � �� � �
�� 
btns � l 
 ` h ����� � J   ` h � �  � � � m   ` c � � � � �   u p d a t e   t h e   l i s t ! �  ��� � m   c f � � � � �  N S F W��  ��  ��   � �� � �
�� 
dflt � l 
 k l ����� � m   k l���� ��  ��   � �� ���
�� 
givu � m   o r���� ��  ��  ��   � o      ���� 0 
postdialog 
PostDialog��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � u oNow we build out the text based on the URL, and what your asked, and make note of if it is safe for work or not    � � � � � N o w   w e   b u i l d   o u t   t h e   t e x t   b a s e d   o n   t h e   U R L ,   a n d   w h a t   y o u r   a s k e d ,   a n d   m a k e   n o t e   o f   i f   i t   i s   s a f e   f o r   w o r k   o r   n o t �  � � � l  } � ����� � r   } � � � � n   } � � � � 1   � ���
�� 
ttxt � o   } ����� 0 
postdialog 
PostDialog � o      ���� 0 urlintro URLintro��  ��   �  � � � l  � � ����� � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 
postdialog 
PostDialog � m   � � � � � � �  N S F W � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 nsfw NSFW��  ��  ��  ��   �  � � � l  � � ����� � r   � � � � � b   � � � � � b   � � � � � o   � ����� 0 urlintro URLintro � m   � � � � � � �  
 � o   � ����� 0 
currenturl 
currentUrl � o      ���� 0 	thestring 	theString��  ��   �  � � � l     ��~�}�  �~  �}   �  � � � l     �| � ��|   � U OAnd finally we call the section of the script that writes the text to text edit    � � � � � A n d   f i n a l l y   w e   c a l l   t h e   s e c t i o n   o f   t h e   s c r i p t   t h a t   w r i t e s   t h e   t e x t   t o   t e x t   e d i t �  � � � l  � � ��{�z � I   � ��y ��x�y 0 appendme appendMe �  � � � o   � ��w�w 0 	thestring 	theString �  ��v � o   � ��u�u 0 nsfw NSFW�v  �x  �{  �z   �  � � � i   	  � � � I      �t�s�r�t 0 geturlfromnnw getURLfromNNW�s  �r   � O     � � � � k    � � �  � � � r     � � � m     � � � � �   � o      �q�q 0 headurl headUrl �  � � � r     � � � m    	 � � � � �   � o      �p�p 0 headname headName �  � � � r       1    �o
�o 
TbUr o      �n�n 0 mainlist mainList �  r     1    �m
�m 
SeTb o      �l�l 0 mainlistindex mainListIndex  r    	 1    �k
�k 
TbTl	 o      �j�j 0 
maintitles 
mainTitles 

 r    & l   $�i�h n    $ 4    $�g
�g 
cobj l    #�f�e [     # o     !�d�d 0 mainlistindex mainListIndex m   ! "�c�c �f  �e   o    �b�b 0 mainlist mainList�i  �h   o      �a�a 0 weburl webUrl  r   ' / l  ' -�`�_ n   ' - 4   ( -�^
�^ 
cobj l  ) ,�]�\ [   ) , o   ) *�[�[ 0 mainlistindex mainListIndex m   * +�Z�Z �]  �\   o   ' (�Y�Y 0 
maintitles 
mainTitles�`  �_   o      �X�X 0 webname webName  !  Q   0 C"#�W" r   3 :$%$ n   3 8&'& 1   6 8�V
�V 
Link' 1   3 6�U
�U 
SeHe% o      �T�T 0 headurl headUrl# R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  �W  ! ()( Q   D W*+�P* r   G N,-, n   G L./. 1   J L�O
�O 
Titl/ 1   G J�N
�N 
SeHe- o      �M�M 0 headname headName+ R      �L�K�J
�L .ascrerr ****      � ****�K  �J  �P  ) 010 l  X X�I23�I  2 3 - work out if we're in a tab or a regular view   3 �44 Z   w o r k   o u t   i f   w e ' r e   i n   a   t a b   o r   a   r e g u l a r   v i e w1 565 Z   X �789:7 F   X c;<; =  X [=>= o   X Y�H�H 0 headurl headUrl> m   Y Z?? �@@  < =  ^ aABA o   ^ _�G�G 0 weburl webUrlB m   _ `CC �DD  8 k   f rEE FGF I  f o�FHI
�F .sysodlogaskr        TEXTH m   f gJJ �KK � S o r r y ,   y o u   d o n ' t   a p p e a r   t o   h a v e   a n y t h i n g   s e l e c t e d 
 i n   N e t N e w s W i r eI �EL�D
�E 
apprL o   j k�C�C 0 	app_title  �D  G M�BM L   p rNN m   p q�A�A �B  9 OPO =  u zQRQ o   u v�@�@ 0 weburl webUrlR m   v ySS �TT  P U�?U k   } �VV WXW r   } �YZY o   } ~�>�> 0 headurl headUrlZ o      �=�= 0 
currenturl 
currentUrlX [�<[ r   � �\]\ o   � ��;�; 0 headname headName] o      �:�: 0 currenttitle currentTitle�<  �?  : l  � �^_`^ k   � �aa bcb r   � �ded o   � ��9�9 0 weburl webUrle o      �8�8 0 
currenturl 
currentUrlc f�7f r   � �ghg o   � ��6�6 0 webname webNameh o      �5�5 0 currenttitle currentTitle�7  _ ) # no headline but there is a webpage   ` �ii F   n o   h e a d l i n e   b u t   t h e r e   i s   a   w e b p a g e6 j�4j l  � ��3kl�3  k  return currentUrl   l �mm " r e t u r n   c u r r e n t U r l�4   � m     nn�                                                                                  Nnw*  alis    `  Macintosh HD               �0ڲH+   R�NetNewsWire.app                                                (�W�@�        ����  	                Applications    �1�      �@��     R�  *Macintosh HD:Applications: NetNewsWire.app     N e t N e w s W i r e . a p p    M a c i n t o s h   H D  Applications/NetNewsWire.app  / ��   � o�2o i    pqp I      �1r�0�1 0 appendme appendMer sts o      �/�/ 0 	thestring 	theStringt u�.u o      �-�- 0 nsfw NSFW�.  �0  q O    vwv k   xx yzy Z    �{|�,}{ =   ~~ o    �+�+ 0 nsfw NSFW m    �*
�* boovtrue| k   
 ��� ��� r   
 #��� l  
 ��)�(� b   
 ��� n   
 ��� 4   �'�
�' 
cha � m    �&�&��� 4   
 �%�
�% 
docu� o    �$�$ 0 documentname  � o    �#
�# 
ret �)  �(  � n      ��� 4   "�"�
�" 
cha � m     !�!�!��� 4    � �
�  
docu� o    �� 0 documentname  � ��� l  $ $����  �  �  � ��� l  $ $����  � = 7Here we mess with the font to make NSFW stuff stand out   � ��� n H e r e   w e   m e s s   w i t h   t h e   f o n t   t o   m a k e   N S F W   s t u f f   s t a n d   o u t� ��� r   $ 3��� n   $ 1��� 1   / 1�
� 
font� n   $ /��� 4  , /��
� 
cha � m   - .����� 4   $ ,��
� 
docu� o   & +�� 0 documentname  � o      �� 0 	savedfont 	savedFont� ��� r   4 C��� n   4 A��� m   ? A�
� 
colr� n   4 ?��� 4  < ?��
� 
cha � m   = >����� 4   4 <��
� 
docu� o   6 ;�� 0 documentname  � o      �� 0 
savedcolor 
savedColor� ��� r   D S��� m   D E�� ���  H e l v e t i c a - 
 B o l d� n      ��� 1   P R�
� 
font� n   E P��� 4  M P��
� 
cha � m   N O����� 4   E M��
� 
docu� o   G L�
�
 0 documentname  � ��� r   T g��� J   T Y�� ��� m   T U�	�	   ��� ��� m   U V��H�� ��� m   V W��K��  � n      ��� m   d f�
� 
colr� n   Y d��� 4  a d��
� 
cha � m   b c����� 4   Y a��
� 
docu� o   [ `�� 0 documentname  � ��� r   h ���� l  h w�� ��� b   h w��� b   h u��� n   h s��� 4  p s���
�� 
cha � m   q r������� 4   h p���
�� 
docu� o   j o���� 0 documentname  � o   s t���� 0 	thestring 	theString� m   u v�� ���   �   ��  � n      ��� 4   ����
�� 
cha � m   � �������� 4   w ���
�� 
docu� o   y ~���� 0 documentname  � ��� r   � ���� o   � ����� 0 	savedfont 	savedFont� n      ��� 1   � ���
�� 
font� n   � ���� 4  � ����
�� 
cha � m   � �������� 4   � ����
�� 
docu� o   � ����� 0 documentname  � ��� r   � ���� o   � ����� 0 
savedcolor 
savedColor� n      ��� m   � ���
�� 
colr� n   � ���� 4  � ����
�� 
cha � m   � �������� 4   � ����
�� 
docu� o   � ����� 0 documentname  � ���� r   � ���� l  � ������� b   � ���� n   � ���� 4  � ����
�� 
cha � m   � �������� 4   � ����
�� 
docu� o   � ����� 0 documentname  � o   � ���
�� 
ret ��  ��  � n      ��� 4  � ����
�� 
cha � m   � �������� 4   � ����
�� 
docu� o   � ����� 0 documentname  ��  �,  } l  � ����� k   � ���    r   � � l  � ����� b   � � o   � ���
�� 
ret  n   � � 4  � ���	
�� 
cha 	 m   � �����  4   � ���

�� 
docu
 o   � ����� 0 documentname  ��  ��   n       4  � ���
�� 
cha  m   � �����  4   � ���
�� 
docu o   � ����� 0 documentname   �� r   � � l  � ����� b   � � b   � � o   � ����� 0 	thestring 	theString m   � � � 2 
                                                 n   � � 4  � ���
�� 
cha  m   � �����  4   � ���
�� 
docu o   � ����� 0 documentname  ��  ��   n       4  � ���
�� 
cha  m   � �����  4   � ��� 
�� 
docu  o   � ����� 0 documentname  ��  � n hThe case that the URL has not been marked as NSFW, we post it to the top of the list in the default font   � �!! � T h e   c a s e   t h a t   t h e   U R L   h a s   n o t   b e e n   m a r k e d   a s   N S F W ,   w e   p o s t   i t   t o   t h e   t o p   o f   t h e   l i s t   i n   t h e   d e f a u l t   f o n tz "��" I  ���#��
�� .coresavenull���    obj # 4   � ���$
�� 
docu$ o   � ����� 0 documentname  ��  ��  w m     %%�                                                                                  ttxt  alis    V  Macintosh HD               �0ڲH+   R�TextEdit.app                                                    UWV�
��        ����  	                Applications    �1�      �
��     R�  'Macintosh HD:Applications: TextEdit.app     T e x t E d i t . a p p    M a c i n t o s h   H D  Applications/TextEdit.app   / ��  �2       ��& 5 : ?'()��  & �������������� 0 documentname  �� 0 
currenturl 
currentUrl�� 0 currenttitle currentTitle�� 0 geturlfromnnw getURLfromNNW�� 0 appendme appendMe
�� .aevtoappnull  �   � ****' �� �����*+���� 0 geturlfromnnw getURLfromNNW��  ��  * ������������������ 0 headurl headUrl�� 0 headname headName�� 0 mainlist mainList�� 0 mainlistindex mainListIndex�� 0 
maintitles 
mainTitles�� 0 weburl webUrl�� 0 webname webName�� 0 	app_title  + n � �������������������?C��J����S
�� 
TbUr
�� 
SeTb
�� 
TbTl
�� 
cobj
�� 
SeHe
�� 
Link��  ��  
�� 
Titl
�� 
bool
�� 
appr
�� .sysodlogaskr        TEXT�� �� ��E�O�E�O*�,E�O*�,E�O*�,E�O��k/E�O��k/E�O *�,�,E�W X 	 
hO *�,�,E�W X 	 
hO�� 	 �� �& �a �l OkY +�a   �Ec  O�Ec  Y �Ec  O�Ec  OPU( ��q����,-���� 0 appendme appendMe�� ��.�� .  ������ 0 	thestring 	theString�� 0 nsfw NSFW��  , ���������� 0 	thestring 	theString�� 0 nsfw NSFW�� 0 	savedfont 	savedFont�� 0 
savedcolor 
savedColor- %��������������������
�� 
docu
�� 
cha 
�� 
ret 
�� 
font
�� 
colr��   ����H���K�
�� .coresavenull���    obj ��� �e  �*�b   /�i/�%*�b   /�i/FO*�b   /�i/�,E�O*�b   /�i/�,E�O�*�b   /�i/�,FO���mv*�b   /�i/�,FO*�b   /�i/�%�%*�b   /�i/FO�*�b   /�i/�,FO�*�b   /�i/�,FO*�b   /�i/�%*�b   /�i/FY 7�*�b   /�k/%*�b   /�k/FO��%*�b   /�k/%*�b   /�k/FO*�b   /j U) ��/����01��
�� .aevtoappnull  �   � ****/ k     �22  33  44  A55  R66  `77  j88  u99  }::  �;;  �<<  �==  �>>  �??  �����  ��  ��  0  1 " �� & )���� X�������� q���� �����~�}�| � ��{�z�y�x�w�v�u�t � ��s�r�� 0 path2textfile Path2TextFile
�� .sysodlogaskr        TEXT�� 0 nsfw NSFW
�� .aevtodocnull  �    alis
�� 
ascr
�� 
txdl�� 0 olddelimiters oldDelimiters
�� 
citm�� 0 geturlfromnnw getURLfromNNW
�� 
appr
� 
disp
�~ stic    
�} 
dtxt
�| 
btns
�{ 
dflt
�z 
givu�y �x �w 0 
postdialog 
PostDialog
�v 
ttxt�u 0 urlintro URLintro
�t 
bhit�s 0 	thestring 	theString�r 0 appendme appendMe�� ��E�O��  
�j Y hOfE�O� �j UO��,E�O�kv��,FO��i/Ec   O���,FO*j+ O��b  a a a b  a a a lva ka a a  E` O_ a ,E` O_ a ,a   eE�Y hO_ a %b  %E`  O*_  �l+ !ascr  ��ޭ