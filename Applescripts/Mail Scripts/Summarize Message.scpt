FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
Summarize Message

Copyright � 2003�2013 Apple Inc. All rights reserved.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require that
you make it clear that the code was descended from Apple sample code,
but that you've made changes.
     � 	 	( 
 S u m m a r i z e   M e s s a g e 
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
 l     ��������  ��  ��        l      ��  ��    � �
This script takes the selected messages, creates a summary using the
summarize command in the Standard Additions, then speaks the summary
using the say command, also in Standard Additions.
     �  | 
 T h i s   s c r i p t   t a k e s   t h e   s e l e c t e d   m e s s a g e s ,   c r e a t e s   a   s u m m a r y   u s i n g   t h e 
 s u m m a r i z e   c o m m a n d   i n   t h e   S t a n d a r d   A d d i t i o n s ,   t h e n   s p e a k s   t h e   s u m m a r y 
 u s i n g   t h e   s a y   c o m m a n d ,   a l s o   i n   S t a n d a r d   A d d i t i o n s . 
      l     ��������  ��  ��        l    x ����  O     x    k    w       r    	    1    ��
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
ret  ? o      ���� 0 speakstring speakString��   * l  6 9 J K L J r   6 9 M N M m   6 7 O O � P P > T h e r e   a r e   n o   s e l e c t e d   m e s s a g e s . N o      ���� 0 speakstring speakString K 0 * selectionCount is less than or equal to 0    L � Q Q T   s e l e c t i o n C o u n t   i s   l e s s   t h a n   o r   e q u a l   t o   0 &  R S R l  : :��������  ��  ��   S  T�� T Y   : w U�� V W�� U k   D r X X  Y Z Y r   D J [ \ [ n   D H ] ^ ] 4   E H�� _
�� 
cobj _ o   F G���� 0 messagenumber messageNumber ^ o   D E���� $0 selectedmessages selectedMessages \ o      ���� 0 
themessage 
theMessage Z  ` a ` r   K \ b c b I  K X�� d e
�� .fbcssummTEXT        **** d l  K P f���� f c   K P g h g n   K N i j i 1   L N��
�� 
ctnt j o   K L���� 0 
themessage 
theMessage h m   N O��
�� 
TEXT��  ��   e �� k��
�� 
in   k m   S T���� ��   c o      ���� 0 summary   a  l�� l r   ] r m n m b   ] p o p o b   ] n q r q b   ] j s t s b   ] f u v u b   ] b w x w o   ] ^���� 0 speakstring speakString x m   ^ a y y � z z & S u m m a r y   o f   m e s s a g e   v l  b e {���� { c   b e | } | o   b c���� 0 messagenumber messageNumber } m   c d��
�� 
TEXT��  ��   t m   f i ~ ~ �    :   r o   j m���� 0 summary   p o   n o��
�� 
ret  n o      ���� 0 speakstring speakString��  �� 0 messagenumber messageNumber V m   = >����  W o   > ?����  0 selectioncount selectionCount��  ��    m      � ��                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��  ��     ��� � l  y ~ ����� � I  y ~�� ���
�� .sysottosnull���     TEXT � o   y z���� 0 speakstring speakString��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     ~ � �   � �  �����  ��  ��   � ���� 0 messagenumber messageNumber �  ��������� 5 7���� F H O�������������� y ~��
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
ctnt
�� 
TEXT
�� 
in  
�� .fbcssummTEXT        ****�� 0 summary  
�� .sysottosnull���     TEXT�� � u*�,E�O�j E�O�k ��%�%�%E�Y �k  ��%�%�%E�Y �E�O <k�kh  ��/E�O��,�&a ll E` O�a %��&%a %_ %�%E�[OY��UO�j  ascr  ��ޭ