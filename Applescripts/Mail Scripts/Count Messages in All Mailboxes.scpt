FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ("
Count Messages in All Mailboxes

Copyright � 2002�2013 Apple Inc. All rights reserved.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	D 
 C o u n t   M e s s a g e s   i n   A l l   M a i l b o x e s 
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
This script goes through each mailbox, gets the total message count and
the unread count, then displays the final output in a new email message.
     �  $ 
 T h i s   s c r i p t   g o e s   t h r o u g h   e a c h   m a i l b o x ,   g e t s   t h e   t o t a l   m e s s a g e   c o u n t   a n d 
 t h e   u n r e a d   c o u n t ,   t h e n   d i s p l a y s   t h e   f i n a l   o u t p u t   i n   a   n e w   e m a i l   m e s s a g e . 
      l     ��������  ��  ��        l    � ����  O     �    k    �       r    	    2    ��
�� 
mbxp  o      ����  0 localmailboxes localMailboxes      Z   
 &   �� !  ?  
  " # " l  
  $���� $ I  
 �� %��
�� .corecnte****       **** % o   
 ����  0 localmailboxes localMailboxes��  ��  ��   # m    ����     r      & ' & b     ( ) ( b     * + * m     , , � - - 6 L o c a l   m a i l b o x e s   ( O n   M y   M a c ) + o    ��
�� 
ret  ) n    . / . I    �� 0���� <0 getmessagecountsformailboxes getMessageCountsForMailboxes 0  1�� 1 o    ����  0 localmailboxes localMailboxes��  ��   /  f     ' o      ���� *0 messagecountdisplay messageCountDisplay��   ! r   # & 2 3 2 m   # $ 4 4 � 5 5   3 o      ���� *0 messagecountdisplay messageCountDisplay   6 7 6 l  ' '��������  ��  ��   7  8 9 8 r   ' , : ; : 2   ' *��
�� 
mact ; o      ���� 0 everyaccount everyAccount 9  < = < X   - j >�� ? > k   = e @ @  A B A r   = B C D C n   = @ E F E 2   > @��
�� 
mbxp F o   = >���� 0 eachaccount eachAccount D o      ���� $0 accountmailboxes accountMailboxes B  G�� G Z   C e H I���� H ?  C J J K J l  C H L���� L I  C H�� M��
�� .corecnte****       **** M o   C D���� $0 accountmailboxes accountMailboxes��  ��  ��   K m   H I����   I r   M a N O N b   M _ P Q P b   M X R S R b   M V T U T b   M R V W V b   M P X Y X o   M N���� *0 messagecountdisplay messageCountDisplay Y o   N O��
�� 
ret  W m   P Q Z Z � [ [ . M a i l b o x e s   f o r   A c c o u n t :   U n   R U \ ] \ 1   S U��
�� 
pnam ] o   R S���� 0 eachaccount eachAccount S o   V W��
�� 
ret  Q n  X ^ ^ _ ^ I   Y ^�� `���� <0 getmessagecountsformailboxes getMessageCountsForMailboxes `  a�� a o   Y Z���� $0 accountmailboxes accountMailboxes��  ��   _  f   X Y O o      ���� *0 messagecountdisplay messageCountDisplay��  ��  ��  �� 0 eachaccount eachAccount ? o   0 1���� 0 everyaccount everyAccount =  b c b l  k k��������  ��  ��   c  d e d r   k � f g f I  k ����� h
�� .corecrel****      � null��   h �� i j
�� 
kocl i m   m p��
�� 
bcke j �� k��
�� 
prdt k K   s � l l �� m n
�� 
ctnt m o   v w���� *0 messagecountdisplay messageCountDisplay n �� o p
�� 
subj o m   z } q q � r r F M e s s a g e   c o u n t s   f o r   a l l   m y   m a i l b o x e s p �� s��
�� 
pvis s m   � ���
�� boovtrue��  ��   g o      ���� 0 outputmessage outputMessage e  t�� t O   � � u v u k   � � w w  x y x r   � � z { z m   � � | | � } }  C o u r i e r { 1   � ���
�� 
font y  ~�� ~ r   � �  �  m   � �����  � 1   � ���
�� 
ptsz��   v o   � ����� 0 outputmessage outputMessage��    m      � ��                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��  ��     � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� <0 getmessagecountsformailboxes getMessageCountsForMailboxes �  ��� � o      ���� 0 themailboxes theMailboxes��  ��   � k     T � �  � � � l     �� � ���   �   (list of mailboxes)    � � � � (   ( l i s t   o f   m a i l b o x e s ) �  � � � l     �� � ���   �   returns string    � � � �    r e t u r n s   s t r i n g �  � � � l     ��������  ��  ��   �  � � � r      � � � m      � � � � �   � o      ���� 0 displaystring displayString �  � � � l   ��������  ��  ��   �  � � � O    Q � � � X    P ��� � � k    K � �  � � � r     � � � n     � � � 1    ��
�� 
pnam � o    ���� 0 eachmailbox eachMailbox � o      ���� 0 mailboxname mailboxName �  � � � r    ) � � � c    ' � � � l   % ����� � I   %�� ���
�� .corecnte****       **** � l   ! ����� � n    ! � � � 2   !��
�� 
mssg � o    ���� 0 eachmailbox eachMailbox��  ��  ��  ��  ��   � m   % &��
�� 
TEXT � o      ���� 0 messagecount messageCount �  � � � r   * 1 � � � c   * / � � � n   * - � � � 1   + -��
�� 
mbuc � o   * +���� 0 eachmailbox eachMailbox � m   - .��
�� 
TEXT � o      ���� 0 unreadcount unreadCount �  � � � l  2 2��������  ��  ��   �  ��� � r   2 K � � � b   2 I � � � b   2 G � � � b   2 E � � � b   2 C � � � b   2 A � � � b   2 ? � � � b   2 = � � � b   2 5 � � � o   2 3���� 0 displaystring displayString � m   3 4 � � � � �          � n  5 < � � � I   6 <�� ����� 0 	padstring 	padString �  � � � o   6 7���� 0 mailboxname mailboxName �  ��� � m   7 8���� (��  ��   �  f   5 6 � m   = > � � � � �      � o   ? @���� 0 messagecount messageCount � m   A B � � � � �    ( � o   C D���� 0 unreadcount unreadCount � m   E F � � � � �    u n r e a d ) � o   G H��
�� 
ret  � o      ���� 0 displaystring displayString��  �� 0 eachmailbox eachMailbox � o    ���� 0 themailboxes theMailboxes � m     � ��                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��   �  � � � l  R R����~��  �  �~   �  ��} � L   R T � � o   R S�|�| 0 displaystring displayString�}   �  � � � l     �{�z�y�{  �z  �y   �  ��x � i     � � � I      �w ��v�w 0 	padstring 	padString �  � � � o      �u�u 0 	thestring 	theString �  ��t � o      �s�s 0 fieldlength fieldLength�t  �v   � k     @ � �  � � � l     �r � ��r   �   (string, integer)    � � � � $   ( s t r i n g ,   i n t e g e r ) �  � � � l     �q � ��q   �   returns string    � � � �    r e t u r n s   s t r i n g �  � � � l     �p�o�n�p  �o  �n   �  � � � r      �  � n      1    �m
�m 
leng o     �l�l 0 	thestring 	theString  o      �k�k 0 stringlength stringLength �  l   �j�i�h�j  �i  �h    Z    =�g	 ?   	

 o    �f�f 0 stringlength stringLength o    �e�e 0 fieldlength fieldLength r     b     l   �d�c n     7    �b
�b 
ctxt 4    �a
�a 
cha  m    �`�`  4    �_
�_ 
cha  l   �^�] \     o    �\�\ 0 fieldlength fieldLength m    �[�[ �^  �]   o    �Z�Z 0 	thestring 	theString�d  �c   m     �  . . . o      �Y�Y 0 paddedstring paddedString�g  	 l  " = k   " =  !  r   " %"#" o   " #�X�X 0 	thestring 	theString# o      �W�W 0 paddedstring paddedString! $%$ l  & &�V�U�T�V  �U  �T  % &'& r   & +()( \   & )*+* o   & '�S�S 0 fieldlength fieldLength+ o   ' (�R�R 0 stringlength stringLength) o      �Q�Q 0 paddinglength paddingLength' ,�P, U   , =-.- r   3 8/0/ b   3 6121 o   3 4�O�O 0 paddedstring paddedString2 1   4 5�N
�N 
spac0 o      �M�M 0 paddedstring paddedString. o   / 0�L�L 0 paddinglength paddingLength�P   8 2 stringLength is less than or equal to fieldLength    �33 d   s t r i n g L e n g t h   i s   l e s s   t h a n   o r   e q u a l   t o   f i e l d L e n g t h 454 l  > >�K�J�I�K  �J  �I  5 6�H6 L   > @77 o   > ?�G�G 0 paddedstring paddedString�H  �x       �F89:;�F  8 �E�D�C�E <0 getmessagecountsformailboxes getMessageCountsForMailboxes�D 0 	padstring 	padString
�C .aevtoappnull  �   � ****9 �B ��A�@<=�?�B <0 getmessagecountsformailboxes getMessageCountsForMailboxes�A �>>�> >  �=�= 0 themailboxes theMailboxes�@  < �<�;�:�9�8�7�< 0 themailboxes theMailboxes�; 0 displaystring displayString�: 0 eachmailbox eachMailbox�9 0 mailboxname mailboxName�8 0 messagecount messageCount�7 0 unreadcount unreadCount=  � ��6�5�4�3�2�1�0 ��/�. � � ��-
�6 
kocl
�5 
cobj
�4 .corecnte****       ****
�3 
pnam
�2 
mssg
�1 
TEXT
�0 
mbuc�/ (�. 0 	padstring 	padString
�- 
ret �? U�E�O� J G�[��l kh ��,E�O��-j �&E�O��,�&E�O��%)��l+ %�%�%�%�%�%�%E�[OY��UO�: �, ��+�*?@�)�, 0 	padstring 	padString�+ �(A�( A  �'�&�' 0 	thestring 	theString�& 0 fieldlength fieldLength�*  ? �%�$�#�"�!�% 0 	thestring 	theString�$ 0 fieldlength fieldLength�# 0 stringlength stringLength�" 0 paddedstring paddedString�! 0 paddinglength paddingLength@ � ���
�  
leng
� 
ctxt
� 
cha 
� 
spac�) A��,E�O�� �[�\[�k/\�m/2�%E�Y �E�O��E�O �kh��%E�[OY��O�; �B��CD�
� .aevtoappnull  �   � ****B k     �EE  ��  �  �  C �� 0 eachaccount eachAccountD  ���� ,��� 4����� Z��
�	�� q����� |�� ��
� 
mbxp�  0 localmailboxes localMailboxes
� .corecnte****       ****
� 
ret � <0 getmessagecountsformailboxes getMessageCountsForMailboxes� *0 messagecountdisplay messageCountDisplay
� 
mact� 0 everyaccount everyAccount
� 
kocl
� 
cobj� $0 accountmailboxes accountMailboxes
� 
pnam
�
 
bcke
�	 
prdt
� 
ctnt
� 
subj
� 
pvis� � 
� .corecrel****      � null� 0 outputmessage outputMessage
� 
font�  
�� 
ptsz� �� �*�-E�O�j j ��%)�k+ %E�Y �E�O*�-E�O <�[��l kh  ��-E�O�j j ��%�%��,%�%)�k+ %E�Y h[OY��O*�a a a �a a a ea a  E` O_  a *a ,FOa *a ,FUUascr  ��ޭ