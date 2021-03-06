FasdUAS 1.101.10   ��   ��    k             l      ��  ��   "
Sample Rule Action Script

Copyright � 2003�2013 Apple Inc. All rights reserved.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require that
you make it clear that the code was descended from Apple sample code,
but that you've made changes.
     � 	 	8 
 S a m p l e   R u l e   A c t i o n   S c r i p t 
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
 l     ��������  ��  ��        l      ��  ��   ��
This script is an example of how to write an AppleScript that can be
attached as a rule action. See Mail Help for details and Mail's 
AppleScript dictionary for the full terminology for the 'perform mail
action with messages' handler.

If you attach this script to a rule action, and the rule
matches an incoming message, a dialog box will display, showing
the name of the rule that matched and the subject of the message
that matched. One dialog per matched message will appear.

This is also an example of how you can write scripts that appear in the
Scripts menu and can pass in parameters for the selected messages and/or
mailboxes in Mail's main viewer window.
     �  6 
 T h i s   s c r i p t   i s   a n   e x a m p l e   o f   h o w   t o   w r i t e   a n   A p p l e S c r i p t   t h a t   c a n   b e 
 a t t a c h e d   a s   a   r u l e   a c t i o n .   S e e   M a i l   H e l p   f o r   d e t a i l s   a n d   M a i l ' s   
 A p p l e S c r i p t   d i c t i o n a r y   f o r   t h e   f u l l   t e r m i n o l o g y   f o r   t h e   ' p e r f o r m   m a i l 
 a c t i o n   w i t h   m e s s a g e s '   h a n d l e r . 
 
 I f   y o u   a t t a c h   t h i s   s c r i p t   t o   a   r u l e   a c t i o n ,   a n d   t h e   r u l e 
 m a t c h e s   a n   i n c o m i n g   m e s s a g e ,   a   d i a l o g   b o x   w i l l   d i s p l a y ,   s h o w i n g 
 t h e   n a m e   o f   t h e   r u l e   t h a t   m a t c h e d   a n d   t h e   s u b j e c t   o f   t h e   m e s s a g e 
 t h a t   m a t c h e d .   O n e   d i a l o g   p e r   m a t c h e d   m e s s a g e   w i l l   a p p e a r . 
 
 T h i s   i s   a l s o   a n   e x a m p l e   o f   h o w   y o u   c a n   w r i t e   s c r i p t s   t h a t   a p p e a r   i n   t h e 
 S c r i p t s   m e n u   a n d   c a n   p a s s   i n   p a r a m e t e r s   f o r   t h e   s e l e c t e d   m e s s a g e s   a n d / o r 
 m a i l b o x e s   i n   M a i l ' s   m a i n   v i e w e r   w i n d o w . 
      l     ��������  ��  ��     ��  w          i         I     ��  
�� .emalcpmanull���     ****  o      ���� 0 themessages theMessages  �� ��
�� 
pmar  o      ���� 0 therule theRule��    O     y    k    x       r       !   b     " # " b    	 $ % $ b     & ' & m     ( ( � ) )N T h i s   A p p l e S c r i p t   i s   i n t e n d e d   t o   b e   u s e d   a s   a n   A p p l e S c r i p t   r u l e   a c t i o n ,   b u t   i s   a l s o   a n   e x a m p l e   o f   h o w   t o   w r i t e   s c r i p t s   t h a t   a c t   o n   a   s e l e c t i o n   o f   m e s s a g e s   o r   m a i l b o x e s . ' o    ��
�� 
ret  % o    ��
�� 
ret  # m   	 
 * * � + + � T o   v i e w   t h i s   s c r i p t ,   h o l d   d o w n   t h e   o p t i o n   k e y   a n d   s e l e c t   i t   a g a i n   f r o m   t h e   S c r i p t s   m e n u . ! o      ���� 0 thetext theText   , - , X    X .�� / . k    S 0 0  1 2 1 r    # 3 4 3 n    ! 5 6 5 1    !��
�� 
subj 6 o    ���� 0 eachmessage eachMessage 4 o      ���� 0 
thesubject 
theSubject 2  7�� 7 Q   $ S 8 9�� 8 k   ' J : :  ; < ; l  ' '�� = >��   = 6 0 If this is not being executed as a rule action,    > � ? ? `   I f   t h i s   i s   n o t   b e i n g   e x e c u t e d   a s   a   r u l e   a c t i o n , <  @ A @ l  ' '�� B C��   B 6 0 getting the name of theRule variable will fail.    C � D D `   g e t t i n g   t h e   n a m e   o f   t h e R u l e   v a r i a b l e   w i l l   f a i l . A  E F E r   ' , G H G n   ' * I J I 1   ( *��
�� 
pnam J o   ' (���� 0 therule theRule H o      ���� 0 therulename theRuleName F  K L K r   - 4 M N M b   - 2 O P O b   - 0 Q R Q m   - . S S � T T   T h e   r u l e   n a m e d   ' R o   . /���� 0 therulename theRuleName P m   0 1 U U � V V . '   m a t c h e d   t h i s   m e s s a g e : N o      ���� 0 thetext theText L  W X W r   5 @ Y Z Y b   5 > [ \ [ b   5 < ] ^ ] b   5 : _ ` _ b   5 8 a b a o   5 6���� 0 thetext theText b o   6 7��
�� 
ret  ` o   8 9��
�� 
ret  ^ m   : ; c c � d d  S u b j e c t :   \ o   < =���� 0 
thesubject 
theSubject Z o      ���� 0 thetext theText X  e f e I  A F�� g��
�� .sysodlogaskr        TEXT g o   A B���� 0 thetext theText��   f  h�� h r   G J i j i m   G H k k � l l   j o      ���� 0 thetext theText��   9 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 eachmessage eachMessage / o    ���� 0 themessages theMessages -  m�� m Z   Y x n o���� n >  Y ^ p q p o   Y Z���� 0 thetext theText q m   Z ] r r � s s   o I  a t�� t u
�� .sysodlogaskr        TEXT t o   a b���� 0 thetext theText u �� v w
�� 
btns v J   e j x x  y�� y m   e h z z � { {  O K��   w �� |��
�� 
dflt | m   m n���� ��  ��  ��  ��    m      } }�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��   �                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��       �� ~ ��   ~ ��
�� .emalcpmanull���     ****  �� ���� � ���
�� .emalcpmanull���     ****�� 0 themessages theMessages�� ������
�� 
pmar�� 0 therule theRule��   � �������������� 0 themessages theMessages�� 0 therule theRule�� 0 thetext theText�� 0 eachmessage eachMessage�� 0 
thesubject 
theSubject�� 0 therulename theRuleName �  } (�� *���������� S U c�� k���� r�� z����
�� 
ret 
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
subj
�� 
pnam
�� .sysodlogaskr        TEXT��  ��  
�� 
btns
�� 
dflt�� �� z� v��%�%�%E�O I�[��l kh ��,E�O (��,E�O�%�%E�O��%�%�%�%E�O�j O�E�W X  h[OY��O�a  �a a kva ka  Y hUascr  ��ޭ