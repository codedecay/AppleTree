FasdUAS 1.101.10   ��   ��    k             l      ��  ��   /) 
 Speaks the  date and time of day
 
 Copyright 2008 Apple Inc. All rights reserved.
 
 You may incorporate this Apple sample code into your program(s) without
 restriction.  This Apple sample code has been provided "AS IS" and the
 responsibility for its operation is yours.  You are not permitted to
 redistribute this Apple sample code as "Apple sample code" after having
 made changes.  If you're going to redistribute the code, we require
 that you make it clear that the code was descended from Apple sample
 code, but that you've made changes.
      � 	 	R   
   S p e a k s   t h e     d a t e   a n d   t i m e   o f   d a y 
   
   C o p y r i g h t   2 0 0 8   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d . 
   
   Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t 
   r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e 
   r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o 
   r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g 
   m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e 
   t h a t   y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e 
   c o d e ,   b u t   t h a t   y o u ' v e   m a d e   c h a n g e s . 
     
  
 l     ��������  ��  ��        i         I      �������� (0 isvoiceoverrunning isVoiceOverRunning��  ��    k            r         m     ��
�� boovfals  o      ���� 0 	isrunning 	isRunning      O        r        E        l    ����  n        1    ��
�� 
pnam  2   ��
�� 
prcs��  ��    m         � ! !  V o i c e O v e r  o      ���� 0 	isrunning 	isRunning  m     " "�                                                                                  sevs  alis    �  MacintoshHD                �0ڲH+  �r�System Events.app                                              ��a���        ����  	                CoreServices    �1�      ��`�    �r��r~�r}  <MacintoshHD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h H D  -System/Library/CoreServices/System Events.app   / ��     #�� # L     $ $ o    ���� 0 	isrunning 	isRunning��     % & % l     ��������  ��  ��   &  ' ( ' i     ) * ) I      �������� F0 !isvoiceoverrunningwithapplescript !isVoiceOverRunningWithAppleScript��  ��   * k     0 + +  , - , Z     - . /���� . I     �������� (0 isvoiceoverrunning isVoiceOverRunning��  ��   / k    ) 0 0  1 2 1 r     3 4 3 m    	��
�� boovtrue 4 o      ���� 40 isrunningwithapplescript isRunningWithAppleScript 2  5 6 5 l   ��������  ��  ��   6  7 8 7 l   �� 9 :��   9 - ' is AppleScript enabled on VoiceOver --    : � ; ; N   i s   A p p l e S c r i p t   e n a b l e d   o n   V o i c e O v e r   - - 8  < = < O    & > ? > Q    % @ A B @ r     C D C n     E F E 1    ��
�� 
pbnd F 1    ��
�� 
vocu D o      ���� 0 x   A R      ������
�� .ascrerr ****      � ****��  ��   B r   " % G H G m   " #��
�� boovfals H o      ���� 40 isrunningwithapplescript isRunningWithAppleScript ? m     I I�                                                                                      @ alis    ~  MacintoshHD                �0ڲH+  �r�VoiceOver.app                                                  ��̵��        ����  	                CoreServices    �1�      ̶4�    �r��r~�r}  8MacintoshHD:System: Library: CoreServices: VoiceOver.app    V o i c e O v e r . a p p    M a c i n t o s h H D  )System/Library/CoreServices/VoiceOver.app   / ��   =  J�� J L   ' ) K K o   ' (���� 40 isrunningwithapplescript isRunningWithAppleScript��  ��  ��   -  L�� L L   . 0 M M m   . /��
�� boovfals��   (  N O N l     ��������  ��  ��   O  P Q P l     R���� R r      S T S I    ������
�� .misccurdldt    ��� null��  ��   T o      ���� 0 currentdate currentDate��  ��   Q  U V U l    W���� W r     X Y X m    	 Z Z � [ [  A M Y o      ���� 0 ampm amPM��  ��   V  \ ] \ l    ^���� ^ r     _ ` _ l    a���� a n    b c b 1    ��
�� 
hour c o    ���� 0 currentdate currentDate��  ��   ` o      ���� 0 currenthour currentHour��  ��   ]  d e d l    f���� f r     g h g n    i j i 1    ��
�� 
min  j o    ���� 0 currentdate currentDate h o      ����  0 currentminutes currentMinutes��  ��   e  k l k l     ��������  ��  ��   l  m n m l   / o���� o Z    / p q�� r p l   # s���� s F    # t u t @     v w v o    ���� 0 currenthour currentHour w m    ����  u A    ! x y x o    ���� 0 currenthour currentHour y m     ���� ��  ��   q r   & ) z { z m   & ' | | � } }  P M { o      ���� 0 ampm amPM��   r r   , / ~  ~ m   , - � � � � �  A M  o      ���� 0 ampm amPM��  ��   n  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ( "  make minutes below 10 sound nice    � � � � D     m a k e   m i n u t e s   b e l o w   1 0   s o u n d   n i c e �  � � � l  0 A ����� � Z   0 A � ����� � A   0 3 � � � o   0 1����  0 currentminutes currentMinutes � m   1 2���� 
 � r   6 = � � � c   6 ; � � � l  6 9 ����� � b   6 9 � � � m   6 7 � � � � �  0 � o   7 8����  0 currentminutes currentMinutes��  ��   � m   9 :��
�� 
ctxt � o      ����  0 currentminutes currentMinutes��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ( "  ensure 0:nn gets set to 12:nn AM    � � � � D     e n s u r e   0 : n n   g e t s   s e t   t o   1 2 : n n   A M �  � � � l  B O ����� � Z   B O � ����� � =  B E � � � o   B C���� 0 currenthour currentHour � m   C D����   � r   H K � � � m   H I����  � o      ���� 0 currenthour currentHour��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � !   readjust for 12 hour time    � � � � 6     r e a d j u s t   f o r   1 2   h o u r   t i m e �  � � � l  P _ ����� � Z   P _ � ����� � l  P S ����� � ?   P S � � � o   P Q���� 0 currenthour currentHour � m   Q R���� ��  ��   � r   V [ � � � l  V Y ����� � \   V Y � � � o   V W���� 0 currenthour currentHour � m   W X���� ��  ��   � o      ���� 0 currenthour currentHour��  ��  ��  ��   �  � � � l     ��~�}�  �~  �}   �  � � � l  ` � ��|�{ � r   ` � � � � c   ` � � � � b   ` � � � � b   ` � � � � b   ` � � � � b   `  � � � b   ` { � � � b   ` w � � � b   ` s � � � b   ` k � � � l  ` g ��z�y � c   ` g � � � l  ` e ��x�w � n  ` e � � � m   a e�v
�v 
mnth � o   ` a�u�u 0 currentdate currentDate�x  �w   � m   e f�t
�t 
ctxt�z  �y   � m   g j � � � � �    � l  k r ��s�r � c   k r � � � l  k p ��q�p � n  k p � � � 1   l p�o
�o 
day  � o   k l�n�n 0 currentdate currentDate�q  �p   � m   p q�m
�m 
ctxt�s  �r   � m   s v � � � � �  ,   � l  w z ��l�k � c   w z � � � o   w x�j�j 0 currenthour currentHour � m   x y�i
�i 
ctxt�l  �k   � m   { ~ � � � � �  : � l   � ��h�g � c    � � � � l   � ��f�e � o    ��d�d  0 currentminutes currentMinutes�f  �e   � m   � ��c
�c 
ctxt�h  �g   � m   � � � � � � �    � o   � ��b�b 0 ampm amPM � m   � ��a
�a 
ctxt � o      �`�` 0 currenttime currentTime�|  �{   �  � � � l     �_�^�]�_  �^  �]   �  � � � l  � � ��\�[ � Z   � � � ��Z � � I   � ��Y�X�W�Y F0 !isvoiceoverrunningwithapplescript !isVoiceOverRunningWithAppleScript�X  �W   � O   � � � � � I  � ��V ��U
�V .VOASoutpnull��� ��� **** � o   � ��T�T 0 currenttime currentTime�U   � m   � � � ��                                                                                      @ alis    ~  MacintoshHD                �0ڲH+  �r�VoiceOver.app                                                  ��̵��        ����  	                CoreServices    �1�      ̶4�    �r��r~�r}  8MacintoshHD:System: Library: CoreServices: VoiceOver.app    V o i c e O v e r . a p p    M a c i n t o s h H D  )System/Library/CoreServices/VoiceOver.app   / ��  �Z   � k   � � � �  � � � I  � ��S �R
�S .sysottosnull���     TEXT  o   � ��Q�Q 0 currenttime currentTime�R   � �P I  � ��O�N
�O .sysodelanull��� ��� nmbr m   � ��M�M �N  �P  �\  �[   � �L l  � ��K�J o   � ��I�I 0 c  �K  �J  �L       �H	 ��G�F
�E�D�C�B�H   �A�@�?�>�=�<�;�:�9�8�7�6�A (0 isvoiceoverrunning isVoiceOverRunning�@ F0 !isvoiceoverrunningwithapplescript !isVoiceOverRunningWithAppleScript
�? .aevtoappnull  �   � ****�> 0 currentdate currentDate�= 0 ampm amPM�< 0 currenthour currentHour�;  0 currentminutes currentMinutes�: 0 currenttime currentTime�9  �8  �7  �6   �5 �4�3�2�5 (0 isvoiceoverrunning isVoiceOverRunning�4  �3   �1�1 0 	isrunning 	isRunning  "�0�/  
�0 
prcs
�/ 
pnam�2 fE�O� *�-�,�E�UO� �. *�-�,�+�. F0 !isvoiceoverrunningwithapplescript !isVoiceOverRunningWithAppleScript�-  �,   �*�)�* 40 isrunningwithapplescript isRunningWithAppleScript�) 0 x   �( I�'�&�%�$�( (0 isvoiceoverrunning isVoiceOverRunning
�' 
vocu
�& 
pbnd�%  �$  �+ 1*j+   &eE�O�  *�,�,E�W 
X  fE�UO�Y hOf �#�"�!� 
�# .aevtoappnull  �   � **** k     �  P  U  \  d  m  �  �  �  �  � ��  �"  �!     �� Z�������� | �� ��� �� � � ��� �����
� .misccurdldt    ��� null� 0 currentdate currentDate� 0 ampm amPM
� 
hour� 0 currenthour currentHour
� 
min �  0 currentminutes currentMinutes� � 
� 
bool� 

� 
ctxt
� 
mnth
� 
day � 0 currenttime currentTime� F0 !isvoiceoverrunningwithapplescript !isVoiceOverRunningWithAppleScript
� .VOASoutpnull��� ��� ****
� .sysottosnull���     TEXT
� .sysodelanull��� ��� nmbr� 0 c  �  �*j  E�O�E�O��,E�O��,E�O��	 ���& �E�Y �E�O�� ��%�&E�Y hO�j  �E�Y hO�� 
��E�Y hO�a ,�&a %�a ,�&%a %��&%a %��&%a %�%�&E` O*j+  a  	_ j UY _ j Olj O_ 	 ldt     ;n�G �F :
 �  M a y   1 9 ,   5 : 5 8   A M�E  �D  �C  �B  ascr  ��ޭ