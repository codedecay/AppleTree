FasdUAS 1.101.10   ��   ��    k             l      ��  ��   Create New LDAP ServerCopyright � 2002�2013 Apple Inc. All rights reserved.You may incorporate this Apple sample code into your program(s) withoutrestriction.  This Apple sample code has been provided "AS IS" and theresponsibility for its operation is yours.  You are not permitted toredistribute this Apple sample code as "Apple sample code" after havingmade changes.  If you're going to redistribute the code, we requirethat you make it clear that the code was descended from Apple samplecode, but that you've made changes.     � 	 	2  C r e a t e   N e w   L D A P   S e r v e r   C o p y r i g h t   �   2 0 0 2  2 0 1 3   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .   Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t  r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e  r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o  r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g  m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e  t h a t   y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e  c o d e ,   b u t   t h a t   y o u ' v e   m a d e   c h a n g e s .    
  
 l     ��������  ��  ��        l      ��  ��    � �This script walks through the creation of a new LDAP server entry todemonstrate the scriptability of Mail's Preference panels.     �    T h i s   s c r i p t   w a l k s   t h r o u g h   t h e   c r e a t i o n   o f   a   n e w   L D A P   s e r v e r   e n t r y   t o  d e m o n s t r a t e   t h e   s c r i p t a b i l i t y   o f   M a i l ' s   P r e f e r e n c e   p a n e l s .       l     ��������  ��  ��        l     ����  r         m     ����   o      ���� 0 success  ��  ��        l   * ����  T    *   k   	 %       r   	      I  	 �� ! "
�� .sysodlogaskr        TEXT ! m   	 
 # # � $ $ P E n t e r   a   n a m e   f o r   t h i s   L D A P   s e r v e r   e n t r y : " �� %��
�� 
dtxt % m     & & � ' ' B E x a m p l e :   M y   C o m p a n y ' s   L D A P   s e r v e r��     o      ���� 0 	theresult 	theResult   ( ) ( r     * + * n     , - , 1    ��
�� 
ttxt - o    ���� 0 	theresult 	theResult + o      ���� 0 thename theName )  .�� . Z    % / 0���� / l    1���� 1 H     2 2 C     3 4 3 o    ���� 0 thename theName 4 m     5 5 � 6 6  E x a m p l e :��  ��   0  S     !��  ��  ��  ��  ��     7 8 7 l     ��������  ��  ��   8  9 : 9 l  + Q ;���� ; T   + Q < < k   0 L = =  > ? > r   0 9 @ A @ I  0 7�� B C
�� .sysodlogaskr        TEXT B m   0 1 D D � E E L E n t e r   t h e   a d d r e s s   f o r   t h e   L D A P   s e r v e r : C �� F��
�� 
dtxt F m   2 3 G G � H H 2 E x a m p l e :   l d a p . e x a m p l e . c o m��   A o      ���� 0 	theresult 	theResult ?  I J I r   : ? K L K n   : = M N M 1   ; =��
�� 
ttxt N o   : ;���� 0 	theresult 	theResult L o      ���� 0 
theaddress 
theAddress J  O�� O Z   @ L P Q���� P l  @ D R���� R H   @ D S S C   @ C T U T o   @ A���� 0 
theaddress 
theAddress U m   A B V V � W W  E x a m p l e :��  ��   Q  S   G H��  ��  ��  ��  ��   :  X Y X l     ��������  ��  ��   Y  Z [ Z l  R z \���� \ T   R z ] ] k   W u ^ ^  _ ` _ r   W ` a b a I  W ^�� c d
�� .sysodlogaskr        TEXT c m   W X e e � f f T E n t e r   t h e   s e a r c h   b a s e   f o r   t h e   L D A P   s e r v e r : d �� g��
�� 
dtxt g m   Y Z h h � i i : E x a m p l e :   o u = p e o p l e ,   o = c o m p a n y��   b o      ���� 0 	theresult 	theResult `  j k j r   a f l m l n   a d n o n 1   b d��
�� 
ttxt o o   a b���� 0 	theresult 	theResult m o      ���� 0 thesearchbase theSearchBase k  p�� p Z   g u q r���� q l  g m s���� s H   g m t t C   g l u v u o   g h���� 0 thesearchbase theSearchBase v m   h k w w � x x  E x a m p l e :��  ��   r  S   p q��  ��  ��  ��  ��   [  y z y l     ��������  ��  ��   z  { | { l  { � }���� } r   { � ~  ~ I  { ��� � �
�� .sysodlogaskr        TEXT � m   { ~ � � � � � . E n t e r   t h e   p o r t   n u m b e r :   � �� ���
�� 
dtxt � m    � � � � � �  3 8 9��    o      ���� 0 	theresult 	theResult��  ��   |  � � � l  � � ����� � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
ttxt � o   � ����� 0 	theresult 	theResult � m   � ���
�� 
long � o      ���� 0 theport thePort��  ��   �  � � � l  � � ����� � r   � � � � � I  � ��� � �
�� .gtqpchltns    @   @ ns   � J   � � � �  � � � m   � � � � � � �  S u b t r e e �  � � � m   � � � � � � �  O n e   l e v e l �  ��� � m   � � � � � � �  B a s e��   � �� � �
�� 
inSL � J   � � � �  ��� � m   � � � � � � �  S u b t r e e��   � �� � �
�� 
prmp � l 	 � � ����� � m   � � � � � � � � S e l e c t   a n   L D A P   s e r v e r   s c o p e .   T h e   d e f a u l t   s e l e c t i o n   s h o u l d   w o r k   i n   m o s t   s i t u a t i o n s .��  ��   � �� ���
�� 
mlsl � m   � ���
�� boovfals��   � o      ���� 0 	theresult 	theResult��  ��   �  � � � l  �O ����� � Z   �O � ����� � >  � � � � � o   � ����� 0 	theresult 	theResult � m   � ���
�� boovfals � k   �K � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 	theresult 	theResult � o      ���� $0 theselectedscope theSelectedScope �  ��� � O   �K � � � k   �J � �  � � � Z   � � � ��� � l  � � ����� � =  � � � � � o   � ����� $0 theselectedscope theSelectedScope � m   � � � � � � �  S u b t r e e��  ��   � r   � � � � � m   � ���
�� ldaslsst � o      ���� 0 thescope theScope �  � � � l  � � ����� � =  � � � � � o   � ����� $0 theselectedscope theSelectedScope � m   � � � � � � �  O n e   l e v e l��  ��   �  � � � r   � � � � � m   � ���
�� ldaslsol � o      ���� 0 thescope theScope �  � � � l  � ����� � =  � � � � o   � ����� $0 theselectedscope theSelectedScope � m   �  � � � � �  B a s e��  ��   �  ��� � r   � � � m  ��
�� ldaslsba � o      ���� 0 thescope theScope��  ��   �  ��� � Q  J � � � � I ?���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m  ��
�� 
ldse � �� ���
�� 
prdt � K  9 � � �� � �
�� 
pnam � o   !�� 0 thename theName � �~ � �
�~ 
ldsa � o  $%�}�} 0 
theaddress 
theAddress � �| � �
�| 
ldsb � o  ()�{�{ 0 thesearchbase theSearchBase � �z � �
�z 
ldpo � o  ,/�y�y 0 theport thePort � �x ��w
�x 
ldsc � o  25�v�v 0 thescope theScope�w  ��   � R      �u�t�s
�u .ascrerr ****      � ****�t  �s   � r  GJ � � � m  GH�r�r   � o      �q�q 0 success  ��   � m   � � � ��                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��  ��  ��  ��  ��   �  ��p � l Pg ��o�n � Z  Pg � ��m � � = PS � � � o  PQ�l�l 0 success   � m  QR�k�k  � I V]�j ��i
�j .sysodlogaskr        TEXT � m  VY   � ( L D A P   s e r v e r   c r e a t e d !�i  �m   � I `g�h�g
�h .sysodlogaskr        TEXT m  `c � 8 L D A P   s e r v e r   c r e a t i o n   f a i l e d !�g  �o  �n  �p       �f�f   �e
�e .aevtoappnull  �   � **** �d�c�b	�a
�d .aevtoappnull  �   � **** k    g

      9  Z  {  �  �  �  ��`�`  �c  �b    	 8�_ #�^ &�]�\�[�Z 5 D G�Y V e h�X w � ��W�V � � ��U ��T ��S�R�Q�P�O � ��N�M ��L ��K�J�I�H�G�F�E�D�C�B�A�@�?�> �_ 0 success  
�^ 
dtxt
�] .sysodlogaskr        TEXT�\ 0 	theresult 	theResult
�[ 
ttxt�Z 0 thename theName�Y 0 
theaddress 
theAddress�X 0 thesearchbase theSearchBase
�W 
long�V 0 theport thePort
�U 
inSL
�T 
prmp
�S 
mlsl�R 
�Q .gtqpchltns    @   @ ns  
�P 
cobj�O $0 theselectedscope theSelectedScope
�N ldaslsst�M 0 thescope theScope
�L ldaslsol
�K ldaslsba
�J 
kocl
�I 
ldse
�H 
prdt
�G 
pnam
�F 
ldsa
�E 
ldsb
�D 
ldpo
�C 
ldsc�B 
�A 
�@ .corecrel****      � null�?  �>  �ahkE�O %hZ���l E�O��,E�O�� Y h[OY��O %hZ���l E�O��,E�O�� Y h[OY��O 'hZ���l E�O��,E�O�a  Y h[OY��Oa �a l E�O��,a &E` Oa a a mva a kva a a fa  E�O�f ��a k/E`  Oa ! z_  a "  a #E` $Y +_  a %  a &E` $Y _  a '  a (E` $Y hO 1*a )a *a +a ,�a -�a .�a /_ a 0_ $a 1a 2 3W 
X 4 5jE�UY hO�k  a 6j Y 	a 7j ascr  ��ޭ