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
cwor Y o     !���� 0 thesentence theSentence W o      ���� 0 thewords theWords��  ��   T  Z [ Z l  & : \���� \ X   & : ]�� ^ ] k   6 6 _ _  ` a ` l  6 6�� b c��   b 7 1set speakingRate to random number from 500 to 501    c � d d b s e t   s p e a k i n g R a t e   t o   r a n d o m   n u m b e r   f r o m   5 0 0   t o   5 0 1 a  e f e l  6 6�� g h��   g 7 1set theModulation to random number from 90 to 100    h � i i b s e t   t h e M o d u l a t i o n   t o   r a n d o m   n u m b e r   f r o m   9 0   t o   1 0 0 f  j k j l  6 6�� l m��   l 1 +set thePitch to random number from 30 to 40    m � n n V s e t   t h e P i t c h   t o   r a n d o m   n u m b e r   f r o m   3 0   t o   4 0 k  o p o l  6 6��������  ��  ��   p  q r q l  6 6�� s t��   s q ksay aWord using (some item of theVoices) speaking rate speakingRate modulation theModulation pitch thePitch    t � u u � s a y   a W o r d   u s i n g   ( s o m e   i t e m   o f   t h e V o i c e s )   s p e a k i n g   r a t e   s p e a k i n g R a t e   m o d u l a t i o n   t h e M o d u l a t i o n   p i t c h   t h e P i t c h r  v�� v l  6 6�� w x��   w . (say aWord using (some item of theVoices)    x � y y P s a y   a W o r d   u s i n g   ( s o m e   i t e m   o f   t h e V o i c e s )��  �� 0 aword aWord ^ o   ) *���� 0 thewords theWords��  ��   [  z { z l  ; X |���� | I  ; X�� } ~
�� .sysottosnull���     TEXT } o   ; <���� 0 thesentence theSentence ~ ��  �
�� 
VOIC  l  = @ ����� � n   = @ � � � 3   > @��
�� 
cobj � o   = >���� 0 	thevoices 	theVoices��  ��   � �� � �
�� 
RATE � m   C F����" � �� � �
�� 
PTCH � m   I L���� - � �� ���
�� 
PMOD � m   O R���� d��  ��  ��   {  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     X � �  
 � �  ) � �  5 � �  > � �  L � �  S � �  Z � �  z����  ��  ��   � ���� 0 aword aWord �  ������ :���������������������������������������� 0 	thevoices 	theVoices
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
VOIC
�� 
RATE��"
�� 
PTCH�� -
�� 
PMOD�� d�� 
�� .sysottosnull���     TEXT�� Y�kvE�O*j E�O���,FO��-E�O��.E�O��-E�O �[��l kh  hY��O����.a a a a a a a   ascr  ��ޭ