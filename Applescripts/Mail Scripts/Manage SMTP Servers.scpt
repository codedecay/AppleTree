FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
Manage SMTP Servers

Copyright � 2002�2013 Apple Inc. All rights reserved.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	, 
 M a n a g e   S M T P   S e r v e r s 
 
 C o p y r i g h t   �   2 0 0 2  2 0 1 3   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d . 
 
 Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t 
 r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e 
 r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o 
 r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g 
 m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e 
 t h a t   y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e 
 c o d e ,   b u t   t h a t   y o u ' v e   m a d e   c h a n g e s . 
   
  
 l     ��������  ��  ��        l      ��  ��    � �
This script goes through each smtp server, checks to see whether they are
being used by an account, then presents a list of 'orphaned' smtp servers,
which you can choose to delete if you wish.
     �  � 
 T h i s   s c r i p t   g o e s   t h r o u g h   e a c h   s m t p   s e r v e r ,   c h e c k s   t o   s e e   w h e t h e r   t h e y   a r e 
 b e i n g   u s e d   b y   a n   a c c o u n t ,   t h e n   p r e s e n t s   a   l i s t   o f   ' o r p h a n e d '   s m t p   s e r v e r s , 
 w h i c h   y o u   c a n   c h o o s e   t o   d e l e t e   i f   y o u   w i s h . 
      l     ��������  ��  ��        l     ��������  ��  ��        l    
 ����  O    
    r    	    2    ��
�� 
dact  o      ���� "0 everysmtpserver everySMTPServer  m       �                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��  ��        l    ����  r       !   J    ����   ! o      ���� .0 nameofeverysmtpserver nameOfEverySMTPServer��  ��     " # " l   9 $���� $ X    9 %�� & % Z     4 ' (�� ) ' l    & *���� * n    & + , + I   ! &�� -���� 60 isthissmtpserverbeingused isThisSMTPServerBeingUsed -  .�� . o   ! "����  0 eachsmtpserver eachSMTPServer��  ��   ,  f     !��  ��   ( k   ) ) / /  0 1 0 l  ) )�� 2 3��   2 B < Don't add to the list of smtp servers to potentially delete    3 � 4 4 x   D o n ' t   a d d   t o   t h e   l i s t   o f   s m t p   s e r v e r s   t o   p o t e n t i a l l y   d e l e t e 1  5�� 5 l  ) )�� 6 7��   6 : 4 if the server is actively being used by an account     7 � 8 8 h   i f   t h e   s e r v e r   i s   a c t i v e l y   b e i n g   u s e d   b y   a n   a c c o u n t  ��  ��   ) r   - 4 9 : 9 b   - 2 ; < ; o   - .���� .0 nameofeverysmtpserver nameOfEverySMTPServer < n   . 1 = > = 1   / 1��
�� 
pnam > o   . /����  0 eachsmtpserver eachSMTPServer : o      ���� .0 nameofeverysmtpserver nameOfEverySMTPServer��  0 eachsmtpserver eachSMTPServer & o    ���� "0 everysmtpserver everySMTPServer��  ��   #  ? @ ? l  : � A���� A Z   : � B C�� D B l  : A E���� E =  : A F G F l  : ? H���� H I  : ?�� I��
�� .corecnte****       **** I o   : ;���� .0 nameofeverysmtpserver nameOfEverySMTPServer��  ��  ��   G m   ? @����  ��  ��   C I  D I�� J��
�� .sysodlogaskr        TEXT J m   D E K K � L L � A l l   t h e   S M T P   s e r v e r s   y o u   h a v e   d e f i n e d   a r e   b e i n g   u s e d   b y   a c t i v e   a c c o u n t s .��  ��   D k   L � M M  N O N r   L Y P Q P I  L U�� R S
�� .gtqpchltns    @   @ ns   R o   L M���� .0 nameofeverysmtpserver nameOfEverySMTPServer S �� T U
�� 
prmp T m   N O V V � W W � C h o o s e   o n e   o r   m o r e   S M T P   s e r v e r s   t o   d e l e t e .   N o n e   o f   t h e s e   s e r v e r s   a r e   c u r r e n t l y   b e i n g   u s e d   b y   a n y   o f   y o u r   e m a i l   a c c o u n t s . U �� X��
�� 
mlsl X m   P Q��
�� boovtrue��   Q o      ���� (0 theserverstodelete theServersToDelete O  Y�� Y Z   Z � Z [���� Z >  Z _ \ ] \ o   Z ]���� (0 theserverstodelete theServersToDelete ] m   ] ^��
�� boovfals [ Z   b � ^ _���� ^ l  b k `���� ` ?  b k a b a l  b i c���� c I  b i�� d��
�� .corecnte****       **** d o   b e���� (0 theserverstodelete theServersToDelete��  ��  ��   b m   i j����  ��  ��   _ k   n � e e  f g f X   n � h�� i h X   � � j�� k j Q   � � l m�� l Z   � � n o���� n l  � � p���� p =  � � q r q n   � � s t s 1   � ���
�� 
pnam t o   � �����  0 eachsmtpserver eachSMTPServer r c   � � u v u o   � ����� 0 
eachserver 
eachServer v m   � ���
�� 
TEXT��  ��   o O  � � w x w I  � ��� y��
�� .coredelonull���     obj  y o   � �����  0 eachsmtpserver eachSMTPServer��   x m   � � z z�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��  ��   m R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  0 eachsmtpserver eachSMTPServer k o   � ����� "0 everysmtpserver everySMTPServer�� 0 
eachserver 
eachServer i o   q t���� (0 theserverstodelete theServersToDelete g  {�� { I  � ��� |��
�� .sysodlogaskr        TEXT | m   � � } } � ~ ~ N T h e   s e l e c t e d   s e r v e r s   h a v e   b e e n   d e l e t e d !��  ��  ��  ��  ��  ��  ��  ��  ��   @   �  l     ��������  ��  ��   �  ��� � i      � � � I      �� ����� 60 isthissmtpserverbeingused isThisSMTPServerBeingUsed �  ��� � o      ���� 0 	theserver 	theServer��  ��   � k     J � �  � � � l     �� � ���   � 6 0 Run through each account and see if any of them    � � � � `   R u n   t h r o u g h   e a c h   a c c o u n t   a n d   s e e   i f   a n y   o f   t h e m �  � � � l     �� � ���   � &   are using the given SMTP server    � � � � @   a r e   u s i n g   t h e   g i v e n   S M T P   s e r v e r �  � � � r      � � � m     ��
�� boovfals � o      ���� 0 	theresult 	theResult �  � � � O    G � � � k    F � �  � � � r     � � � 2    ��
�� 
mact � o      ���� 0 everyaccount everyAccount �  ��� � X    F ��� � � k    A � �  � � � r    % � � � n    # � � � 1   ! #��
�� 
pnam � n    ! � � � m    !��
�� 
dact � o    ���� 0 eachaccount eachAccount � o      ���� $0 nameofsmtpserver nameOfSMTPServer �  ��� � Q   & A � ��� � Z   ) 8 � ����� � l  ) . ����� � =  ) . � � � o   ) *���� $0 nameofsmtpserver nameOfSMTPServer � n   * - � � � 1   + -��
�� 
pnam � o   * +���� 0 	theserver 	theServer��  ��   � r   1 4 � � � m   1 2��
�� boovtrue � o      ���� 0 	theresult 	theResult��  ��   � R      �����
�� .ascrerr ****      � ****��  �  ��  ��  �� 0 eachaccount eachAccount � o    �~�~ 0 everyaccount everyAccount��   � m     � ��                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��   �  ��} � L   H J � � o   H I�|�| 0 	theresult 	theResult�}  ��       �{ � � ��{   � �z�y�z 60 isthissmtpserverbeingused isThisSMTPServerBeingUsed
�y .aevtoappnull  �   � **** � �x ��w�v � ��u�x 60 isthissmtpserverbeingused isThisSMTPServerBeingUsed�w �t ��t  �  �s�s 0 	theserver 	theServer�v   � �r�q�p�o�n�r 0 	theserver 	theServer�q 0 	theresult 	theResult�p 0 everyaccount everyAccount�o 0 eachaccount eachAccount�n $0 nameofsmtpserver nameOfSMTPServer � 	 ��m�l�k�j�i�h�g�f
�m 
mact
�l 
kocl
�k 
cobj
�j .corecnte****       ****
�i 
dact
�h 
pnam�g  �f  �u KfE�O� @*�-E�O 7�[��l kh ��,�,E�O ���,  eE�Y hW X  h[OY��UO� � �e ��d�c � ��b
�e .aevtoappnull  �   � **** � k     � � �   � �   � �  " � �  ?�a�a  �d  �c   � �`�_�`  0 eachsmtpserver eachSMTPServer�_ 0 
eachserver 
eachServer �  �^�]�\�[�Z�Y�X�W K�V�U V�T�S�R�Q�P�O�N�M }
�^ 
dact�] "0 everysmtpserver everySMTPServer�\ .0 nameofeverysmtpserver nameOfEverySMTPServer
�[ 
kocl
�Z 
cobj
�Y .corecnte****       ****�X 60 isthissmtpserverbeingused isThisSMTPServerBeingUsed
�W 
pnam
�V .sysodlogaskr        TEXT
�U 
prmp
�T 
mlsl�S 
�R .gtqpchltns    @   @ ns  �Q (0 theserverstodelete theServersToDelete
�P 
TEXT
�O .coredelonull���     obj �N  �M  �b �� *�-E�UOjvE�O (�[��l kh  )�k+  hY 	à�,%E�[OY��O�j j  
�j 
Y �����e� E` O_ f o_ j j _ Q_ [��l kh  :�[��l kh   ��,�a &  � �j UY hW X  h[OY��[OY��Oa j 
Y hY h ascr  ��ޭ