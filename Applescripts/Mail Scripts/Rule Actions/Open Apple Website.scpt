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
 l     ��������  ��  ��        l      ��  ��   ��
This script is an example of how to write an AppleScript that can be
attached as a rule action. See Mail Help for details and Mail's 
AppleScript dictionary for the full terminology for the 'perform mail
action with messages' handler.

You can attach this script to a rule action that matches
any messages from 'apple.com'. If it matches, the script
will launch Safari and display Apple's main webpage
     �  & 
 T h i s   s c r i p t   i s   a n   e x a m p l e   o f   h o w   t o   w r i t e   a n   A p p l e S c r i p t   t h a t   c a n   b e 
 a t t a c h e d   a s   a   r u l e   a c t i o n .   S e e   M a i l   H e l p   f o r   d e t a i l s   a n d   M a i l ' s   
 A p p l e S c r i p t   d i c t i o n a r y   f o r   t h e   f u l l   t e r m i n o l o g y   f o r   t h e   ' p e r f o r m   m a i l 
 a c t i o n   w i t h   m e s s a g e s '   h a n d l e r . 
 
 Y o u   c a n   a t t a c h   t h i s   s c r i p t   t o   a   r u l e   a c t i o n   t h a t   m a t c h e s 
 a n y   m e s s a g e s   f r o m   ' a p p l e . c o m ' .   I f   i t   m a t c h e s ,   t h e   s c r i p t 
 w i l l   l a u n c h   S a f a r i   a n d   d i s p l a y   A p p l e ' s   m a i n   w e b p a g e 
      l     ��������  ��  ��     ��  w          i         I     �� ��
�� .emalcpmanull���     ****  o      ���� 0 themessages theMessages��    O         k           r        I   ����  
�� .corecrel****      � null��     �� !��
�� 
kocl ! m    ��
�� 
docu��    o      ���� 0 thedocument theDocument   "�� " r     # $ # m     % % � & & ( h t t p : / / w w w . a p p l e . c o m $ n       ' ( ' 1    ��
�� 
pURL ( o    ���� 0 thedocument theDocument��    m      ) )�                                                                                  sfri  alis    N  MountainLion               �ofeH+     M
Safari.app                                                       ^�N��        ����  	                Applications    �o��      �N�d       M  %MountainLion:Applications: Safari.app    
 S a f a r i . a p p    M o u n t a i n L i o n  Applications/Safari.app   / ��   �                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��       �� * +��   * ��
�� .emalcpmanull���     **** + �� ���� , -��
�� .emalcpmanull���     ****�� 0 themessages theMessages��   , ������ 0 themessages theMessages�� 0 thedocument theDocument -  )������ %��
�� 
kocl
�� 
docu
�� .corecrel****      � null
�� 
pURL�� � *��l E�O��,FUascr  ��ޭ