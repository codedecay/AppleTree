FasdUAS 1.101.10   ��   ��    k             l      ��  ��   !
Speak Sender and Subject

Copyright � 2003�2013 Apple Inc. All rights reserved.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require that
you make it clear that the code was descended from Apple sample code,
but that you've made changes.
     � 	 	6 
 S p e a k   S e n d e r   a n d   S u b j e c t 
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
 l     ��������  ��  ��        l      ��  ��    K E
This script speaks the sender and subject of each selected message.
     �   � 
 T h i s   s c r i p t   s p e a k s   t h e   s e n d e r   a n d   s u b j e c t   o f   e a c h   s e l e c t e d   m e s s a g e . 
      l     ��������  ��  ��        l    � ����  O     �    k    �       r    	    1    ��
�� 
slct  o      ���� $0 selectedmessages selectedMessages      l  
 
��������  ��  ��         r   
  ! " ! l  
  #���� # I  
 �� $��
�� .corecnte****       **** $ o   
 ���� $0 selectedmessages selectedMessages��  ��  ��   " o      ����  0 selectioncount selectionCount    % & % Z    9 ' ( ) * ' ?    + , + o    ����  0 selectioncount selectionCount , m    ����  ( r    ! - . - b     / 0 / b     1 2 1 b     3 4 3 m     5 5 � 6 6  T h e r e   a r e   4 o    ����  0 selectioncount selectionCount 2 m     7 7 � 8 8 &   s e l e c t e d   m e s s a g e s . 0 o    ��
�� 
ret  . o      ���� 0 speakstring speakString )  9 : 9 =  $ ' ; < ; o   $ %����  0 selectioncount selectionCount < m   % &����  :  =�� = r   * 3 > ? > b   * 1 @ A @ b   * / B C B b   * - D E D m   * + F F � G G  T h e r e   i s   E o   + ,����  0 selectioncount selectionCount C m   - . H H � I I $   s e l e c t e d   m e s s a g e . A o   / 0��
�� 
ret  ? o      ���� 0 speakstring speakString��   * l  6 9 J K L J r   6 9 M N M m   6 7 O O � P P > T h e r e   a r e   n o   s e l e c t e d   m e s s a g e s . N o      ���� 0 speakstring speakString K 0 * selectionCount is less than or equal to 0    L � Q Q T   s e l e c t i o n C o u n t   i s   l e s s   t h a n   o r   e q u a l   t o   0 &  R S R l  : :��������  ��  ��   S  T�� T Y   : � U�� V W�� U k   D � X X  Y Z Y r   D J [ \ [ n   D H ] ^ ] 4   E H�� _
�� 
cobj _ o   F G���� 0 messagenumber messageNumber ^ o   D E���� $0 selectedmessages selectedMessages \ o      ���� 0 
themessage 
theMessage Z  ` a ` r   K P b c b n   K N d e d 1   L N��
�� 
subj e o   K L���� 0 
themessage 
theMessage c o      ���� 0 
thesubject 
theSubject a  f g f r   Q ^ h i h I  Q Z�� j��
�� .emaleafnnull���     ctxt j l  Q V k���� k n   Q V l m l 1   R V��
�� 
sndr m o   Q R���� 0 
themessage 
theMessage��  ��  ��   i o      ���� 0 	thesender 	theSender g  n�� n r   _ � o p o b   _ ~ q r q b   _ | s t s b   _ x u v u b   _ v w x w b   _ r y z y b   _ n { | { b   _ j } ~ } b   _ d  �  o   _ `���� 0 speakstring speakString � m   ` c � � � � �  M e s s a g e   ~ l  d i ����� � c   d i � � � o   d e���� 0 messagenumber messageNumber � m   e h��
�� 
TEXT��  ��   | m   j m � � � � �    F r o m :   z o   n q���� 0 	thesender 	theSender x m   r u � � � � �  ,   S u b j e c t :   v o   v w���� 0 
thesubject 
theSubject t m   x { � � � � �  .     r o   | }��
�� 
ret  p o      ���� 0 speakstring speakString��  �� 0 messagenumber messageNumber V m   = >����  W o   > ?����  0 selectioncount selectionCount��  ��    m      � ��                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��  ��     ��� � l  � � ����� � I  � ��� ���
�� .sysottosnull���     TEXT � o   � ����� 0 speakstring speakString��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  �����  ��  ��   � ���� 0 messagenumber messageNumber �  ��������� 5 7���� F H O�������������� ��� � � ���
�� 
slct�� $0 selectedmessages selectedMessages
�� .corecnte****       ****��  0 selectioncount selectionCount
�� 
ret �� 0 speakstring speakString
�� 
cobj�� 0 
themessage 
theMessage
�� 
subj�� 0 
thesubject 
theSubject
�� 
sndr
�� .emaleafnnull���     ctxt�� 0 	thesender 	theSender
�� 
TEXT
�� .sysottosnull���     TEXT�� �� �*�,E�O�j E�O�k ��%�%�%E�Y �k  ��%�%�%E�Y �E�O Jk�kh  ��/E�O��,E�O�a ,j E` O�a %�a &%a %_ %a %�%a %�%E�[OY��UO�j  ascr  ��ޭ