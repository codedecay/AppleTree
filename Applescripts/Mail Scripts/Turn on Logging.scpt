FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
Turn on Logging

Copyright � 2003�2013 Apple Inc. All rights reserved.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require that
you make it clear that the code was descended from Apple sample code,
but that you've made changes.
     � 	 	$ 
 T u r n   o n   L o g g i n g 
 
 C o p y r i g h t   �   2 0 0 3  2 0 1 3   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d . 
 
 Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t 
 r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e 
 r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o 
 r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g 
 m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e   t h a t 
 y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e   c o d e , 
 b u t   t h a t   y o u ' v e   m a d e   c h a n g e s . 
   
  
 l     ��������  ��  ��        l      ��  ��    H B
This script enables socket logging for checking or sending mail.
     �   � 
 T h i s   s c r i p t   e n a b l e s   s o c k e t   l o g g i n g   f o r   c h e c k i n g   o r   s e n d i n g   m a i l . 
      l     ��������  ��  ��        l     ����  O         r        I   �� ��
�� .coredoexbool       obj   4    �� 
�� 
pcap  m       �    M a i l��    o      ���� 0 mailisrunning mailIsRunning  m       �                                                                                  sevs  alis    �  MountainLion               �ofeH+     0System Events.app                                               7���`        ����  	                CoreServices    �o��      ��`�       0   *   )  =MountainLion:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M o u n t a i n L i o n  -System/Library/CoreServices/System Events.app   / ��  ��  ��         l     ��������  ��  ��      !�� ! l   � "���� " Z    � # $�� % # o    ���� 0 mailisrunning mailIsRunning $ I   �� & '
�� .sysodlogaskr        TEXT & m     ( ( � ) ) b P l e a s e   q u i t   M a i l   a n d   t h e n   r u n   t h i s   p r o g r a m   a g a i n . ' �� * +
�� 
btns * J     , ,  -�� - m     . . � / /  O K��   + �� 0��
�� 
dflt 0 m     1 1 � 2 2  O K��  ��   % k   " � 3 3  4 5 4 r   " 5 6 7 6 n   " 1 8 9 8 1   - 1��
�� 
bhit 9 l  " - :���� : I  " -�� ; <
�� .sysodlogaskr        TEXT ; m   " # = = � > > � E n a b l e   s o c k e t   l o g g i n g   f o r   c h e c k i n g   o r   s e n d i n g   m a i l .     Q u i t   M a i l   t o   t u r n   o f f   l o g g i n g . < �� ?��
�� 
btns ? J   $ ) @ @  A B A m   $ % C C � D D  C h e c k i n g B  E F E m   % & G G � H H  S e n d i n g F  I�� I m   & ' J J � K K  B o t h��  ��  ��  ��   7 o      ���� 0 loggingoption loggingOption 5  L M L l  6 6��������  ��  ��   M  N�� N O   6 � O P O k   < � Q Q  R S R r   < B T U T J   < >����   U o      ���� 0 portlist portList S  V W V l  C C��������  ��  ��   W  X Y X Z   C � Z [���� Z E  C O \ ] \ J   C K ^ ^  _ ` _ m   C F a a � b b  C h e c k i n g `  c�� c m   F I d d � e e  B o t h��   ] o   K N���� 0 loggingoption loggingOption [ X   R � f�� g f k   j � h h  i j i r   j w k l k c   j s m n m n   j o o p o 1   k o��
�� 
port p o   j k���� 0 eachaccount eachAccount n m   o r��
�� 
TEXT l o      ���� 0 incomingport incomingPort j  q�� q Z   x � r s���� r H   x � t t E   x  u v u o   x {���� 0 portlist portList v o   { ~���� 0 incomingport incomingPort s r   � � w x w o   � ����� 0 incomingport incomingPort x n       y z y  ;   � � z o   � ����� 0 portlist portList��  ��  ��  �� 0 eachaccount eachAccount g 2   U Z��
�� 
mact��  ��   Y  { | { l  � ���������  ��  ��   |  } ~ } Z   � �  �����  E  � � � � � J   � � � �  � � � m   � � � � � � �  S e n d i n g �  ��� � m   � � � � � � �  B o t h��   � o   � ����� 0 loggingoption loggingOption � X   � � ��� � � k   � � � �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
port � n   � � � � � m   � ���
�� 
dact � o   � ����� 0 eachaccount eachAccount � m   � ���
�� 
TEXT � o      ���� 0 outgoingport outgoingPort �  ��� � Z   � � � ����� � H   � � � � E   � � � � � o   � ����� 0 portlist portList � o   � ����� 0 outgoingport outgoingPort � r   � � � � � o   � ����� 0 outgoingport outgoingPort � n       � � �  ;   � � � o   � ����� 0 portlist portList��  ��  ��  �� 0 eachaccount eachAccount � 2   � ���
�� 
mact��  ��   ~  � � � l  � ���������  ��  ��   �  ��� � r   � � � � � o   � ����� 0 portlist portList � 1   � ���
�� 
laop��   P m   6 9 � ��                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  !����  ��  ��   � ���� 0 eachaccount eachAccount � " �� ���� (�� .�� 1���� = C G J���� ��� a d�������������� � �������
�� 
pcap
�� .coredoexbool       obj �� 0 mailisrunning mailIsRunning
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 loggingoption loggingOption�� 0 portlist portList
�� 
mact
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
port
�� 
TEXT�� 0 incomingport incomingPort
�� 
dact�� 0 outgoingport outgoingPort
�� 
laop�� �� *��/j E�UO� ���kv��� Y ������mvl a ,E` Oa  �jvE` Oa a lv_  G A*a -[a a l kh  �a ,a &E` O_ _  _ _ 6FY h[OY��Y hOa a lv_  K E*a -[a a l kh  �a ,a ,a &E`  O_ _   _  _ 6FY h[OY��Y hO_ *a !,FUascr  ��ޭ