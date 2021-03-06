FasdUAS 1.101.10   ��   ��    k             l      ��  ��   Create New MessageCopyright � 2002�2013 Apple Inc. All rights reserved.You may incorporate this Apple sample code into your program(s) withoutrestriction.  This Apple sample code has been provided "AS IS" and theresponsibility for its operation is yours.  You are not permitted toredistribute this Apple sample code as "Apple sample code" after havingmade changes.  If you're going to redistribute the code, we requirethat you make it clear that the code was descended from Apple samplecode, but that you've made changes.     � 	 	*  C r e a t e   N e w   M e s s a g e   C o p y r i g h t   �   2 0 0 2  2 0 1 3   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .   Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t  r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e  r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o  r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g  m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e  t h a t   y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e  c o d e ,   b u t   t h a t   y o u ' v e   m a d e   c h a n g e s .    
  
 l     ��������  ��  ��        l      ��  ��    � �This script walks through the creation of a new message, including settingsender, signature, subject, to: recipient, body, and attachment. This scriptdemonstrates some of the new Applescript functionality in Mail and improvedterminology.     �  �  T h i s   s c r i p t   w a l k s   t h r o u g h   t h e   c r e a t i o n   o f   a   n e w   m e s s a g e ,   i n c l u d i n g   s e t t i n g  s e n d e r ,   s i g n a t u r e ,   s u b j e c t ,   t o :   r e c i p i e n t ,   b o d y ,   a n d   a t t a c h m e n t .   T h i s   s c r i p t  d e m o n s t r a t e s   s o m e   o f   t h e   n e w   A p p l e s c r i p t   f u n c t i o n a l i t y   i n   M a i l   a n d   i m p r o v e d  t e r m i n o l o g y .       l     ��������  ��  ��        l     ��  ��    ^ X Repeat this loop until the text entered has been changed from the default example text.     �   �   R e p e a t   t h i s   l o o p   u n t i l   t h e   t e x t   e n t e r e d   h a s   b e e n   c h a n g e d   f r o m   t h e   d e f a u l t   e x a m p l e   t e x t .      l    & ����  T     &   k    !       r         I   �� ! "
�� .sysodlogaskr        TEXT ! m     # # � $ $ X T o   w h o m   w o u l d   y o u   l i k e   t o   s e n d   t h i s   m e s s a g e ? " �� %��
�� 
dtxt % m     & & � ' ' " E x a m p l e :   J a n e   D o e��     o      ���� 0 	theresult 	theResult   ( ) ( r     * + * n     , - , 1    ��
�� 
ttxt - o    ���� 0 	theresult 	theResult + o      ���� 0 thename theName )  .�� . Z    ! / 0���� / l    1���� 1 H     2 2 C     3 4 3 o    ���� 0 thename theName 4 m     5 5 � 6 6  E x a m p l e :��  ��   0  S    ��  ��  ��  ��  ��     7 8 7 l     ��������  ��  ��   8  9 : 9 l     �� ; <��   ; ^ X Repeat this loop until the text entered has been changed from the default example text.    < � = = �   R e p e a t   t h i s   l o o p   u n t i l   t h e   t e x t   e n t e r e d   h a s   b e e n   c h a n g e d   f r o m   t h e   d e f a u l t   e x a m p l e   t e x t . :  > ? > l     �� @ A��   @ < 6 Email address validation could be done at this point.    A � B B l   E m a i l   a d d r e s s   v a l i d a t i o n   c o u l d   b e   d o n e   a t   t h i s   p o i n t . ?  C D C l  ' M E���� E T   ' M F F k   , H G G  H I H r   , 5 J K J I  , 3�� L M
�� .sysodlogaskr        TEXT L m   , - N N � O O 8 W h a t   i s   t h e i r   e m a i l   a d d r e s s ? M �� P��
�� 
dtxt P m   . / Q Q � R R 8 E x a m p l e :   j a n e d o e @ e x a m p l e . c o m��   K o      ���� 0 	theresult 	theResult I  S T S r   6 ; U V U n   6 9 W X W 1   7 9��
�� 
ttxt X o   6 7���� 0 	theresult 	theResult V o      ���� 0 
theaddress 
theAddress T  Y�� Y Z   < H Z [���� Z l  < @ \���� \ H   < @ ] ] C   < ? ^ _ ^ o   < =���� 0 
theaddress 
theAddress _ m   = > ` ` � a a  E x a m p l e :��  ��   [  S   C D��  ��  ��  ��  ��   D  b c b l     ��������  ��  ��   c  d e d l     �� f g��   f !  Prompt for message subject    g � h h 6   P r o m p t   f o r   m e s s a g e   s u b j e c t e  i j i l  N W k���� k r   N W l m l I  N U�� n o
�� .sysodlogaskr        TEXT n m   N O p p � q q j W h a t   w o u l d   y o u   l i k e   t h e   s u b j e c t   o f   t h e   m e s s a g e   t o   b e ? o �� r��
�� 
dtxt r m   P Q s s � t t B I ' m   s e n d i n g   t h i s   v i a   A p p l e S c r i p t !��   m o      ���� 0 	theresult 	theResult��  ��   j  u v u l  X ] w���� w r   X ] x y x n   X [ z { z 1   Y [��
�� 
ttxt { o   X Y���� 0 	theresult 	theResult y o      ���� 0 
thesubject 
theSubject��  ��   v  | } | l     ��������  ��  ��   }  ~  ~ l     �� � ���   � _ Y Prompt for whether an attachment is desired. If so, prompt for the location of the file.    � � � � �   P r o m p t   f o r   w h e t h e r   a n   a t t a c h m e n t   i s   d e s i r e d .   I f   s o ,   p r o m p t   f o r   t h e   l o c a t i o n   o f   t h e   f i l e .   � � � l  ^ v ����� � r   ^ v � � � I  ^ t�� � �
�� .sysodlogaskr        TEXT � m   ^ _ � � � � � h W o u l d   y o u   l i k e   t o   a t t a c h   s o m e   f i l e s   t o   t h i s   m e s s a g e ? � �� � �
�� 
btns � J   b j � �  � � � m   b e � � � � �  Y e s �  ��� � m   e h � � � � �  N o��   � �� ���
�� 
dflt � m   m n���� ��   � o      ���� 0 	theresult 	theResult��  ��   �  � � � l  w � ����� � r   w � � � � n   w | � � � 1   x |��
�� 
bhit � o   w x���� 0 	theresult 	theResult � o      ���� "0 wantsattachment wantsAttachment��  ��   �  � � � l  � � ����� � Z   � � � ����� � =  � � � � � o   � ����� "0 wantsattachment wantsAttachment � m   � � � � � � �  Y e s � r   � � � � � I  � �������
�� .sysostdfalis    ��� null��  ��   � o      ���� 0 theattachment theAttachment��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Prompt for message body    � � � � 0   P r o m p t   f o r   m e s s a g e   b o d y �  � � � l  � � ����� � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � l W h a t   w o u l d   y o u   l i k e   t o   s a y   i n   t h e   b o d y   o f   t h e   m e s s a g e ? � �� ���
�� 
dtxt � m   � � � � � � �  ��   � o      ���� 0 	theresult 	theResult��  ��   �  � � � l  � � ����� � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � o   � ����� 0 	theresult 	theResult � o      ���� 0 thebody theBody��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ^ X Display a list of all the user's defined signatures. Skip if no signatures are defined.    � � � � �   D i s p l a y   a   l i s t   o f   a l l   t h e   u s e r ' s   d e f i n e d   s i g n a t u r e s .   S k i p   i f   n o   s i g n a t u r e s   a r e   d e f i n e d . �  � � � l  � � ����� � O  � � � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � 2   � ���
�� 
situ � o      ����  0 everysignature everySignature � m   � � � ��                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��  ��   �  � � � l  � � ����� � r   � � � � � m   � � � � � � �   � o      ���� 0 thesignature theSignature��  ��   �  � � � l  �) ����� � Z   �) � ����� � ?  � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � �����  0 everysignature everySignature��  ��  ��   � m   � �����   � k   �% � �  � � � r   � � � � � b   � � � � � J   � � � �  ��� � m   � � � � � � �  N o n e��   � o   � �����  0 everysignature everySignature � o      ����  0 everysignature everySignature �  � � � r   � � � � I  ��� � �
�� .gtqpchltns    @   @ ns   � o   � ���  0 everysignature everySignature � �~ � �
�~ 
prmp � l 	 � � ��}�| � m   � � � � � � � X S e l e c t   a   s i g n a t u r e   t o   u s e   w i t h   t h i s   m e s s a g e :�}  �|   � �{ � �
�{ 
inSL � J   � � � �  ��z � m   � � � � � � �  N o n e�z   � �y �x
�y 
mlsl  m   � ��w
�w boovfals�x   � o      �v�v 0 	theresult 	theResult � �u Z  %�t�s >  o  �r�r 0 	theresult 	theResult m  �q
�q boovfals O 
! r   	 4  �p

�p 
situ
 l �o�n n   4  �m
�m 
cobj m  �l�l  o  �k�k 0 	theresult 	theResult�o  �n  	 o      �j�j 0 thesignature theSignature m  
�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  �t  �s  �u  ��  ��  ��  ��   �  l     �i�h�g�i  �h  �g    l     �f�f   H B Go through each account and constuct a list of possible addresses    � �   G o   t h r o u g h   e a c h   a c c o u n t   a n d   c o n s t u c t   a   l i s t   o f   p o s s i b l e   a d d r e s s e s  l     �e�e   3 - to use as a return address for this message.    � Z   t o   u s e   a s   a   r e t u r n   a d d r e s s   f o r   t h i s   m e s s a g e .  l *��d�c O  *�  k  0�!! "#" r  06$%$ J  02�b�b  % o      �a�a 0 listofsenders listOfSenders# &'& r  7@()( 2  7<�`
�` 
mact) o      �_�_ 0 everyaccount everyAccount' *�^* X  A�+�],+ k  W�-- ./. r  W`010 n  W\232 1  X\�\
�\ 
emad3 o  WX�[�[ 0 eachaccount eachAccount1 o      �Z�Z &0 everyemailaddress everyEmailAddress/ 4�Y4 Z  a�56�X�W5 l ah7�V�U7 > ah898 o  ad�T�T &0 everyemailaddress everyEmailAddress9 m  dg�S
�S 
msng�V  �U  6 X  k�:�R;: r  ��<=< b  ��>?> o  ���Q�Q 0 listofsenders listOfSenders? J  ��@@ A�PA c  ��BCB l ��D�O�ND b  ��EFE b  ��GHG b  ��IJI n  ��KLK 1  ���M
�M 
fllnL o  ���L�L 0 eachaccount eachAccountJ m  ��MM �NN    <H o  ���K�K $0 eachemailaddress eachEmailAddressF m  ��OO �PP  >�O  �N  C m  ���J
�J 
TEXT�P  = o      �I�I 0 listofsenders listOfSenders�R $0 eachemailaddress eachEmailAddress; o  nq�H�H &0 everyemailaddress everyEmailAddress�X  �W  �Y  �] 0 eachaccount eachAccount, o  DG�G�G 0 everyaccount everyAccount�^    m  *-QQ�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  �d  �c   RSR l     �F�E�D�F  �E  �D  S TUT l     �CVW�C  V I C Prompt the user to select which account to send this message from.   W �XX �   P r o m p t   t h e   u s e r   t o   s e l e c t   w h i c h   a c c o u n t   t o   s e n d   t h i s   m e s s a g e   f r o m .U YZY l ��[�B�A[ r  ��\]\ I ���@^_
�@ .gtqpchltns    @   @ ns  ^ o  ���?�? 0 listofsenders listOfSenders_ �>`a
�> 
prmp` l 	��b�=�<b m  ��cc �dd n W h i c h   a c c o u n t   w o u l d   y o u   l i k e   t o   s e n d   t h i s   m e s s a g e   f r o m ?�=  �<  a �;e�:
�; 
mlsle m  ���9
�9 boovfals�:  ] o      �8�8 0 	theresult 	theResult�B  �A  Z f�7f l ��g�6�5g Z  ��hi�4�3h > ��jkj o  ���2�2 0 	theresult 	theResultk m  ���1
�1 boovfalsi k  ��ll mnm r  ��opo n  ��qrq 4  ���0s
�0 
cobjs m  ���/�/ r o  ���.�. 0 	theresult 	theResultp o      �-�- 0 	thesender 	theSendern t�,t O  ��uvu k  ��ww xyx l ���+z{�+  z K E Properties can be specified in a record when creating the message or   { �|| �   P r o p e r t i e s   c a n   b e   s p e c i f i e d   i n   a   r e c o r d   w h e n   c r e a t i n g   t h e   m e s s a g e   o ry }~} l ���*��*   8 2 afterwards by setting individual property values.   � ��� d   a f t e r w a r d s   b y   s e t t i n g   i n d i v i d u a l   p r o p e r t y   v a l u e s .~ ��� r  ���� I ��)�(�
�) .corecrel****      � null�(  � �'��
�' 
kocl� m  ���&
�& 
bcke� �%��$
�% 
prdt� K  ���� �#��
�# 
subj� o  ���"�" 0 
thesubject 
theSubject� �!�� 
�! 
ctnt� b  ����� b  ����� o  ���� 0 thebody theBody� o  ���
� 
ret � o  ���
� 
ret �   �$  � o      �� 0 
newmessage 
newMessage� ��� O  ���� k  ��� ��� l ����  � C = Default is false. Determines whether the compose window will   � ��� z   D e f a u l t   i s   f a l s e .   D e t e r m i n e s   w h e t h e r   t h e   c o m p o s e   w i n d o w   w i l l� ��� l ����  � F @ show on the screen or whether it will happen in the background.   � ��� �   s h o w   o n   t h e   s c r e e n   o r   w h e t h e r   i t   w i l l   h a p p e n   i n   t h e   b a c k g r o u n d .� ��� r  ��� m  �
� boovtrue� 1  �
� 
pvis� ��� r  ��� o  �� 0 	thesender 	theSender� 1  �
� 
sndr� ��� I C���
� .corecrel****      � null�  � ���
� 
kocl� m  "%�
� 
trcp� ���
� 
insh� n  (.���  ;  -.� 2 (-�
� 
trcp� ���
� 
prdt� K  1=�� ���
� 
pnam� o  45�� 0 thename theName� ���

� 
radd� o  89�	�	 0 
theaddress 
theAddress�
  �  � ��� O  D���� Z  L����� l LS���� = LS��� o  LO�� "0 wantsattachment wantsAttachment� m  OR�� ���  Y e s�  �  � k  V{�� ��� l VV����  � 1 + Position must be specified for attachments   � ��� V   P o s i t i o n   m u s t   b e   s p e c i f i e d   f o r   a t t a c h m e n t s� ��� I V{�� �
� .corecrel****      � null�   � ����
�� 
kocl� m  Z]��
�� 
atts� ����
�� 
prdt� K  `h�� �����
�� 
atfn� o  cf���� 0 theattachment theAttachment��  � �����
�� 
insh� n  ku��� 9  qu��
�� 
insl� l kq������ 4 kq���
�� 
cpar� m  op��������  ��  ��  �  �  �  � 1  DI��
�� 
ctnt� ���� Z  ��������� l �������� > ����� o  ������ 0 thesignature theSignature� m  ���� ���  ��  ��  � r  ����� o  ������ 0 thesignature theSignature� 1  ����
�� 
tnrg��  ��  ��  � o  	���� 0 
newmessage 
newMessage� ��� l ��������  � G A Bring the new compose window to the foreground, in all its glory   � ��� �   B r i n g   t h e   n e w   c o m p o s e   w i n d o w   t o   t h e   f o r e g r o u n d ,   i n   a l l   i t s   g l o r y� ���� I ��������
�� .miscactvnull��� ��� null��  ��  ��  v m  �����                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  �,  �4  �3  �6  �5  �7       ������  � ��
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  C��  i��  u��  ���  ���  ���  ���  ���  ���  ���  ��� �� Y�� f����  ��  ��  � ������ 0 eachaccount eachAccount�� $0 eachemailaddress eachEmailAddress� N #�� &�������� 5 N Q�� ` p s�� ��� � ��������� ����� � ��� ������� ����� ��� ��� �������������������������MO��c����������������������������������������
�� 
dtxt
�� .sysodlogaskr        TEXT�� 0 	theresult 	theResult
�� 
ttxt�� 0 thename theName�� 0 
theaddress 
theAddress�� 0 
thesubject 
theSubject
�� 
btns
�� 
dflt�� 
�� 
bhit�� "0 wantsattachment wantsAttachment
�� .sysostdfalis    ��� null�� 0 theattachment theAttachment�� 0 thebody theBody
�� 
situ
�� 
pnam��  0 everysignature everySignature�� 0 thesignature theSignature
�� .corecnte****       ****
�� 
prmp
�� 
inSL
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  
�� 
cobj�� 0 listofsenders listOfSenders
�� 
mact�� 0 everyaccount everyAccount
�� 
kocl
�� 
emad�� &0 everyemailaddress everyEmailAddress
�� 
msng
�� 
flln
�� 
TEXT�� 0 	thesender 	theSender
�� 
bcke
�� 
prdt
�� 
subj
�� 
ctnt
�� 
ret 
�� .corecrel****      � null�� 0 
newmessage 
newMessage
�� 
pvis
�� 
sndr
�� 
trcp
�� 
insh
�� 
radd
�� 
atts
�� 
atfn
�� 
cpar
�� 
insl
�� 
tnrg
�� .miscactvnull��� ��� null��� %hZ���l E�O��,E�O�� Y h[OY��O %hZ���l E�O��,E�O�� Y h[OY��O���l E�O��,E�O�a a a lva ka  E�O�a ,E` O_ a   *j E` Y hOa �a l E�O��,E` Oa  *a -a ,E`  UOa !E` "O_  j #j Ra $kv_  %E`  O_  a %a &a 'a (kva )fa * +E�O�f a  *a �a ,k/E/E` "UY hY hOa  ~jvE` -O*a .-E` /O j_ /[a 0a ,l #kh  �a 1,E` 2O_ 2a 3 = 7_ 2[a 0a ,l #kh _ -�a 4,a 5%�%a 6%a 7&kv%E` -[OY��Y h[OY��UO_ -a %a 8a )fa  +E�O�f ��a ,k/E` 9Oa  �*a 0a :a ;a <�a =_ _ >%_ >%a a  ?E` @O_ @ �e*a A,FO_ 9*a B,FO*a 0a Ca D*a C-6a ;a �a E�a a * ?O*a =, 5_ a F  **a 0a Ga ;a H_ la D*a Ii/a J4a * ?Y hUO_ "a K _ "*a L,FY hUO*j MUY hascr  ��ޭ