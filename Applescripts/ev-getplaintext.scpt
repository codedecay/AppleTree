FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Veritrope.com
Evernote - Get Plain Text of Selected Note
Version 1.0
October 6, 2011

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/evernote-get-plain-text-of-selected-note

// CHANGELOG:

1.0 Initial Version


// NOTES:

This AppleScript converts the HTML content of a selected Evernote item �
and uses textutil to render it as plain text.

The plain text is stored in the variable "plain_Text".

     � 	 	l 
 V e r i t r o p e . c o m 
 E v e r n o t e   -   G e t   P l a i n   T e x t   o f   S e l e c t e d   N o t e 
 V e r s i o n   1 . 0 
 O c t o b e r   6 ,   2 0 1 1 
 
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t : 
 h t t p : / / v e r i t r o p e . c o m / c o d e / e v e r n o t e - g e t - p l a i n - t e x t - o f - s e l e c t e d - n o t e 
 
 / /   C H A N G E L O G : 
 
 1 . 0   I n i t i a l   V e r s i o n 
 
 
 / /   N O T E S : 
 
 T h i s   A p p l e S c r i p t   c o n v e r t s   t h e   H T M L   c o n t e n t   o f   a   s e l e c t e d   E v e r n o t e   i t e m   � 
 a n d   u s e s   t e x t u t i l   t o   r e n d e r   i t   a s   p l a i n   t e x t . 
 
 T h e   p l a i n   t e x t   i s   s t o r e d   i n   t h e   v a r i a b l e   " p l a i n _ T e x t " . 
 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l      ��  ��    e _
======================================
// MAIN PROGRAM
======================================
     �   � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��     ��  l    # ����  O     #    k    "       r    	    1    ��
�� 
EV15  o      ���� 0 the_selection the_Selection      r   
    !   n   
  " # " 1    ��
�� 
EVhl # l  
  $���� $ n   
  % & % 4    �� '
�� 
cobj ' m    ����  & o   
 ���� 0 the_selection the_Selection��  ��   ! o      ���� 0 the_html the_HTML   (�� ( r    " ) * ) I    �� +��
�� .sysoexecTEXT���     TEXT + b     , - , b     . / . b     0 1 0 m     2 2 � 3 3 
 e c h o   1 n     4 5 4 1    ��
�� 
strq 5 o    ���� 0 the_html the_HTML / 1    ��
�� 
spac - m     6 6 � 7 7 P |   t e x t u t i l     - c o n v e r t   t x t     - s t d i n   - s t d o u t��   * o      ���� 0 
plain_text 
plain_Text��    m      8 8�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��       �� 9 :��   9 ��
�� .aevtoappnull  �   � **** : �� ;���� < =��
�� .aevtoappnull  �   � **** ; k     # > >  ����  ��  ��   <   =  8���������� 2���� 6����
�� 
EV15�� 0 the_selection the_Selection
�� 
cobj
�� 
EVhl�� 0 the_html the_HTML
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 
plain_text 
plain_Text�� $�  *�,E�O��k/�,E�O���,%�%�%j 
E�Uascr  ��ޭ