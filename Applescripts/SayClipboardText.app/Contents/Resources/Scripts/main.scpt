FasdUAS 1.101.10   ��   ��    k             l     ��  ��    N Hset theVoices to {"Alex", "Bruce", "Fred", "Kathy", "Vicki", "Victoria"}     � 	 	 � s e t   t h e V o i c e s   t o   { " A l e x " ,   " B r u c e " ,   " F r e d " ,   " K a t h y " ,   " V i c k i " ,   " V i c t o r i a " }   
  
 l     ����  r         J         ��  m        �    A l e x��    o      ���� 0 	thevoices 	theVoices��  ��        l     ��������  ��  ��        l     ��  ��    Z Tset myWordFile to (choose file with prompt "Select a file to read:" of type {"txt"})     �   � s e t   m y W o r d F i l e   t o   ( c h o o s e   f i l e   w i t h   p r o m p t   " S e l e c t   a   f i l e   t o   r e a d : "   o f   t y p e   { " t x t " } )      l     ��  ��    % set myclip to get the clipboard     �   > s e t   m y c l i p   t o   g e t   t h e   c l i p b o a r d       l     �� ! "��   !   open for access myWordFile    " � # # 4 o p e n   f o r   a c c e s s   m y W o r d F i l e    $ % $ l     �� & '��   & + %set wordContents to (read myWordFile)    ' � ( ( J s e t   w o r d C o n t e n t s   t o   ( r e a d   m y W o r d F i l e ) %  ) * ) l    +���� + r     , - , I   ������
�� .JonsgClp****    ��� null��  ��   - o      ���� 0 wordcontents wordContents��  ��   *  . / . l     �� 0 1��   0  close access myWordFile    1 � 2 2 . c l o s e   a c c e s s   m y W o r d F i l e /  3 4 3 l     ��������  ��  ��   4  5 6 5 l    7���� 7 r     8 9 8 m     : : � ; ;      9 n      < = < 1    ��
�� 
txdl = 1    ��
�� 
ascr��  ��   6  > ? > l    @���� @ r     A B A n     C D C 2   ��
�� 
citm D o    ���� 0 wordcontents wordContents B o      ���� 0 thesentences theSentences��  ��   ?  E F E l     �� G H��   G 3 -set AppleScript's text item delimiters to ";"    H � I I Z s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " ; " F  J K J l     ��������  ��  ��   K  L M L l    N���� N r     O P O n     Q R Q 3    ��
�� 
cobj R o    ���� 0 thesentences theSentences P o      ���� 0 thesentence theSentence��  ��   M  S T S l    % U���� U r     % V W V n     # X Y X 2  ! #��
�� 
cwor Y o     !���� 0 thesentence theSentence W o      ���� 0 thewords theWords��  ��   T  Z�� Z l  & � [���� [ X   & � \�� ] \ k   6 { ^ ^  _ ` _ r   6 K a b a I  6 G���� c
�� .sysorandnmbr    ��� nmbr��   c �� d e
�� 
from d m   8 ;����� e �� f��
�� 
to   f m   > A�������   b o      ���� 0 speakingrate speakingRate `  g h g l  L L�� i j��   i 7 1set theModulation to random number from 90 to 100    j � k k b s e t   t h e M o d u l a t i o n   t o   r a n d o m   n u m b e r   f r o m   9 0   t o   1 0 0 h  l m l r   L a n o n I  L ]���� p
�� .sysorandnmbr    ��� nmbr��   p �� q r
�� 
from q m   N Q����  r �� s��
�� 
to   s m   T W���� (��   o o      ���� 0 thepitch thePitch m  t u t l  b b��������  ��  ��   u  v w v l  b b�� x y��   x q ksay aWord using (some item of theVoices) speaking rate speakingRate modulation theModulation pitch thePitch    y � z z � s a y   a W o r d   u s i n g   ( s o m e   i t e m   o f   t h e V o i c e s )   s p e a k i n g   r a t e   s p e a k i n g R a t e   m o d u l a t i o n   t h e M o d u l a t i o n   p i t c h   t h e P i t c h w  {�� { I  b {�� | }
�� .sysottosnull���     TEXT | o   b c���� 0 aword aWord } �� ~ 
�� 
VOIC ~ l  f i ����� � n   f i � � � 3   g i��
�� 
cobj � o   f g���� 0 	thevoices 	theVoices��  ��    �� � �
�� 
RATE � o   l o���� 0 speakingrate speakingRate � �� ���
�� 
PTCH � o   r u���� 0 thepitch thePitch��  ��  �� 0 aword aWord ] o   ) *���� 0 thewords theWords��  ��  ��       
�� � � � � � � �������   � ����������������
�� .aevtoappnull  �   � ****�� 0 	thevoices 	theVoices�� 0 wordcontents wordContents�� 0 thesentences theSentences�� 0 thesentence theSentence�� 0 thewords theWords�� 0 speakingrate speakingRate�� 0 thepitch thePitch � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  
 � �  ) � �  5 � �  > � �  L � �  S � �  Z����  ��  ��   � ���� 0 aword aWord �  ������ :������������������������������������������������� 0 	thevoices 	theVoices
�� .JonsgClp****    ��� null�� 0 wordcontents wordContents
�� 
ascr
�� 
txdl
�� 
citm�� 0 thesentences theSentences
�� 
cobj�� 0 thesentence theSentence
�� 
cwor�� 0 thewords theWords
�� 
kocl
�� .corecnte****       ****
�� 
from���
�� 
to  �� 
�� .sysorandnmbr    ��� nmbr�� 0 speakingrate speakingRate�� �� (�� 0 thepitch thePitch
�� 
VOIC
�� 
RATE
�� 
PTCH�� 
� .sysottosnull���     TEXT�� ��kvE�O*j E�O���,FO��-E�O��.E�O��-E�O Y�[��l kh  *�a a a a  E` O*�a a a a  E` O�a ��.a _ a _ a  [OY�� � �~ ��~  �    � � � �   � �} ��}  �   ��|�{�z�y�x�w�v�u�t�s�r�q�p�o�n � � � �  �|  �{  �z  �y  �x  �w  �v  �u  �t  �s  �r  �q  �p  �o  �n   � �m�l�m  �l  ����� 'ascr  ��ޭ