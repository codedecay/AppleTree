FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        j     �� 	�� 0 currenttime   	 m     ����     
  
 j    �� �� 0 previousbreak    c        m    ����    m    ��
�� 
long      j    �� �� 0 currentbreak    c        m    	����    m   	 
��
�� 
long      l     ����  O         r        ?        l    ����  I   �� ��
�� .corecnte****       ****  l    ����  6      !   2    ��
�� 
prcs ! =    " # " 1   	 ��
�� 
bnid # m     $ $ � % % 0 c o m . G r o w l . G r o w l H e l p e r A p p��  ��  ��  ��  ��    m    ����    o      ���� 0 	isrunning 	isRunning  m      & &�                                                                                  sevs  alis    �  Macintosh HD               �}�H+  /߽System Events.app                                              3a�]��        ����  	                CoreServices    ��      �^5�    /߽/߷/߶  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��     ' ( ' l     ��������  ��  ��   (  ) * ) l   � +���� + Z    � , -���� , o    ���� 0 	isrunning 	isRunning - O    � . / . k   & � 0 0  1 2 1 l  & &�� 3 4��   3 1 + Make a list of all the notification types     4 � 5 5 V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   2  6 7 6 l  & &�� 8 9��   8 ' ! that this script will ever send:    9 � : : B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : 7  ; < ; r   & , = > = l 	 & * ?���� ? J   & * @ @  A B A m   & ' C C � D D " T e s t   N o t i f i c a t i o n B  E�� E m   ' ( F F � G G 2 A n o t h e r   T e s t   N o t i f i c a t i o n��  ��  ��   > l      H���� H o      ���� ,0 allnotificationslist allNotificationsList��  ��   <  I J I l  - -��������  ��  ��   J  K L K l  - -�� M N��   M ( " Make a list of the notifications     N � O O D   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   L  P Q P l  - -�� R S��   R - ' that will be enabled by default.          S � T T N   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .             Q  U V U l  - -�� W X��   W 9 3 Those not enabled by default can be enabled later     X � Y Y f   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   V  Z [ Z l  - -�� \ ]��   \ 7 1 in the 'Applications' tab of the growl prefpane.    ] � ^ ^ b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e . [  _ ` _ r   - 2 a b a l 	 - 0 c���� c J   - 0 d d  e�� e m   - . f f � g g " T e s t   N o t i f i c a t i o n��  ��  ��   b l      h���� h o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   `  i j i l  3 3��������  ��  ��   j  k l k l  3 3�� m n��   m &   Register our script with growl.    n � o o @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . l  p q p l  3 3�� r s��   r 7 1 You can optionally (as here) set a default icon     s � t t b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   q  u v u l  3 3�� w x��   w ' ! for this script's notifications.    x � y y B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . v  z { z I  3 L���� |
�� .registernull��� ��� null��   | �� } ~
�� 
appl } l 	 5 8 ����  m   5 8 � � � � � 0 G r o w l   A p p l e S c r i p t   S a m p l e��  ��   ~ �� � �
�� 
anot � l 
 ; < ����� � o   ; <���� ,0 allnotificationslist allNotificationsList��  ��   � �� � �
�� 
dnot � l 
 ? @ ����� � o   ? @���� 40 enablednotificationslist enabledNotificationsList��  ��   � �� ���
�� 
iapp � m   C F � � � � �  S c r i p t   E d i t o r��   {  � � � l  M M��������  ��  ��   �  � � � l  M M�� � ���   � #        Send a Notification...    � � � � :               S e n d   a   N o t i f i c a t i o n . . . �  � � � I  M j���� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 Q T ����� � m   Q T � � � � � " T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
titl � l 	 W Z ����� � m   W Z � � � � � " T e s t   N o t i f i c a t i o n��  ��   � �� � �
�� 
desc � l 	 ] ` ����� � m   ] ` � � � � �  C O D E   T O A D ! ! !��  ��   � �� ���
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
appl � m    � � � � � � 0 G r o w l   A p p l e S c r i p t   S a m p l e��   �  � � � l  � ���������  ��  ��   �  � � � l  � � � � � � r   � � � � � m   � � � � � � � � M a c i n t o s h   H D : A p p l i c a t i o n s : C o d e T o a d . a p p : C o n t e n t s : R e s o u r c e s : c o d e t o a d . j p g � o      ���� 0 	the_file2   �  path to your image    � � � � $ p a t h   t o   y o u r   i m a g e �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
strq � l  � � ����� � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � c   � � � � � o   � ����� 0 	the_file2   � m   � ���
�� 
alis��  ��  ��  ��   � o      ���� 0 
file_path2   �  � � � l  � ���������  ��  ��   �  � � � I  � ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 � � ����� � m   � � � � � � � " S o m e   N o t i f i c a t i o n��  ��   � � � �
� 
titl � l 	 � � ��~�} � m   � � � � � � � P T h i s   i s   a   N o t i f i c a t i o n   w i t h   a n   F i l e   I c o n�~  �}   � �| � �
�| 
desc � l 	 � � ��{�z � l 	 � � ��y�x � m   � � � � � � � : W e   a r e   u s i n g   a   F i l e ' s   I c o n . . .�y  �x  �{  �z   � �w � �
�w 
appl � l 	 � � ��v�u � m   � � � � � � �  C o d e T o a d�v  �u   � �t ��s
�t 
ifil � o   � ��r�r 0 
file_path2  �s   �  ��q � l  � ��p�o�n�p  �o  �n  �q   / 5    #�m ��l
�m 
capp � m     ! � � � � � 0 c o m . G r o w l . G r o w l H e l p e r A p p
�l kfrmID  ��  ��  ��  ��   *  � � � l     �k�j�i�k  �j  �i   �  � � � i     � � � I     �h�g�f
�h .miscidlenmbr    ��� null�g  �f   � k     � � �  � � � r      � � � n        1    �e
�e 
time l    �d�c I    �b�a�`
�b .misccurdldt    ��� null�a  �`  �d  �c   � o      �_�_ 0 currenttime   �  r    ! c     l   	�^�]	 ^    

 ^     ^     o    �\�\ 0 currenttime   m    �[�[ < m    �Z�Z < m    �Y�Y <�^  �]   m    �X
�X 
long o      �W�W 0 currentbreak    l  " "�V�U�T�V  �U  �T    l  " % r   " % m   " # � ^ M a c i n t o s h   H D : U s e r s : j a m e s t u n i c k : D e s k t o p : f r o g . w a v o      �S�S 0 the_file    path to your sound file    � . p a t h   t o   y o u r   s o u n d   f i l e  r   & / n   & - !  1   + -�R
�R 
strq! l  & +"�Q�P" n   & +#$# 1   ) +�O
�O 
psxp$ l  & )%�N�M% c   & )&'& o   & '�L�L 0 the_file  ' m   ' (�K
�K 
alis�N  �M  �Q  �P   o      �J�J 0 	file_path   ()( I  0 9�I*�H
�I .sysoexecTEXT���     TEXT* l  0 5+�G�F+ b   0 5,-, b   0 3./. m   0 100 �11  a f p l a y  / o   1 2�E�E 0 	file_path  - m   3 422 �33 &   >   / d e v / n u l l   2 > & 1   &�G  �F  �H  ) 454 l  : :�D�C�B�D  �C  �B  5 676 l  : :�A�@�?�A  �@  �?  7 898 l  : :�>�=�<�>  �=  �<  9 :;: l  : :�;<=�;  < X Rdisplay dialog "It has been 15 minutes, where's your code??" --Do your script here   = �>> � d i s p l a y   d i a l o g   " I t   h a s   b e e n   1 5   m i n u t e s ,   w h e r e ' s   y o u r   c o d e ? ? "   - - D o   y o u r   s c r i p t   h e r e; ?@? l  : :�:�9�8�:  �9  �8  @ ABA l  : :�7�6�5�7  �6  �5  B C�4C Z   : �DE�3�2D >  : EFGF o   : ?�1�1 0 currentbreak  G o   ? D�0�0 0 previousbreak  E k   H �HH IJI l  H H�/�.�-�/  �.  �-  J KLK l  H H�,�+�*�,  �+  �*  L MNM l  H H�)�(�'�)  �(  �'  N OPO l  H KQRSQ r   H KTUT m   H IVV �WW ^ M a c i n t o s h   H D : U s e r s : j a m e s t u n i c k : D e s k t o p : f r o g . w a vU o      �&�& 0 the_file  R  path to your sound file   S �XX . p a t h   t o   y o u r   s o u n d   f i l eP YZY r   L U[\[ n   L S]^] 1   Q S�%
�% 
strq^ l  L Q_�$�#_ n   L Q`a` 1   O Q�"
�" 
psxpa l  L Ob�!� b c   L Ocdc o   L M�� 0 the_file  d m   M N�
� 
alis�!  �   �$  �#  \ o      �� 0 	file_path  Z efe I  V _�g�
� .sysoexecTEXT���     TEXTg l  V [h��h b   V [iji b   V Yklk m   V Wmm �nn  a f p l a y  l o   W X�� 0 	file_path  j m   Y Zoo �pp &   >   / d e v / n u l l   2 > & 1   &�  �  �  f qrq l  ` `����  �  �  r sts l  ` `����  �  �  t uvu O   ` wxw r   d ~yzy ?   d |{|{ l  d z}��} I  d z�~�
� .corecnte****       ****~ l  d v�� 6  d v��� 2   d g�
� 
prcs� =  j u��� 1   k o�

�
 
bnid� m   p t�� ��� 0 c o m . G r o w l . G r o w l H e l p e r A p p�  �  �  �  �  | m   z {�	�	  z o      �� 0 	isrunning 	isRunningx m   ` a���                                                                                  sevs  alis    �  Macintosh HD               �}�H+  /߽System Events.app                                              3a�]��        ����  	                CoreServices    ��      �^5�    /߽/߷/߶  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  v ��� l  � �����  �  �  � ��� l  � �����  �  �  � ��� l  � ��� ���  �   ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  � X Rdisplay dialog "It has been 15 minutes, where's your code??" --Do your script here   � ��� � d i s p l a y   d i a l o g   " I t   h a s   b e e n   1 5   m i n u t e s ,   w h e r e ' s   y o u r   c o d e ? ? "   - - D o   y o u r   s c r i p t   h e r e� ��� l  � ���������  ��  ��  � ���� r   � ���� o   � ����� 0 currentbreak  � o      ���� 0 previousbreak  ��  �3  �2  �4   � ���� l     ��������  ��  ��  ��       �������������  � ������������ 0 currenttime  �� 0 previousbreak  �� 0 currentbreak  
�� .miscidlenmbr    ��� null
�� .aevtoappnull  �   � ****��  ��  ��  � �� ���������
�� .miscidlenmbr    ��� null��  ��  � �������� 0 the_file  �� 0 	file_path  �� 0 	isrunning 	isRunning� ��������������02��Vmo���������
�� .misccurdldt    ��� null
�� 
time�� <
�� 
long
�� 
alis
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
prcs�  
�� 
bnid
�� .corecnte****       ****�� �*j  �,Ec   Ob   �!�!�!�&Ec  O�E�O��&�,�,E�O�%�%j 
Ob  b   H�E�O��&�,�,E�O�%�%j 
O� *�-a [a ,\Za 81j jE�UOb  Ec  Y h� �����������
�� .aevtoappnull  �   � ****� k     ���  ��  )����  ��  ��  �  � / &����� $������ ��� C F�� f���� ������� ������� ��� ��� � ��� � � � � ����������� � � � �����
�� 
prcs
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
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null�� 0 	the_file2  
�� 
alis
�� 
psxp
�� 
strq�� 0 
file_path2  
�� 
ifil�� 
�� �� *�-�[�,\Z�81j jE�UO� �)���0 ���lvE�O�kvE�O*�a a �a �a a a  O*a a a a a a �a a  O*a a a a  a a !�a "a  Oa #E` $O_ $a %&a &,a ',E` (O*a a )a a *a a +�a ,a -_ (a . OPUY h ascr  ��ޭ