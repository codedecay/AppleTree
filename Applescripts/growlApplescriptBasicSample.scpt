FasdUAS 1.101.10   ��   ��    k             l     ����  O       	  r     
  
 ?        l    ����  I   �� ��
�� .corecnte****       ****  l    ����  6       2    ��
�� 
prcs  =       1   	 ��
�� 
bnid  m       �   0 c o m . G r o w l . G r o w l H e l p e r A p p��  ��  ��  ��  ��    m    ����    o      ���� 0 	isrunning 	isRunning 	 m       �                                                                                  sevs  alis    �  Macintosh SSD              �c��H+   O��System Events.app                                               P��         ����  	                CoreServices    �c�7      � PB     O�� O�� O��  >Macintosh SSD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   S S D  -System/Library/CoreServices/System Events.app   / ��  ��  ��        l     ��������  ��  ��     ��  l   � ����  Z    �  ����  o    ���� 0 	isrunning 	isRunning  O    �    k   & �      ! " ! l  & &�� # $��   # 1 + Make a list of all the notification types     $ � % % V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   "  & ' & l  & &�� ( )��   ( ' ! that this script will ever send:    ) � * * B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : '  + , + r   & , - . - l 	 & * /���� / J   & * 0 0  1 2 1 m   & ' 3 3 � 4 4 " T e s t   N o t i f i c a t i o n 2  5�� 5 m   ' ( 6 6 � 7 7 2 A n o t h e r   T e s t   N o t i f i c a t i o n��  ��  ��   . l      8���� 8 o      ���� ,0 allnotificationslist allNotificationsList��  ��   ,  9 : 9 l  - -��������  ��  ��   :  ; < ; l  - -�� = >��   = ( " Make a list of the notifications     > � ? ? D   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   <  @ A @ l  - -�� B C��   B - ' that will be enabled by default.          C � D D N   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .             A  E F E l  - -�� G H��   G 9 3 Those not enabled by default can be enabled later     H � I I f   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   F  J K J l  - -�� L M��   L 7 1 in the 'Applications' tab of the growl prefpane.    M � N N b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e . K  O P O r   - 2 Q R Q l 	 - 0 S���� S J   - 0 T T  U�� U m   - . V V � W W " T e s t   N o t i f i c a t i o n��  ��  ��   R l      X���� X o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   P  Y Z Y l  3 3��������  ��  ��   Z  [ \ [ l  3 3�� ] ^��   ] &   Register our script with growl.    ^ � _ _ @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . \  ` a ` l  3 3�� b c��   b 7 1 You can optionally (as here) set a default icon     c � d d b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   a  e f e l  3 3�� g h��   g ' ! for this script's notifications.    h � i i B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . f  j k j I  3 L���� l
�� .registernull��� ��� null��   l �� m n
�� 
appl m l 	 5 8 o���� o m   5 8 p p � q q 0 G r o w l   A p p l e S c r i p t   S a m p l e��  ��   n �� r s
�� 
anot r l 
 ; < t���� t o   ; <���� ,0 allnotificationslist allNotificationsList��  ��   s �� u v
�� 
dnot u l 
 ? @ w���� w o   ? @���� 40 enablednotificationslist enabledNotificationsList��  ��   v �� x��
�� 
iapp x m   C F y y � z z  S c r i p t   E d i t o r��   k  { | { l  M M��������  ��  ��   |  } ~ } l  M M��  ���    #        Send a Notification...    � � � � :               S e n d   a   N o t i f i c a t i o n . . . ~  � � � I  M j���� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 Q T ����� � m   Q T � � � � � " T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
titl � l 	 W Z ����� � m   W Z � � � � � " T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
desc � l 	 ] ` ����� � m   ] ` � � � � � P T h i s   i s   a   t e s t   A p p l e S c r i p t   n o t i f i c a t i o n .��  ��   � �� ���
�� 
appl � m   a d � � � � � 0 G r o w l   A p p l e S c r i p t   S a m p l e��   �  � � � l  k k��������  ��  ��   �  � � � I  k ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 o r ����� � m   o r � � � � � 2 A n o t h e r   T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
titl � l 	 u x ����� � m   u x � � � � � : A n o t h e r   T e s t   N o t i f i c a t i o n   : )  ��  ��   � �� � �
�� 
desc � l 	 { ~ ����� � m   { ~ � � � � � \ A l a s      y o u   w o n ' t   s e e   m e   u n t i l   y o u   e n a b l e   m e . . .��  ��   � �� ���
�� 
appl � m    � � � � � � 0 G r o w l   A p p l e S c r i p t   S a m p l e��   �  ��� � l  � ���������  ��  ��  ��    5    #�� ���
�� 
capp � m     ! � � � � � 0 c o m . G r o w l . G r o w l H e l p e r A p p
�� kfrmID  ��  ��  ��  ��  ��       �� � ��� � ���   � ��������
�� .aevtoappnull  �   � ****�� 0 	isrunning 	isRunning�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  ����  ��  ��   �   � # �� ��� ������ ��� 3 6�� V���� p������ y����� ��~ ��} � ��| � � � �
�� 
prcs �  
�� 
bnid
�� .corecnte****       ****�� 0 	isrunning 	isRunning
�� 
capp
�� kfrmID  �� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
� 
name
�~ 
titl
�} 
desc
�| .notifygrnull��� ��� null�� �� *�-�[�,\Z�81j jE�UO� r)���0 f��lvE�O�kvE�O*�a a �a �a a a  O*a a a a a a �a a  O*a a a a  a a !�a "a  OPUY h
�� boovtrue � �{ ��{  �   3 6 � �z ��z  �   Vascr  ��ޭ