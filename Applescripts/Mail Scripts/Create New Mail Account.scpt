FasdUAS 1.101.10   ��   ��    k             l      ��  ��    
Create New Mail Account

Copyright � 2002�2013 Apple Inc. All rights reserved.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	4 
 C r e a t e   N e w   M a i l   A c c o u n t 
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
This script walks through the creation of an IMAP, POP, or .Mac account,
including the setting of some advanced settings. This script demonstrates
the scriptability of Mail Preferences, including accounts.
     �  � 
 T h i s   s c r i p t   w a l k s   t h r o u g h   t h e   c r e a t i o n   o f   a n   I M A P ,   P O P ,   o r   . M a c   a c c o u n t , 
 i n c l u d i n g   t h e   s e t t i n g   o f   s o m e   a d v a n c e d   s e t t i n g s .   T h i s   s c r i p t   d e m o n s t r a t e s 
 t h e   s c r i p t a b i l i t y   o f   M a i l   P r e f e r e n c e s ,   i n c l u d i n g   a c c o u n t s . 
      l     ��������  ��  ��        l     ����  r         m     ����   o      ���� 0 success  ��  ��        l    ����  r        I    	��������  0 getaccounttype getAccountType��  ��    o      ���� 0 	theresult 	theResult��  ��        l  � ����  Z   �   !����   >    " # " o    ���� 0 	theresult 	theResult # m    ��
�� boovfals ! k   � $ $  % & % r     ' ( ' n     ) * ) 4    �� +
�� 
cobj + m    ����  * o    ���� 0 	theresult 	theResult ( o      ���� &0 accounttypestring accountTypeString &  , - , r      . / . I    ��������  0 getaccountname getAccountName��  ��   / o      ����  0 theaccountname theAccountName -  0 1 0 r   ! ( 2 3 2 I   ! &�������� 0 getusername getUsername��  ��   3 o      ���� 0 theusername theUsername 1  4 5 4 r   ) 0 6 7 6 I   ) .�������� 0 getpassword getPassword��  ��   7 o      ���� 0 thepassword thePassword 5  8 9 8 r   1 8 : ; : I   1 6�������� "0 getemailaddress getEmailAddress��  ��   ; o      ���� &0 theemailaddresses theEmailAddresses 9  < = < r   9 @ > ? > I   9 >�������� 0 getfullname getFullName��  ��   ? o      ���� 0 thefullname theFullName =  @ A @ l  A A��������  ��  ��   A  B C B l  A A�� D E��   D   .Mac accounts    E � F F    . M a c   a c c o u n t s C  G H G Z   A� I J K�� I =  A D L M L o   A B���� &0 accounttypestring accountTypeString M m   B C N N � O O  . M a c J k   G u P P  Q R Q r   G N S T S m   G J U U � V V  m a i l . m a c . c o m T o      ���� 0 thehostname theHostname R  W X W r   O c Y Z Y n  O _ [ \ [ I   P _�� ]���� 0 createaccount createAccount ]  ^ _ ^ o   P Q���� &0 accounttypestring accountTypeString _  ` a ` o   Q R����  0 theaccountname theAccountName a  b c b o   R S���� 0 theusername theUsername c  d e d o   S V���� 0 thehostname theHostname e  f g f o   V W���� 0 thepassword thePassword g  h i h o   W X���� &0 theemailaddresses theEmailAddresses i  j�� j o   X Y���� 0 thefullname theFullName��  ��   \  f   O P Z o      ���� 0 thenewaccount theNewAccount X  k l k Z   d s m n���� m l  d i o���� o =  d i p q p o   d g���� 0 thenewaccount theNewAccount q m   g h��
�� boovfals��  ��   n r   l o r s r m   l m����   s o      ���� 0 success  ��  ��   l  t u t l  t t��������  ��  ��   u  v�� v l  t t�� w x��   w ' ! POP and IMAP share some settings    x � y y B   P O P   a n d   I M A P   s h a r e   s o m e   s e t t i n g s��   K  z { z G   x � | } | =  x } ~  ~ o   x y���� &0 accounttypestring accountTypeString  m   y | � � � � �  P O P } =  � � � � � o   � ����� &0 accounttypestring accountTypeString � m   � � � � � � �  I M A P {  ��� � k   �� � �  � � � T   � � � � k   � � � �  � � � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � b E n t e r   t h e   h o s t n a m e   f o r   y o u r   i n c o m i n g   m a i l   s e r v e r : � �� ���
�� 
dtxt � m   � � � � � � � 2 E x a m p l e :   m a i l . e x a m p l e . c o m��   � o      ���� 0 	theresult 	theResult �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � o   � ����� 0 	theresult 	theResult � o      ���� 0 thehostname theHostname �  ��� � Z   � � � ����� � H   � � � � C   � � � � � o   � ����� 0 thehostname theHostname � m   � � � � � � �  E x a m p l e : �  S   � ���  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   POP specific options    � � � � *   P O P   s p e c i f i c   o p t i o n s �  � � � Z   �� � � ��� � =  � � � � � o   � ����� &0 accounttypestring accountTypeString � m   � � � � � � �  P O P � k   �- � �  � � � r   � � � � � n  � � � � � I   � ��������� &0 getdeletionpolicy getDeletionPolicy��  ��   �  f   � � � o      ����  0 deletionpolicy deletionPolicy �  � � � Z   �+ � ����� � >  � � � � � o   � �����  0 deletionpolicy deletionPolicy � m   � ���
�� boovfals � k   �' � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � �����  0 deletionpolicy deletionPolicy � o      ����  0 deletionpolicy deletionPolicy �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 createaccount createAccount �  � � � o   � ����� &0 accounttypestring accountTypeString �  � � � o   � �����  0 theaccountname theAccountName �  � � � o   � ����� 0 theusername theUsername �  � � � o   � ����� 0 thehostname theHostname �  � � � o   � ����� 0 thepassword thePassword �  � � � o   � ����� &0 theemailaddresses theEmailAddresses �  ��� � o   � ����� 0 thefullname theFullName��  ��   �  f   � � � o      ���� 0 thenewaccount theNewAccount �  ��� � Z   �' � ��� � � >  �  � � � o   � ����� 0 thenewaccount theNewAccount � m   � ���
�� boovfals � k  ! � �  � � � I  �� ���� &0 setdeletionpolicy setDeletionPolicy �  � � � o  �~�~ 0 thenewaccount theNewAccount �  ��} � o  
�|�|  0 deletionpolicy deletionPolicy�}  �   �  � � � I  �{ ��z�{ >0 getandsetauthenticationscheme getAndSetAuthenticationScheme �  � � � o  �y�y &0 accounttypestring accountTypeString �  ��x � o  �w�w 0 thenewaccount theNewAccount�x  �z   �  ��v � I  !�u ��t�u *0 getandsetsmtpserver getAndSetSMTPServer �  ��s � o  �r�r 0 thenewaccount theNewAccount�s  �t  �v  ��   � r  $' � � � m  $%�q�q   � o      �p�p 0 success  ��  ��  ��   �  � � � l ,,�o�n�m�o  �n  �m   �  ��l � l ,,�k � ��k   �   IMAP specific options    � � � � ,   I M A P   s p e c i f i c   o p t i o n s�l   �  � � � = 05 � � � o  01�j�j &0 accounttypestring accountTypeString � m  14   �  I M A P � �i k  8  r  8L n 8H	 I  9H�h
�g�h 0 createaccount createAccount
  o  9:�f�f &0 accounttypestring accountTypeString  o  :;�e�e  0 theaccountname theAccountName  o  ;<�d�d 0 theusername theUsername  o  <?�c�c 0 thehostname theHostname  o  ?@�b�b 0 thepassword thePassword  o  @A�a�a &0 theemailaddresses theEmailAddresses �` o  AB�_�_ 0 thefullname theFullName�`  �g  	  f  89 o      �^�^ 0 thenewaccount theNewAccount �] Z  M�\ > MR o  MP�[�[ 0 thenewaccount theNewAccount m  PQ�Z
�Z boovfals k  Uy   I  U]�Y!�X�Y 60 getandsetspecialmailboxes getAndSetSpecialMailboxes! "�W" o  VY�V�V 0 thenewaccount theNewAccount�W  �X    #$# I  ^f�U%�T�U 40 getandsetcachingsettings getAndSetCachingSettings% &�S& o  _b�R�R 0 thenewaccount theNewAccount�S  �T  $ '(' I  gp�Q)�P�Q >0 getandsetauthenticationscheme getAndSetAuthenticationScheme) *+* o  hi�O�O &0 accounttypestring accountTypeString+ ,�N, o  il�M�M 0 thenewaccount theNewAccount�N  �P  ( -�L- I  qy�K.�J�K *0 getandsetsmtpserver getAndSetSMTPServer. /�I/ o  ru�H�H 0 thenewaccount theNewAccount�I  �J  �L  �\   r  |010 m  |}�G�G  1 o      �F�F 0 success  �]  �i  ��   � 2�E2 l ���D�C�B�D  �C  �B  �E  ��  ��   H 3�A3 Z  ��45�@64 = ��787 o  ���?�? 0 success  8 m  ���>�> 5 I ���=9�<
�= .sysodlogaskr        TEXT9 m  ��:: �;;   A c c o u n t   c r e a t e d !�<  �@  6 I ���;<�:
�; .sysodlogaskr        TEXT< m  ��== �>> 0 A c c o u n t   c r e a t i o n   f a i l e d !�:  �A  ��  ��  ��  ��    ?@? l     �9�8�7�9  �8  �7  @ ABA l     �6CD�6  C 0 * Convenience handler for creating accounts   D �EE T   C o n v e n i e n c e   h a n d l e r   f o r   c r e a t i n g   a c c o u n t sB FGF i     HIH I      �5J�4�5 0 createaccount createAccountJ KLK o      �3�3  0 theaccounttype theAccountTypeL MNM o      �2�2  0 theaccountname theAccountNameN OPO o      �1�1 0 theusername theUsernameP QRQ o      �0�0 0 thehostname theHostnameR STS o      �/�/ 0 thepassword thePasswordT UVU o      �.�. &0 theemailaddresses theEmailAddressesV W�-W o      �,�, 0 thefullname theFullName�-  �4  I k     �XX YZY O     �[\[ Q    �]^_] Z    u`ab�+` =   
cdc o    �*�*  0 theaccounttype theAccountTyped m    	ee �ff  . M a ca r    'ghg I   %�)�(i
�) .corecrel****      � null�(  i �'jk
�' 
koclj m    �&
�& 
itack �%l�$
�% 
prdtl K    !mm �#no
�# 
pnamn o    �"�"  0 theaccountname theAccountNameo �!pq
�! 
unmep o    � �  0 theusername theUsernameq �rs
� 
hostr o    �� 0 thehostname theHostnames �tu
� 
macpt o    �� 0 thepassword thePasswordu �vw
� 
fllnv o    �� 0 thefullname theFullNamew �x�
� 
emadx J    yy z�z o    �� &0 theemailaddresses theEmailAddresses�  �  �$  h o      �� 0 thenewaccount theNewAccountb {|{ =  * -}~} o   * +��  0 theaccounttype theAccountType~ m   + , ���  I M A P| ��� r   0 J��� I  0 H���
� .corecrel****      � null�  � ���
� 
kocl� m   2 3�
� 
iact� ���
� 
prdt� K   4 D�� ���
� 
pnam� o   5 6��  0 theaccountname theAccountName� ���
� 
unme� o   7 8�
�
 0 theusername theUsername� �	��
�	 
host� o   9 :�� 0 thehostname theHostname� ���
� 
macp� o   ; <�� 0 thepassword thePassword� ���
� 
flln� o   = >�� 0 thefullname theFullName� ���
� 
emad� J   ? B�� ��� o   ? @� �  &0 theemailaddresses theEmailAddresses�  �  �  � o      ���� 0 thenewaccount theNewAccount� ��� =  M R��� o   M N����  0 theaccounttype theAccountType� m   N Q�� ���  P O P� ���� r   U q��� I  U o�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   W Z��
�� 
pact� �����
�� 
prdt� K   [ k�� ����
�� 
pnam� o   \ ]����  0 theaccountname theAccountName� ����
�� 
unme� o   ^ _���� 0 theusername theUsername� ����
�� 
host� o   ` a���� 0 thehostname theHostname� ����
�� 
macp� o   b c���� 0 thepassword thePassword� ����
�� 
flln� o   d e���� 0 thefullname theFullName� �����
�� 
emad� J   f i�� ���� o   f g���� &0 theemailaddresses theEmailAddresses��  ��  ��  � o      ���� 0 thenewaccount theNewAccount��  �+  ^ R      ������
�� .ascrerr ****      � ****��  ��  _ r   } ���� m   } ~��
�� boovfals� o      ���� 0 thenewaccount theNewAccount\ m     ���                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  Z ���� L   � ��� o   � ����� 0 thenewaccount theNewAccount��  G ��� l     ��������  ��  ��  � ��� l     ������  � ? 9 Ask the user for the type of account they want to create   � ��� r   A s k   t h e   u s e r   f o r   t h e   t y p e   o f   a c c o u n t   t h e y   w a n t   t o   c r e a t e� ��� i    ��� I      ��������  0 getaccounttype getAccountType��  ��  � k     �� ��� r     ��� I    ����
�� .gtqpchltns    @   @ ns  � J     �� ��� m     �� ���  I M A P� ��� m    �� ���  P O P� ���� m    �� ���  . M a c��  � ����
�� 
prmp� m    �� ��� \ W h a t   t y p e   o f   a c c o u n t   w o u l d   y o u   l i k e   t o   c r e a t e ?� �����
�� 
mlsl� m    	��
�� boovfals��  � o      ���� 0 	theresult 	theResult� ���� L    �� o    ���� 0 	theresult 	theResult��  � ��� l     ��������  ��  ��  � ��� l     ������  � < 6 Ask the user what they would like to name the account   � ��� l   A s k   t h e   u s e r   w h a t   t h e y   w o u l d   l i k e   t o   n a m e   t h e   a c c o u n t� ��� i    ��� I      ��������  0 getaccountname getAccountName��  ��  � k     )�� ��� T     &�� k    !�� ��� r    ��� I   ����
�� .sysodlogaskr        TEXT� m    �� ��� Z W h a t   w o u l d   y o u   l i k e   t h i s   a c c o u n t   t o   b e   n a m e d ?� �����
�� 
dtxt� m    �� ��� 0 E x a m p l e :   M y   H o m e   A c c o u n t��  � o      ���� 0 	theresult 	theResult� ��� r    ��� n    ��� 1    ��
�� 
ttxt� o    ���� 0 	theresult 	theResult� o      ����  0 theaccountname theAccountName� ���� Z    !������� H       C     o    ����  0 theaccountname theAccountName m     �  E x a m p l e :�  S    ��  ��  ��  � �� L   ' ) o   ' (����  0 theaccountname theAccountName��  �  l     ��������  ��  ��   	
	 l     ����   = 7 Ask the user for the user name for their email account    � n   A s k   t h e   u s e r   f o r   t h e   u s e r   n a m e   f o r   t h e i r   e m a i l   a c c o u n t
  i     I      �������� 0 getusername getUsername��  ��   k     )  T     & k    !  r     I   ��
�� .sysodlogaskr        TEXT m     � : W h a t   i s   y o u r   e m a i l   u s e r   n a m e ? ����
�� 
dtxt m       �!!   E x a m p l e :   j a n e d o e��   o      ���� 0 	theresult 	theResult "#" r    $%$ n    &'& 1    ��
�� 
ttxt' l   (����( o    ���� 0 	theresult 	theResult��  ��  % o      ���� 0 theusername theUsername# )��) Z    !*+����* H    ,, C    -.- o    ���� 0 theusername theUsername. m    // �00  E x a m p l e :+  S    ��  ��  ��   1��1 L   ' )22 o   ' (���� 0 theusername theUsername��   343 l     ��������  ��  ��  4 565 l     ��78��  7 < 6 Ask the user for the password for their email account   8 �99 l   A s k   t h e   u s e r   f o r   t h e   p a s s w o r d   f o r   t h e i r   e m a i l   a c c o u n t6 :;: i    <=< I      �������� 0 getpassword getPassword��  ��  = k     >> ?@? r     	ABA I    ��CD
�� .sysodlogaskr        TEXTC m     EE �FF L W h a t   i s   t h e   p a s s w o r d   f o r   t h i s   a c c o u n t ?D ��G��
�� 
dtxtG m    HH �II  ��  B o      ���� 0 	theresult 	theResult@ JKJ r   
 LML n   
 NON 1    ��
�� 
ttxtO o   
 ���� 0 	theresult 	theResultM o      ���� 0 thepassword thePasswordK P��P L    QQ o    ���� 0 thepassword thePassword��  ; RSR l     ��������  ��  ��  S TUT l     ��VW��  V C = Ask the user for the email addresses for their email account   W �XX z   A s k   t h e   u s e r   f o r   t h e   e m a i l   a d d r e s s e s   f o r   t h e i r   e m a i l   a c c o u n tU YZY i    [\[ I      �������� "0 getemailaddress getEmailAddress��  ��  \ k     )]] ^_^ T     &`` k    !aa bcb r    ded I   ��fg
�� .sysodlogaskr        TEXTf m    hh �ii t W h a t   e m a i l   a d d r e s s   w o u l d   y o u   l i k e   t o   u s e   f o r   t h i s   a c c o u n t ?g ��j��
�� 
dtxtj m    kk �ll 4 E x a m p l e :   s t e v e @ e x a m p l e . c o m��  e o      ���� 0 	theresult 	theResultc mnm r    opo n    qrq 1    ��
�� 
ttxtr o    ���� 0 	theresult 	theResultp o      ���� "0 theemailaddress theEmailAddressn s��s Z    !tu����t H    vv C    wxw o    ���� "0 theemailaddress theEmailAddressx m    yy �zz  E x a m p l e :u  S    ��  ��  ��  _ {��{ L   ' )|| o   ' (���� "0 theemailaddress theEmailAddress��  Z }~} l     ��������  ��  ��  ~ � l     ����  � = 7 Ask the user for the full name for their email account   � ��� n   A s k   t h e   u s e r   f o r   t h e   f u l l   n a m e   f o r   t h e i r   e m a i l   a c c o u n t� ��� i    ��� I      �~�}�|�~ 0 getfullname getFullName�}  �|  � k     )�� ��� T     &�� k    !�� ��� r    ��� I   �{��
�{ .sysodlogaskr        TEXT� m    �� ��� N W h a t   i s   t h e   f u l l   n a m e   f o r   t h i s   a c c o u n t ?� �z��y
�z 
dtxt� m    �� ��� ( E x a m p l e :   S t e v e   S m i t h�y  � o      �x�x 0 	theresult 	theResult� ��� r    ��� n    ��� 1    �w
�w 
ttxt� o    �v�v 0 	theresult 	theResult� o      �u�u 0 thefullname theFullName� ��t� Z    !���s�r� l   ��q�p� H    �� C    ��� o    �o�o 0 thefullname theFullName� m    �� ���  E x a m p l e :�q  �p  �  S    �s  �r  �t  � ��n� L   ' )�� o   ' (�m�m 0 thefullname theFullName�n  � ��� l     �l�k�j�l  �k  �j  � ��� l     �i���i  � G A Convenience handler for asking the user what settings they would   � ��� �   C o n v e n i e n c e   h a n d l e r   f o r   a s k i n g   t h e   u s e r   w h a t   s e t t i n g s   t h e y   w o u l d� ��� l     �h���h  � M G like to have for their special mailboxes. This handler also sets these   � ��� �   l i k e   t o   h a v e   f o r   t h e i r   s p e c i a l   m a i l b o x e s .   T h i s   h a n d l e r   a l s o   s e t s   t h e s e� ��� l     �g���g  �   values in Mail.   � ���     v a l u e s   i n   M a i l .� ��� i    ��� I      �f��e�f 60 getandsetspecialmailboxes getAndSetSpecialMailboxes� ��d� o      �c�c 0 
theaccount 
theAccount�d  �e  � k     ��� ��� l     �b���b  � / ) Sent messages default to storing locally   � ��� R   S e n t   m e s s a g e s   d e f a u l t   t o   s t o r i n g   l o c a l l y� ��� r     ��� I    �a��
�a .sysodlogaskr        TEXT� m     �� ��� r W o u l d   y o u   l i k e   t o   s t o r e   S e n t   M e s s a g e s   o n   t h e   I M A P   s e r v e r ?� �`��
�` 
btns� J    �� ��� m    �� ���  Y e s� ��_� m    �� ���  N o�_  � �^��]
�^ 
dflt� m    �\�\ �]  � o      �[�[ 0 	theresult 	theResult� ��� I   �Z��Y
�Z .ascrcmnt****      � ****� o    �X�X 0 
theaccount 
theAccount�Y  � ��� O    @��� O    ?��� Z    >����W� =   "��� n     ��� 1     �V
�V 
bhit� o    �U�U 0 	theresult 	theResult� m     !�� ���  Y e s� r   % *��� m   % &�T
�T boovtrue� 1   & )�S
�S 
ssos� ��� =  - 2��� n   - 0��� 1   . 0�R
�R 
bhit� o   - .�Q�Q 0 	theresult 	theResult� m   0 1�� ���  N o� ��P� r   5 :��� m   5 6�O
�O boovfals� 1   6 9�N
�N 
ssos�P  �W  � o    �M�M 0 
theaccount 
theAccount� m    ���                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  � ��� l  A A�L�K�J�L  �K  �J  � ��� l  A A�I���I  � ( " Drafts default to storing locally   � ��� D   D r a f t s   d e f a u l t   t o   s t o r i n g   l o c a l l y�    r   A O I  A M�H
�H .sysodlogaskr        TEXT m   A B � d W o u l d   y o u   l i k e   t o   s t o r e   D r a f t s   o n   t h e   I M A P   s e r v e r ? �G	
�G 
btns J   C G

  m   C D �  Y e s �F m   D E �  N o�F  	 �E�D
�E 
dflt m   H I�C�C �D   o      �B�B 0 	theresult 	theResult  O   P � O   T � Z   X ��A =  X _ n   X [ 1   Y [�@
�@ 
bhit o   X Y�?�? 0 	theresult 	theResult m   [ ^   �!!  Y e s r   b i"#" m   b c�>
�> boovtrue# 1   c h�=
�= 
sdos $%$ =  l s&'& n   l o()( 1   m o�<
�< 
bhit) o   l m�;�; 0 	theresult 	theResult' m   o r** �++  N o% ,�:, r   v }-.- m   v w�9
�9 boovfals. 1   w |�8
�8 
sdos�:  �A   o   T U�7�7 0 
theaccount 
theAccount m   P Q//�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��   010 l  � ��6�5�4�6  �5  �4  1 232 l  � ��345�3  4 3 - Trash defaults to storing on the IMAP server   5 �66 Z   T r a s h   d e f a u l t s   t o   s t o r i n g   o n   t h e   I M A P   s e r v e r3 787 r   � �9:9 I  � ��2;<
�2 .sysodlogaskr        TEXT; m   � �== �>> x W o u l d   y o u   l i k e   t o   s t o r e   D e l e t e d   M e s s a g e s   o n   t h e   I M A P   s e r v e r ?< �1?@
�1 
btns? J   � �AA BCB m   � �DD �EE  Y e sC F�0F m   � �GG �HH  N o�0  @ �/I�.
�/ 
dfltI m   � ��-�- �.  : o      �,�, 0 	theresult 	theResult8 J�+J O   � �KLK O   � �MNM Z   � �OPQ�*O =  � �RSR n   � �TUT 1   � ��)
�) 
bhitU o   � ��(�( 0 	theresult 	theResultS m   � �VV �WW  Y e sP r   � �XYX m   � ��'
�' boovtrueY 1   � ��&
�& 
stosQ Z[Z =  � �\]\ n   � �^_^ 1   � ��%
�% 
bhit_ o   � ��$�$ 0 	theresult 	theResult] m   � �`` �aa  N o[ b�#b r   � �cdc m   � ��"
�" boovfalsd 1   � ��!
�! 
stos�#  �*  N o   � �� �  0 
theaccount 
theAccountL m   � �ee�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  �+  � fgf l     ����  �  �  g hih l     �jk�  j 8 2 Convenience handler for asking the user what IMAP   k �ll d   C o n v e n i e n c e   h a n d l e r   f o r   a s k i n g   t h e   u s e r   w h a t   I M A Pi mnm l     �op�  o = 7 caching setting they would like to use and configuring   p �qq n   c a c h i n g   s e t t i n g   t h e y   w o u l d   l i k e   t o   u s e   a n d   c o n f i g u r i n gn rsr l     �tu�  t   it in Mail.   u �vv    i t   i n   M a i l .s wxw i     #yzy I      �{�� 40 getandsetcachingsettings getAndSetCachingSettings{ |�| o      �� 0 
theaccount 
theAccount�  �  z k     �}} ~~ r     ��� I    ���
� .gtqpchltns    @   @ ns  � l 
   ���� J     �� ��� m     �� ���   C a c h e   e v e r y t h i n g� ��� m    �� ��� @ C a c h e   e v e r y t h i n g   b u t   a t t a c h m e n t s� ��� m    �� ���  C a c h e   w h e n   r e a d� ��� m    �� ���  D o n ' t   c a c h e�  �  �  � ���
� 
prmp� m    �� ��� d C h o o s e   a   m e s s a g e   c a c h i n g   s e t t i n g   f o r   t h i s   a c c o u n t :� ���
� 
inSL� J   	 �� ��� m   	 
�� ���   C a c h e   e v e r y t h i n g�  � ���
� 
mlsl� m    �
� boovfals�  � o      �� 0 	theresult 	theResult ��
� Z    ����	�� >   ��� o    �� 0 	theresult 	theResult� m    �
� boovfals� O    ~��� O    }��� Z   # |����� l  # )���� =  # )��� n   # '��� 4   $ '��
� 
cobj� m   % &�� � o   # $� �  0 	theresult 	theResult� m   ' (�� ���   C a c h e   e v e r y t h i n g�  �  � r   , 3��� m   , -��
�� e9xpx9al� 1   - 2��
�� 
msgc� ��� l  6 >������ =  6 >��� n   6 :��� 4   7 :���
�� 
cobj� m   8 9���� � o   6 7���� 0 	theresult 	theResult� m   : =�� ��� @ C a c h e   e v e r y t h i n g   b u t   a t t a c h m e n t s��  ��  � ��� r   A J��� m   A D��
�� e9xpx9bo� 1   D I��
�� 
msgc� ��� l  M U������ =  M U��� n   M Q��� 4   N Q���
�� 
cobj� m   O P���� � o   M N���� 0 	theresult 	theResult� m   Q T�� ���  C a c h e   w h e n   r e a d��  ��  � ��� r   X a��� m   X [��
�� e9xpx9wr� 1   [ `��
�� 
msgc� ��� l  d l������ =  d l��� n   d h��� 4   e h���
�� 
cobj� m   f g���� � o   d e���� 0 	theresult 	theResult� m   h k�� ���  D o n ' t   c a c h e��  ��  � ���� r   o x��� m   o r��
�� e9xpx9no� 1   r w��
�� 
msgc��  �  � o     ���� 0 
theaccount 
theAccount� m    ���                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  �	  �  �
  x ��� l     ��������  ��  ��  � ��� l     ������  � G A Convenience handler for asking the user whether they want to use   � ��� �   C o n v e n i e n c e   h a n d l e r   f o r   a s k i n g   t h e   u s e r   w h e t h e r   t h e y   w a n t   t o   u s e� ��� l     ������  � F @ an already defined SMTP server (if any) or whether they want to   � ��� �   a n   a l r e a d y   d e f i n e d   S M T P   s e r v e r   ( i f   a n y )   o r   w h e t h e r   t h e y   w a n t   t o� ��� l     ������  �   define a new one.   � ��� $   d e f i n e   a   n e w   o n e .� ��� i   $ '��� I      ������� *0 getandsetsmtpserver getAndSetSMTPServer� ���� o      ���� 0 
theaccount 
theAccount��  ��  � k     ��� ��� O    
��� r    	��� 2    ��
�� 
dact� o      ���� "0 everysmtpserver everySMTPServer� m     ���                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  � ���� Z    � ��  l   ���� ?     l   ���� I   ����
�� .corecnte****       **** o    ���� "0 everysmtpserver everySMTPServer��  ��  ��   m    ����  ��  ��   k    � 	
	 r     J    ����   o      ���� &0 listofsmtpservers listOfSMTPServers
  X    B�� Q   * =�� r   - 4 b   - 2 o   - .���� &0 listofsmtpservers listOfSMTPServers n   . 1 1   / 1��
�� 
pnam o   . /���� 0 
eachserver 
eachServer o      ���� &0 listofsmtpservers listOfSMTPServers R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 
eachserver 
eachServer o    ���� "0 everysmtpserver everySMTPServer  r   C Q I  C O��
�� .sysodlogaskr        TEXT l 	 C D���� m   C D   �!! � W o u l d   y o u   l i k e   t o   c r e a t e   a   n e w   S M T P   s e r v e r   o r   u s e   o n e   o f   t h e   S M T P   s e r v e r s   y o u   h a v e   a l r e a d y   d e f i n e d ?��  ��   ��"#
�� 
btns" J   E I$$ %&% m   E F'' �(( & U s e   e x i s t i n g   s e r v e r& )��) m   F G** �++ " C r e a t e   n e w   s e r v e r��  # ��,��
�� 
dflt, m   J K���� ��   o      ���� 0 	theresult 	theResult -��- Z   R �./��0. =  R Y121 n   R U343 1   S U��
�� 
bhit4 o   R S���� 0 	theresult 	theResult2 m   U X55 �66 & U s e   e x i s t i n g   s e r v e r/ k   \ �77 898 r   \ m:;: I  \ k��<=
�� .gtqpchltns    @   @ ns  < o   \ ]���� &0 listofsmtpservers listOfSMTPServers= ��>?
�� 
prmp> l 	 ` c@����@ m   ` cAA �BB � S e l e c t   o n e   o f   t h e   S M T P   s e r v e r s   y o u   a l r e a d y   h a v e   d e f i n e d   o r   c l i c k   t h e   ' C r e a t e   N e w '   b u t t o n .��  ��  ? ��C��
�� 
mlslC m   f g��
�� boovfals��  ; o      ���� 0 	theresult 	theResult9 D��D Z   n �EF����E >  n qGHG o   n o���� 0 	theresult 	theResultH m   o p��
�� boovfalsF k   t �II JKJ r   t ~LML c   t |NON l  t xP����P n   t xQRQ 4   u x��S
�� 
cobjS m   v w���� R o   t u���� 0 	theresult 	theResult��  ��  O m   x {��
�� 
TEXTM o      ���� 0 	theresult 	theResultK T��T X    �U��VU Q   � �WX��W Z   � �YZ����Y l  � �[����[ =  � �\]\ n   � �^_^ 1   � ���
�� 
pnam_ o   � ����� 0 
eachserver 
eachServer] o   � ����� 0 	theresult 	theResult��  ��  Z O  � �`a` r   � �bcb o   � ����� 0 
eachserver 
eachServerc n      ded m   � ���
�� 
dacte o   � ����� 0 
theaccount 
theAccounta m   � �ff�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��  ��  X R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 
eachserver 
eachServerV o   � ����� "0 everysmtpserver everySMTPServer��  ��  ��  ��  ��  0 I   � ���g���� *0 createnewsmtpserver createNewSMTPServerg h��h o   � ����� 0 
theaccount 
theAccount��  ��  ��  ��   I   � ���i���� *0 createnewsmtpserver createNewSMTPServeri j��j o   � ����� 0 
theaccount 
theAccount��  ��  ��  � klk l     ��������  ��  ��  l mnm l     ��op��  o J D Handler for creating a new SMTP server, if the user has none set up   p �qq �   H a n d l e r   f o r   c r e a t i n g   a   n e w   S M T P   s e r v e r ,   i f   t h e   u s e r   h a s   n o n e   s e t   u pn rsr l     ��tu��  t J D already or if they choose not to use one of their existing servers.   u �vv �   a l r e a d y   o r   i f   t h e y   c h o o s e   n o t   t o   u s e   o n e   o f   t h e i r   e x i s t i n g   s e r v e r s .s wxw i   ( +yzy I      ��{���� *0 createnewsmtpserver createNewSMTPServer{ |��| o      ���� 0 
theaccount 
theAccount��  ��  z k     J}} ~~ T     &�� k    !�� ��� r    ��� I   ����
�� .sysodlogaskr        TEXT� m    �� ��� R W h a t   i s   t h e   h o s t n a m e   o f   y o u r   S M T P   s e r v e r ?� ���~
� 
dtxt� m    �� ��� 2 E x a m p l e :   s m t p . e x a m p l e . c o m�~  � o      �}�} 0 	theresult 	theResult� ��� r    ��� n    ��� 1    �|
�| 
ttxt� o    �{�{ 0 	theresult 	theResult� o      �z�z 0 theservername theServerName� ��y� Z    !���x�w� H    �� C    ��� o    �v�v 0 theservername theServerName� m    �� ���  E x a m p l e :�  S    �x  �w  �y   ��� O   ' @��� k   + ?�� ��� r   + 9��� I  + 7�u�t�
�u .corecrel****      � null�t  � �s��
�s 
kocl� m   - .�r
�r 
dact� �q��p
�q 
prdt� K   / 3�� �o��n
�o 
host� o   0 1�m�m 0 theservername theServerName�n  �p  � o      �l�l 0 thesmtpserver theSMTPServer� ��k� r   : ?��� o   : ;�j�j 0 thesmtpserver theSMTPServer� n      ��� m   < >�i
�i 
dact� o   ; <�h�h 0 
theaccount 
theAccount�k  � m   ' (���                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  � ��� I   A H�g��f�g >0 getandsetauthenticationscheme getAndSetAuthenticationScheme� ��� m   B C�� ���  S M T P� ��e� o   C D�d�d 0 thesmtpserver theSMTPServer�e  �f  � ��c� l  I I�b�a�`�b  �a  �`  �c  x ��� l     �_�^�]�_  �^  �]  � ��� l     �\���\  � T N Handler for asking the user what authentication scheme their server supports.   � ��� �   H a n d l e r   f o r   a s k i n g   t h e   u s e r   w h a t   a u t h e n t i c a t i o n   s c h e m e   t h e i r   s e r v e r   s u p p o r t s .� ��� l     �[���[  � X R The options are different for POP, IMAP, and SMTP. Unless you are told otherwise,   � ��� �   T h e   o p t i o n s   a r e   d i f f e r e n t   f o r   P O P ,   I M A P ,   a n d   S M T P .   U n l e s s   y o u   a r e   t o l d   o t h e r w i s e ,� ��� l     �Z���Z  � : 4 it's best to leave these at their default settings.   � ��� h   i t ' s   b e s t   t o   l e a v e   t h e s e   a t   t h e i r   d e f a u l t   s e t t i n g s .� ��� i   , /��� I      �Y��X�Y >0 getandsetauthenticationscheme getAndSetAuthenticationScheme� ��� o      �W�W 0 accounttype accountType� ��V� o      �U�U 0 
theaccount 
theAccount�V  �X  � k    ~�� ��� Z     T����T� =    ��� o     �S�S 0 accounttype accountType� m    �� ���  P O P� k    �� ��� r    ��� J    �� ��� m    �� ���  P a s s w o r d� ��� m    �� ���  K e r b e r o s   4� ��� m    	�� ���  K e r b e r o s   5� ��� m   	 
�� ���  K P O P� ��R� m   
 �� ���  M D 5�R  � o      �Q�Q 0 
thechoices 
theChoices� ��P� r    ��� J    �� ��O� m    �� ���  P a s s w o r d�O  � o      �N�N 0 
thedefault 
theDefault�P  � ��� =   ��� o    �M�M 0 accounttype accountType� m       �  I M A P�  k    ,  r    & J    $		 

 m     �  P a s s w o r d  m      �  K e r b e r o s   4  m     ! �  K e r b e r o s   5 �L m   ! " �  M D 5�L   o      �K�K 0 
thechoices 
theChoices �J r   ' , J   ' * �I m   ' ( �  P a s s w o r d�I   o      �H�H 0 
thedefault 
theDefault�J    !  =  / 2"#" o   / 0�G�G 0 accounttype accountType# m   0 1$$ �%%  S M T P! &�F& k   5 P'' ()( r   5 H*+* J   5 F,, -.- m   5 8// �00  N o n e. 121 m   8 ;33 �44  P a s s w o r d2 565 m   ; >77 �88  K e r b e r o s   46 9:9 m   > A;; �<<  K e r b e r o s   5: =�E= m   A D>> �??  M D 5�E  + o      �D�D 0 
thechoices 
theChoices) @�C@ r   I PABA J   I NCC D�BD m   I LEE �FF  N o n e�B  B o      �A�A 0 
thedefault 
theDefault�C  �F  �T  � GHG r   U rIJI I  U p�@KL
�@ .gtqpchltns    @   @ ns  K l 
 U VM�?�>M o   U V�=�= 0 
thechoices 
theChoices�?  �>  L �<NO
�< 
prmpN b   Y bPQP b   Y ^RSR l 	 Y \T�;�:T m   Y \UU �VV R C h o o s e   a n   a u t h e n t i c a t i o n   s c h e m e   f o r   t h i s  �;  �:  S o   \ ]�9�9 0 accounttype accountTypeQ m   ^ aWW �XX p   s e r v e r .   M o s t   s e r v e r s   s u p p o r t   ' P a s s w o r d '   a u t h e n t i c a t i o n .O �8YZ
�8 
inSLY o   e f�7�7 0 
thedefault 
theDefaultZ �6[�5
�6 
mlsl[ m   i j�4
�4 boovfals�5  J o      �3�3 0 	theresult 	theResultH \�2\ Z   s~]^�1�0] >  s v_`_ o   s t�/�/ 0 	theresult 	theResult` m   t u�.
�. boovfals^ k   yzaa bcb O   y	ded k   ff ghg r    �iji n    �klk 4   � ��-m
�- 
cobjm m   � ��,�, l o    ��+�+ 0 	theresult 	theResultj o      �*�* 0 	thescheme 	theSchemeh n�)n O   �opo Z   �qrs�(q =  � �tut o   � ��'�' 0 	thescheme 	theSchemeu m   � �vv �ww  P a s s w o r dr r   � �xyx 1   � ��&
�& 
macpy 1   � ��%
�% 
pauss z{z =  � �|}| o   � ��$�$ 0 	thescheme 	theScheme} m   � �~~ �  K e r b e r o s   4{ ��� r   � ���� m   � ��#
�# exutaxk4� 1   � ��"
�" 
paus� ��� =  � ���� o   � ��!�! 0 	thescheme 	theScheme� m   � ��� ���  K e r b e r o s   5� ��� r   � ���� m   � �� 
�  exutaxk5� 1   � ��
� 
paus� ��� =  � ���� o   � ��� 0 	thescheme 	theScheme� m   � ��� ���  M D 5� ��� r   � ���� m   � ��
� exutaxmd� 1   � ��
� 
paus� ��� =  � ���� o   � ��� 0 	thescheme 	theScheme� m   � ��� ���  N o n e� ��� r   � ���� m   � ��
� exutccno� 1   � ��
� 
paus� ��� =  � ���� o   � ��� 0 	thescheme 	theScheme� m   � ��� ���  K P O P� ��� r   ���� m   � ��
� exutakpo� 1   ��
� 
paus�  �(  p o   � ��� 0 
theaccount 
theAccount�)  e m   y |���                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  c ��� Z  
z����� = 
��� o  
�� 0 accounttype accountType� m  �� ���  S M T P� k  v�� ��� T  B�� k  =�� ��� I $���
� .sysodlogaskr        TEXT� m  �� ��� V W h a t   i s   t h e   u s e r   n a m e   f o r   t h i s   S M T P   s e r v e r ?� ���
� 
dtxt� m   �� ���   E x a m p l e :   j a n e d o e�  � ��� r  %.��� n  %,��� 1  (,�
� 
ttxt� l %(���
� 1  %(�	
�	 
rslt�  �
  � o      �� 0 thesmtplogin theSMTPLogin� ��� Z  /=����� H  /5�� C  /4��� o  /0�� 0 thesmtplogin theSMTPLogin� m  03�� ���  E x a m p l e :�  S  89�  �  �  � ��� I CP���
� .sysodlogaskr        TEXT� m  CF�� ��� T W h a t   i s   t h e   p a s s w o r d   f o r   t h i s   S M T P   s e r v e r ?� ���
� 
dtxt� m  IL�� ���  �  � ��� r  QZ��� n  QX��� 1  TX� 
�  
ttxt� l QT������ 1  QT��
�� 
rslt��  ��  � o      ���� "0 thesmtppassword theSMTPPassword� ���� O  [v��� O  au��� k  et�� ��� r  el��� o  ef���� 0 thesmtplogin theSMTPLogin� 1  fk��
�� 
unme� ���� r  mt��� o  mn���� "0 thesmtppassword theSMTPPassword� 1  ns��
�� 
macp��  � o  ab���� 0 
theaccount 
theAccount� m  [^���                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��  �  �  �  �1  �0  �2  � ��� l     ��������  ��  ��  � ��� l     ������  � ; 5 Handler for asking the user what POP deletion policy   � ��� j   H a n d l e r   f o r   a s k i n g   t h e   u s e r   w h a t   P O P   d e l e t i o n   p o l i c y� ��� l     ������  � 0 * they would like to use for their account.   � ��� T   t h e y   w o u l d   l i k e   t o   u s e   f o r   t h e i r   a c c o u n t .� ��� i   0 3��� I      �������� &0 getdeletionpolicy getDeletionPolicy��  ��  � k     �� � � r      I    ��
�� .gtqpchltns    @   @ ns   l 
   ���� J       m     		 �

 D I m m e d i a t e l y   a f t e r   b e i n g   d o w n l o a d e d  m     � @ A f t e r   a   s p e c i f i e d   n u m b e r   o f   d a y s  l 	  ���� m     � B W h e n   I   r e m o v e   t h e m   f r o m   t h e   i n b o x��  ��   �� m     � > A l w a y s   l e a v e   t h e m   o n   t h e   s e r v e r��  ��  ��   ��
�� 
prmp l 	  ���� m     � J C h o o s e   a   P O P   m e s s a g e   d e l e t i o n   o p t i o n :��  ��   ��
�� 
inSL J   	  �� m   	 
   �!! > A l w a y s   l e a v e   t h e m   o n   t h e   s e r v e r��   ��"��
�� 
mlsl" m    ��
�� boovfals��   o      ���� 0 	theresult 	theResult  #��# L    $$ o    ���� 0 	theresult 	theResult��  � %&% l     ��������  ��  ��  & '(' l     ��)*��  ) Q K Handler for setting the deletion policy established in getDeletionPolicy()   * �++ �   H a n d l e r   f o r   s e t t i n g   t h e   d e l e t i o n   p o l i c y   e s t a b l i s h e d   i n   g e t D e l e t i o n P o l i c y ( )( ,-, i   4 7./. I      ��0���� &0 setdeletionpolicy setDeletionPolicy0 121 o      ���� 0 
theaccount 
theAccount2 3��3 o      ���� 0 	thepolicy 	thePolicy��  ��  / O     ]454 O    \676 Z    [89:��8 =   ;<; o    	���� 0 	thepolicy 	thePolicy< m   	 
== �>> D I m m e d i a t e l y   a f t e r   b e i n g   d o w n l o a d e d9 k    ?? @A@ r    BCB m    ��
�� boovtrueC 1    ��
�� 
dmosA D��D r    EFE m    ����  F 1    ��
�� 
dmdi��  : GHG =   IJI o    ���� 0 	thepolicy 	thePolicyJ m    KK �LL @ A f t e r   a   s p e c i f i e d   n u m b e r   o f   d a y sH MNM k   " 5OO PQP r   " )RSR n  " 'TUT I   # '�������� *0 getdeletioninterval getDeletionInterval��  ��  U  f   " #S o      ���� 0 numberofdays numberOfDaysQ VWV r   * /XYX m   * +��
�� boovtrueY 1   + .��
�� 
dmosW Z��Z r   0 5[\[ o   0 1���� 0 numberofdays numberOfDays\ 1   1 4��
�� 
dmdi��  N ]^] =  8 ;_`_ o   8 9���� 0 	thepolicy 	thePolicy` m   9 :aa �bb B W h e n   I   r e m o v e   t h e m   f r o m   t h e   i n b o x^ cdc k   > Iee fgf r   > Chih m   > ?��
�� boovtruei 1   ? B��
�� 
dmosg j��j r   D Iklk m   D E��
�� boovtruel 1   E H��
�� 
dmwm��  d mnm =  L Oopo o   L M���� 0 	thepolicy 	thePolicyp m   M Nqq �rr > A l w a y s   l e a v e   t h e m   o n   t h e   s e r v e rn s��s r   R Wtut m   R S��
�� boovfalsu 1   S V��
�� 
dmos��  ��  7 o    ���� 0 
theaccount 
theAccount5 m     vv�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  - wxw l     ��������  ��  ��  x yzy l     ��{|��  { > 8 Handler for asking the user what deletion interval they   | �}} p   H a n d l e r   f o r   a s k i n g   t h e   u s e r   w h a t   d e l e t i o n   i n t e r v a l   t h e yz ~~ l     ������  � > 8 would like to use, if they are setting up a POP account   � ��� p   w o u l d   l i k e   t o   u s e ,   i f   t h e y   a r e   s e t t i n g   u p   a   P O P   a c c o u n t ���� i   8 ;��� I      �������� *0 getdeletioninterval getDeletionInterval��  ��  � k     �� ��� r     	��� I    ����
�� .sysodlogaskr        TEXT� m     �� ��� � A f t e r   h o w   m a n y   d a y s   w o u l d   y o u   l i k e   P O P   m e s s a g e s   t o   b e   d e l e t e d   f r o m   t h e   s e r v e r ?� �����
�� 
dtxt� m    �� ���  3 0��  � o      ���� 0 	theresult 	theResult� ��� r   
 ��� c   
 ��� n   
 ��� 1    ��
�� 
ttxt� o   
 ���� 0 	theresult 	theResult� m    ��
�� 
long� o      ���� 0 numberofdays numberOfDays� ���� L    �� o    ���� 0 numberofdays numberOfDays��  ��       ���������������������  � ���������������������������������� 0 createaccount createAccount��  0 getaccounttype getAccountType��  0 getaccountname getAccountName�� 0 getusername getUsername�� 0 getpassword getPassword�� "0 getemailaddress getEmailAddress�� 0 getfullname getFullName�� 60 getandsetspecialmailboxes getAndSetSpecialMailboxes�� 40 getandsetcachingsettings getAndSetCachingSettings�� *0 getandsetsmtpserver getAndSetSMTPServer�� *0 createnewsmtpserver createNewSMTPServer�� >0 getandsetauthenticationscheme getAndSetAuthenticationScheme�� &0 getdeletionpolicy getDeletionPolicy�� &0 setdeletionpolicy setDeletionPolicy�� *0 getdeletioninterval getDeletionInterval
�� .aevtoappnull  �   � ****� ��I���������� 0 createaccount createAccount�� ����� �  ����������������  0 theaccounttype theAccountType��  0 theaccountname theAccountName�� 0 theusername theUsername�� 0 thehostname theHostname�� 0 thepassword thePassword�� &0 theemailaddresses theEmailAddresses�� 0 thefullname theFullName��  � �����������������  0 theaccounttype theAccountType��  0 theaccountname theAccountName�� 0 theusername theUsername�� 0 thehostname theHostname�� 0 thepassword thePassword�� &0 theemailaddresses theEmailAddresses�� 0 thefullname theFullName� 0 thenewaccount theNewAccount� �e�~�}�|�{�z�y�x�w�v�u�t�s�r��q�p�o
�~ 
kocl
�} 
itac
�| 
prdt
�{ 
pnam
�z 
unme
�y 
host
�x 
macp
�w 
flln
�v 
emad�u �t 
�s .corecrel****      � null
�r 
iact
�q 
pact�p  �o  �� �� ~ s��  *���������kv�� E�Y M��  *���������kv�� E�Y *�a   !*�a �������kv�� E�Y hW 
X  fE�UO�� �n��m�l���k�n  0 getaccounttype getAccountType�m  �l  � �j�j 0 	theresult 	theResult� ����i��h�g�f
�i 
prmp
�h 
mlsl�g 
�f .gtqpchltns    @   @ ns  �k ���mv���f� E�O�� �e��d�c���b�e  0 getaccountname getAccountName�d  �c  � �a�`�a 0 	theresult 	theResult�`  0 theaccountname theAccountName� ��_��^�]
�_ 
dtxt
�^ .sysodlogaskr        TEXT
�] 
ttxt�b * %hZ���l E�O��,E�O�� Y h[OY��O�� �\�[�Z���Y�\ 0 getusername getUsername�[  �Z  � �X�W�X 0 	theresult 	theResult�W 0 theusername theUsername� �V �U�T/
�V 
dtxt
�U .sysodlogaskr        TEXT
�T 
ttxt�Y * %hZ���l E�O��,E�O�� Y h[OY��O�� �S=�R�Q���P�S 0 getpassword getPassword�R  �Q  � �O�N�O 0 	theresult 	theResult�N 0 thepassword thePassword� E�MH�L�K
�M 
dtxt
�L .sysodlogaskr        TEXT
�K 
ttxt�P ���l E�O��,E�O�� �J\�I�H���G�J "0 getemailaddress getEmailAddress�I  �H  � �F�E�F 0 	theresult 	theResult�E "0 theemailaddress theEmailAddress� h�Dk�C�By
�D 
dtxt
�C .sysodlogaskr        TEXT
�B 
ttxt�G * %hZ���l E�O��,E�O�� Y h[OY��O�� �A��@�?���>�A 0 getfullname getFullName�@  �?  � �=�<�= 0 	theresult 	theResult�< 0 thefullname theFullName� ��;��:�9�
�; 
dtxt
�: .sysodlogaskr        TEXT
�9 
ttxt�> * %hZ���l E�O��,E�O�� Y h[OY��O�� �8��7�6���5�8 60 getandsetspecialmailboxes getAndSetSpecialMailboxes�7 �4��4 �  �3�3 0 
theaccount 
theAccount�6  � �2�1�2 0 
theaccount 
theAccount�1 0 	theresult 	theResult� ��0���/�.�-�,��+��*� �)*=DGV�(`
�0 
btns
�/ 
dflt�. 
�- .sysodlogaskr        TEXT
�, .ascrcmnt****      � ****
�+ 
bhit
�* 
ssos
�) 
sdos
�( 
stos�5 �����lv�l� E�O�j O� (� #��,�  
e*�,FY ��,�  
f*�,FY hUUO����lv�l� E�O� 0� +��,a   e*a ,FY ��,a   f*a ,FY hUUOa �a a lv�k� E�O� 0� +��,a   e*a ,FY ��,a   f*a ,FY hUU� �'z�&�%���$�' 40 getandsetcachingsettings getAndSetCachingSettings�& �#��# �  �"�" 0 
theaccount 
theAccount�%  � �!� �! 0 
theaccount 
theAccount�  0 	theresult 	theResult� ������������������������ 
� 
prmp
� 
inSL
� 
mlsl� 
� .gtqpchltns    @   @ ns  
� 
cobj
� e9xpx9al
� 
msgc
� e9xpx9bo
� e9xpx9wr
� e9xpx9no�$ ������v����kv�f� E�O�f h� `� [��k/�  �*a ,FY H��k/a   a *a ,FY 1��k/a   a *a ,FY ��k/a   a *a ,FY hUUY h� �������� *0 getandsetsmtpserver getAndSetSMTPServer� ��� �  �� 0 
theaccount 
theAccount�  � ����
�	� 0 
theaccount 
theAccount� "0 everysmtpserver everySMTPServer� &0 listofsmtpservers listOfSMTPServers�
 0 
eachserver 
eachServer�	 0 	theresult 	theResult� �������� �'*� ������5��A��������
� 
dact
� .corecnte****       ****
� 
kocl
� 
cobj
� 
pnam�  �  
� 
btns
�  
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit
�� 
prmp
�� 
mlsl
�� .gtqpchltns    @   @ ns  
�� 
TEXT�� *0 createnewsmtpserver createNewSMTPServer� �� *�-E�UO�j j �jvE�O '�[��l kh  ���,%E�W X  h[OY��O����lv�k� E�O��,a   c�a a a f� E�O�f G��k/a &E�O 6�[��l kh  ��,�  � ���,FUY hW X  h[OY��Y hY *�k+ Y *�k+ � ��z���������� *0 createnewsmtpserver createNewSMTPServer�� ����� �  ���� 0 
theaccount 
theAccount��  � ���������� 0 
theaccount 
theAccount�� 0 	theresult 	theResult�� 0 theservername theServerName�� 0 thesmtpserver theSMTPServer� �������������������������
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt
�� 
kocl
�� 
dact
�� 
prdt
�� 
host�� 
�� .corecrel****      � null�� >0 getandsetauthenticationscheme getAndSetAuthenticationScheme�� K %hZ���l E�O��,E�O�� Y h[OY��O� *����l� E�O���,FUO*��l+ OP� ������������� >0 getandsetauthenticationscheme getAndSetAuthenticationScheme�� ����� �  ������ 0 accounttype accountType�� 0 
theaccount 
theAccount��  � ������������������ 0 accounttype accountType�� 0 
theaccount 
theAccount�� 0 
thechoices 
theChoices�� 0 
thedefault 
theDefault�� 0 	theresult 	theResult�� 0 	thescheme 	theScheme�� 0 thesmtplogin theSMTPLogin�� "0 thesmtppassword theSMTPPassword� 7��������� ��$/37;>E��UW�����������v����~�������������������������������� �� 
�� 
prmp
�� 
inSL
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  
�� 
cobj
�� 
macp
�� 
paus
�� exutaxk4
�� exutaxk5
�� exutaxmd
�� exutccno
�� exutakpo
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt
�� 
unme����  ������vE�O�kvE�Y >��  �����vE�O�kvE�Y '��   a a a a a �vE�Oa kvE�Y hO�a a �%a %a �a fa  E�O�fa  ��a k/E�O� }�a   *a  ,*a !,FY g�a "  a #*a !,FY S�a $  a %*a !,FY ?�a &  a '*a !,FY +�a (  a )*a !,FY �a *  a +*a !,FY hUUO�a ,  i /hZa -a .a /l 0O_ 1a 2,E�O�a 3 Y h[OY��Oa 4a .a 5l 0O_ 1a 2,E�Oa  � �*a 6,FO�*a  ,FUUY hY h� ������������� &0 getdeletionpolicy getDeletionPolicy��  ��  � ���� 0 	theresult 	theResult� 	������ �������� 
�� 
prmp
�� 
inSL
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  �� �����v����kv�f� E�O�� ��/���������� &0 setdeletionpolicy setDeletionPolicy�� ����� �  ������ 0 
theaccount 
theAccount�� 0 	thepolicy 	thePolicy��  � �������� 0 
theaccount 
theAccount�� 0 	thepolicy 	thePolicy�� 0 numberofdays numberOfDays� 	v=����K��a��q
�� 
dmos
�� 
dmdi�� *0 getdeletioninterval getDeletionInterval
�� 
dmwm�� ^� Z� U��  e*�,FOj*�,FY A��  )j+ E�Oe*�,FO�*�,FY %��  e*�,FOe*�,FY ��  
f*�,FY hUU� ������������� *0 getdeletioninterval getDeletionInterval��  ��  � ������ 0 	theresult 	theResult�� 0 numberofdays numberOfDays� ����������
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt
�� 
long�� ���l E�O��,�&E�O�� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  ��  ����  ��  ��  �  � )������������������������������ N U�������� � ��� ��� ����� � �������~�} �|�{:=�� 0 success  ��  0 getaccounttype getAccountType�� 0 	theresult 	theResult
�� 
cobj�� &0 accounttypestring accountTypeString��  0 getaccountname getAccountName��  0 theaccountname theAccountName�� 0 getusername getUsername�� 0 theusername theUsername�� 0 getpassword getPassword�� 0 thepassword thePassword�� "0 getemailaddress getEmailAddress�� &0 theemailaddresses theEmailAddresses�� 0 getfullname getFullName�� 0 thefullname theFullName�� 0 thehostname theHostname�� �� 0 createaccount createAccount�� 0 thenewaccount theNewAccount
�� 
bool
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt�� &0 getdeletionpolicy getDeletionPolicy��  0 deletionpolicy deletionPolicy� &0 setdeletionpolicy setDeletionPolicy�~ >0 getandsetauthenticationscheme getAndSetAuthenticationScheme�} *0 getandsetsmtpserver getAndSetSMTPServer�| 60 getandsetspecialmailboxes getAndSetSpecialMailboxes�{ 40 getandsetcachingsettings getAndSetCachingSettings���kE�O*j+ E�O�f���k/E�O*j+ E�O*j+ E�O*j+ 	E�O*j+ E�O*j+ E�O��  3a E` O)���_ ���a + E` O_ f  jE�Y hOPY�a  
 �a  a & � 3hZa a a l E�O�a ,E` O_ a  Y h[OY��O�a   i)j+ E`  O_  f Q_  �k/E`  O)���_ ���a + E` O_ f #*_ _  l+ !O*�_ l+ "O*_ k+ #Y jE�Y hOPY U�a $  L)���_ ���a + E` O_ f )*_ k+ %O*_ k+ &O*�_ l+ "O*_ k+ #Y jE�Y hOPY hO�k  a 'j Y 	a (j Y h ascr  ��ޭ