FasdUAS 1.101.10   ��   ��    k             l      ��  ��   MG
	Google Weather Handler Library
	Copyright � 2012 hXm's Project
	Feedback to hxm@librepensamiento.es
	
	This is a script for GeekTool.
	GeekTool lets you display various kinds of information
	on your desktop using floating windows.
	http://itunes.apple.com/es/app/geektool/id456877552?mt=12
	
	TODO:
		Use custom weather icons, not only google's ones.
		Geolocation feature. Probably not.
		Status bar icon.
		May change the wind's direction letter for a cool UTF-8 arrow.
		Let various locations at same time.
	FIX:
		Remove the temp file using AS.
		Next errors that will appear.
     � 	 	� 
 	 G o o g l e   W e a t h e r   H a n d l e r   L i b r a r y 
 	 C o p y r i g h t   �   2 0 1 2   h X m ' s   P r o j e c t 
 	 F e e d b a c k   t o   h x m @ l i b r e p e n s a m i e n t o . e s 
 	 
 	 T h i s   i s   a   s c r i p t   f o r   G e e k T o o l . 
 	 G e e k T o o l   l e t s   y o u   d i s p l a y   v a r i o u s   k i n d s   o f   i n f o r m a t i o n 
 	 o n   y o u r   d e s k t o p   u s i n g   f l o a t i n g   w i n d o w s . 
 	 h t t p : / / i t u n e s . a p p l e . c o m / e s / a p p / g e e k t o o l / i d 4 5 6 8 7 7 5 5 2 ? m t = 1 2 
 	 
 	 T O D O : 
 	 	 U s e   c u s t o m   w e a t h e r   i c o n s ,   n o t   o n l y   g o o g l e ' s   o n e s . 
 	 	 G e o l o c a t i o n   f e a t u r e .   P r o b a b l y   n o t . 
 	 	 S t a t u s   b a r   i c o n . 
 	 	 M a y   c h a n g e   t h e   w i n d ' s   d i r e c t i o n   l e t t e r   f o r   a   c o o l   U T F - 8   a r r o w . 
 	 	 L e t   v a r i o u s   l o c a t i o n s   a t   s a m e   t i m e . 
 	 F I X : 
 	 	 R e m o v e   t h e   t e m p   f i l e   u s i n g   A S . 
 	 	 N e x t   e r r o r s   t h a t   w i l l   a p p e a r . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I      �� ���� 0 writeresult WriteResult      o      ���� 	0 gklet     ��  o      ���� 0 info  ��  ��    k     9       l     ��  ��    d ^ I felt better calling the GeekTool app itself than storing temporary files to load the result     �   �   I   f e l t   b e t t e r   c a l l i n g   t h e   G e e k T o o l   a p p   i t s e l f   t h a n   s t o r i n g   t e m p o r a r y   f i l e s   t o   l o a d   t h e   r e s u l t   ��  O     9    k    8      !   r     " # " 6    $ % $ 2    ��
�� 
gLet % =    & ' & 1   	 ��
�� 
pnam ' o    ���� 	0 gklet   # o      ���� 0 googleweatherglets   !  (�� ( X    8 )�� * ) O  # 3 + , + r   ' 2 - . - b   ' . / 0 / b   ' , 1 2 1 b   ' * 3 4 3 m   ' ( 5 5 � 6 6  p r i n t f   4 m   ( ) 7 7 � 8 8  " 2 o   * +���� 0 info   0 m   , - 9 9 � : :  " . 1   . 1��
�� 
scom , o   # $���� 0 glet  �� 0 glet   * o    ���� 0 googleweatherglets  ��    m      ; ;f                                                                                      @ alis      OSX Lion                   �~�MH+   �GeekTool Helper.app                                             ��MzP        ����  	                	Resources     �~�=      �Ml@     � � �  w v   u  sOSX Lion:Applications: GeekTool.app: Contents: PlugIns: GeekTool.prefPane: Contents: Resources: GeekTool Helper.app   (  G e e k T o o l   H e l p e r . a p p    O S X   L i o n  cApplications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app   / ��  ��     < = < l     ��������  ��  ��   =  > ? > i     @ A @ I      �� B���� 0 	showimage 	ShowImage B  C D C o      ���� 	0 gklet   D  E�� E o      ���� 0 urlname URLname��  ��   A k     a F F  G H G l     �� I J��   I J D Thank you, GeekTool. I'm glad you can load images directly from URL    J � K K �   T h a n k   y o u ,   G e e k T o o l .   I ' m   g l a d   y o u   c a n   l o a d   i m a g e s   d i r e c t l y   f r o m   U R L H  L M L l     ��������  ��  ��   M  N O N r      P Q P I     �� R���� 0 readfile readFile R  S�� S m     T T � U U P ~ / L i b r a r y / S c r i p t s / h X m W e a t h e r / i c o n S e t . t x t��  ��   Q o      ���� 0 currenttheme currentTheme O  V W V Z   	 - X Y�� Z X =  	  [ \ [ o   	 
���� 0 currenttheme currentTheme \ m   
  ] ] � ^ ^  C l a s s i c Y r     _ ` _ b     a b a m     c c � d d * h t t p : / / w w w . g o o g l e . c o m b o    ���� 0 urlname URLname ` o      ���� 0 urlname URLname��   Z k    - e e  f g f r    ! h i h l    j���� j e     k k n     l m l 1    ��
�� 
sisn m l    n���� n I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��   i o      ���� 0 username userName g  o�� o r   " - p q p b   " + r s r b   " ) t u t b   " ' v w v b   " % x y x m   " # z z � { {  f i l e : / / / U s e r s / y o   # $���� 0 username userName w m   % & | | � } } H / L i b r a r y / S c r i p t s / h X m W e a t h e r / i c o n S e t / u o   ' (���� 0 currenttheme currentTheme s o   ) *���� 0 urlname URLname q o      ���� 0 urlname URLname��   W  ~�� ~ O   . a  �  k   2 ` � �  � � � r   2 @ � � � 6  2 > � � � 2   2 5��
�� 
gLet � =  6 = � � � 1   7 9��
�� 
pnam � o   : <���� 	0 gklet   � o      ���� 0 googleweatherglets   �  ��� � X   A ` ��� � � O  Q [ � � � r   U Z � � � o   U V���� 0 urlname URLname � 1   V Y��
�� 
iurl � o   Q R���� 0 glet  �� 0 glet   � o   D E���� 0 googleweatherglets  ��   � m   . / � �f                                                                                      @ alis      OSX Lion                   �~�MH+   �GeekTool Helper.app                                             ��MzP        ����  	                	Resources     �~�=      �Ml@     � � �  w v   u  sOSX Lion:Applications: GeekTool.app: Contents: PlugIns: GeekTool.prefPane: Contents: Resources: GeekTool Helper.app   (  G e e k T o o l   H e l p e r . a p p    O S X   L i o n  cApplications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app   / ��  ��   ?  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 split Split �  � � � o      ���� 0 	thestring 	theString �  ��� � o      ���� 0 thedelimiter theDelimiter��  ��   � k      � �  � � � r      � � � o     ���� 0 thedelimiter theDelimiter � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � n    	 � � � 2    	��
�� 
citm � o    ���� 0 	thestring 	theString � o      ���� 0 thearray theArray �  ��� � L     � � n     � � � 4   �� �
�� 
cobj � m    ������ � o    ���� 0 thearray theArray��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 readfile readFile �  ��� � o      ���� 0 unixpath unixPath��  ��   � L      � � l     ����� � I    �� ���
�� .sysoexecTEXT���     TEXT � b      � � � m      � � � � �  c a t   � o    ���� 0 unixpath unixPath��  ��  ��   �  � � � i     � � � I      �� ����� 0 charreplace charReplace �  � � � o      ���� 0 	this_text   �  � � � o      ���� 0 search_string   �  ��� � o      ���� 0 replacement_string  ��  ��   � k       � �  � � � r      � � � l     ����� � o     ���� 0 search_string  ��  ��   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � n    	 � � � 2    	��
�� 
citm � o    ���� 0 	this_text   � l      ����� � o      ���� 0 	item_list  ��  ��   �  � � � r     � � � l    ����� � o    ���� 0 replacement_string  ��  ��   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � c     � � � l    ����� � o    ���� 0 	item_list  ��  ��   � m    ��
�� 
TEXT � o      ���� 0 	this_text   �  � � � r     � � � m     � � � � �   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  �� � L      � � o    �~�~ 0 	this_text  �   �  � � � i     � � � I      �} ��|�} 0 unitconvert unitConvert �  � � � o      �{�{ 0 fromthis FromThis �  � � � o      �z�z 0 tothis ToThis �  ��y � o      �x�x 0 
thisdegree 
ThisDegree�y  �|   � k     r � �  � � � l     �w�v�u�w  �v  �u   �  � � � Z      � ��t�s � =     �  � o     �r�r 0 tothis ToThis  m     �  A u t o m a t i c � L     o    �q�q 0 
thisdegree 
ThisDegree�t  �s   �  Z    )�p�o F    	 =   

 o    �n�n 0 fromthis FromThis m     �  S I	 =    o    �m�m 0 tothis ToThis m     �  F a h r e n h e i t L    % I   $�l�k
�l .sysorondlong        doub l    �j�i [      l   �h�g ]     o    �f�f 0 
thisdegree 
ThisDegree m     ?��������h  �g   m    �e�e  �j  �i  �k  �p  �o    l  * *�d�c�b�d  �c  �b    Z   * > �a�` F   * 5!"! =  * -#$# o   * +�_�_ 0 fromthis FromThis$ m   + ,%% �&&  S I" =  0 3'(' o   0 1�^�^ 0 tothis ToThis( m   1 2)) �**  C e l s i u s  L   8 :++ o   8 9�]�] 0 
thisdegree 
ThisDegree�a  �`   ,-, Z   ? S./�\�[. F   ? J010 =  ? B232 o   ? @�Z�Z 0 fromthis FromThis3 m   @ A44 �55  U S1 =  E H676 o   E F�Y�Y 0 tothis ToThis7 m   F G88 �99  F a h r e n h e i t/ L   M O:: o   M N�X�X 0 
thisdegree 
ThisDegree�\  �[  - ;<; Z   T p=>�W�V= F   T _?@? =  T WABA o   T U�U�U 0 fromthis FromThisB m   U VCC �DD  U S@ =  Z ]EFE o   Z [�T�T 0 tothis ToThisF m   [ \GG �HH  C e l s i u s> L   b lII I  b k�SJ�R
�S .sysorondlong        doubJ l  b gK�Q�PK ^   b gLML l  b eN�O�NN \   b eOPO o   b c�M�M 0 
thisdegree 
ThisDegreeP m   c d�L�L  �O  �N  M m   e fQQ ?��������Q  �P  �R  �W  �V  < R�KR l  q q�J�I�H�J  �I  �H  �K   � STS l     �G�F�E�G  �F  �E  T UVU i    WXW I     �D�C�B
�D .aevtoappnull  �   � ****�C  �B  X k    �YY Z[Z l     �A\]�A  \ > 8 Get the local system language and split it in this way:   ] �^^ p   G e t   t h e   l o c a l   s y s t e m   l a n g u a g e   a n d   s p l i t   i t   i n   t h i s   w a y :[ _`_ l     �@ab�@  a   en_US -> en   b �cc    e n _ U S   - >   e n` ded r     	fgf n     hih 1    �?
�? 
siuli l    j�>�=j e     kk I    �<�;�:
�< .sysosigtsirr   ��� null�;  �:  �>  �=  g o      �9�9 
0 locale  e lml r   
 non n  
 pqp I    �8r�7�8 0 split Splitr sts o    �6�6 
0 locale  t u�5u m    vv �ww  _�5  �7  q  f   
 o o      �4�4 
0 locale  m xyx l   �3z{�3  z 9 3 Read the location stored in main.scpt -> Install()   { �|| f   R e a d   t h e   l o c a t i o n   s t o r e d   i n   m a i n . s c p t   - >   I n s t a l l ( )y }~} r    � l   ��2�1� n   ��� I    �0��/�0 0 readfile readFile� ��.� m    �� ��� V ~ / L i b r a r y / S c r i p t s / h X m W e a t h e r / h X m W e a t h e r . t x t�.  �/  �  f    �2  �1  � o      �-�- 0 location  ~ ��� r    '��� l   %��,�+� n   %��� I    %�*��)�* 0 charreplace charReplace� ��� o    �(�( 0 location  � ��� m     �� ���   � ��'� m     !�� ���  +�'  �)  �  f    �,  �+  � o      �&�& 0 location  � ��� l  ( (�%���%  � : 4 Let's download the XML file from google weather api   � ��� h   L e t ' s   d o w n l o a d   t h e   X M L   f i l e   f r o m   g o o g l e   w e a t h e r   a p i� ��� l  ( (�$���$  � N H and convert it to UTF-8 encoding system or XML file library would fail.   � ��� �   a n d   c o n v e r t   i t   t o   U T F - 8   e n c o d i n g   s y s t e m   o r   X M L   f i l e   l i b r a r y   w o u l d   f a i l .� ��� r   ( 7��� I  ( 5�#��"
�# .sysoexecTEXT���     TEXT� b   ( 1��� b   ( /��� b   ( -��� b   ( +��� m   ( )�� ��� n / u s r / b i n / c u r l   - s   ' h t t p : / / w w w . g o o g l e . c o m / i g / a p i ? w e a t h e r =� o   ) *�!�! 0 location  � m   + ,�� ���  & h l =� o   - .� �  
0 locale  � m   / 0�� ��� x '   |   i c o n v   - f   I S O - 8 8 5 9 - 1   - t   U T F - 8   >   / t m p / W e a t h e r G o o g l e A p i . x m l�"  � o      �� 0 weatherquery  � ��� l  8 8����  �  �  � ��� O   8d��� k   >c�� ��� l  > >����  � I C Load the XML file in a variable, then parse all those tags from it   � ��� �   L o a d   t h e   X M L   f i l e   i n   a   v a r i a b l e ,   t h e n   p a r s e   a l l   t h o s e   t a g s   f r o m   i t� ��� r   > J��� 4   > F��
� 
xmlf� m   B E�� ��� 2 / t m p / W e a t h e r G o o g l e A p i . x m l� o      �� 	0 file1  � ��� r   K W��� l  K S���� n  K S��� I   L S���� 0 readfile readFile� ��� m   L O�� ��� N ~ / L i b r a r y / S c r i p t s / h X m W e a t h e r / d e g r e e . t x t�  �  �  f   K L�  �  � o      �� 0 	usedegree 	useDegree� ��� Z   X ������ F   X {��� F   X m��� >  X _��� o   X [�� 0 	usedegree 	useDegree� m   [ ^�� ���  A u t o m a t i c� >  b i��� o   b e�� 0 	usedegree 	useDegree� m   e h�� ���  C e l s i u s� >  p w��� o   p s�� 0 	usedegree 	useDegree� m   s v�� ���  F a h r e n h e i t� r   ~ ���� m   ~ ��� ���  A u t o m a t i c� o      �� 0 	usedegree 	useDegree�  �  � ��� O   �c��� O   �b��� O   �a��� k   �`�� ��� O   �A��� k   �@�� ��� l  � ���
�	�  �
  �	  � ��� O   ���� k   ���    r   � � e   � � n   � � 1   � ��
� 
valL 4   � ��
� 
xmla m   � � �		  d a t a o      �� 0 realunit realUnit 
�
 Z   �� =  � � o   � ��� 0 	usedegree 	useDegree m   � � �  A u t o m a t i c r   � � e   � � n   � � 1   � ��
� 
valL 4   � ��
� 
xmla m   � � �  d a t a o      � �  0 unit    =  � � o   � ����� 0 	usedegree 	useDegree m   � � �  C e l s i u s  !  r   � �"#" m   � �$$ �%%  S I# o      ���� 0 unit  ! &'& =  ()( o   ���� 0 	usedegree 	useDegree) m  ** �++  F a h r e n h e i t' ,��, r  
-.- m  
// �00  U S. o      ���� 0 unit  ��  �  �  � 4   � ���1
�� 
xmle1 m   � �22 �33  u n i t _ s y s t e m� 4��4 O  @565 k  "?77 898 r  "3:;: e  "/<< n  "/=>= 1  *.��
�� 
valL> 4  "*��?
�� 
xmla? m  &)@@ �AA  d a t a; o      ���� 0 city  9 B��B n 4?CDC I  5?��E���� 0 writeresult WriteResultE FGF m  58HH �II $ G o o g l e W e a t h e r _ C i t yG J��J o  8;���� 0 city  ��  ��  D  f  45��  6 4  ��K
�� 
xmleK m  LL �MM  c i t y��  � 4   � ���N
�� 
xmleN m   � �OO �PP ( f o r e c a s t _ i n f o r m a t i o n� QRQ l BB��������  ��  ��  R STS l BB��UV��  U 1 + Loop the forecast tags to show all of them   V �WW V   L o o p   t h e   f o r e c a s t   t a g s   t o   s h o w   a l l   o f   t h e mT XYX r  BZZ[Z l BV\����\ 6 BV]^] 2  BG��
�� 
xmle^ = JU_`_ 1  KO��
�� 
pnam` m  PTaa �bb & f o r e c a s t _ c o n d i t i o n s��  ��  [ o      ���� 0 	forecasts  Y cdc l [[��������  ��  ��  d efe r  [`ghg m  [\���� h o      ���� 0 incr  f iji X  a`k��lk k  w[mm non O  wQpqp k  {Prr sts O  {�uvu k  ��ww xyx r  ��z{z e  ��|| n  ��}~} 1  ����
�� 
valL~ 4  ����
�� 
xmla m  ���� ���  d a t a{ o      ���� 0 	dayofweek 	dayOfWeeky ���� n ����� I  ��������� 0 writeresult WriteResult� ��� b  ����� m  ���� ��� & G o o g l e W e a t h e r _ I n f o _� o  ������ 0 incr  � ���� o  ������ 0 	dayofweek 	dayOfWeek��  ��  �  f  ����  v 4  {����
�� 
xmle� m  ��� ���  d a y _ o f _ w e e kt ��� O  ����� k  ���� ��� r  ����� e  ���� n  ����� 1  ����
�� 
valL� 4  �����
�� 
xmla� m  ���� ���  d a t a� o      ���� 0 icon  � ���� n ����� I  ��������� 0 	showimage 	ShowImage� ��� b  ����� m  ���� ��� & G o o g l e W e a t h e r _ I c o n _� o  ������ 0 incr  � ���� o  ������ 0 icon  ��  ��  �  f  ����  � 4  �����
�� 
xmle� m  ���� ���  i c o n� ��� O  ���� k  ��� ��� r  ����� e  ���� n  ����� 1  ����
�� 
valL� 4  �����
�� 
xmla� m  ���� ���  d a t a� o      ���� 	0 ltemp  � ���� n ���� I  �������� 0 writeresult WriteResult� ��� b  ����� m  ���� ��� ( G o o g l e W e a t h e r _ L T e m p _� o  ������ 0 incr  � ���� b  ���� n �
��� I  �
������� 0 unitconvert unitConvert� ��� o  � ���� 0 realunit realUnit� ��� o   ���� 0 	usedegree 	useDegree� ���� o  ���� 	0 ltemp  ��  ��  �  f  ��� m  
�� ���  ���  ��  �  f  ����  � 4  �����
�� 
xmle� m  ���� ���  l o w� ���� O  P��� k  O�� ��� r  0��� e  ,�� n  ,��� 1  '+��
�� 
valL� 4  '���
�� 
xmla� m  #&�� ���  d a t a� o      ���� 	0 ltemp  � ���� n 1O��� I  2O������� 0 writeresult WriteResult� ��� b  29��� m  25�� ��� ( G o o g l e W e a t h e r _ H T e m p _� o  58���� 0 incr  � ���� b  9K��� n 9G��� I  :G������� 0 unitconvert unitConvert� ��� o  :=���� 0 realunit realUnit� ��� o  =@���� 0 	usedegree 	useDegree� ���� o  @C���� 	0 ltemp  ��  ��  �  f  9:� m  GJ�� ���  ���  ��  �  f  12��  � 4  ���
�� 
xmle� m  �� ���  h i g h��  q o  wx���� 0 i Io ���� r  R[� � [  RW o  RU���� 0 incr   m  UV����   o      ���� 0 incr  ��  �� 0 i Il o  dg���� 0 	forecasts  j �� O  a` k  l_  O  l�	
	 r  w� e  w� n  w� 1  ���
�� 
valL 4  w��
�� 
xmla m  {~ �  d a t a o      ���� 0 humidity  
 4  lt��
�� 
xmle m  ps �  h u m i d i t y  O  �� r  �� e  �� n  �� 1  ����
�� 
valL 4  ����
�� 
xmla m  ��   �!!  d a t a o      ���� 0 	condition   4  ����"
�� 
xmle" m  ��## �$$  c o n d i t i o n %&% Z  �'(��)' = ��*+* o  ������ 0 unit  + m  ��,, �--  S I( O  ��./. k  ��00 121 r  ��343 e  ��55 n  ��676 1  ����
�� 
valL7 4  ����8
�� 
xmla8 m  ��99 �::  d a t a4 o      ���� 0 temp  2 ;��; n ��<=< I  ����>���� 0 writeresult WriteResult> ?@? m  ��AA �BB $ G o o g l e W e a t h e r _ T e m p@ C��C b  ��DED o  ������ 0 temp  E m  ��FF �GG    � C��  ��  =  f  ����  / 4  ����H
�� 
xmleH m  ��II �JJ  t e m p _ c��  ) O  �KLK k  �MM NON r  ��PQP e  ��RR n  ��STS 1  ����
�� 
valLT 4  ����U
�� 
xmlaU m  ��VV �WW  d a t aQ o      ���� 0 temp  O X��X n �YZY I   ��[���� 0 writeresult WriteResult[ \]\ m   ^^ �__ $ G o o g l e W e a t h e r _ T e m p] `��` b  
aba o  ���� 0 temp  b m  	cc �dd  � F��  ��  Z  f  � ��  L 4  ����e
�� 
xmlee m  ��ff �gg  t e m p _ f& hih O  -jkj r  ,lml e  (nn n  (opo 1  #'��
�� 
valLp 4  #��q
�� 
xmlaq m  "rr �ss  d a t am o      ���� 0 wind  k 4  ��t
�� 
xmlet m  uu �vv  w i n d _ c o n d i t i o ni w��w O  ._xyx k  9^zz {|{ r  9J}~} e  9F n  9F��� 1  AE��
�� 
valL� 4  9A���
�� 
xmla� m  =@�� ���  d a t a~ o      ���� 0 currenticon currentIcon| ��� r  KR��� o  KN���� 0 currenticon currentIcon� o      ���� 0 currenticon currentIcon� ��� n S^��� I  T^�~��}�~ 0 	showimage 	ShowImage� ��� m  TW�� ��� $ G o o g l e W e a t h e r _ I c o n� ��|� o  WZ�{�{ 0 currenticon currentIcon�|  �}  �  f  ST�  y 4  .6�z�
�z 
xmle� m  25�� ���  i c o n��   4  ai�y�
�y 
xmle� m  eh�� ��� $ c u r r e n t _ c o n d i t i o n s��  � 4   � ��x�
�x 
xmle� m   � ��� ���  w e a t h e r� 4   � ��w�
�w 
xmle� m   � ��� ���  x m l _ a p i _ r e p l y� o   � ��v�v 	0 file1  �  � m   8 ;���                                                                                  sevs  alis    �  OSX Lion                   �~�MH+     PSystem Events.app                                                ��O�        ����  	                CoreServices    �~�=      �3�       P   C   B  9OSX Lion:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    O S X   L i o n  -System/Library/CoreServices/System Events.app   / ��  � ��� l ee�u�t�s�u  �t  �s  � ��� n e���� I  f��r��q�r 0 writeresult WriteResult� ��� m  fi�� ��� $ G o o g l e W e a t h e r _ I n f o� ��p� b  i���� b  i|��� b  ix��� b  it��� b  ip��� o  il�o�o 0 	condition  � m  lo�� ���  
� o  ps�n�n 0 wind  � m  tw�� ���  
� o  x{�m�m 0 humidity  � m  |�� ���  %�p  �q  �  f  ef� ��l� l ���k�j�i�k  �j  �i  �l  V ��� l     �h�g�f�h  �g  �f  � ��e� l     �d�c�b�d  �c  �b  �e       	�a���������a  � �`�_�^�]�\�[�Z�` 0 writeresult WriteResult�_ 0 	showimage 	ShowImage�^ 0 split Split�] 0 readfile readFile�\ 0 charreplace charReplace�[ 0 unitconvert unitConvert
�Z .aevtoappnull  �   � ****� �Y �X�W���V�Y 0 writeresult WriteResult�X �U��U �  �T�S�T 	0 gklet  �S 0 info  �W  � �R�Q�P�O�R 	0 gklet  �Q 0 info  �P 0 googleweatherglets  �O 0 glet  �  ;�N��M�L�K�J 5 7 9�I
�N 
gLet�  
�M 
pnam
�L 
kocl
�K 
cobj
�J .corecnte****       ****
�I 
scom�V :� 6*�-�[�,\Z�81E�O $�[��l kh � ��%�%�%*�,FU[OY��U� �H A�G�F���E�H 0 	showimage 	ShowImage�G �D��D �  �C�B�C 	0 gklet  �B 0 urlname URLname�F  � �A�@�?�>�=�<�A 	0 gklet  �@ 0 urlname URLname�? 0 currenttheme currentTheme�> 0 username userName�= 0 googleweatherglets  �< 0 glet  �  T�; ] c�:�9 z | ��8��7�6�5�4�3�; 0 readfile readFile
�: .sysosigtsirr   ��� null
�9 
sisn
�8 
gLet
�7 
pnam
�6 
kocl
�5 
cobj
�4 .corecnte****       ****
�3 
iurl�E b*�k+ E�O��  
�%E�Y *j �,EE�O�%�%�%�%E�O� 0*�-�[�,\Z�81E�O �[��l kh � �*�,FU[OY��U� �2 ��1�0���/�2 0 split Split�1 �.��. �  �-�,�- 0 	thestring 	theString�, 0 thedelimiter theDelimiter�0  � �+�*�)�+ 0 	thestring 	theString�* 0 thedelimiter theDelimiter�) 0 thearray theArray� �(�'�&�%
�( 
ascr
�' 
txdl
�& 
citm
�% 
cobj�/ ���,FO��-E�O��i/E� �$ ��#�"���!�$ 0 readfile readFile�# � ��  �  �� 0 unixpath unixPath�"  � �� 0 unixpath unixPath�  ��
� .sysoexecTEXT���     TEXT�! 	�%j � � ������� 0 charreplace charReplace� ��� �  ���� 0 	this_text  � 0 search_string  � 0 replacement_string  �  � ����� 0 	this_text  � 0 search_string  � 0 replacement_string  � 0 	item_list  � ���� �
� 
ascr
� 
txdl
� 
citm
� 
TEXT� !���,FO��-E�O���,FO��&E�O���,FO�� � ���
���	� 0 unitconvert unitConvert� ��� �  ���� 0 fromthis FromThis� 0 tothis ToThis� 0 
thisdegree 
ThisDegree�
  � ���� 0 fromthis FromThis� 0 tothis ToThis� 0 
thisdegree 
ThisDegree� �� ��%)48CG
� 
bool�   
�� .sysorondlong        doub�	 s��  �Y hO�� 	 �� �& �� �j Y hO�� 	 �� �& �Y hO�� 	 �� �& �Y hO�� 	 �� �& ���!j Y hOP� ��X��������
�� .aevtoappnull  �   � ****��  ��  � ���� 0 i I� g������v�������������������������������������O2��������$*/L@��H�����a�������������������������������������# ��,I9��AFfV^cur�����������
�� .sysosigtsirr   ��� null
�� 
siul�� 
0 locale  �� 0 split Split�� 0 readfile readFile�� 0 location  �� 0 charreplace charReplace
�� .sysoexecTEXT���     TEXT�� 0 weatherquery  
�� 
xmlf�� 	0 file1  �� 0 	usedegree 	useDegree
�� 
bool
�� 
xmle
�� 
xmla
�� 
valL�� 0 realunit realUnit�� 0 unit  �� 0 city  �� 0 writeresult WriteResult
�� 
pnam�� 0 	forecasts  �� 0 incr  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 	dayofweek 	dayOfWeek�� 0 icon  �� 0 	showimage 	ShowImage�� 	0 ltemp  �� 0 unitconvert unitConvert�� 0 humidity  �� 0 	condition  �� 0 temp  �� 0 wind  �� 0 currenticon currentIcon���*j  �,E�O)��l+ E�O)�k+ E�O)���m+ 
E�O��%�%�%�%j E�Oa '*a a /E` O)a k+ E` O_ a 	 _ a a &	 _ a a & a E` Y hO_ �*a a /�*a a /�*a a / �*a a / [*a  a !/a ",EE` #O_ a $  *a  a %/a ",EE` &Y +_ a '  a (E` &Y _ a )  a *E` &Y hUO*a a +/ *a  a ,/a ",EE` -O)a ._ -l+ /UUO*a -a 0[a 1,\Za 281E` 3OkE` 4O �_ 3[a 5a 6l 7kh  � �*a a 8/ #*a  a 9/a ",EE` :O)a ;_ 4%_ :l+ /UO*a a </ #*a  a =/a ",EE` >O)a ?_ 4%_ >l+ @UO*a a A/ 2*a  a B/a ",EE` CO)a D_ 4%)_ #_ _ Cm+ Ea F%l+ /UO*a a G/ 2*a  a H/a ",EE` CO)a I_ 4%)_ #_ _ Cm+ Ea J%l+ /UUO_ 4kE` 4[OY�O*a a K/ �*a a L/ *a  a M/a ",EE` NUO*a a O/ *a  a P/a ",EE` QUO_ &a R  2*a a S/ #*a  a T/a ",EE` UO)a V_ Ua W%l+ /UY /*a a X/ #*a  a Y/a ",EE` UO)a Z_ Ua [%l+ /UO*a a \/ *a  a ]/a ",EE` ^UO*a a _/ '*a  a `/a ",EE` aO_ aE` aO)a b_ al+ @UUUUUUO)a c_ Qa d%_ ^%a e%_ N%a f%l+ /OPascr  ��ޭ