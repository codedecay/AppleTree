FasdUAS 1.101.10   ��   ��    k             l      ��  ��   .(
Remove Messages From Sender or Thread

Copyright � 2003�2013 Apple Inc. All rights reserved.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require that
you make it clear that the code was descended from Apple sample code,
but that you've made changes.
     � 	 	P 
 R e m o v e   M e s s a g e s   F r o m   S e n d e r   o r   T h r e a d 
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
This script demonstrates how to get Usenet style "kill" file
functionality in Mail.  Execute it manually to add a sender or a message
thread to a list of senders and threads to delete in the future.
Optionally let the script create a rule to begin filtering your
messages.  The script does its filtering through Mail's rule AppleScript
action support.  If you didn't let the script set this up itself, create
a new rule with an Every Message critereon and a Run AppleScript action
and attach this script.  When executed as a rule action, this script
consults the list of senders and threads created when run manually and
delete matching messages.  You can rerun this script manually to update
your list of senders and threads.
     �  � 
 T h i s   s c r i p t   d e m o n s t r a t e s   h o w   t o   g e t   U s e n e t   s t y l e   " k i l l "   f i l e 
 f u n c t i o n a l i t y   i n   M a i l .     E x e c u t e   i t   m a n u a l l y   t o   a d d   a   s e n d e r   o r   a   m e s s a g e 
 t h r e a d   t o   a   l i s t   o f   s e n d e r s   a n d   t h r e a d s   t o   d e l e t e   i n   t h e   f u t u r e . 
 O p t i o n a l l y   l e t   t h e   s c r i p t   c r e a t e   a   r u l e   t o   b e g i n   f i l t e r i n g   y o u r 
 m e s s a g e s .     T h e   s c r i p t   d o e s   i t s   f i l t e r i n g   t h r o u g h   M a i l ' s   r u l e   A p p l e S c r i p t 
 a c t i o n   s u p p o r t .     I f   y o u   d i d n ' t   l e t   t h e   s c r i p t   s e t   t h i s   u p   i t s e l f ,   c r e a t e 
 a   n e w   r u l e   w i t h   a n   E v e r y   M e s s a g e   c r i t e r e o n   a n d   a   R u n   A p p l e S c r i p t   a c t i o n 
 a n d   a t t a c h   t h i s   s c r i p t .     W h e n   e x e c u t e d   a s   a   r u l e   a c t i o n ,   t h i s   s c r i p t 
 c o n s u l t s   t h e   l i s t   o f   s e n d e r s   a n d   t h r e a d s   c r e a t e d   w h e n   r u n   m a n u a l l y   a n d 
 d e l e t e   m a t c h i n g   m e s s a g e s .     Y o u   c a n   r e r u n   t h i s   s c r i p t   m a n u a l l y   t o   u p d a t e 
 y o u r   l i s t   o f   s e n d e r s   a n d   t h r e a d s . 
      l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k    -       O    
    r    	    1    ��
�� 
slct  o      ���� $0 selectedmessages selectedMessages  m       �                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��         l   ��������  ��  ��      !�� ! Z   - " #�� $ " =    % & % l    '���� ' I   �� (��
�� .corecnte****       **** ( o    ���� $0 selectedmessages selectedMessages��  ��  ��   & m    ����   # I   �� ) *
�� .sysodisAaleR        TEXT ) m     + + � , , ( N o   M e s s a g e s   S e l e c t e d * �� -��
�� 
mesS - m     . . � / / � S e l e c t   t h e   m e s s a g e s   y o u   w a n t   t o   a d d   t o   t h e   k i l l   f i l e   b e f o r e   r u n n i n g   t h i s   s c r i p t .��  ��   $ k   - 0 0  1 2 1 I    $�������� (0 createruleifneeded createRuleIfNeeded��  ��   2  3 4 3 l  % %��������  ��  ��   4  5 6 5 O  % 7 7 8 7 I  ) 6�� 9 :
�� .sysodlogaskr        TEXT 9 m   ) * ; ; � < < x D e l e t e   a l l   f u t u r e   e m a i l s   f r o m   t h i s   s e n d e r   o r   i n   t h i s   t h r e a d ? : �� = >
�� 
btns = J   + 0 ? ?  @ A @ m   + , B B � C C  C a n c e l A  D E D m   , - F F � G G  S e n d e r E  H�� H m   - . I I � J J  T h r e a d��   > �� K��
�� 
dflt K m   1 2���� ��   8 m   % & L L�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��   6  M N M l  8 8�� O P��   O Q K display the dialog in Mail so the user can see which messages are selected    P � Q Q �   d i s p l a y   t h e   d i a l o g   i n   M a i l   s o   t h e   u s e r   c a n   s e e   w h i c h   m e s s a g e s   a r e   s e l e c t e d N  R S R l  8 8��������  ��  ��   S  T�� T Z   8- U V�� W U =  8 C X Y X n   8 ? Z [ Z 1   ; ?��
�� 
bhit [ l  8 ; \���� \ 1   8 ;��
�� 
rslt��  ��   Y m   ? B ] ] � ^ ^  S e n d e r V k   F> _ _  ` a ` r   F L b c b J   F H����   c o      ����  0 removedsenders removedSenders a  d e d r   M V f g f I   M R�������� &0 getsenderkilllist getSenderKillList��  ��   g o      ����  0 senderkilllist senderKillList e  h i h l  W W��������  ��  ��   i  j k j X   W � l�� m l k   k � n n  o p o O  k } q r q r   o | s t s I  o x�� u��
�� .emaleauanull���     ctxt u l  o t v���� v n   o t w x w 1   p t��
�� 
sndr x o   o p���� 0 eachmessage eachMessage��  ��  ��   t o      ���� 0 	thesender 	theSender r m   k l y y�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��   p  z�� z Z   ~ � { |���� { H   ~ � } } E   ~ � ~  ~ o   ~ �����  0 senderkilllist senderKillList  o   � ����� 0 	thesender 	theSender | k   � � � �  � � � r   � � � � � o   � ����� 0 	thesender 	theSender � l      ����� � n       � � �  ;   � � � o   � �����  0 removedsenders removedSenders��  ��   �  ��� � r   � � � � � o   � ����� 0 	thesender 	theSender � l      ����� � n       � � �  ;   � � � o   � �����  0 senderkilllist senderKillList��  ��  ��  ��  ��  ��  �� 0 eachmessage eachMessage m o   Z [���� $0 selectedmessages selectedMessages k  � � � l  � ���������  ��  ��   �  � � � Z   �< � ��� � � =  � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � �����  0 removedsenders removedSenders��  ��  ��   � m   � �����   � O  � � � � � I  � ��� � �
�� .sysodisAaleR        TEXT � m   � � � � � � � $ N o   S e n d e r s   R e m o v e d � �� ���
�� 
mesS � m   � � � � � � � t A l l   o f   t h e   s e l e c t e d   s e n d e r s   a r e   a l r e a d y   i n   y o u r   k i l l   f i l e .��   � m   � � � ��                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ��   � k   �< � �  � � � I   � ��� ����� 00 appendtosenderkillfile appendToSenderKillFile �  ��� � o   � �����  0 removedsenders removedSenders��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � 1   � ���
�� 
txdl � o      ���� "0 saveddelimiters savedDelimiters �  � � � r   � � � � � o   � ���
�� 
ret  � 1   � ���
�� 
txdl �  � � � l  � ���������  ��  ��   �  � � � O  � � � � r   � � � � I  �
�� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � � T h e   f o l l o w i n g   s e n d e r s   h a v e   b e e n   a d d e d   t o   y o u r   l i s t   o f   s e n d e r s   t o   d e l e t e : � o   � ���
�� 
ret  � o   � ���
�� 
ret  � l  � � ����� � c   � � � � � o   � �����  0 removedsenders removedSenders � m   � ���
�� 
TEXT��  ��   � �� � �
�� 
btns � J   �  � �  � � � m   � � � � � � �  V i e w   L i s t �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
disp � m  ��
�� stic   ��   � o      ���� ,0 removedsendersresult removedSendersResult � m   � � � ��                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��   �  � � � l ��������  ��  ��   �  � � � r   � � � o  ���� "0 saveddelimiters savedDelimiters � 1  ��
�� 
txdl �  � � � l ����~��  �  �~   �  ��} � Z  < � ��|�{ � = % � � � n  ! � � � 1  !�z
�z 
bhit � o  �y�y ,0 removedsendersresult removedSendersResult � m  !$ � � � � �  V i e w   L i s t � O (8 � � � I .7�x ��w
�x .aevtodocnull  �    alis � n .3 � � � I  /3�v�u�t�v  0 senderkillfile senderKillFile�u  �t   �  f  ./�w   � m  (+ � ��                                                                                  sevs  alis    �  MountainLion               �ofeH+     0System Events.app                                               7���`        ����  	                CoreServices    �o��      ��`�       0   *   )  =MountainLion:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M o u n t a i n L i o n  -System/Library/CoreServices/System Events.app   / ��  �|  �{  �}   �  ��s � l ==�r�q�p�r  �q  �p  �s  ��   W l A- � � � � k  A- � �  � � � r  A] � � � I      �o�n�m�o (0 getthreadkilllists getThreadKillLists�n  �m   � J       � �  � � � o      �l�l &0 messageidkilllist messageIDKillList �  ��k � o      �j�j 0 dateaddedlist dateAddedList�k   �  � � � r  ^y � � � b  ^u � � � b  ^k � � � l ^g ��i�h � n  ^g   1  cg�g
�g 
shdt l ^c�f�e I ^c�d�c�b
�d .misccurdldt    ��� null�c  �b  �f  �e  �i  �h   � 1  gj�a
�a 
spac � l kt�`�_ n  kt 1  pt�^
�^ 
tstr l kp�]�\ I kp�[�Z�Y
�[ .misccurdldt    ��� null�Z  �Y  �]  �\  �`  �_   � o      �X�X &0 currentdatestring currentDateString �  l zz�W�V�U�W  �V  �U   	
	 X  z��T k  ��  r  �� I      �S�R�S "0 ismessageinlist isMessageInList  o  ���Q�Q 0 eachmessage eachMessage �P o  ���O�O &0 messageidkilllist messageIDKillList�P  �R   J        o      �N�N 0 notused notUsed �M o      �L�L *0 uniquemessageidlist uniqueMessageIDList�M    l ���K�J�I�K  �J  �I   �H X  ���G k  ��  !  r  ��"#" c  ��$%$ o  ���F�F 0 eachmessageid eachMessageID% m  ���E
�E 
TEXT# l     &�D�C& n      '('  ;  ��( o  ���B�B &0 messageidkilllist messageIDKillList�D  �C  ! )�A) r  ��*+* o  ���@�@ &0 currentdatestring currentDateString+ l     ,�?�>, n      -.-  ;  ��. o  ���=�= 0 dateaddedlist dateAddedList�?  �>  �A  �G 0 eachmessageid eachMessageID o  ���<�< *0 uniquemessageidlist uniqueMessageIDList�H  �T 0 eachmessage eachMessage o  }~�;�; $0 selectedmessages selectedMessages
 /0/ l ���:�9�8�:  �9  �8  0 121 l  ���734�7  371 Always write the thread kill list even if all of the selected messages were already a part of killed threads.  The call to writeThreadKillFile prunes entries older than 30 days, the general assumption being that threads die off after 30 days.  This will help the killed thread file from growing too big.    4 �55b   A l w a y s   w r i t e   t h e   t h r e a d   k i l l   l i s t   e v e n   i f   a l l   o f   t h e   s e l e c t e d   m e s s a g e s   w e r e   a l r e a d y   a   p a r t   o f   k i l l e d   t h r e a d s .     T h e   c a l l   t o   w r i t e T h r e a d K i l l F i l e   p r u n e s   e n t r i e s   o l d e r   t h a n   3 0   d a y s ,   t h e   g e n e r a l   a s s u m p t i o n   b e i n g   t h a t   t h r e a d s   d i e   o f f   a f t e r   3 0   d a y s .     T h i s   w i l l   h e l p   t h e   k i l l e d   t h r e a d   f i l e   f r o m   g r o w i n g   t o o   b i g .  2 676 I  ���68�5�6 *0 writethreadkillfile writeThreadKillFile8 9:9 o  ���4�4 &0 messageidkilllist messageIDKillList: ;�3; o  ���2�2 0 dateaddedlist dateAddedList�3  �5  7 <=< l ���1�0�/�1  �0  �/  = >?> O �
@A@ I �	�.BC
�. .sysodlogaskr        TEXTB m  ��DD �EE � T h e   s e l e c t e d   t h r e a d s   h a v e   b e e n   a d d e d   t o   y o u r   l i s t   o f   t h r e a d s   t o   d e l e t e .C �-FG
�- 
btnsF J  ��HH IJI m  ��KK �LL  V i e w   L i s tJ M�,M m  ��NN �OO  O K�,  G �+P�*
�+ 
dispP m  �)
�) stic   �*  A m  ��QQ�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ? R�(R Z  -ST�'�&S = UVU n  WXW 1  �%
�% 
bhitX l Y�$�#Y 1  �"
�" 
rslt�$  �#  V m  ZZ �[[  V i e w   L i s tT O )\]\ I (�!^� 
�! .aevtodocnull  �    alis^ n $_`_ I   $����  0 threadkillfile threadKillFile�  �  `  f   �   ] m  aa�                                                                                  sevs  alis    �  MountainLion               �ofeH+     0System Events.app                                               7���`        ����  	                CoreServices    �o��      ��`�       0   *   )  =MountainLion:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M o u n t a i n L i o n  -System/Library/CoreServices/System Events.app   / ��  �'  �&  �(   � 9 3 button returned of the result is equal to "Thread"    � �bb f   b u t t o n   r e t u r n e d   o f   t h e   r e s u l t   i s   e q u a l   t o   " T h r e a d "��  ��    cdc l     ����  �  �  d efe w      ghg i    iji I     �k�
� .emalcpmanull���     ****k o      �� 0 themessages theMessages�  j k     �ll mnm r     opo I     ���� &0 getsenderkilllist getSenderKillList�  �  p o      ��  0 senderkilllist senderKillListn qrq r    sts I      ���� (0 getthreadkilllists getThreadKillLists�  �  t J      uu vwv o      ��  0 threadkilllist threadKillListw x�x o      �� 0 dateaddedlist dateAddedList�  r yzy r    0{|{ b    .}~} b    &� l   $���� n    $��� 1   " $�

�
 
shdt� l   "��	�� I   "���
� .misccurdldt    ��� null�  �  �	  �  �  �  � 1   $ %�
� 
spac~ l  & -���� n   & -��� 1   + -�
� 
tstr� l  & +�� ��� I  & +������
�� .misccurdldt    ��� null��  ��  �   ��  �  �  | o      ���� &0 currentdatestring currentDateStringz ��� r   1 4��� m   1 2��
�� boovfals� o      ���� @0 messagearrivedinthreadkilllist messageArrivedInThreadKillList� ��� l  5 5��������  ��  ��  � ��� X   5 ������ O   E ���� k   I ��� ��� r   I L��� m   I J��
�� boovfals� o      ���� 0 deletemessage deleteMessage� ��� l  M M��������  ��  ��  � ��� r   M V��� I  M T�����
�� .emaleauanull���     ctxt� l  M P������ n   M P��� 1   N P��
�� 
sndr� o   M N���� 0 eachmessage eachMessage��  ��  ��  � o      ���� 0 	thesender 	theSender� ��� Z   W d������� E   W Z��� o   W X����  0 senderkilllist senderKillList� o   X Y���� 0 	thesender 	theSender� r   ] `��� m   ] ^��
�� boovtrue� o      ���� 0 deletemessage deleteMessage��  ��  � ��� l  e e��������  ��  ��  � ��� r   e {��� n  e l��� I   f l������� "0 ismessageinlist isMessageInList� ��� o   f g���� 0 eachmessage eachMessage� ���� o   g h����  0 threadkilllist threadKillList��  ��  �  f   e f� J      �� ��� o      ���� "0 messageisinlist messageIsInList� ���� o      ���� *0 uniquemessageidlist uniqueMessageIDList��  � ��� Z   | �������� =  | ��� o   | }���� "0 messageisinlist messageIsInList� m   } ~��
�� boovtrue� k   � ��� ��� r   � ���� m   � ���
�� boovtrue� o      ���� @0 messagearrivedinthreadkilllist messageArrivedInThreadKillList� ��� r   � ���� m   � ���
�� boovtrue� o      ���� 0 deletemessage deleteMessage� ��� l  � ���������  ��  ��  � ��� l  � �������  � � { add this message's ID, and any IDs it might reference that aren't already in the thread kill list, to the thread kill list   � ��� �   a d d   t h i s   m e s s a g e ' s   I D ,   a n d   a n y   I D s   i t   m i g h t   r e f e r e n c e   t h a t   a r e n ' t   a l r e a d y   i n   t h e   t h r e a d   k i l l   l i s t ,   t o   t h e   t h r e a d   k i l l   l i s t� ���� X   � ������ k   � ��� ��� r   � ���� c   � ���� o   � ����� 0 eachmessageid eachMessageID� m   � ���
�� 
TEXT� l     ������ n      ���  ;   � �� o   � �����  0 threadkilllist threadKillList��  ��  � ���� r   � ���� o   � ����� &0 currentdatestring currentDateString� l     ������ n      ���  ;   � �� o   � ����� 0 dateaddedlist dateAddedList��  ��  ��  �� 0 eachmessageid eachMessageID� o   � ����� *0 uniquemessageidlist uniqueMessageIDList��  ��  ��  � ��� l  � ���������  ��  ��  � ���� Z   � �������� =  � ���� o   � ����� 0 deletemessage deleteMessage� m   � ���
�� boovtrue� I  � ������
�� .coredelonull���     obj � o   � ����� 0 eachmessage eachMessage��  ��  ��  ��  � m   E F���                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  �� 0 eachmessage eachMessage� o   8 9���� 0 themessages theMessages� ��� l  � ���������  ��  ��  � ���� Z   � �������� =  � ���� o   � ����� @0 messagearrivedinthreadkilllist messageArrivedInThreadKillList� m   � ���
�� boovtrue� I   � �������� *0 writethreadkillfile writeThreadKillFile� ��� o   � �����  0 threadkilllist threadKillList� ���� o   � ����� 0 dateaddedlist dateAddedList��  ��  ��  ��  ��  h�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  f ��� l     ��������  ��  ��  � ��� i    ��� I      �������� &0 getsenderkilllist getSenderKillList��  ��  � k     3��    l     ����   	  ()    �    ( )  l     ����     returns list of strings    �		 0   r e t u r n s   l i s t   o f   s t r i n g s 

 l     ��������  ��  ��    r      I    	����
�� .rdwropenshor       file I     ��������  0 senderkillfile senderKillFile��  ��  ��   o      ���� 0 killfile killFile  Q    * k      r     I   ��
�� .rdwrread****        **** o    ���� 0 killfile killFile ����
�� 
deli I   ����
�� .sysontocTEXT       shor m    ���� 
��  ��   o      ���� 0 killlist killList �� l   �� !��    ~ x ASCII Character 10 because TextEdit uses linefeeds as line endings and this script should support manually edited files   ! �"" �   A S C I I   C h a r a c t e r   1 0   b e c a u s e   T e x t E d i t   u s e s   l i n e f e e d s   a s   l i n e   e n d i n g s   a n d   t h i s   s c r i p t   s h o u l d   s u p p o r t   m a n u a l l y   e d i t e d   f i l e s��   R      ������
�� .ascrerr ****      � ****��  ��   l  & *#$%# r   & *&'& J   & (����  ' o      ���� 0 killlist killList$ , & the file is empty or some other error   % �(( L   t h e   f i l e   i s   e m p t y   o r   s o m e   o t h e r   e r r o r )*) I  + 0��+��
�� .rdwrclosnull���     ****+ o   + ,���� 0 killfile killFile��  * ,-, l  1 1��������  ��  ��  - .�. L   1 3// o   1 2�~�~ 0 killlist killList�  � 010 l     �}�|�{�}  �|  �{  1 232 i    454 I      �z6�y�z 00 appendtosenderkillfile appendToSenderKillFile6 7�x7 o      �w�w 0 thelist theList�x  �y  5 k     G88 9:9 l     �v;<�v  ;   (list of strings)   < �== $   ( l i s t   o f   s t r i n g s ): >?> l     �u@A�u  @   returns nothing   A �BB     r e t u r n s   n o t h i n g? CDC l     �t�s�r�t  �s  �r  D EFE r     GHG 1     �q
�q 
txdlH o      �p�p "0 saveddelimiters savedDelimitersF IJI r    KLK I   �oM�n
�o .sysontocTEXT       shorM m    �m�m 
�n  L 1    �l
�l 
txdlJ NON l   �kPQ�k  P ~ x ASCII Character 10 because TextEdit uses linefeeds as line endings and this script should support manually edited files   Q �RR �   A S C I I   C h a r a c t e r   1 0   b e c a u s e   T e x t E d i t   u s e s   l i n e f e e d s   a s   l i n e   e n d i n g s   a n d   t h i s   s c r i p t   s h o u l d   s u p p o r t   m a n u a l l y   e d i t e d   f i l e sO STS l   �j�i�h�j  �i  �h  T UVU r    WXW I   �gYZ
�g .rdwropenshor       fileY I    �f�e�d�f  0 senderkillfile senderKillFile�e  �d  Z �c[�b
�c 
perm[ m    �a
�a boovtrue�b  X o      �`�` 0 killfile killFileV \]\ I   /�_^_
�_ .rdwrwritnull���     ****^ l   !`�^�]` c    !aba o    �\�\ 0 thelist theListb m     �[
�[ 
TEXT�^  �]  _ �Zcd
�Z 
refnc o   " #�Y�Y 0 killfile killFiled �Xe�W
�X 
wrate l  $ +f�V�Uf [   $ +ghg l  $ )i�T�Si I  $ )�Rj�Q
�R .rdwrgeofcomp       ****j o   $ %�P�P 0 killfile killFile�Q  �T  �S  h m   ) *�O�O �V  �U  �W  ] klk I  0 ;�Nmn
�N .rdwrwritnull���     ****m l  0 5o�M�Lo I  0 5�Kp�J
�K .sysontocTEXT       shorp m   0 1�I�I 
�J  �M  �L  n �Hq�G
�H 
refnq o   6 7�F�F 0 killfile killFile�G  l rsr I  < A�Et�D
�E .rdwrclosnull���     ****t o   < =�C�C 0 killfile killFile�D  s uvu l  B B�B�A�@�B  �A  �@  v w�?w r   B Gxyx o   B C�>�> "0 saveddelimiters savedDelimitersy 1   C F�=
�= 
txdl�?  3 z{z l     �<�;�:�<  �;  �:  { |}| i    ~~ I      �9�8�7�9 (0 getthreadkilllists getThreadKillLists�8  �7   k     S�� ��� l     �6���6  � 	  ()   � ���    ( )� ��� l     �5���5  � 1 + returns {list of strings, list of strings}   � ��� V   r e t u r n s   { l i s t   o f   s t r i n g s ,   l i s t   o f   s t r i n g s }� ��� l     �4�3�2�4  �3  �2  � ��� r     ��� J     �1�1  � o      �0�0 0 messageidlist messageIDList� ��� r    	��� J    �/�/  � o      �.�. 0 dateaddedlist dateAddedList� ��� l  
 
�-�,�+�-  �,  �+  � ��� r   
 ��� I  
 �*��)
�* .rdwropenshor       file� I   
 �(�'�&�(  0 threadkillfile threadKillFile�'  �&  �)  � o      �%�% 0 killfile killFile� ��� Q    G���$� k    >�� ��� l   �#���#  � � � when the end of the file is reached, an error will be thrown and control will jump out of the try block (and thus out of the repeat block)   � ���   w h e n   t h e   e n d   o f   t h e   f i l e   i s   r e a c h e d ,   a n   e r r o r   w i l l   b e   t h r o w n   a n d   c o n t r o l   w i l l   j u m p   o u t   o f   t h e   t r y   b l o c k   ( a n d   t h u s   o u t   o f   t h e   r e p e a t   b l o c k )� ��"� T    >�� k    9�� ��� r    (��� I   %�!��
�! .rdwrread****        ****� o    � �  0 killfile killFile� ���
� 
rbfr� 1     !�
� 
tab �  � l     ���� n      ���  ;   & '� o   % &�� 0 messageidlist messageIDList�  �  � ��� r   ) 7��� I  ) 4���
� .rdwrread****        ****� o   ) *�� 0 killfile killFile� ���
� 
rbfr� l  + 0���� I  + 0���
� .sysontocTEXT       shor� m   + ,�� 
�  �  �  �  � l     ���� n      ���  ;   5 6� o   4 5�� 0 dateaddedlist dateAddedList�  �  � ��� l  8 8����  � ~ x ASCII Character 10 because TextEdit uses linefeeds as line endings and this script should support manually edited files   � ��� �   A S C I I   C h a r a c t e r   1 0   b e c a u s e   T e x t E d i t   u s e s   l i n e f e e d s   a s   l i n e   e n d i n g s   a n d   t h i s   s c r i p t   s h o u l d   s u p p o r t   m a n u a l l y   e d i t e d   f i l e s�  �"  � R      ��
�	
� .ascrerr ****      � ****�
  �	  �$  � ��� I  H M���
� .rdwrclosnull���     ****� o   H I�� 0 killfile killFile�  � ��� l  N N����  �  �  � ��� L   N S�� J   N R�� ��� o   N O�� 0 messageidlist messageIDList� �� � o   O P���� 0 dateaddedlist dateAddedList�   �  } ��� l     ��������  ��  ��  � ��� i    ��� I      ������� *0 writethreadkillfile writeThreadKillFile� ��� o      ���� 0 messageidlist messageIDList� ���� o      ���� 0 dateaddedlist dateAddedList��  ��  � k     q�� ��� l     ������  � ) # (list of strings, list of strings)   � ��� F   ( l i s t   o f   s t r i n g s ,   l i s t   o f   s t r i n g s )� ��� l     ������  �   returns nothing   � ���     r e t u r n s   n o t h i n g� ��� l     ��������  ��  ��  � ��� r     ��� I    ������
�� .misccurdldt    ��� null��  ��  � o      ���� 	0 today  � ��� l   ��������  ��  ��  � ��� r    ��� I   ����
�� .rdwropenshor       file� I    ��������  0 threadkillfile threadKillFile��  ��  � �����
�� 
perm� m    ��
�� boovtrue��  � o      ���� 0 killfile killFile� ��� I   ����
�� .rdwrseofnull���     ****� o    ���� 0 killfile killFile� �����
�� 
set2� m    ����  ��  � ��� l   ��������  ��  ��  � ��� r    %��� I   #�����
�� .corecnte****       ****� o    ���� 0 dateaddedlist dateAddedList��  � o      ���� 0 numberofitems numberOfItems� ��� Y   & k ����  k   0 f  r   0 6 n   0 4	 4   1 4��

�� 
cobj
 o   2 3���� 0 
itemnumber 
itemNumber	 o   0 1���� 0 dateaddedlist dateAddedList o      ���� 0 	dateadded 	dateAdded  l   7 7����   � � If this message id was added more than 30 days ago, then don't write it back to the thread kill file.  The general idea is that threads die off after about 30 days, so pruning the old ones will help keep the thread kill file from growing too big.     ��   I f   t h i s   m e s s a g e   i d   w a s   a d d e d   m o r e   t h a n   3 0   d a y s   a g o ,   t h e n   d o n ' t   w r i t e   i t   b a c k   t o   t h e   t h r e a d   k i l l   f i l e .     T h e   g e n e r a l   i d e a   i s   t h a t   t h r e a d s   d i e   o f f   a f t e r   a b o u t   3 0   d a y s ,   s o   p r u n i n g   t h e   o l d   o n e s   w i l l   h e l p   k e e p   t h e   t h r e a d   k i l l   f i l e   f r o m   g r o w i n g   t o o   b i g .   �� Z   7 f���� A  7 E l  7 =���� \   7 = o   7 8���� 	0 today   l  8 <���� 4   8 <��
�� 
ldt  o   : ;���� 0 	dateadded 	dateAdded��  ��  ��  ��   l  = D���� ]   = D ]   = B ]   = @  m   = >���� <  m   > ?���� < m   @ A����  m   B C���� ��  ��   k   H b!! "#" r   H N$%$ n   H L&'& 4   I L��(
�� 
cobj( o   J K���� 0 
itemnumber 
itemNumber' o   H I���� 0 messageidlist messageIDList% o      ���� 0 	messageid 	messageID# )*) I  O `��+,
�� .rdwrwritnull���     ****+ b   O Z-.- b   O T/0/ b   O R121 o   O P���� 0 	messageid 	messageID2 1   P Q��
�� 
tab 0 o   R S���� 0 	dateadded 	dateAdded. l  T Y3����3 I  T Y��4��
�� .sysontocTEXT       shor4 m   T U���� 
��  ��  ��  , ��5��
�� 
refn5 o   [ \���� 0 killfile killFile��  * 6��6 l  a a��78��  7 ~ x ASCII Character 10 because TextEdit uses linefeeds as line endings and this script should support manually edited files   8 �99 �   A S C I I   C h a r a c t e r   1 0   b e c a u s e   T e x t E d i t   u s e s   l i n e f e e d s   a s   l i n e   e n d i n g s   a n d   t h i s   s c r i p t   s h o u l d   s u p p o r t   m a n u a l l y   e d i t e d   f i l e s��  ��  ��  ��  �� 0 
itemnumber 
itemNumber m   ) *����  o   * +���� 0 numberofitems numberOfItems��  � :;: l  l l��������  ��  ��  ; <��< I  l q��=��
�� .rdwrclosnull���     ****= o   l m���� 0 killfile killFile��  ��  � >?> l     ��������  ��  ��  ? @A@ i    BCB I      ��D���� "0 ismessageinlist isMessageInListD EFE o      ���� 0 
themessage 
theMessageF G��G o      ���� &0 messageidkilllist messageIDKillList��  ��  C k     �HH IJI l     ��KL��  K !  (message, list of strings)   L �MM 6   ( m e s s a g e ,   l i s t   o f   s t r i n g s )J NON l     ��PQ��  P ) # returns {boolean, list of strings}   Q �RR F   r e t u r n s   { b o o l e a n ,   l i s t   o f   s t r i n g s }O STS l     ��������  ��  ��  T UVU r     WXW m     ��
�� boovfalsX o      ���� "0 messageisinlist messageIsInListV YZY r    [\[ J    ����  \ o      ���� 20 messageidsnotinkilllist messageIDsNotInKillListZ ]^] l  	 	��������  ��  ��  ^ _`_ O   	 {aba k    zcc ded r    fgf n    hih 1    ��
�� 
meidi o    ���� 0 
themessage 
theMessageg o      ���� 0 themessageid theMessageIDe jkj Z    +lm��nl >   opo o    ���� 0 themessageid theMessageIDp m    qq �rr  m k    $ss tut r    "vwv J     xx y��y b    z{z b    |}| m    ~~ �  <} o    ���� 0 themessageid theMessageID{ m    �� ���  >��  w o      ���� 0 
messageids 
messageIDsu ���� l   # #������  � � � The angle brackets aren't technically part of the message ID, however it's a major pain to strip them out of the references, so we'll add them here and leave them on the in reply to ID.    � ���v   T h e   a n g l e   b r a c k e t s   a r e n ' t   t e c h n i c a l l y   p a r t   o f   t h e   m e s s a g e   I D ,   h o w e v e r   i t ' s   a   m a j o r   p a i n   t o   s t r i p   t h e m   o u t   o f   t h e   r e f e r e n c e s ,   s o   w e ' l l   a d d   t h e m   h e r e   a n d   l e a v e   t h e m   o n   t h e   i n   r e p l y   t o   I D .  ��  ��  n r   ' +��� J   ' )����  � o      ���� 0 
messageids 
messageIDsk ��� l  , ,��������  ��  ��  � ��� Q   , F����� k   / =�� ��� r   / 6��� e   / 4�� n   / 4��� 4   0 3���
�� 
mhdr� m   1 2�� ���  I n - r e p l y - t o� o   / 0�� 0 
themessage 
theMessage� o      �~�~ 0 	inreplyto 	inReplyTo� ��}� r   7 =��� n   7 :��� 1   8 :�|
�| 
ctnt� o   7 8�{�{ 0 	inreplyto 	inReplyTo� l     ��z�y� n      ���  ;   ; <� o   : ;�x�x 0 
messageids 
messageIDs�z  �y  �}  � R      �w�v�u
�w .ascrerr ****      � ****�v  �u  ��  � ��� l  G G�t�s�r�t  �s  �r  � ��q� Q   G z���p� k   J q�� ��� r   J Q��� e   J O�� n   J O��� 4   K N�o�
�o 
mhdr� m   L M�� ���  R e f e r e n c e s� o   J K�n�n 0 
themessage 
theMessage� o      �m�m 0 thereferences theReferences� ��� r   R W��� n   R U��� 1   S U�l
�l 
ctnt� o   R S�k�k 0 thereferences theReferences� o      �j�j "0 referencevalues referenceValues� ��� l  X X�i�h�g�i  �h  �g  � ��� r   X ]��� n  X [��� 1   Y [�f
�f 
txdl�  f   X Y� o      �e�e "0 saveddelimiters savedDelimiters� ��� r   ^ c��� 1   ^ _�d
�d 
spac� n     ��� 1   ` b�c
�c 
txdl�  f   _ `� ��� r   d k��� b   d i��� o   d e�b�b 0 
messageids 
messageIDs� n   e h��� 2  f h�a
�a 
citm� o   e f�`�` "0 referencevalues referenceValues� o      �_�_ 0 
messageids 
messageIDs� ��^� r   l q��� o   l m�]�] "0 saveddelimiters savedDelimiters� n     ��� 1   n p�\
�\ 
txdl�  f   m n�^  � R      �[�Z�Y
�[ .ascrerr ****      � ****�Z  �Y  �p  �q  b m   	 
���                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  ` ��� l  | |�X�W�V�X  �W  �V  � ��� X   | ���U�� Z   � �����T� E   � ���� o   � ��S�S &0 messageidkilllist messageIDKillList� o   � ��R�R 0 eachmessageid eachMessageID� r   � ���� m   � ��Q
�Q boovtrue� o      �P�P "0 messageisinlist messageIsInList� ��� H   � ��� E   � ���� o   � ��O�O 20 messageidsnotinkilllist messageIDsNotInKillList� o   � ��N�N 0 eachmessageid eachMessageID� ��M� r   � ���� c   � ���� o   � ��L�L 0 eachmessageid eachMessageID� m   � ��K
�K 
TEXT� l     ��J�I� n      ���  ;   � �� o   � ��H�H 20 messageidsnotinkilllist messageIDsNotInKillList�J  �I  �M  �T  �U 0 eachmessageid eachMessageID� o    ��G�G 0 
messageids 
messageIDs� ��� l  � ��F�E�D�F  �E  �D  � ��C� L   � ��� J   � ��� ��� o   � ��B�B "0 messageisinlist messageIsInList� ��A� o   � ��@�@ 20 messageidsnotinkilllist messageIDsNotInKillList�A  �C  A ��� l     �?�>�=�?  �>  �=  � ��� i    ��� I      �<�;�:�< (0 createruleifneeded createRuleIfNeeded�;  �:  � k     v�� ��� l     �9���9  � 	  ()   � �      ( )�  l     �8�8     returns nothing    �     r e t u r n s   n o t h i n g  l     �7�6�5�7  �6  �5   	 r     

 c      l    �4�3 b      l    	�2�1 I    	�0
�0 .earsffdralis        afdr m     �/
�/ afdrscr� �.
�. 
from m    �-
�- fldmfldl �,�+
�, 
rtyp m    �*
�* 
TEXT�+  �2  �1   m   	 
 � n M a i l   S c r i p t s : R e m o v e   M e s s a g e s   F r o m   S e n d e r   o r   T h r e a d . s c p t�4  �3   m    �)
�) 
alis o      �(�( 0 fileofme fileOfMe	  r     m     � J R e m o v e   M e s s a g e s   F r o m   S e n d e r   o r   T h r e a d o      �'�' 0 rulename ruleName   l   �&�%�$�&  �%  �$    !�#! O    v"#" Z    u$%�"�!$ H     && E    '(' l   )� �) n   *+* 1    �
� 
pnam+ 2    �
� 
rule�   �  ( o    �� 0 rulename ruleName% k   # q,, -.- I  # 8�/0
� .sysodlogaskr        TEXT/ b   # (121 b   # &343 m   # $55 �66 ` T h i s   s c r i p t   w i l l   n o w   c r e a t e   a   M a i l   r u l e   c a l l e d   4 o   $ %�� 0 rulename ruleName2 m   & '77 �88 ^    t h a t   w i l l   b e   u s e d   t o   p r o c e s s   f u t u r e   m e s s a g e s .0 �9:
� 
btns9 J   ) .;; <�< m   ) ,== �>>  O K�  : �?�
� 
disp? m   1 4�
� stic   �  . @A@ r   9 OBCB I  9 M��D
� .corecrel****      � null�  D �EF
� 
koclE m   = >�
� 
ruleF �G�
� 
prdtG K   A IHH �IJ
� 
rrasI o   D E�� 0 fileofme fileOfMeJ �K�
� 
pnamK o   F G�
�
 0 rulename ruleName�  �  C o      �	�	 0 newrule newRuleA L�L O   P qMNM k   T pOO PQP r   T [RSR m   T U�
� boovtrueS 1   U Z�
� 
isacQ T�T I  \ p��U
� .corecrel****      � null�  U �VW
� 
koclV m   ` c�
� 
rucrW � X��
�  
prdtX K   f lYY ��Z��
�� 
rtypZ m   g j��
�� eruttevm��  ��  �  N o   P Q���� 0 newrule newRule�  �"  �!  # m    [[�                                                                                  emal  alis    F  MountainLion               �ofeH+     MMail.app                                                        [p���        ����  	                Applications    �o��      �h       M  #MountainLion:Applications: Mail.app     M a i l . a p p    M o u n t a i n L i o n  Applications/Mail.app   / ��  �#  � \]\ l     ��������  ��  ��  ] ^_^ i     #`a` I      ��������  0 senderkillfile senderKillFile��  ��  a k     fbb cdc l     ��ef��  e 	  ()   f �gg    ( )d hih l     ��jk��  j   returns alias   k �ll    r e t u r n s   a l i a si mnm l     ��������  ��  ��  n opo r     qrq b     sts l    	u����u I    	��vw
�� .earsffdralis        afdrv m     ��
�� afdrasupw ��xy
�� 
fromx m    ��
�� fldmflduy ��z��
�� 
rtypz m    ��
�� 
TEXT��  ��  ��  t m   	 
{{ �|| . M a i l : S e n d e r K i l l F i l e . t x tr o      ����  0 senderkillpath senderKillPathp }��} Q    f~�~ r    ��� c    ��� o    ����  0 senderkillpath senderKillPath� m    ��
�� 
alis� l     ������ 1      ��
�� 
rslt��  ��   R      ������
�� .ascrerr ****      � ****��  ��  � l   f���� k    f�� ��� l   ������  � 4 . create the Mail folder in Application Support   � ��� \   c r e a t e   t h e   M a i l   f o l d e r   i n   A p p l i c a t i o n   S u p p o r t� ��� r    '��� I   %����
�� .earsffdralis        afdr� m    ��
�� afdrasup� �����
�� 
from� m     !��
�� fldmfldu��  � o      ���� 0 
appsupport 
appSupport� ��� Q   ( O����� l  + F���� O  + F��� I  / E�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   1 2��
�� 
cfol� ����
�� 
insh� o   3 4���� 0 
appsupport 
appSupport� �����
�� 
prdt� K   7 ?�� �����
�� 
pnam� m   : =�� ���  M a i l��  ��  � m   + ,���                                                                                  MACS  alis    t  MountainLion               �ofeH+     0
Finder.app                                                      �W�!��        ����  	                CoreServices    �o��      �"(       0   *   )  6MountainLion:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M o u n t a i n L i o n  &System/Library/CoreServices/Finder.app  / ��  � H B assume that if this fails, it's because the folder already exists   � ��� �   a s s u m e   t h a t   i f   t h i s   f a i l s ,   i t ' s   b e c a u s e   t h e   f o l d e r   a l r e a d y   e x i s t s� R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l  P P��������  ��  ��  � ��� l  P P������  �   touch the file   � ���    t o u c h   t h e   f i l e� ��� I  P Z�����
�� .rdwropenshor       file� 4   P V���
�� 
file� o   T U����  0 senderkillpath senderKillPath��  � ��� I  [ `�����
�� .rdwrclosnull���     ****� l  [ \������ 1   [ \��
�� 
rslt��  ��  ��  � ���� r   a f��� c   a d��� o   a b����  0 senderkillpath senderKillPath� m   b c��
�� 
alis� l     ������ 1      ��
�� 
rslt��  ��  ��  �    if the file doesn't exist   � ��� 4   i f   t h e   f i l e   d o e s n ' t   e x i s t��  _ ��� l     ��������  ��  ��  � ���� i   $ '��� I      ��������  0 threadkillfile threadKillFile��  ��  � k     f�� ��� l     ������  � 	  ()   � ���    ( )� ��� l     ������  �   returns alias   � ���    r e t u r n s   a l i a s� ��� l     ��������  ��  ��  � ��� r     ��� b     ��� l    	������ I    	����
�� .earsffdralis        afdr� m     ��
�� afdrasup� ����
�� 
from� m    ��
�� fldmfldu� �����
�� 
rtyp� m    ��
�� 
TEXT��  ��  ��  � m   	 
�� ��� . M a i l : T h r e a d K i l l F i l e . t x t� o      ����  0 threadkillpath threadKillPath� ���� Q    f���� r    ��� c    ��� o    ����  0 threadkillpath threadKillPath� m    ��
�� 
alis� l     ������ 1      ��
�� 
rslt��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � l   f���� k    f�� ��� l   ������  � 4 . create the Mail folder in Application Support   � ��� \   c r e a t e   t h e   M a i l   f o l d e r   i n   A p p l i c a t i o n   S u p p o r t� ��� r    '��� I   %����
�� .earsffdralis        afdr� m    ��
�� afdrasup� �����
�� 
from� m     !��
�� fldmfldu��  � o      ���� 0 
appsupport 
appSupport� ��� Q   ( O����� l  + F�� � O  + F I  / E����
�� .corecrel****      � null��   ��
�� 
kocl m   1 2��
�� 
cfol ��
�� 
insh o   3 4���� 0 
appsupport 
appSupport ����
�� 
prdt K   7 ?		 ��
��
�� 
pnam
 m   : = �  M a i l��  ��   m   + ,�                                                                                  MACS  alis    t  MountainLion               �ofeH+     0
Finder.app                                                      �W�!��        ����  	                CoreServices    �o��      �"(       0   *   )  6MountainLion:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M o u n t a i n L i o n  &System/Library/CoreServices/Finder.app  / ��  � H B assume that if this fails, it's because the folder already exists     � �   a s s u m e   t h a t   i f   t h i s   f a i l s ,   i t ' s   b e c a u s e   t h e   f o l d e r   a l r e a d y   e x i s t s� R      ������
�� .ascrerr ****      � ****��  ��  ��  �  l  P P����~��  �  �~    l  P P�}�}     touch the file    �    t o u c h   t h e   f i l e  I  P Z�|�{
�| .rdwropenshor       file 4   P V�z
�z 
file o   T U�y�y  0 threadkillpath threadKillPath�{    I  [ `�x�w
�x .rdwrclosnull���     **** l  [ \�v�u 1   [ \�t
�t 
rslt�v  �u  �w   �s r   a f  c   a d!"! o   a b�r�r  0 threadkillpath threadKillPath" m   b c�q
�q 
alis  l     #�p�o# 1      �n
�n 
rslt�p  �o  �s  �    if the file doesn't exist   � �$$ 4   i f   t h e   f i l e   d o e s n ' t   e x i s t��  ��       �m%&'()*+,-./�m  % 
�l�k�j�i�h�g�f�e�d�c
�l .aevtoappnull  �   � ****
�k .emalcpmanull���     ****�j &0 getsenderkilllist getSenderKillList�i 00 appendtosenderkillfile appendToSenderKillFile�h (0 getthreadkilllists getThreadKillLists�g *0 writethreadkillfile writeThreadKillFile�f "0 ismessageinlist isMessageInList�e (0 createruleifneeded createRuleIfNeeded�d  0 senderkillfile senderKillFile�c  0 threadkillfile threadKillFile& �b �a�`01�_
�b .aevtoappnull  �   � ****�a  �`  0 �^�]�^ 0 eachmessage eachMessage�] 0 eachmessageid eachMessageID1 > �\�[�Z +�Y .�X�W ;�V B F I�U�T�S�R�Q ]�P�O�N�M�L�K�J�I � ��H�G�F�E ��D � ��C�B�A � ��@�?�>�=�<�;�:�9�8�7�6�5�4�3DKNZ�2
�\ 
slct�[ $0 selectedmessages selectedMessages
�Z .corecnte****       ****
�Y 
mesS
�X .sysodisAaleR        TEXT�W (0 createruleifneeded createRuleIfNeeded
�V 
btns
�U 
dflt�T 
�S .sysodlogaskr        TEXT
�R 
rslt
�Q 
bhit�P  0 removedsenders removedSenders�O &0 getsenderkilllist getSenderKillList�N  0 senderkilllist senderKillList
�M 
kocl
�L 
cobj
�K 
sndr
�J .emaleauanull���     ctxt�I 0 	thesender 	theSender�H 00 appendtosenderkillfile appendToSenderKillFile
�G 
txdl�F "0 saveddelimiters savedDelimiters
�E 
ret 
�D 
TEXT
�C 
disp
�B stic   �A ,0 removedsendersresult removedSendersResult�@  0 senderkillfile senderKillFile
�? .aevtodocnull  �    alis�> (0 getthreadkilllists getThreadKillLists�= &0 messageidkilllist messageIDKillList�< 0 dateaddedlist dateAddedList
�; .misccurdldt    ��� null
�: 
shdt
�9 
spac
�8 
tstr�7 &0 currentdatestring currentDateString�6 "0 ismessageinlist isMessageInList�5 0 notused notUsed�4 *0 uniquemessageidlist uniqueMessageIDList�3 *0 writethreadkillfile writeThreadKillFile�2  0 threadkillfile threadKillFile�_.� *�,E�UO�j j  ���l Y*j+ O� �����mv�m� UO_ a ,a   �jvE` O*j+ E` O K�[a a l kh  � �a ,j E` UO_ _  _ _ 6FO_ _ 6FY h[OY��O_ j j  � a �a l UY {*_ k+ O*a ,E`  O_ !*a ,FO� ,a "_ !%_ !%_ a #&%�a $a %lva &a '� E` (UO_  *a ,FO_ (a ,a )  a * )j+ +j ,UY hOPY �*j+ -E[a k/E` .Z[a l/E` /ZO*j 0a 1,_ 2%*j 0a 3,%E` 4O g�[a a l kh  *�_ .l+ 5E[a k/E` 6Z[a l/E` 7ZO -_ 7[a a l kh �a #&_ .6FO_ 4_ /6F[OY��[OY��O*_ ._ /l+ 8O� a 9�a :a ;lva &a '� UO_ a ,a <  a * )j+ =j ,UY h' �1j�0�/23�.
�1 .emalcpmanull���     ****�0 0 themessages theMessages�/  2 �-�,�+�*�)�(�'�&�%�$�#�"�- 0 themessages theMessages�,  0 senderkilllist senderKillList�+  0 threadkilllist threadKillList�* 0 dateaddedlist dateAddedList�) &0 currentdatestring currentDateString�( @0 messagearrivedinthreadkilllist messageArrivedInThreadKillList�' 0 eachmessage eachMessage�& 0 deletemessage deleteMessage�% 0 	thesender 	theSender�$ "0 messageisinlist messageIsInList�# *0 uniquemessageidlist uniqueMessageIDList�" 0 eachmessageid eachMessageID3 �!� ���������������! &0 getsenderkilllist getSenderKillList�  (0 getthreadkilllists getThreadKillLists
� 
cobj
� .misccurdldt    ��� null
� 
shdt
� 
spac
� 
tstr
� 
kocl
� .corecnte****       ****
� 
sndr
� .emaleauanull���     ctxt� "0 ismessageinlist isMessageInList
� 
TEXT
� .coredelonull���     obj � *0 writethreadkillfile writeThreadKillFile�. �*j+  E�O*j+ E[�k/E�Z[�l/E�ZO*j �,�%*j �,%E�OfE�O ��[��l kh � wfE�O��,j E�O�� eE�Y hO)��l+ E[�k/E�Z[�l/E�ZO�e  -eE�OeE�O �[��l kh ��&�6FO��6F[OY��Y hO�e  
�j Y hU[OY��O�e  *��l+ Y h( ����45�� &0 getsenderkilllist getSenderKillList�  �  4 ��� 0 killfile killFile� 0 killlist killList5 	���
�	������  0 senderkillfile senderKillFile
� .rdwropenshor       file
�
 
deli�	 

� .sysontocTEXT       shor
� .rdwrread****        ****�  �  
� .rdwrclosnull���     ****� 4*j+  j E�O ���j l E�OPW X  jvE�O�j O�) �5��67� � 00 appendtosenderkillfile appendToSenderKillFile� ��8�� 8  ���� 0 thelist theList�  6 �������� 0 thelist theList�� "0 saveddelimiters savedDelimiters�� 0 killfile killFile7 ��������������������������
�� 
txdl�� 

�� .sysontocTEXT       shor��  0 senderkillfile senderKillFile
�� 
perm
�� .rdwropenshor       file
�� 
TEXT
�� 
refn
�� 
wrat
�� .rdwrgeofcomp       ****�� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�  H*�,E�O�j *�,FO*j+ �el E�O��&��j 	k� O�j �l O�j O�*�,F* ������9:���� (0 getthreadkilllists getThreadKillLists��  ��  9 �������� 0 messageidlist messageIDList�� 0 dateaddedlist dateAddedList�� 0 killfile killFile: 
����������������������  0 threadkillfile threadKillFile
�� .rdwropenshor       file
�� 
rbfr
�� 
tab 
�� .rdwrread****        ****�� 

�� .sysontocTEXT       shor��  ��  
�� .rdwrclosnull���     ****�� TjvE�OjvE�O*j+  j E�O * $hZ���l �6FO���j l �6FOP[OY��W X  hO�j 	O��lv+ �������;<���� *0 writethreadkillfile writeThreadKillFile�� ��=�� =  ������ 0 messageidlist messageIDList�� 0 dateaddedlist dateAddedList��  ; ������������������ 0 messageidlist messageIDList�� 0 dateaddedlist dateAddedList�� 	0 today  �� 0 killfile killFile�� 0 numberofitems numberOfItems�� 0 
itemnumber 
itemNumber�� 0 	dateadded 	dateAdded�� 0 	messageid 	messageID< ������������������������������������
�� .misccurdldt    ��� null��  0 threadkillfile threadKillFile
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� .corecnte****       ****
�� 
cobj
�� 
ldt �� <�� �� 
�� 
tab �� 

�� .sysontocTEXT       shor
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� r*j  E�O*j+ �el E�O��jl O�j E�O Dk�kh ��/E�O�*�/�� � �  ��/E�O��%�%�j %�l OPY h[OY��O�j , ��C����>?���� "0 ismessageinlist isMessageInList�� ��@�� @  ������ 0 
themessage 
theMessage�� &0 messageidkilllist messageIDKillList��  > ������������������������ 0 
themessage 
theMessage�� &0 messageidkilllist messageIDKillList�� "0 messageisinlist messageIsInList�� 20 messageidsnotinkilllist messageIDsNotInKillList�� 0 themessageid theMessageID�� 0 
messageids 
messageIDs�� 0 	inreplyto 	inReplyTo�� 0 thereferences theReferences�� "0 referencevalues referenceValues�� "0 saveddelimiters savedDelimiters�� 0 eachmessageid eachMessageID? ���q~�������������������������
�� 
meid
�� 
mhdr
�� 
ctnt��  ��  
�� 
txdl
�� 
spac
�� 
citm
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT�� �fE�OjvE�O� o��,E�O�� �%�%kvE�OPY jvE�O ���/EE�O��,�6FW X  	hO ,���/EE�O��,E�O)�,E�O�)�,FO���-%E�O�)�,FW X  	hUO 3�[��l kh 
�� eE�Y �� �a &�6FY h[OY��O��lv- �������AB���� (0 createruleifneeded createRuleIfNeeded��  ��  A �������� 0 fileofme fileOfMe�� 0 rulename ruleName�� 0 newrule newRuleB ����������������[����57��=��������������������
�� afdrscr�
�� 
from
�� fldmfldl
�� 
rtyp
�� 
TEXT�� 
�� .earsffdralis        afdr
�� 
alis
�� 
rule
�� 
pnam
�� 
btns
�� 
disp
�� stic   
�� .sysodlogaskr        TEXT
�� 
kocl
�� 
prdt
�� 
rras
�� .corecrel****      � null
�� 
isac
�� 
rucr
�� eruttevm�� w������ �%�&E�O�E�O� _*�-�,� S��%�%�a kva a � O*a �a a ���� E�O� e*a ,FO*a a a �a l� UY hU. ��a���CD�~��  0 senderkillfile senderKillFile��  �  C �}�|�}  0 senderkillpath senderKillPath�| 0 
appsupport 
appSupportD �{�z�y�x�w�v�u{�t�s�r�q��p�o�n�m�l��k�j�i�h�g
�{ afdrasup
�z 
from
�y fldmfldu
�x 
rtyp
�w 
TEXT�v 
�u .earsffdralis        afdr
�t 
alis
�s 
rslt�r  �q  
�p 
kocl
�o 
cfol
�n 
insh
�m 
prdt
�l 
pnam�k 
�j .corecrel****      � null
�i 
file
�h .rdwropenshor       file
�g .rdwrclosnull���     ****�~ g������ �%E�O 
��&E�W OX 
 ���l E�O  � *���a a a la  UW X 
 hO*a �/j O�j O��&E�/ �f��e�dEF�c�f  0 threadkillfile threadKillFile�e  �d  E �b�a�b  0 threadkillpath threadKillPath�a 0 
appsupport 
appSupportF �`�_�^�]�\�[�Z��Y�X�W�V�U�T�S�R�Q�P�O�N�M�L
�` afdrasup
�_ 
from
�^ fldmfldu
�] 
rtyp
�\ 
TEXT�[ 
�Z .earsffdralis        afdr
�Y 
alis
�X 
rslt�W  �V  
�U 
kocl
�T 
cfol
�S 
insh
�R 
prdt
�Q 
pnam�P 
�O .corecrel****      � null
�N 
file
�M .rdwropenshor       file
�L .rdwrclosnull���     ****�c g������ �%E�O 
��&E�W OX 
 ���l E�O  � *���a a a la  UW X 
 hO*a �/j O�j O��&E�ascr  ��ޭ