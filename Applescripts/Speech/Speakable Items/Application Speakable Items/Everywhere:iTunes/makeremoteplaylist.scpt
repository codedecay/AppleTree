FasdUAS 1.101.10   ��   ��    k             l        	  j     �� 
��  0 defaultsdomain defaultsDomain 
 m        �   4 c o m . d o u g s c r i p t s . c o p y s h a r e d   
 no spaces    	 �      n o   s p a c e s      l     ��������  ��  ��        p       �� �� 0 remusername remUserName  �� �� 0 remhostipaddr remHostIPAddr  ������ 0 remaddr remAddr��        p       �� �� 0 sel    �� �� 0 sharedlibname sharedLibName  �� �� 0 playlistname playlistName  ������ 0 playpid playPid��        l     ��������  ��  ��        l    _ ����  O     _   !   k    ^ " "  # $ # r    	 % & % 1    ��
�� 
sele & o      ���� 0 sel   $  ' ( ' Z   
 V ) *�� + ) =  
  , - , o   
 ���� 0 sel   - J    ����   * k    ! . .  / 0 / I   �� 1 2
�� .sysodlogaskr        TEXT 1 m     3 3 � 4 4 & N o   t r a c k s   s e l e c t e d . 2 �� 5 6
�� 
btns 5 J     7 7  8�� 8 m     9 9 � : :  C a n c e l��   6 �� ; <
�� 
dflt ; m    ����  < �� =��
�� 
disp = m    ����  ��   0  >�� > L    !����  ��  ��   + k   $ V ? ?  @ A @ r   $ * B C B n   $ ( D E D 4   % (�� F
�� 
cobj F m   & '����  E o   $ %���� 0 sel   C o      ���� 0 t1   A  G�� G Z   + V H I�� J H l  + 0 K���� K e   + 0 L L =  + 0 M N M n   + . O P O m   , .��
�� 
pcls P o   + ,���� 0 t1   N m   . /��
�� 
cShT��  ��   I r   3 ? Q R Q l  3 ; S���� S e   3 ; T T n   3 ; U V U 1   8 :��
�� 
pnam V n   3 8 W X W 1   6 8��
�� 
ctnr X n   3 6 Y Z Y 1   4 6��
�� 
ctnr Z o   3 4���� 0 t1  ��  ��   R o      ���� 0 sharedlibname sharedLibName��   J k   B V [ [  \ ] \ I  B S�� ^ _
�� .sysodlogaskr        TEXT ^ m   B E ` ` � a a 4 N o   s h a r e d   t r a c k s   s e l e c t e d . _ �� b c
�� 
btns b J   F K d d  e�� e m   F I f f � g g  C a n c e l��   c �� h i
�� 
dflt h m   L M����  i �� j��
�� 
disp j m   N O����  ��   ]  k�� k L   T V����  ��  ��   (  l m l l  W W��������  ��  ��   m  n o n n  W \ p q p I   X \�������� 0 get_login_info  ��  ��   q  f   W X o  r�� r l  ] ]��������  ��  ��  ��   ! m      s s�                                                                                  hook  alis    N  Macintosh HD               �0ڲH+   R�
iTunes.app                                                      U�����2        ����  	                Applications    �1�      ��r     R�  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  ��  ��     t u t l     ��������  ��  ��   u  v w v l     �� x y��   x   == end run    y � z z    = =   e n d   r u n w  { | { l     ��������  ��  ��   |  } ~ } l     ��  ���      == handlers = == == ==    � � � � .   = =   h a n d l e r s   =   = =   = =   = = ~  � � � i    � � � I      �������� 0 get_login_info  ��  ��   � k     � � �  � � � Q     n � � � � r     � � � n   	 � � � I    	�� ����� 0 read_defaults   �  ��� � o    ���� 0 sharedlibname sharedLibName��  ��   �  f     � J       � �  � � � o      ���� 0 remusername remUserName �  ��� � o      ���� 0 remhostipaddr remHostIPAddr��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 m   � �� ���
�� 
errn � o      ���� 0 n  ��   � Z     n � ��� � � E    & � � � J     $ � �  � � � m     !����  �  ��� � m   ! "�����@��   � o   $ %���� 0 n   � k   ) U � �  � � � l  ) )�� � ���   � %  get username for sharedLibName    � � � � >   g e t   u s e r n a m e   f o r   s h a r e d L i b N a m e �  � � � r   ) 8 � � � n   ) 6 � � � 1   4 6��
�� 
ttxt � l  ) 4 ����� � I  ) 4�� � �
�� .sysodlogaskr        TEXT � b   ) . � � � b   ) , � � � m   ) * � � � � � n E n t e r   t h e   u s e r n a m e   a s s o c i a t e d   w i t h   t h e   s h a r e d   l i b r a r y   " � o   * +���� 0 sharedlibname sharedLibName � m   , - � � � � �  " : � �� ���
�� 
dtxt � m   / 0 � � � � �  ��  ��  ��   � o      ���� 0 remusername remUserName �  � � � l  9 9��������  ��  ��   �  � � � l  9 9�� � ���   � ' ! get ip address for sharedLibName    � � � � B   g e t   i p   a d d r e s s   f o r   s h a r e d L i b N a m e �  � � � r   9 J � � � n   9 H � � � 1   F H��
�� 
ttxt � l  9 F ����� � I  9 F�� � �
�� .sysodlogaskr        TEXT � b   9 > � � � b   9 < � � � m   9 : � � � � � r E n t e r   t h e   I P   a d d r e s s   a s s o c i a t e d   w i t h   t h e   s h a r e d   l i b r a r y   " � o   : ;���� 0 sharedlibname sharedLibName � m   < = � � � � �  " : � �� ���
�� 
dtxt � m   ? B � � � � �  ��  ��  ��   � o      ���� 0 remhostipaddr remHostIPAddr �  � � � l  K K��������  ��  ��   �  ��� � n  K U � � � I   L U�� ����� 0 write_defaults   �  � � � o   L M���� 0 sharedlibname sharedLibName �  �� � J   M Q � �  � � � o   M N�~�~ 0 remusername remUserName �  ��} � o   N O�|�| 0 remhostipaddr remHostIPAddr�}  �  ��   �  f   K L��  ��   � k   X n � �  � � � l  X X�{ � ��{   �   some other error; abort    � � � � 0   s o m e   o t h e r   e r r o r ;   a b o r t �  � � � I  X ]�z ��y
�z .ascrcmnt****      � **** � o   X Y�x�x 0 m  �y   �  � � � I  ^ c�w ��v
�w .ascrcmnt****      � **** � o   ^ _�u�u 0 n  �v   �  ��t � R   d n�s�r �
�s .ascrerr ****      � ****�r   � �q ��p
�q 
errn � m   h k�o�o���p  �t   �  � � � l  o o�n�m�l�n  �m  �l   �  � � � r   o ~ � � � c   o z � � � l  o v ��k�j � b   o v � � � b   o t � � � o   o p�i�i 0 remusername remUserName � m   p s   �  @ � o   t u�h�h 0 remhostipaddr remHostIPAddr�k  �j   � m   v y�g
�g 
ctxt � o      �f�f 0 remaddr remAddr � �e l   �d�c�b�d  �c  �b  �e   �  l     �a�`�_�a  �`  �_    i    
 I      �^	�]�^ 0 write_defaults  	 

 o      �\�\ 0 k   �[ o      �Z�Z 0 l  �[  �]   I    �Y�X
�Y .sysoexecTEXT���     TEXT b      b      b      b     	 b      m      �  d e f a u l t s   w r i t e   o    �W�W  0 defaultsdomain defaultsDomain 1    �V
�V 
spac n   	  1   
 �U
�U 
strq o   	 
�T�T 0 k   m     �    - a r r a y   l   �S�R b      b    !"! l   #�Q�P# m    $$ �%%  '�Q  �P  " n   &'& I    �O(�N�O 0 list_to_text  ( )*) o    �M�M 0 l  * +�L+ m    ,, �--  '   '�L  �N  '  f      l   .�K�J. m    // �00  '�K  �J  �S  �R  �X   121 l     �I�H�G�I  �H  �G  2 343 i    565 I      �F7�E�F 0 read_defaults  7 8�D8 o      �C�C 0 k  �D  �E  6 L     99 n     :;: 2   �B
�B 
cpar; l    <�A�@< I    �?=�>
�? .sysoexecTEXT���     TEXT= l    >�=�<> b     ?@? b     ABA l    C�;�:C b     DED b     	FGF b     HIH m     JJ �KK  d e f a u l t s   r e a d  I o    �9�9  0 defaultsdomain defaultsDomainG 1    �8
�8 
spacE n   	 LML 1   
 �7
�7 
strqM o   	 
�6�6 0 k  �;  �:  B 1    �5
�5 
spac@ m    NN �OO b |   g r e p   '   ' | s e d   - e   ' s /   / / g '   - e ' s / " / / g '   - e ' s / \ , / / g '�=  �<  �>  �A  �@  4 PQP l     �4�3�2�4  �3  �2  Q RSR i   TUT I      �1V�0�1 0 escape_single_quotes  V W�/W o      �.�. 0 x  �/  �0  U L     XX c     
YZY n    [\[ I    �-]�,�- 0 replace_chars  ] ^_^ o    �+�+ 0 x  _ `a` m    bb �cc  'a d�*d m    ee �ff  ' \ ' '�*  �,  \  f     Z m    	�)
�) 
ctxtS ghg l     �(�'�&�(  �'  �&  h iji i    klk I      �%m�$�% 0 replace_chars  m non o      �#�# 0 txt  o pqp o      �"�" 0 srch  q r�!r o      � �  0 repl  �!  �$  l k      ss tut r     vwv l    x��x o     �� 0 srch  �  �  w n     yzy 1    �
� 
txdlz 1    �
� 
ascru {|{ r    }~} n    	� 2    	�
� 
citm� o    �� 0 txt  ~ l     ���� o      �� 0 	item_list  �  �  | ��� r    ��� l   ���� o    �� 0 repl  �  �  � n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� r    ��� c    ��� l   ���� o    �� 0 	item_list  �  �  � m    �
� 
TEXT� o      �� 0 txt  � ��� r    ��� m    �� ���  � n     ��� 1    �
� 
txdl� 1    �

�
 
ascr� ��	� L     �� o    �� 0 txt  �	  j ��� l     ����  �  �  � ��� i    ��� I      ���� 0 list_to_text  � ��� o      �� 0 thelist theList� ��� o      � �  	0 delim  �  �  � k     3�� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 saved saveD� ��� Q    *���� k   	 �� ��� r   	 ��� J   	 �� ���� o   	 
���� 	0 delim  ��  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� r    ��� c    ��� o    ���� 0 thelist theList� m    ��
�� 
ctxt� o      ���� 0 txt  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errstr errStr� �����
�� 
errn� o      ���� 0 errnum errNum��  � k    *�� ��� r    #��� o    ���� 0 saved saveD� n     ��� 1     "��
�� 
txdl� 1     ��
�� 
ascr� ���� R   $ *����
�� .ascrerr ****      � ****� o   ( )���� 0 errstr errStr� �����
�� 
errn� o   & '���� 0 errnum errNum��  ��  � ��� r   + 0��� o   + ,���� 0 saved saveD� n     ��� 1   - /��
�� 
txdl� 1   , -��
�� 
ascr� ���� L   1 3�� l  1 2������ o   1 2���� 0 txt  ��  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       
��� ���������  � ������������������  0 defaultsdomain defaultsDomain�� 0 get_login_info  �� 0 write_defaults  �� 0 read_defaults  �� 0 escape_single_quotes  �� 0 replace_chars  �� 0 list_to_text  
�� .aevtoappnull  �   � ****� �� ����������� 0 get_login_info  ��  ��  � ������ 0 m  �� 0 n  � ��������������� � ��� ����� � � ��������� ������ 0 sharedlibname sharedLibName�� 0 read_defaults  
�� 
cobj�� 0 remusername remUserName�� 0 remhostipaddr remHostIPAddr�� 0 m  � ������
�� 
errn�� 0 n  ��  ���@
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt�� 0 write_defaults  
�� .ascrcmnt****      � ****
�� 
errn����
�� 
ctxt�� 0 remaddr remAddr�� � )�k+ E[�k/E�Z[�l/E�ZW UX  k�lv� 1��%�%��l �,E�O��%�%�a l �,E�O)���lvl+ Y �j O�j O)a a lhO�a %�%a &E` OP� ������������ 0 write_defaults  �� ����� �  ������ 0 k  �� 0 l  ��  � ������ 0 k  �� 0 l  � 	����$,��/��
�� 
spac
�� 
strq�� 0 list_to_text  
�� .sysoexecTEXT���     TEXT��  �b   %�%��,%�%�)��l+ %�%%j � ��6���������� 0 read_defaults  �� ����� �  ���� 0 k  ��  � ���� 0 k  � J����N����
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
cpar�� �b   %�%��,%�%�%j �-E� ��U���������� 0 escape_single_quotes  �� ����� �  ���� 0 x  ��  � ���� 0 x  � be������ 0 replace_chars  
�� 
ctxt�� )���m+ �&� ��l���������� 0 replace_chars  �� ����� �  �������� 0 txt  �� 0 srch  �� 0 repl  ��  � ���������� 0 txt  �� 0 srch  �� 0 repl  �� 0 	item_list  � ���������
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� !���,FO��-E�O���,FO��&E�O���,FO�� ������������� 0 list_to_text  �� ����� �  ����� 0 thelist theList� 	0 delim  ��  � �~�}�|�{�z�y�~ 0 thelist theList�} 	0 delim  �| 0 saved saveD�{ 0 txt  �z 0 errstr errStr�y 0 errnum errNum� �x�w�v�u��t
�x 
ascr
�w 
txdl
�v 
ctxt�u 0 errstr errStr� �s�r�q
�s 
errn�r 0 errnum errNum�q  
�t 
errn�� 4��,E�O �kv��,FO��&E�W X  ���,FO)�l�O���,FO�� �p��o�n���m
�p .aevtoappnull  �   � ****� k     _��  �l�l  �o  �n  �  �  s�k�j 3�i 9�h�g�f�e�d�c�b�a�`�_�^ ` f�]
�k 
sele�j 0 sel  
�i 
btns
�h 
dflt
�g 
disp�f 
�e .sysodlogaskr        TEXT
�d 
cobj�c 0 t1  
�b 
pcls
�a 
cShT
�` 
ctnr
�_ 
pnam�^ 0 sharedlibname sharedLibName�] 0 get_login_info  �m `� \*�,E�O�jv  ���kv�k�j� 	OhY 4��k/E�O��,�  ��,�,�,EE` Y a �a kv�k�j� 	OhO)j+ OPU ascr  ��ޭ