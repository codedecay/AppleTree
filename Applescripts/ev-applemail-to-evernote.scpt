FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
�
�
http://veritrope.com
Apple Mail to Evernote
Version 2.04
January 20, 2013

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// LIKE THIS SCRIPT?
If this AppleScript is helpful to you, please show your support here:
http://veritrope.com/support

// IMPORTANT LINKS:
-- Project Page: http://veritrope.com/code/apple-mail-to-evernote
-- GROWL (Required): http://bit.ly/GrowlApp
-- FastScripts (Optional): http://bit.ly/FastScripts

// REQUIREMENTS:
THIS SCRIPT REQUIRES LION OR GREATER (OS X 10.7+) TO RUN WITHOUT MODIFICATION

THE APP STORE VERSION OF GROWL IS REQUIRED FOR THIS SCRIPT TO WORK!
(If you do not have it installed, you'll get an error when you try to save this script.)
    -- GROWL IS AVAILABLE FOR DOWNLOAD HERE:
    -- http://bit.ly/GrowlApp

// INSTALLATION:  
-- You can save this script to /Library/Scripts/Mail Scripts and launch it using the system-wide script menu from the Mac OS X menu bar. (The script menu can be activated using the AppleScript Utility application).
-- To use, highlight the email messages you want to archive into Evernote and run this script file;
-- The "User Switches" below allow you to customize the way this script works.
-- You can save this script as a service and trigger it with a keyboard shortcut.

    (Optional but recommended)
    Easier Keyboard Shortcut with FastScripts
    -- Download and Install FastScripts here:
    -- http://bit.ly/FastScripts

// CHANGELOG:
    * 2.04
    CHANGE TO DISPLAY MULTIPLE TO: RECIPIENTS, GROWL TWEAKS
   
    * 2.03
    FIXES AND ADJUSTMENTS FOR TAGS, ATTACHMENT OPERATIONS
   
    * 2.02
    CHANGED SOME VARIABLES TO WORK BETTER WITH "OPEN IN SCRIPT EDITOR" BUTTON
   
    * 2.01
    CONSOLIDATED SOME BASE64 CODE INTO A HANDLER, FIXED BUGS WITH ENCODING

    * 2.00 FINAL
    ELIMINATED MAILTAGS SUPPORT, GROWL REQUIREMENT, REWORKED HTML EMAIL TRANSFER FOR 10.7+ SYSTEMS

    * 2.00 b2
    BUG FIXES (USER SWITCH FOR NOTEBOOK, BETTER BASE 64 DETECTION, ATTACHMENT FIX)

    * 2.00 b1
    HTML MESSAGES, APPEND ATTACHMENTS, MAILTAGS, QUIET TEMP FILE REMOVAL

    * 1.30 (June 5, 2010)  
    ATTACHMENT CREATION. LAYING TRACK FOR HTML NOTES.
   
    * 1.20 (July 25, 2009)
    STREAMLINED MENU FOR NOTE EXPORT
   
    * 1.10 (May 6, 2009)  
    ACTIVATED MESSAGE LINKING/ADDED EVERNOTE ICON TO DIALOG BOX/MISC. CLEAN-UP!
   
    * 1.01 (April 23, 2009)
    FIXED TYPOGRAPHICAL ERROR
   
    * 1.00 (April 20, 2009)
    INITIAL RELEASE OF SCRIPT
     � 	 	4 
 h t t p : / / v e r i t r o p e . c o m 
 A p p l e   M a i l   t o   E v e r n o t e 
 V e r s i o n   2 . 0 4 
 J a n u a r y   2 0 ,   2 0 1 3 
 
 / /   T E R M S   O F   U S E : 
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e . 
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A . 
 
 / /   L I K E   T H I S   S C R I P T ? 
 I f   t h i s   A p p l e S c r i p t   i s   h e l p f u l   t o   y o u ,   p l e a s e   s h o w   y o u r   s u p p o r t   h e r e : 
 h t t p : / / v e r i t r o p e . c o m / s u p p o r t 
 
 / /   I M P O R T A N T   L I N K S : 
 - -   P r o j e c t   P a g e :   h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e 
 - -   G R O W L   ( R e q u i r e d ) :   h t t p : / / b i t . l y / G r o w l A p p 
 - -   F a s t S c r i p t s   ( O p t i o n a l ) :   h t t p : / / b i t . l y / F a s t S c r i p t s 
 
 / /   R E Q U I R E M E N T S : 
 T H I S   S C R I P T   R E Q U I R E S   L I O N   O R   G R E A T E R   ( O S   X   1 0 . 7 + )   T O   R U N   W I T H O U T   M O D I F I C A T I O N 
 
 T H E   A P P   S T O R E   V E R S I O N   O F   G R O W L   I S   R E Q U I R E D   F O R   T H I S   S C R I P T   T O   W O R K ! 
 ( I f   y o u   d o   n o t   h a v e   i t   i n s t a l l e d ,   y o u ' l l   g e t   a n   e r r o r   w h e n   y o u   t r y   t o   s a v e   t h i s   s c r i p t . ) 
         - -   G R O W L   I S   A V A I L A B L E   F O R   D O W N L O A D   H E R E : 
         - -   h t t p : / / b i t . l y / G r o w l A p p 
 
 / /   I N S T A L L A T I O N :     
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   t o   / L i b r a r y / S c r i p t s / M a i l   S c r i p t s   a n d   l a u n c h   i t   u s i n g   t h e   s y s t e m - w i d e   s c r i p t   m e n u   f r o m   t h e   M a c   O S   X   m e n u   b a r .   ( T h e   s c r i p t   m e n u   c a n   b e   a c t i v a t e d   u s i n g   t h e   A p p l e S c r i p t   U t i l i t y   a p p l i c a t i o n ) . 
 - -   T o   u s e ,   h i g h l i g h t   t h e   e m a i l   m e s s a g e s   y o u   w a n t   t o   a r c h i v e   i n t o   E v e r n o t e   a n d   r u n   t h i s   s c r i p t   f i l e ; 
 - -   T h e   " U s e r   S w i t c h e s "   b e l o w   a l l o w   y o u   t o   c u s t o m i z e   t h e   w a y   t h i s   s c r i p t   w o r k s . 
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   a s   a   s e r v i c e   a n d   t r i g g e r   i t   w i t h   a   k e y b o a r d   s h o r t c u t . 
 
         ( O p t i o n a l   b u t   r e c o m m e n d e d ) 
         E a s i e r   K e y b o a r d   S h o r t c u t   w i t h   F a s t S c r i p t s 
         - -   D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   h e r e : 
         - -   h t t p : / / b i t . l y / F a s t S c r i p t s 
 
 / /   C H A N G E L O G : 
         *   2 . 0 4 
         C H A N G E   T O   D I S P L A Y   M U L T I P L E   T O :   R E C I P I E N T S ,   G R O W L   T W E A K S 
       
         *   2 . 0 3 
         F I X E S   A N D   A D J U S T M E N T S   F O R   T A G S ,   A T T A C H M E N T   O P E R A T I O N S 
       
         *   2 . 0 2 
         C H A N G E D   S O M E   V A R I A B L E S   T O   W O R K   B E T T E R   W I T H   " O P E N   I N   S C R I P T   E D I T O R "   B U T T O N 
       
         *   2 . 0 1 
         C O N S O L I D A T E D   S O M E   B A S E 6 4   C O D E   I N T O   A   H A N D L E R ,   F I X E D   B U G S   W I T H   E N C O D I N G 
 
         *   2 . 0 0   F I N A L 
         E L I M I N A T E D   M A I L T A G S   S U P P O R T ,   G R O W L   R E Q U I R E M E N T ,   R E W O R K E D   H T M L   E M A I L   T R A N S F E R   F O R   1 0 . 7 +   S Y S T E M S 
 
         *   2 . 0 0   b 2 
         B U G   F I X E S   ( U S E R   S W I T C H   F O R   N O T E B O O K ,   B E T T E R   B A S E   6 4   D E T E C T I O N ,   A T T A C H M E N T   F I X ) 
 
         *   2 . 0 0   b 1 
         H T M L   M E S S A G E S ,   A P P E N D   A T T A C H M E N T S ,   M A I L T A G S ,   Q U I E T   T E M P   F I L E   R E M O V A L 
 
         *   1 . 3 0   ( J u n e   5 ,   2 0 1 0 )     
         A T T A C H M E N T   C R E A T I O N .   L A Y I N G   T R A C K   F O R   H T M L   N O T E S . 
       
         *   1 . 2 0   ( J u l y   2 5 ,   2 0 0 9 ) 
         S T R E A M L I N E D   M E N U   F O R   N O T E   E X P O R T 
       
         *   1 . 1 0   ( M a y   6 ,   2 0 0 9 )     
         A C T I V A T E D   M E S S A G E   L I N K I N G / A D D E D   E V E R N O T E   I C O N   T O   D I A L O G   B O X / M I S C .   C L E A N - U P ! 
       
         *   1 . 0 1   ( A p r i l   2 3 ,   2 0 0 9 ) 
         F I X E D   T Y P O G R A P H I C A L   E R R O R 
       
         *   1 . 0 0   ( A p r i l   2 0 ,   2 0 0 9 ) 
         I N I T I A L   R E L E A S E   O F   S C R I P T 
   
  
 l     ��������  ��  ��        l      ��  ��    f `
======================================
// USER SWITCHES
======================================
     �   � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U S E R   S W I T C H E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��        l     ��  ��    H B SET THIS TO "OFF" IF YOU WANT TO SKIP THE TAGGING/NOTEBOOK DIALOG     �   �   S E T   T H I S   T O   " O F F "   I F   Y O U   W A N T   T O   S K I P   T H E   T A G G I N G / N O T E B O O K   D I A L O G      l     ��  ��    9 3 AND SEND ITEMS DIRECTLY INTO YOUR DEFAULT NOTEBOOK     �   f   A N D   S E N D   I T E M S   D I R E C T L Y   I N T O   Y O U R   D E F A U L T   N O T E B O O K      j     �� ��  0 tagging_switch tagging_Switch  m          � ! !  O N   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & 6 0 IF YOU'VE DISABLED THE TAGGING/NOTEBOOK DIALOG,    ' � ( ( `   I F   Y O U ' V E   D I S A B L E D   T H E   T A G G I N G / N O T E B O O K   D I A L O G , %  ) * ) l     �� + ,��   + = 7 TYPE THE NAME OF THE NOTEBOOK YOU WANT TO SEND ITEM TO    , � - - n   T Y P E   T H E   N A M E   O F   T H E   N O T E B O O K   Y O U   W A N T   T O   S E N D   I T E M   T O *  . / . l     �� 0 1��   0 < 6 BETWEEN THE QUOTES IF IT ISN'T YOUR DEFAULT NOTEBOOK.    1 � 2 2 l   B E T W E E N   T H E   Q U O T E S   I F   I T   I S N ' T   Y O U R   D E F A U L T   N O T E B O O K . /  3 4 3 l     �� 5 6��   5   (EMPTY SENDS TO DEFAULT)    6 � 7 7 2   ( E M P T Y   S E N D S   T O   D E F A U L T ) 4  8 9 8 j    �� :�� 0 
evnotebook 
EVnotebook : m     ; ; � < <   9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A A ; IF TAGGING IS ON AND YOU'D LIKE TO CHANGE THE DEFAULT TAG,    B � C C v   I F   T A G G I N G   I S   O N   A N D   Y O U ' D   L I K E   T O   C H A N G E   T H E   D E F A U L T   T A G , @  D E D l     �� F G��   F > 8 TYPE IT BETWEEN THE QUOTES ("Email Message" IS DEFAULT)    G � H H p   T Y P E   I T   B E T W E E N   T H E   Q U O T E S   ( " E m a i l   M e s s a g e "   I S   D E F A U L T ) E  I J I j    �� K�� 0 
defaulttag 
defaultTag K m     L L � M M  E m a i l   M e s s a g e J  N O N l     ��������  ��  ��   O  P Q P l      �� R S��   R i c
======================================
// OTHER PROPERTIES
======================================
    S � T T � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   O T H E R   P R O P E R T I E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 Q  U V U j   	 �� W�� 0 successcount successCount W m   	 
����   V  X Y X j    �� Z�� 0 growl_running growl_Running Z m     [ [ � \ \ 
 f a l s e Y  ] ^ ] j    �� _�� 0 mytitle myTitle _ m     ` ` � a a  M a i l   I t e m ^  b c b j    �� d�� 0 themessages theMessages d J    ����   c  e f e j    �� g�� 0 thismessage thisMessage g m     h h � i i   f  j k j j    �� l�� 0 itemnum itemNum l m     m m � n n  0 k  o p o j     �� q�� 0 attnum attNum q m     r r � s s  0 p  t u t j   ! %�� v�� 0 errnum errNum v m   ! $ w w � x x  0 u  y z y j   & *�� {�� 0 usertag userTag { m   & ) | | � } }   z  ~  ~ j   + .�� ��� 0 evtag EVTag � J   + -����     � � � j   / 3�� ��� 0 	multihtml 	multiHTML � m   / 2 � � � � �   �  � � � j   4 7�� ���  0 thesourceitems theSourceItems � J   4 6����   �  � � � j   8 <�� ��� 0 mysource mySource � m   8 ; � � � � �   �  � � � j   = C�� ���  0 decode_success decode_Success � m   = @ � � � � �   �  � � � j   D J�� ��� 0 	finalhtml 	finalHTML � m   D G � � � � �   �  � � � j   K Q�� ��� 0 	myheaders 	myHeaders � m   K N � � � � �   �  � � � j   R W�� ��� *0 mysource_paragraphs mysource_Paragraphs � J   R T����   �  � � � j   X ^�� ��� 0 
base64_raw 
base64_Raw � m   X [ � � � � �   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � e _
======================================
// MAIN PROGRAM
======================================
    � � � � � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  RESET ITEMS    � � � �  R E S E T   I T E M S �  � � � l     ����� � r      � � � m      � � � � �  0 � o      ���� 0 successcount successCount��  ��   �  � � � l    ����� � r     � � � m    	 � � � � �  0 � o      ���� 0 errnum errNum��  ��   �  � � � l    ����� � r     � � � m     � � � � �   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr��  ��   �  � � � l     ��������  ��  ��   �  � � � l  ! ����� � Q   ! � � � � k    x � �  � � � l   �� � ���   �  CHECK FOR GROWL    � � � �  C H E C K   F O R   G R O W L �  � � � n    � � � I    �������� 0 growl_check Growl_Check��  ��   �  f     �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   �  SET UP ACTIVITIES    � � � � " S E T   U P   A C T I V I T I E S �  � � � n   $ � � � I     $�������� 0 
item_check 
item_Check��  ��   �  f      �  � � � l  % %��������  ��  ��   �  � � � l  % %�� � ���   �  MESSAGES SELECTED?    � � � � $ M E S S A G E S   S E L E C T E D ? �  � � � Z   % a � ��� � � >  % - � � � o   % *���� 0 themessages theMessages � J   * ,����   � k   0 W � �  � � � l  0 0��������  ��  ��   �  � � � l  0 0�� � ���   �  GET FILE COUNT    � � � �  G E T   F I L E   C O U N T �  � � � n  0 : �  � I   1 :������ 0 
item_count 
item_Count �� o   1 6���� 0 themessages theMessages��  ��     f   0 1 �  l  ; ;��������  ��  ��    l  ; ;����   # ANNOUNCE THE EXPORT OF ITEMS     �		 : A N N O U N C E   T H E   E X P O R T   O F   I T E M S   

 n  ; J I   < J������ 0 process_items process_Items  o   < A���� 0 itemnum itemNum �� o   A F���� 0 attnum attNum��  ��    f   ; <  l  K K��������  ��  ��    l  K K����   # PROCESS MAIL ITEMS FOR EXPORT    � : P R O C E S S   M A I L   I T E M S   F O R   E X P O R T  n  K U I   L U������ 0 mail_process mail_Process �� o   L Q���� 0 themessages theMessages��  ��    f   K L �� l  V V��������  ��  ��  ��  ��   � k   Z a   !"! l  Z Z��#$��  #  NO MESSAGES SELECTED   $ �%% ( N O   M E S S A G E S   S E L E C T E D" &��& r   Z a'(' m   Z [������( o      ���� 0 successcount successCount��   � )*) l  b b����~��  �  �~  * +,+ l  b b�}-.�}  -  GROWL RESULTS   . �//  G R O W L   R E S U L T S, 010 n  b v232 I   c v�|4�{�| 0 growl_growler growl_Growler4 565 o   c h�z�z 0 growl_running growl_Running6 787 o   h m�y�y 0 successcount successCount8 9�x9 o   m r�w�w 0 errnum errNum�x  �{  3  f   b c1 :;: l  w w�v�u�t�v  �u  �t  ; <�s< l  w w�r=>�r  =  ERROR HANDLING   > �??  E R R O R   H A N D L I N G�s   � R      �q@A
�q .ascrerr ****      � ****@ o      �p�p 0 errtext errTextA �oB�n
�o 
errnB o      �m�m 0 errnum errNum�n   � Z   �!CDE�lC =  � �FGF o   � ��k�k 0 growl_running growl_RunningG m   � ��j
�j boovtrueD k   � �HH IJI l  � ��i�h�g�i  �h  �g  J KLK l  � ��fMN�f  M  GROWL FAILURE FOR CANCEL   N �OO 0 G R O W L   F A I L U R E   F O R   C A N C E LL PQP Z   � �RS�eTR =  � �UVU o   � ��d�d 0 errnum errNumV m   � ��c�c��S O   � �WXW k   � �YY Z[Z I  � ��b�a\
�b .notifygrnull��� ��� null�a  \ �`]^
�` 
name] l 	 � �_�_�^_ m   � �`` �aa ( F a i l u r e   N o t i f i c a t i o n�_  �^  ^ �]bc
�] 
titlb l 	 � �d�\�[d m   � �ee �ff  U s e r   C a n c e l l e d�\  �[  c �Zgh
�Z 
descg l 	 � �i�Y�Xi m   � �jj �kk " F a i l e d   t o   e x p o r t !�Y  �X  h �Wlm
�W 
appll m   � �nn �oo , A p p l e   M a i l   t o   E v e r n o t em �Vp�U
�V 
iappp m   � �qq �rr  M a i l�U  [ s�Ts l  � ��S�R�Q�S  �R  �Q  �T  X m   � �tt�                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �e  T k   � �uu vwv l  � ��P�O�N�P  �O  �N  w xyx l  � ��Mz{�M  z  GROWL FAILURE FOR ERROR   { �|| . G R O W L   F A I L U R E   F O R   E R R O Ry }�L} O   � �~~ k   � ��� ��� I  � ��K�J�
�K .notifygrnull��� ��� null�J  � �I��
�I 
name� l 	 � ���H�G� m   � ��� ��� ( F a i l u r e   N o t i f i c a t i o n�H  �G  � �F��
�F 
titl� l 	 � ���E�D� m   � ��� ���  I m p o r t   F a i l u r e�E  �D  � �C��
�C 
desc� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� " F a i l e d   t o   e x p o r t  � o   � ��B
�B 
ret � o   � ��A�A 0 mytitle myTitle� l 	 � ���@�?� m   � ��� ��� > "     d u e   t o   t h e   f o l l o w i n g   e r r o r :  �@  �?  � o   � ��>
�> 
ret � l 
 � ���=�<� o   � ��;�; 0 errtext errText�=  �<  � �:��
�: 
appl� m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e� �9��8
�9 
iapp� m   � ��� ���  M a i l�8  � ��7� l  � ��6�5�4�6  �5  �4  �7   m   � ����                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �L  Q ��� l  � ��3�2�1�3  �2  �1  � ��0� l  � ��/���/  � $ NON-GROWL ERROR MSG. FOR ERROR   � ��� < N O N - G R O W L   E R R O R   M S G .   F O R   E R R O R�0  E ��� =  ��� o   �.�. 0 growl_running growl_Running� m  �-
�- boovfals� ��,� I 
�+��
�+ .sysodlogaskr        TEXT� b  
��� b  
��� b  
��� m  
�� ��� . I t e m   F a i l e d   t o   I m p o r t :  � o  �*�* 0 errnum errNum� o  �)
�) 
ret � o  �(�( 0 errtext errText� �'��&
�' 
disp� m  �%�%  �&  �,  �l  ��  ��   � ��� l     �$�#�"�$  �#  �"  � ��� l      �!���!  � q k
======================================
// PREPARATORY SUBROUTINES
=======================================
   � ��� � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R E P A R A T O R Y   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     � ���   �  �  � ��� l     ����  �  
APP DETECT   � ���  A P P   D E T E C T� ��� i   _ b��� I      ���� 0 appisrunning appIsRunning� ��� o      �� 0 appname appName�  �  � O    ��� E    ��� l   	���� n    	��� 1    	�
� 
pnam� 2   �
� 
prcs�  �  � o   	 
�� 0 appname appName� m     ���                                                                                  sevs  alis    �  Macintosh HD               �0ڲH+   R�System Events.app                                               UK��Ɖ        ����  	                CoreServices    �1�      ���     R� R� R�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ����  �  �  � ��� l     ����  �  SET UP ACTIVITIES   � ��� " S E T   U P   A C T I V I T I E S� ��� i   c f��� I      ���� 0 
item_check 
item_Check�  �  � k     "�� ��� r     ��� l    ���� I    �
��	
�
 .earsffdralis        afdr� m     �
� afdrcusr�	  �  �  � o      �� 0 mypath myPath� ��� O    "��� Q    !���� r    ��� 1    �
� 
slct� o      �� 0 themessages theMessages� R      ��� 
� .ascrerr ****      � ****�  �   �  � m    	���                                                                                  emal  alis    F  Macintosh HD               �0ڲH+   R�Mail.app                                                        Ts�0w        ����  	                Applications    �1�      �h�     R�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  �  � ��� l     ��������  ��  ��  � ��� l     ������  � ( "GET COUNT OF ITEMS AND ATTACHMENTS   � ��� D G E T   C O U N T   O F   I T E M S   A N D   A T T A C H M E N T S� ��� i   g j��� I      �� ���� 0 
item_count 
item_Count  �� o      ���� 0 themessages theMessages��  ��  � O     A k    @  r     I   	��	��
�� .corecnte****       ****	 o    ���� 0 themessages theMessages��   o      ���� 0 itemnum itemNum 

 r     m    ����   o      ���� 0 attnum attNum �� X    @�� r   ( ; [   ( 5 o   ( -���� 0 attnum attNum l  - 4���� I  - 4����
�� .corecnte****       **** n   - 0 m   . 0��
�� 
attc o   - .���� 0 
themessage 
theMessage��  ��  ��   o      ���� 0 attnum attNum�� 0 
themessage 
theMessage o    ���� 0 themessages theMessages��   m     �                                                                                  emal  alis    F  Macintosh HD               �0ڲH+   R�Mail.app                                                        Ts�0w        ����  	                Applications    �1�      �h�     R�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  �  l     ��������  ��  ��    l      ����   z t
======================================
// TAGGING AND NOTEBOOK SUBROUTINES
=======================================
    �   � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   T A G G I N G   A N D   N O T E B O O K   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 !"! l     ��������  ��  ��  " #$# l     ��%&��  % + %TAGGING AND NOTEBOOK SELECTION DIALOG   & �'' J T A G G I N G   A N D   N O T E B O O K   S E L E C T I O N   D I A L O G$ ()( i   k n*+* I      ��������  0 tagging_dialog tagging_Dialog��  ��  + k     �,, -.- Q     [/01/ k    J22 343 I   ,��56
�� .sysodlogaskr        TEXT5 b    787 m    99 �::  8 l 	  ;����; m    << �== � P l e a s e   E n t e r   Y o u r   T a g s   B e l o w : 
 ( M u l t i p l e   T a g s   S e p a r a t e d   B y   C o m m a s )��  ��  6 ��>?
�� 
appr> m    @@ �AA Z V e r i t r o p e . c o m   |   A p p l e   M a i l   t o   E v e r n o t e   E x p o r t? ��BC
�� 
dtxtB o   	 ���� 0 
defaulttag 
defaultTagC ��DE
�� 
btnsD J    FF GHG m    II �JJ 4 C r e a t e   i n   D e f a u l t   N o t e b o o kH KLK m    MM �NN 2 S e l e c t   N o t e b o o k   f r o m   L i s tL O��O m    PP �QQ  C a n c e l��  E ��RS
�� 
dfltR m    TT �UU 4 C r e a t e   i n   D e f a u l t   N o t e b o o kS ��VW
�� 
cbtnV l 	  X����X m    YY �ZZ  C a n c e l��  ��  W ��[��
�� 
disp[ I   &��\]
�� .sysorpthalis        TEXT\ m    ^^ �__  E v e r n o t e . i c n s] ��`��
�� 
in B` l   "a����a I   "��b��
�� .earsffdralis        afdrb m    cc�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  4 ded r   - 2fgf l  - 0h����h 1   - 0��
�� 
rslt��  ��  g o      ���� 0 dialogresult  e iji r   3 :klk n   3 8mnm 1   4 8��
�� 
ttxtn o   3 4���� 0 dialogresult  l o      ���� 0 	userinput 	userInputj opo r   ; Bqrq n   ; @sts 1   < @��
�� 
bhitt o   ; <���� 0 dialogresult  r o      ���� 0 	buttonsel 	ButtonSelp u��u r   C Jvwv J   C Hxx y��y m   C Fzz �{{  ,��  w o      ���� 0 	thedelims 	theDelims��  0 R      ����|
�� .ascrerr ****      � ****��  | ��}��
�� 
errn} d      ~~ m      ���� ���  1 r   R [� m   R U������� o      ���� 0 errnum errNum. ��� l  \ \��������  ��  ��  � ��� l  \ \������  �  ASSEMBLE LIST OF TAGS   � ��� * A S S E M B L E   L I S T   O F   T A G S� ��� r   \ e��� n  \ c��� I   ] c������� 0 tag_list Tag_List� ��� o   ] ^���� 0 	userinput 	userInput� ���� o   ^ _���� 0 	thedelims 	theDelims��  ��  �  f   \ ]� o      ���� 0 thetags theTags� ��� l  f f��������  ��  ��  � ��� l  f f������  � 0 *RESET, FINAL CHECK, AND FORMATTING OF TAGS   � ��� T R E S E T ,   F I N A L   C H E C K ,   A N D   F O R M A T T I N G   O F   T A G S� ��� r   f n��� J   f h����  � o      ���� 0 evtag EVTag� ��� r   o {��� n  o u��� I   p u������� 0 	tag_check 	Tag_Check� ���� o   p q���� 0 thetags theTags��  ��  �  f   o p� o      ���� 0 evtag EVTag� ��� l  | |��������  ��  ��  � ��� l  | |������  �  SELECT NOTEBOOK   � ���  S E L E C T   N O T E B O O K� ���� Z  | �������� =  | ���� o   | }���� 0 	buttonsel 	ButtonSel� m   } ��� ��� 2 S e l e c t   N o t e b o o k   f r o m   L i s t� r   � ���� n  � ���� I   � ��������� 0 notebook_list Notebook_List��  ��  �  f   � �� o      ���� 0 
evnotebook 
EVnotebook��  ��  ��  ) ��� l     ��������  ��  ��  � ��� l     ������  � % GET EVERNOTE'S DEFAULT NOTEBOOK   � ��� > G E T   E V E R N O T E ' S   D E F A U L T   N O T E B O O K� ��� i   o r��� I      �������� $0 default_notebook default_Notebook��  ��  � O     0��� k    /�� ��� r    ��� 6   ��� 2    ��
�� 
EVnb� =   ��� 1   	 ��
�� 
EVnd� m    ��
�� boovtrue� o      ���� *0 get_defaultnotebook get_defaultNotebook� ���� Z    /������� =   ��� o    ���� 0 
evnotebook 
EVnotebook� m    �� ���  � r    +��� c    %��� n    #��� 1   ! #��
�� 
pnam� l   !������ n    !��� 4    !��
� 
cobj� m     �~�~ � o    �}�} *0 get_defaultnotebook get_defaultNotebook��  ��  � m   # $�|
�| 
ctxt� o      �{�{ 0 
evnotebook 
EVnotebook��  ��  ��  � m     ���                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  � ��� l     �z�y�x�z  �y  �x  � ��� l     �w���w  �  TAG SELECTION SUBROUTINE   � ��� 0 T A G   S E L E C T I O N   S U B R O U T I N E� ��� i   s v��� I      �v��u�v 0 tag_list Tag_List� ��� o      �t�t 0 	userinput 	userInput� ��s� o      �r�r 0 	thedelims 	theDelims�s  �u  � k     U�� ��� r     ��� n    ��� 1    �q
�q 
txdl� 1     �p
�p 
ascr� o      �o�o 0 	olddelims 	oldDelims� ��� r    ��� J    	�� ��n� o    �m�m 0 	userinput 	userInput�n  � o      �l�l 0 thelist theList� ��� X    L��k�� k    G��    r    ! o    �j�j 0 adelim aDelim n      1     �i
�i 
txdl 1    �h
�h 
ascr  r   " &	 J   " $�g�g  	 o      �f�f 0 newlist newList 

 X   ' C�e r   7 > b   7 < o   7 8�d�d 0 newlist newList n   8 ; 2  9 ;�c
�c 
citm o   8 9�b�b 0 anitem anItem o      �a�a 0 newlist newList�e 0 anitem anItem o   * +�`�` 0 thelist theList �_ r   D G o   D E�^�^ 0 newlist newList o      �]�] 0 thelist theList�_  �k 0 adelim aDelim� o    �\�\ 0 	thedelims 	theDelims�  r   M R o   M N�[�[ 0 	olddelims 	oldDelims n      1   O Q�Z
�Z 
txdl 1   N O�Y
�Y 
ascr �X L   S U o   S T�W�W 0 thelist theList�X  �   l     �V�U�T�V  �U  �T    !"! l     �S#$�S  # &  CREATES TAGS IF THEY DON'T EXIST   $ �%% @ C R E A T E S   T A G S   I F   T H E Y   D O N ' T   E X I S T" &'& i   w z()( I      �R*�Q�R 0 	tag_check 	Tag_Check* +�P+ o      �O�O 0 thetags theTags�P  �Q  ) k     V,, -.- O     S/0/ k    R11 232 r    454 J    �N�N  5 o      �M�M 0 	finaltags 	finalTags3 6�L6 X   	 R7�K87 Z    M9:�J;9 l   #<�I�H< H    #== l   ">�G�F> I   "�E?�D
�E .coredoexnull���     ****? 5    �C@�B
�C 
EVtg@ o    �A�A 0 thetag theTag
�B kfrmname�D  �G  �F  �I  �H  : Q   & CAB�@A k   ) :CC DED r   ) 5FGF I  ) 3�?HI
�? .corecrel****      � nullH m   ) *�>
�> 
EVtgI �=J�<
�= 
prdtJ K   + /KK �;L�:
�; 
pnamL o   , -�9�9 0 thetag theTag�:  �<  G o      �8�8 0 maketag makeTagE M�7M r   6 :NON o   6 7�6�6 0 maketag makeTagO n      PQP  ;   8 9Q o   7 8�5�5 0 	finaltags 	finalTags�7  B R      �4�3�2
�4 .ascrerr ****      � ****�3  �2  �@  �J  ; r   F MRSR 4   F J�1T
�1 
EVtgT o   H I�0�0 0 thetag theTagS n      UVU  ;   K LV o   J K�/�/ 0 	finaltags 	finalTags�K 0 thetag theTag8 o    �.�. 0 thetags theTags�L  0 m     WW�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  . X�-X L   T VYY o   T U�,�, 0 	finaltags 	finalTags�-  ' Z[Z l     �+�*�)�+  �*  �)  [ \]\ l     �(^_�(  ^ , &EVERNOTE NOTEBOOK SELECTION SUBROUTINE   _ �`` L E V E R N O T E   N O T E B O O K   S E L E C T I O N   S U B R O U T I N E] aba i   { ~cdc I      �'�&�%�' 0 notebook_list Notebook_List�&  �%  d O     efe k    ~gg hih I   	�$�#�"
�$ .miscactvnull��� ��� null�#  �"  i jkj l   
 lmnl r   
 opo J   
 �!�!  p o      � �  "0 listofnotebooks listOfNotebooksm 2 ,PREPARE TO GET EVERNOTE'S LIST OF NOTEBOOKS    n �qq X P R E P A R E   T O   G E T   E V E R N O T E ' S   L I S T   O F   N O T E B O O K S  k rsr l    tuvt r    wxw 2    �
� 
EVnbx o      �� 0 evnotebooks EVNotebooksu  GET THE NOTEBOOK LIST    v �yy , G E T   T H E   N O T E B O O K   L I S T  s z{z X    4|�}| k   % /~~ � r   % *��� l  % (���� l  % (���� n   % (��� 1   & (�
� 
pnam� o   % &�� "0 currentnotebook currentNotebook�  �  �  �  � o      �� *0 currentnotebookname currentNotebookName� ��� s   + /��� o   + ,�� *0 currentnotebookname currentNotebookName� l     ���� n      ���  ;   - .� o   , -�� "0 listofnotebooks listOfNotebooks�  �  �  � "0 currentnotebook currentNotebook} o    �� 0 evnotebooks EVNotebooks{ ��� l   5 =���� r   5 =��� n  5 ;��� I   6 ;���� 0 simple_sort  � ��� o   6 7�� "0 listofnotebooks listOfNotebooks�  �  �  f   5 6� o      ��  0 folders_sorted Folders_sorted�  SORT THE LIST    � ���  S O R T   T H E   L I S T  � ��� l   > O���� r   > O��� I  > M�
��
�
 .gtqpchltns    @   @ ns  � o   > ?�	�	  0 folders_sorted Folders_sorted� ���
� 
appr� m   @ A�� ��� 0 S e l e c t   E v e r n o t e   N o t e b o o k� ���
� 
prmp� l 	 B C���� m   B C�� ��� 4 C u r r e n t   E v e r n o t e   N o t e b o o k s�  �  � ���
� 
okbt� m   D E�� ���  O K� ���
� 
cnbt� m   F G�� ���  N e w   N o t e b o o k�  � o      �� 0 selnotebook SelNotebook� ( "USER SELECTION FROM NOTEBOOK LIST    � ��� D U S E R   S E L E C T I O N   F R O M   N O T E B O O K   L I S T  � �� � Z   P ~������ l  P S������ =  P S��� o   P Q���� 0 selnotebook SelNotebook� m   Q R��
�� boovfals��  ��  � l  V q���� k   V q�� ��� r   V i��� n   V g��� l 	 c g������ 1   c g��
�� 
ttxt��  ��  � l  V c������ I  V c����
�� .sysodlogaskr        TEXT� m   V Y�� ��� 0 E n t e r   N e w   N o t e b o o k   N a m e :� �����
�� 
dtxt� m   \ _�� ���  ��  ��  ��  � o      ���� 0 	userinput 	userInput� ���� r   j q��� o   j k���� 0 	userinput 	userInput� o      ���� 0 
evnotebook 
EVnotebook��  � ! CREATE NEW NOTEBOOK OPTION    � ��� 6 C R E A T E   N E W   N O T E B O O K   O P T I O N  ��  � r   t ~��� n   t x��� 4   u x���
�� 
cobj� m   v w���� � o   t u���� 0 selnotebook SelNotebook� o      ���� 0 
evnotebook 
EVnotebook�   f m     ���                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  b ��� l     ��������  ��  ��  � ��� l      ������  � m g
======================================
// UTILITY SUBROUTINES
=======================================
   � ��� � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U T I L I T Y   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     ��������  ��  ��  � ��� l     ������  �   EXTRACTION SUBROUTINE   � ��� ,   E X T R A C T I O N   S U B R O U T I N E� ��� i    ���� I      �������  0 extractbetween extractBetween� ��� o      ���� 0 
searchtext 
SearchText� ��� o      ���� 0 	starttext 	startText� ���� o      ���� 0 endtext endText��  ��  � k     ,�� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 tid  � ��� r    ��� o    ���� 0 	starttext 	startText� n     ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n       m    ��
�� 
ctxt n     4    ��
�� 
citm m    ������ o    ���� 0 
searchtext 
SearchText� o      ���� 0 enditems endItems�  r     o    ���� 0 endtext endText n     	
	 1    ��
�� 
txdl
 1    ��
�� 
ascr  r    # n    ! m    !��
�� 
ctxt n     4    ��
�� 
citm m    ����  o    ���� 0 enditems endItems o      ����  0 beginningtoend beginningToEnd  r   $ ) o   $ %���� 0 tid   n      1   & (��
�� 
txdl 1   % &��
�� 
ascr �� L   * , o   * +����  0 beginningtoend beginningToEnd��  �  l     ��������  ��  ��    l     �� !��     SORT SUBROUTINE   ! �""  S O R T   S U B R O U T I N E #$# i   � �%&% I      ��'���� 0 simple_sort  ' (��( o      ���� 0 my_list  ��  ��  & k     u)) *+* r     ,-, J     ����  - l     .����. o      ���� 0 
index_list  ��  ��  + /0/ r    	121 J    ����  2 l     3����3 o      ���� 0 sorted_list  ��  ��  0 454 U   
 r676 k    m88 9:9 r    ;<; m    == �>>  < l     ?����? o      ���� 0 low_item  ��  ��  : @A@ Y    cB��CD��B Z   ) ^EF����E H   ) -GG E  ) ,HIH l  ) *J����J o   ) *���� 0 
index_list  ��  ��  I o   * +���� 0 i  F k   0 ZKK LML r   0 8NON c   0 6PQP n   0 4RSR 4   1 4��T
�� 
cobjT o   2 3���� 0 i  S o   0 1���� 0 my_list  Q m   4 5��
�� 
ctxtO o      ���� 0 	this_item  M U��U Z   9 ZVWX��V =  9 <YZY l  9 :[����[ o   9 :���� 0 low_item  ��  ��  Z m   : ;\\ �]]  W k   ? F^^ _`_ r   ? Baba o   ? @���� 0 	this_item  b l     c����c o      ���� 0 low_item  ��  ��  ` d��d r   C Fefe o   C D���� 0 i  f l     g����g o      ���� 0 low_item_index  ��  ��  ��  X hih A I Ljkj o   I J���� 0 	this_item  k l  J Kl����l o   J K���� 0 low_item  ��  ��  i m��m k   O Vnn opo r   O Rqrq o   O P���� 0 	this_item  r l     s����s o      ���� 0 low_item  ��  ��  p t��t r   S Vuvu o   S T���� 0 i  v l     w����w o      ���� 0 low_item_index  ��  ��  ��  ��  ��  ��  ��  ��  �� 0 i  C m    ���� D l   $x����x n    $yzy m   ! #��
�� 
nmbrz n   !{|{ 2   !��
�� 
cobj| o    ���� 0 my_list  ��  ��  ��  A }~} r   d h� l  d e������ o   d e���� 0 low_item  ��  ��  � l     ���~� n      ���  ;   f g� o   e f�}�} 0 sorted_list  �  �~  ~ ��|� r   i m��� l  i j��{�z� o   i j�y�y 0 low_item_index  �{  �z  � l     ��x�w� n      ���  ;   k l� l  j k��v�u� o   j k�t�t 0 
index_list  �v  �u  �x  �w  �|  7 l   ��s�r� l   ��q�p� n    ��� m    �o
�o 
nmbr� n   ��� 2   �n
�n 
cobj� o    �m�m 0 my_list  �q  �p  �s  �r  5 ��l� L   s u�� l  s t��k�j� o   s t�i�i 0 sorted_list  �k  �j  �l  $ ��� l     �h�g�f�h  �g  �f  � ��� l      �e���e  � w q
======================================
// PROCESS MAIL ITEMS SUBROUTINE
=======================================
   � ��� � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R O C E S S   M A I L   I T E M S   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     �d�c�b�d  �c  �b  � ��� i   � ���� I      �a��`�a 0 mail_process mail_Process� ��_� o      �^�^ 0 themessages theMessages�_  �`  � k    �� ��� l     �]���]  �  CHECK DEFAULT NOTEBOOK   � ��� , C H E C K   D E F A U L T   N O T E B O O K� ��� n    ��� I    �\�[�Z�\ $0 default_notebook default_Notebook�[  �Z  �  f     � ��Y� O   ��� Q   
���X� k   �� ��� Z    ���W�V� =   ��� o    �U�U  0 tagging_switch tagging_Switch� m    �� ���  O N� n   ��� I    �T�S�R�T  0 tagging_dialog tagging_Dialog�S  �R  �  f    �W  �V  � ��� l  ! !�Q�P�O�Q  �P  �O  � ��N� X   !��M�� k   1�� ��� Q   1����L� k   4��� ��� l  4 4�K���K  �  GET MESSAGE INFO   � ���   G E T   M E S S A G E   I N F O� ��� r   4 =��� l  4 7��J�I� n   4 7��� 1   5 7�H
�H 
subj� o   4 5�G�G 0 thismessage thisMessage�J  �I  � o      �F�F 0 mytitle myTitle� ��� r   > C��� l  > A��E�D� n   > A��� 1   ? A�C
�C 
ctnt� o   > ?�B�B 0 thismessage thisMessage�E  �D  � o      �A�A 0 	mycontent 	myContent� ��� r   D M��� l  D G��@�?� n   D G��� 1   E G�>
�> 
raso� o   D E�=�= 0 thismessage thisMessage�@  �?  � o      �<�< 0 mysource mySource� ��� r   N S��� l  N Q��;�:� n   N Q��� 1   O Q�9
�9 
rpto� o   N O�8�8 0 thismessage thisMessage�;  �:  � o      �7�7 0 	replyaddr 	ReplyAddr� ��� r   T Y��� l  T W��6�5� n   T W��� 1   U W�4
�4 
rdrc� o   T U�3�3 0 thismessage thisMessage�6  �5  � o      �2�2 0 	emaildate 	EmailDate� ��� r   Z b��� l  Z `��1�0� n   Z `��� 2   ^ `�/
�/ 
trcp� n   Z ^��� 4   [ ^�.�
�. 
cobj� m   \ ]�-�- � o   Z [�,�, 0 thismessage thisMessage�1  �0  � o      �+�+ 0 allrecipients allRecipients� ��� l  c c�*�)�(�*  �)  �(  � ��� l  c c�' �'    + %ASSEMBLE ALL TO: RECIPENTS FOR HEADER    � J A S S E M B L E   A L L   T O :   R E C I P E N T S   F O R   H E A D E R�  r   c f m   c d �   o      �&�& 0 torecipients toRecipients 	
	 X   g ��% k   w �  r   w | l  w z�$�# n   w z 1   x z�"
�" 
pnam o   w x�!�! 0 allrecipient allRecipient�$  �#   o      � �  0 toname toName  r   } � l  } ��� n   } � 1   ~ ��
� 
radd o   } ~�� 0 allrecipient allRecipient�  �   o      �� 0 toemail toEmail  r   � � b   � � !  b   � �"#" b   � �$%$ b   � �&'& o   � ��� 0 toname toName' 1   � ��
� 
spac% m   � �(( �))  (# o   � ��� 0 toemail toEmail! m   � �** �++  ) < b r / > o      �� 0 
tocombined 
toCombined ,�, r   � �-.- l  � �/��/ c   � �010 b   � �232 o   � ��� 0 torecipients toRecipients3 o   � ��� 0 
tocombined 
toCombined1 m   � ��
� 
TEXT�  �  . o      �� 0 torecipients toRecipients�  �% 0 allrecipient allRecipient o   j k�� 0 allrecipients allRecipients
 454 l  � �����  �  �  5 676 l  � ��89�  8  CREATE MAIL MESSAGE URL   9 �:: . C R E A T E   M A I L   M E S S A G E   U R L7 ;<; r   � �=>= m   � �?? �@@  > o      �
�
 0 therecipient theRecipient< ABA r   � �CDC m   � �EE �FF  D o      �	�	 0 ex  B GHG r   � �IJI m   � �KK �LL  J o      �� 0 msglink MsgLinkH MNM Q   � �OP�O k   � �QQ RSR r   � �TUT m   � �VV �WW  U o      �� 0 therecipient theRecipientS XYX r   � �Z[Z l  � �\��\ n   � �]^] 1   � ��
� 
radd^ n   � �_`_ 4   � ��a
� 
trcpa m   � ��� ` o   � �� �  0 thismessage thisMessage�  �  [ o      ���� 0 therecipient theRecipientY bcb r   � �ded b   � �fgf b   � �hih m   � �jj �kk  m e s s a g e : / / % 3 ci n  � �lml 1   � ���
�� 
meidm o   � ����� 0 thismessage thisMessageg m   � �nn �oo  % 3 ee o      ���� 0 msglink MsgLinkc p��p l  � �qrsq Z  � �tu����t >  � �vwv o   � ����� 0 therecipient theRecipientw m   � �xx �yy  u r   � �z{z n  � �|}| I   � ���~����  0 extractbetween extractBetween~ � o   � ����� 0 	replyaddr 	ReplyAddr� ��� m   � ��� ���  <� ���� m   � ��� ���  >��  ��  }  f   � �{ o      ���� 0 ex  ��  ��  r   extract the Address   s ��� (   e x t r a c t   t h e   A d d r e s s��  P R      ������
�� .ascrerr ****      � ****��  ��  �  N ��� l  � ���������  ��  ��  � ��� l  � �������  �  HTML EMAIL FUNCTIONS   � ��� ( H T M L   E M A I L   F U N C T I O N S� ��� r   ���� n  ���� I   ��������  0 extractbetween extractBetween� ��� o   ����� 0 mysource mySource� ��� m  �� ���  b o u n d a r y = "� ���� m  �� ���  "��  ��  �  f   � �� o      ���� 0 theboundary theBoundary� ��� r  ��� l ������ b  ��� b  ��� o  ��
�� 
ret � m  �� ���  - -� o  ���� 0 theboundary theBoundary��  ��  � o      ���� "0 themessagestart theMessageStart� ��� r  ,��� l (������ b  (��� b  $��� b   ��� m  �� ���  - -� o  ���� 0 theboundary theBoundary� o   #��
�� 
ret � m  $'�� ���  C o n t e n t - T y p e :��  ��  � o      ���� 0 themessageend theMessageEnd� ��� r  -:��� n  -6��� 2 26��
�� 
cpar� o  -2���� 0 mysource mySource� o      ���� 0 
parasource 
paraSource� ��� r  ;L��� n  ;H��� 2 DH��
�� 
cpar� l ;D������ c  ;D��� n  ;@��� 1  <@��
�� 
alhe� o  ;<���� 0 thismessage thisMessage� m  @C��
�� 
ctxt��  ��  � o      ���� 0 myheaderlines myHeaderlines� ��� l MM��������  ��  ��  � ��� l MM��������  ��  ��  � ��� l MM������  �  GET CONTENT TYPE   � ���   G E T   C O N T E N T   T Y P E� ��� X  M������ Z  _�������� C  _f��� o  _b���� 0 myheaderline myHeaderline� m  be�� ���  C o n t e n t - T y p e :  � r  i}��� n iw��� I  jw�������  0 extractbetween extractBetween� ��� o  jm���� 0 myheaderline myHeaderline� ��� m  mp�� ���  C o n t e n t - T y p e :  � ���� m  ps�� ���  ;��  ��  �  f  ij� o      ���� 0 	myheaders 	myHeaders��  ��  �� 0 myheaderline myHeaderline� o  PS���� 0 myheaderlines myHeaderlines� ��� r  ����� n ����� I  ��������� 0 stripheader stripHeader� ��� o  ������ 0 
parasource 
paraSource� ���� o  ������ 0 myheaderlines myHeaderlines��  ��  �  f  ��� o      ���� 0 	cutsource 	cutSource� ���� r  ����� o  ������ 0 	cutsource 	cutSource� o      ���� 0 evhtml evHTML��  � R      ������
�� .ascrerr ****      � ****��  ��  �L  � ��� l ����������  ��  ��  � ��� l ��������  �  MAKE HEADER TEMPLATE   � ��� ( M A K E   H E A D E R   T E M P L A T E�    r  �� b  �� b  �� b  ��	 b  ��

 b  �� b  �� b  �� b  �� b  �� b  �� m  �� �� 
 < t a b l e   b o r d e r = " 1 "   w i d t h = " 1 0 0 % "   c e l l s p a c i n g = " 0 "   c e l l p a d d i n g = " 2 " > 
 < t b o d y > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > F r o m :   < / s t r o n g >     < / t d > 
 < t d   v a l i g n = " t o p "   > < a   h r e f = " m a i l t o : o  ������ 0 ex   m  �� �  " > o  ������ 0 ex   m  �� � < / a > < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > S u b j e c t :   < / s t r o n g >     < / t d > 
 < t d   v a l i g n = " t o p "   > < s t r o n g > o  ������ 0 mytitle myTitle m  �� � < / s t r o n g > < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > D a t e   /   T i m e :     < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " > o  ������ 0 	emaildate 	EmailDate	 m  ��   �!! � < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > T o : < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " > o  ������ 0 torecipients toRecipients m  ��"" �## J < / t d > 
 < / t r > 
 
 < / t b o d y > 
 < / t a b l e > 
 < h r   / > o      ���� 0 the_template the_Template $%$ l ����������  ��  ��  % &'& l ����()��  ( &  SEND ITEM TO EVERNOTE SUBROUTINE   ) �** @ S E N D   I T E M   T O   E V E R N O T E   S U B R O U T I N E' +,+ n �-.- I  ���/���� 0 make_evernote make_Evernote/ 010 o  ������ 0 mytitle myTitle1 232 o  ������ 0 evtag EVTag3 454 o  ������ 0 	emaildate 	EmailDate5 676 o  ������ 0 msglink MsgLink7 898 o  ������ 0 	mycontent 	myContent9 :;: o  ������ 0 mysource mySource; <=< o  ������ 0 theboundary theBoundary= >?> o  ������ "0 themessagestart theMessageStart? @A@ o  ������ 0 themessageend theMessageEndA BCB o  ������ 0 	myheaders 	myHeadersC DED o  ������ 0 thismessage thisMessageE FGF o  ������ 0 evhtml evHTMLG HIH o  ������ 0 
evnotebook 
EVnotebookI J��J o  ������ 0 the_template the_Template��  ��  .  f  ��, K��K l ��������  ��  ��  ��  �M 0 thismessage thisMessage� o   $ %���� 0 themessages theMessages�N  � R      ������
�� .ascrerr ****      � ****��  ��  �X  � m    LL�                                                                                  emal  alis    F  Macintosh HD               �0ڲH+   R�Mail.app                                                        Ts�0w        ����  	                Applications    �1�      �h�     R�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  �Y  � MNM l     ��������  ��  ��  N OPO l     ��������  ��  ��  P QRQ l      ��ST��  S z t
======================================
// MAKE ITEM IN EVERNOTE SUBROUTINE
=======================================
   T �UU � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A K E   I T E M   I N   E V E R N O T E   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
R VWV l     ��������  ��  ��  W XYX i   � �Z[Z I      ��\���� 0 make_evernote make_Evernote\ ]^] o      ���� 0 mytitle myTitle^ _`_ o      ���� 0 evtag EVTag` aba o      ���� 0 	emaildate 	EmailDateb cdc o      �� 0 msglink MsgLinkd efe o      �~�~ 0 	mycontent 	myContentf ghg o      �}�} 0 mysource mySourceh iji o      �|�| 0 theboundary theBoundaryj klk o      �{�{ "0 themessagestart theMessageStartl mnm o      �z�z 0 themessageend theMessageEndn opo o      �y�y 0 	myheaders 	myHeadersp qrq o      �x�x 0 thismessage thisMessager sts o      �w�w 0 evhtml evHTMLt uvu o      �v�v 0 
evnotebook 
EVnotebookv w�uw o      �t�t 0 the_template the_Template�u  ��  [ k    �xx yzy l     �s�r�q�s  �r  �q  z {|{ O    �}~} Q   ���p k   ��� ��� l   �o���o  �  IS IT A TEXT EMAIL?     � ��� * I S   I T   A   T E X T   E M A I L ?    � ��� Z   ������ E    
��� o    �n�n 0 	myheaders 	myHeaders� m    	�� ���  t e x t / p l a i n� k    H�� ��� r    ��� I   �m�l�
�m .EVRNcrntnull��� ��� null�l  � �k��
�k 
Enhl� o    �j�j 0 the_template the_Template� �i��
�i 
Entt� o    �h�h 0 mytitle myTitle� �g��f
�g 
Ennb� o    �e�e 0 
evnotebook 
EVnotebook�f  � o      �d�d 0 n  � ��� Z   -���c�b� >   ��� o    �a�a 0 evtag EVTag� J    �`�`  � I  " )�_��
�_ .EVRNassnnull���     ****� o   " #�^�^ 0 evtag EVTag� �]��\
�] 
EV13� o   $ %�[�[ 0 n  �\  �c  �b  � ��� O  . :��� I  2 9�Z�Y�
�Z .EVRNadtnnull���     EVnn�Y  � �X��W
�X 
EV18� o   4 5�V�V 0 	mycontent 	myContent�W  � o   . /�U�U 0 n  � ��� r   ; @��� o   ; <�T�T 0 	emaildate 	EmailDate� n      ��� 1   = ?�S
�S 
EVdd� o   < =�R�R 0 n  � ��� r   A F��� o   A B�Q�Q 0 msglink MsgLink� n      ��� 1   C E�P
�P 
EVsu� o   B C�O�O 0 n  � ��� l  G G�N�M�L�N  �M  �L  � ��K� l  G G�J���J  � " IS IT MULTIPART ALTERNATIVE?   � ��� 8 I S   I T   M U L T I P A R T   A L T E R N A T I V E ?�K  � ��� E   K N��� o   K L�I�I 0 	myheaders 	myHeaders� m   L M�� ��� * m u l t i p a r t / a l t e r n a t i v e� ��� k   Q��� ��� l  Q Q�H�G�F�H  �G  �F  � ��� l  Q Q�E���E  �  CHECK FOR BASE64   � ���   C H E C K   F O R   B A S E 6 4� ��� r   Q Y��� n  Q W��� I   R W�D��C�D 0 base64_check base64_Check� ��B� o   R S�A�A 0 mysource mySource�B  �C  �  f   Q R� o      �@�@ 0 base64detect base64Detect� ��� l  Z Z�?�>�=�?  �>  �=  � ��� l  Z Z�<���<  � % IF MESSAGE IS BASE64 ENCODED...   � ��� > I F   M E S S A G E   I S   B A S E 6 4   E N C O D E D . . .� ��� Z   Z����;�� =  Z ]��� o   Z [�:�: 0 base64detect base64Detect� m   [ \�9
�9 boovtrue� k   `�� ��� r   ` n��� n  ` h��� I   a h�8��7�8  0 extractbetween extractBetween� ��� o   a b�6�6 0 mysource mySource� ��� m   b c�� ��� B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4� ��5� o   c d�4�4 0 theboundary theBoundary�5  �7  �  f   ` a� o      �3�3 0 	multihtml 	multiHTML� ��� l  o o�2�1�0�2  �1  �0  � ��� l  o o�/���/  � 1 +STRIP OUT CONTENT-DISPOSITION, IF NECESSARY   � ��� V S T R I P   O U T   C O N T E N T - D I S P O S I T I O N ,   I F   N E C E S S A R Y� ��� Z  o ����.�-� E   o x��� o   o t�,�, 0 	multihtml 	multiHTML� m   t w�� �   6 C o n t e n t - D i s p o s i t i o n :   i n l i n e� r   { � n  { � I   | ��+�*�+  0 extractbetween extractBetween  o   | ��)�) 0 	multihtml 	multiHTML 	 m   � �

 � 6 C o n t e n t - D i s p o s i t i o n :   i n l i n e	 �( o   � ��'�' 0 theboundary theBoundary�(  �*    f   { | o      �&�& 0 	multihtml 	multiHTML�.  �-  �  Z  � ��%�$ E   � � o   � ��#�# 0 	multihtml 	multiHTML m   � � � > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t r   � � n  � � I   � ��"�!�"  0 extractbetween extractBetween  o   � �� �  0 	multihtml 	multiHTML  m   � � � > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t  �  o   � ��� 0 theboundary theBoundary�  �!    f   � � o      �� 0 	multihtml 	multiHTML�%  �$   !"! l  � �����  �  �  " #$# l  � ��%&�  %  DECODE BASE64   & �''  D E C O D E   B A S E 6 4$ ()( r   � �*+* I  � ��,�
� .sysoexecTEXT���     TEXT, b   � �-.- b   � �/0/ m   � �11 �22 
 e c h o  0 l  � �3��3 n   � �454 1   � ��
� 
strq5 o   � ��� 0 	multihtml 	multiHTML�  �  . m   � �66 �77 & |   o p e n s s l   b a s e 6 4   - d�  + o      �� 0 basehtml baseHTML) 898 l  � �����  �  �  9 :;: l  � ��<=�  <  MAKE NOTE IN EVERNOTE   = �>> * M A K E   N O T E   I N   E V E R N O T E; ?@? r   � �ABA I  � ���C
� .EVRNcrntnull��� ��� null�  C �DE
� 
EnhlD o   � ��
�
 0 the_template the_TemplateE �	FG
�	 
EnttF o   � ��� 0 mytitle myTitleG �H�
� 
EnnbH o   � ��� 0 
evnotebook 
EVnotebook�  B o      �� 0 n  @ IJI Z  � �KL��K >  � �MNM o   � ��� 0 evtag EVTagN J   � �� �   L I  � ���OP
�� .EVRNassnnull���     ****O o   � ����� 0 evtag EVTagP ��Q��
�� 
EV13Q o   � ����� 0 n  ��  �  �  J RSR O  �TUT I  �����V
�� .EVRNadtnnull���     EVnn��  V ��W��
�� 
EV19W o   � ����� 0 basehtml baseHTML��  U o   � ����� 0 n  S XYX r  
Z[Z o  ���� 0 	emaildate 	EmailDate[ n      \]\ 1  	��
�� 
EVdd] o  ���� 0 n  Y ^��^ r  _`_ o  ���� 0 msglink MsgLink` n      aba 1  ��
�� 
EVsub o  ���� 0 n  ��  �;  � k  �cc ded l ��������  ��  ��  e fgf l ��hi��  h ) #IF MESSAGE IS NOT BASE64 ENCODED...   i �jj F I F   M E S S A G E   I S   N O T   B A S E 6 4   E N C O D E D . . .g klk r  !mnm n opo I  ��q���� 0 htmlfix htmlFixq rsr o  ���� 0 mysource mySources tut o  ���� 0 theboundary theBoundaryu v��v o  ���� 0 	mycontent 	myContent��  ��  p  f  n o      ���� 0 	finalhtml 	finalHTMLl w��w Z  "�xy��zx = "){|{ o  "'����  0 decode_success decode_Success| m  '(��
�� boovtruey k  ,k}} ~~ l ,,��������  ��  ��   ��� l ,,������  �  MAKE NOTE IN EVERNOTE   � ��� * M A K E   N O T E   I N   E V E R N O T E� ��� r  ,9��� I ,7�����
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Enhl� o  ./���� 0 the_template the_Template� ����
�� 
Entt� o  01���� 0 mytitle myTitle� �����
�� 
Ennb� o  23���� 0 
evnotebook 
EVnotebook��  � o      ���� 0 n  � ��� Z :L������� > :>��� o  :;���� 0 evtag EVTag� J  ;=����  � I AH����
�� .EVRNassnnull���     ****� o  AB���� 0 evtag EVTag� �����
�� 
EV13� o  CD���� 0 n  ��  ��  ��  � ��� O M_��� I Q^�����
�� .EVRNadtnnull���     EVnn��  � �����
�� 
EV19� o  UZ���� 0 	finalhtml 	finalHTML��  � o  MN���� 0 n  � ��� r  `e��� o  `a���� 0 	emaildate 	EmailDate� n      ��� 1  bd��
�� 
EVdd� o  ab���� 0 n  � ���� r  fk��� o  fg���� 0 msglink MsgLink� n      ��� 1  hj��
�� 
EVsu� o  gh���� 0 n  ��  ��  z k  n��� ��� l nn��������  ��  ��  � ��� l nn������  �  MAKE NOTE IN EVERNOTE   � ��� * M A K E   N O T E   I N   E V E R N O T E� ��� r  n{��� I ny�����
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Enhl� o  pq���� 0 the_template the_Template� ����
�� 
Entt� o  rs���� 0 mytitle myTitle� �����
�� 
Ennb� o  tu���� 0 
evnotebook 
EVnotebook��  � o      ���� 0 n  � ��� Z |�������� > |���� o  |}���� 0 evtag EVTag� J  }����  � I ������
�� .EVRNassnnull���     ****� o  ������ 0 evtag EVTag� �����
�� 
EV13� o  ������ 0 n  ��  ��  ��  � ��� O ����� I �������
�� .EVRNadtnnull���     EVnn��  � �����
�� 
EV18� o  ������ 0 	mycontent 	myContent��  � o  ������ 0 n  � ��� r  ����� o  ������ 0 	emaildate 	EmailDate� n      ��� 1  ����
�� 
EVdd� o  ������ 0 n  � ���� r  ����� o  ������ 0 msglink MsgLink� n      ��� 1  ����
�� 
EVsu� o  ������ 0 n  ��  ��  � ��� l ����������  ��  ��  � ���� l ��������  �  IS IT MULTIPART MIXED?   � ��� , I S   I T   M U L T I P A R T   M I X E D ?��  � ��� E  ����� o  ������ 0 	myheaders 	myHeaders� m  ���� ���  m u l t i p a r t� ���� k  ��� ��� l ����� Z  ������� E  ����� o  ������ 0 mysource mySource� m  ���� ��� . C o n t e n t - T y p e :   t e x t / h t m l� k  ���� ��� l ����������  ��  ��  � ��� l ��������  �  CHECK FOR BASE64   � ���   C H E C K   F O R   B A S E 6 4� ��� r  ����� n ����� I  ��������� 0 base64_check base64_Check� ���� o  ������ 0 mysource mySource��  ��  �  f  ��� o      ���� 0 base64detect base64Detect� � � l ����������  ��  ��     l ������   % IF MESSAGE IS BASE64 ENCODED...    � > I F   M E S S A G E   I S   B A S E 6 4   E N C O D E D . . .  Z  ��	
�� = �� o  ���� 0 base64detect base64Detect m  ���~
�~ boovtrue	 k  �  r  �� n �� I  ���}�|�} 0 base64_decode base64_Decode �{ o  ���z�z 0 mysource mySource�{  �|    f  �� o      �y�y 0 basehtml baseHTML  l ���x�w�v�x  �w  �v    l ���u�u    MAKE NOTE IN EVERNOTE    � * M A K E   N O T E   I N   E V E R N O T E  r  ��  I ���t�s!
�t .EVRNcrntnull��� ��� null�s  ! �r"#
�r 
Enhl" o  ���q�q 0 the_template the_Template# �p$%
�p 
Entt$ o  ���o�o 0 mytitle myTitle% �n&�m
�n 
Ennb& o  ���l�l 0 
evnotebook 
EVnotebook�m    o      �k�k 0 n   '(' Z ��)*�j�i) > ��+,+ o  ���h�h 0 evtag EVTag, J  ���g�g  * I ���f-.
�f .EVRNassnnull���     ****- o  ���e�e 0 evtag EVTag. �d/�c
�d 
EV13/ o  ���b�b 0 n  �c  �j  �i  ( 010 O �232 I ��a�`4
�a .EVRNadtnnull���     EVnn�`  4 �_5�^
�_ 
EV195 o  ��]�] 0 basehtml baseHTML�^  3 o  ���\�\ 0 n  1 676 r  898 o  	�[�[ 0 	emaildate 	EmailDate9 n      :;: 1  
�Z
�Z 
EVdd; o  	
�Y�Y 0 n  7 <=< r  >?> o  �X�X 0 msglink MsgLink? n      @A@ 1  �W
�W 
EVsuA o  �V�V 0 n  = BCB l �U�T�S�U  �T  �S  C D�RD l �QEF�Q  E ) #IF MESSAGE IS NOT BASE64 ENCODED...   F �GG F I F   M E S S A G E   I S   N O T   B A S E 6 4   E N C O D E D . . .�R  
 HIH = JKJ o  �P�P 0 base64detect base64DetectK m  �O
�O boovfalsI L�NL k  �MM NON r  ,PQP n &RSR I  &�MT�L�M 0 htmlfix htmlFixT UVU o   �K�K 0 mysource mySourceV WXW o   !�J�J 0 theboundary theBoundaryX Y�IY o  !"�H�H 0 	mycontent 	myContent�I  �L  S  f  Q o      �G�G 0 	finalhtml 	finalHTMLO Z�FZ Z  -�[\�E][ = -4^_^ o  -2�D�D  0 decode_success decode_Success_ m  23�C
�C boovtrue\ k  7v`` aba l 77�B�A�@�B  �A  �@  b cdc l 77�?ef�?  e  MAKE NOTE IN EVERNOTE   f �gg * M A K E   N O T E   I N   E V E R N O T Ed hih r  7Djkj I 7B�>�=l
�> .EVRNcrntnull��� ��� null�=  l �<mn
�< 
Enhlm o  9:�;�; 0 the_template the_Templaten �:op
�: 
Entto o  ;<�9�9 0 mytitle myTitlep �8q�7
�8 
Ennbq o  =>�6�6 0 
evnotebook 
EVnotebook�7  k o      �5�5 0 n  i rsr Z EWtu�4�3t > EIvwv o  EF�2�2 0 evtag EVTagw J  FH�1�1  u I LS�0xy
�0 .EVRNassnnull���     ****x o  LM�/�/ 0 evtag EVTagy �.z�-
�. 
EV13z o  NO�,�, 0 n  �-  �4  �3  s {|{ O Xj}~} I \i�+�*
�+ .EVRNadtnnull���     EVnn�*   �)��(
�) 
EV19� o  `e�'�' 0 	finalhtml 	finalHTML�(  ~ o  XY�&�& 0 n  | ��� r  kp��� o  kl�%�% 0 	emaildate 	EmailDate� n      ��� 1  mo�$
�$ 
EVdd� o  lm�#�# 0 n  � ��"� r  qv��� o  qr�!�! 0 msglink MsgLink� n      ��� 1  su� 
�  
EVsu� o  rs�� 0 n  �"  �E  ] k  y��� ��� l yy����  �  �  � ��� l yy����  �  MAKE NOTE IN EVERNOTE   � ��� * M A K E   N O T E   I N   E V E R N O T E� ��� r  y���� I y����
� .EVRNcrntnull��� ��� null�  � ���
� 
Enhl� o  {|�� 0 the_template the_Template� ���
� 
Entt� o  }~�� 0 mytitle myTitle� ���
� 
Ennb� o  ��� 0 
evnotebook 
EVnotebook�  � o      �� 0 n  � ��� Z ������� > ����� o  ���� 0 evtag EVTag� J  ����  � I �����
� .EVRNassnnull���     ****� o  ���� 0 evtag EVTag� �
��	
�
 
EV13� o  ���� 0 n  �	  �  �  � ��� O ����� I �����
� .EVRNadtnnull���     EVnn�  � ���
� 
EV18� o  ���� 0 	mycontent 	myContent�  � o  ���� 0 n  � ��� r  ����� o  ���� 0 	emaildate 	EmailDate� n      ��� 1  ��� 
�  
EVdd� o  ������ 0 n  � ���� r  ����� o  ������ 0 msglink MsgLink� n      ��� 1  ����
�� 
EVsu� o  ������ 0 n  ��  �F  �N  ��   ���� l ����������  ��  ��  ��  � ��� E  ����� o  ������ 0 mysource mySource� m  ���� ���  t e x t / p l a i n� ���� k  ���� ��� l ����������  ��  ��  � ��� l ��������  �  MAKE NOTE IN EVERNOTE   � ��� * M A K E   N O T E   I N   E V E R N O T E� ��� r  ����� I �������
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Enhl� o  ������ 0 the_template the_Template� ����
�� 
Entt� o  ������ 0 mytitle myTitle� �����
�� 
Ennb� o  ������ 0 
evnotebook 
EVnotebook��  � o      ���� 0 n  � ��� Z ��������� > ����� o  ������ 0 evtag EVTag� J  ������  � I ������
�� .EVRNassnnull���     ****� o  ������ 0 evtag EVTag� �����
�� 
EV13� o  ������ 0 n  ��  ��  ��  � ��� O ����� I �������
�� .EVRNadtnnull���     EVnn��  � �����
�� 
EV18� o  ������ 0 	mycontent 	myContent��  � o  ������ 0 n  � ��� r  ����� o  ������ 0 	emaildate 	EmailDate� n      ��� 1  ����
�� 
EVdd� o  ������ 0 n  � ��� r  ����� o  ������ 0 msglink MsgLink� n      ��� 1  ����
�� 
EVsu� o  ������ 0 n  � ���� l ����������  ��  ��  ��  ��  ��  �   MULTIPART MIXED   � ���     M U L T I P A R T   M I X E D� ��� l ��������  ��  ��  � ���� l ������  � # OTHER TYPES OF HTML-ENCODING    � ��� : O T H E R   T Y P E S   O F   H T M L - E N C O D I N G  ��  ��  � k  ��� ��� l ��������  ��  ��  � ��� l ������  �  CHECK FOR BASE64   � ���   C H E C K   F O R   B A S E 6 4� ��� r  �	 � n 			 I  ��	���� 0 base64_check base64_Check	 	��	 o  	���� 0 mysource mySource��  ��  	  f  	  o      ���� 0 base64detect base64Detect� 			 l ��������  ��  ��  	 			 l ��			
��  		 % IF MESSAGE IS BASE64 ENCODED...   	
 �		 > I F   M E S S A G E   I S   B A S E 6 4   E N C O D E D . . .	 			 Z  N		��		 = 			 o  ���� 0 base64detect base64Detect	 m  ��
�� boovtrue	 r  "			 n 			 I  ��	���� 0 base64_decode base64_Decode	 	��	 o  ���� 0 mysource mySource��  ��  	  f  	 o      ���� 0 	finalhtml 	finalHTML��  	 k  %N		 			 r  %7			 n %1			 I  &1��	 ����  0 extractbetween extractBetween	  	!	"	! o  &'���� 0 evhtml evHTML	" 	#	$	# m  '*	%	% �	&	&  < / h e a d >	$ 	'��	' m  *-	(	( �	)	)  < / h t m l >��  ��  	  f  %&	 o      ���� 0 	multihtml 	multiHTML	 	*��	* r  8N	+	,	+ c  8H	-	.	- n 8D	/	0	/ I  9D��	1���� 0 htmlfix htmlFix	1 	2	3	2 o  9>���� 0 	multihtml 	multiHTML	3 	4	5	4 o  >?���� 0 theboundary theBoundary	5 	6��	6 o  ?@���� 0 	mycontent 	myContent��  ��  	0  f  89	. m  DG��
�� 
ctxt	, o      ���� 0 	finalhtml 	finalHTML��  	 	7	8	7 l OO��	9	:��  	9  MAKE NOTE IN EVERNOTE   	: �	;	; * M A K E   N O T E   I N   E V E R N O T E	8 	<	=	< r  O\	>	?	> I OZ����	@
�� .EVRNcrntnull��� ��� null��  	@ ��	A	B
�� 
Enhl	A o  QR���� 0 the_template the_Template	B ��	C	D
�� 
Entt	C o  ST���� 0 mytitle myTitle	D ��	E��
�� 
Ennb	E o  UV���� 0 
evnotebook 
EVnotebook��  	? o      ���� 0 n  	= 	F	G	F Z ]o	H	I����	H > ]a	J	K	J o  ]^���� 0 evtag EVTag	K J  ^`����  	I I dk��	L	M
�� .EVRNassnnull���     ****	L o  de���� 0 evtag EVTag	M ��	N��
�� 
EV13	N o  fg���� 0 n  ��  ��  ��  	G 	O	P	O O p�	Q	R	Q I t�����	S
�� .EVRNadtnnull���     EVnn��  	S ��	T��
�� 
EV19	T o  x}���� 0 	finalhtml 	finalHTML��  	R o  pq���� 0 n  	P 	U	V	U r  ��	W	X	W o  ������ 0 	emaildate 	EmailDate	X n      	Y	Z	Y 1  ����
�� 
EVdd	Z o  ������ 0 n  	V 	[	\	[ r  ��	]	^	] o  ������ 0 msglink MsgLink	^ n      	_	`	_ 1  ����
�� 
EVsu	` o  ������ 0 n  	\ 	a	b	a l ����������  ��  ��  	b 	c��	c l ����	d	e��  	d  END OF MESSAGE PROCESSING   	e �	f	f 2 E N D   O F   M E S S A G E   P R O C E S S I N G��  � 	g	h	g l ������~��  �  �~  	h 	i	j	i l ���}	k	l�}  	k $ START OF ATTACHMENT PROCESSING   	l �	m	m < S T A R T   O F   A T T A C H M E N T   P R O C E S S I N G	j 	n	o	n O  ��	p	q	p k  ��	r	r 	s	t	s l ���|	u	v�|  	u 7 1IF ATTACHMENTS PRESENT, RUN ATTACHMENT SUBROUTINE   	v �	w	w b I F   A T T A C H M E N T S   P R E S E N T ,   R U N   A T T A C H M E N T   S U B R O U T I N E	t 	x�{	x Z ��	y	z�z�y	y > ��	{	|	{ n ��	}	~	} 2 ���x
�x 
attc	~ o  ���w�w 0 thismessage thisMessage	| J  ���v�v  	z n ��		�	 I  ���u	��t�u 0 attachment_process  	� 	�	�	� o  ���s�s 0 thismessage thisMessage	� 	��r	� o  ���q�q 0 n  �r  �t  	�  f  ���z  �y  �{  	q m  ��	�	��                                                                                  emal  alis    F  Macintosh HD               �0ڲH+   R�Mail.app                                                        Ts�0w        ����  	                Applications    �1�      �h�     R�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  	o 	�	�	� l ���p	�	��p  	� / )ITEM HAS FINISHED! COUNT IT AS A SUCCESS!   	� �	�	� R I T E M   H A S   F I N I S H E D !   C O U N T   I T   A S   A   S U C C E S S !	� 	��o	� r  ��	�	�	� [  ��	�	�	� o  ���n�n 0 successcount successCount	� m  ���m�m 	� o      �l�l 0 successcount successCount�o  � R      �k�j�i
�k .ascrerr ****      � ****�j  �i  �p  ~ m     	�	��                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  | 	��h	� I ���g	��f
�g .ascrcmnt****      � ****	� b  ��	�	�	� m  ��	�	� �	�	�  s u c c e s s C o u n t :  	� o  ���e�e 0 successcount successCount�f  �h  Y 	�	�	� l     �d�c�b�d  �c  �b  	� 	�	�	� l     �a�`�_�a  �`  �_  	� 	�	�	� l     �^�]�\�^  �]  �\  	� 	�	�	� l      �[	�	��[  	� p j
======================================
// ATTACHMENT SUBROUTINES
=======================================
   	� �	�	� � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   A T T A C H M E N T   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
	� 	�	�	� l     �Z�Y�X�Z  �Y  �X  	� 	�	�	� l     �W	�	��W  	�  FOLDER EXISTS?   	� �	�	�  F O L D E R   E X I S T S ?	� 	�	�	� i   � �	�	�	� I      �V	��U�V 0 f_exists  	� 	��T	� o      �S�S 0 exportfolder ExportFolder�T  �U  	� Q     +	�	�	�	� k    	�	� 	�	�	� r    
	�	�	� l   	��R�Q	� I   �P	��O
�P .earsffdralis        afdr	� m    �N
�N afdrcusr�O  �R  �Q  	� o      �M�M 0 mypath myPath	� 	�	�	� e    	�	� c    	�	�	� o    �L�L 0 exportfolder ExportFolder	� m    �K
�K 
alis	� 	��J	� r    	�	�	� o    �I�I 0 exportfolder ExportFolder	� o      �H�H 0 saveloc SaveLoc�J  	� R      �G�F�E
�G .ascrerr ****      � ****�F  �E  	� O   +	�	�	� I   *�D�C	�
�D .corecrel****      � null�C  	� �B	�	�
�B 
kocl	� m     !�A
�A 
cfol	� �@	��?
�@ 
prdt	� K   " &	�	� �>	��=
�> 
pnam	� m   # $	�	� �	�	� * T e m p   E x p o r t   F r o m   M a i l�=  �?  	� m    	�	��                                                                                  MACS  alis    t  Macintosh HD               �0ڲH+   R�
Finder.app                                                      S����R        ����  	                CoreServices    �1�      �͒     R� R� R�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  	� 	�	�	� l     �<�;�:�<  �;  �:  	� 	�	�	� l     �9	�	��9  	�  ATTACHMENT PROCESSING   	� �	�	� * A T T A C H M E N T   P R O C E S S I N G	� 	�	�	� i   � �	�	�	� I      �8	��7�8 0 attachment_process  	� 	�	�	� o      �6�6 0 thismessage thisMessage	� 	��5	� o      �4�4 0 n  �5  �7  	� O     �	�	�	� k    �	�	� 	�	�	� l   �3�2�1�3  �2  �1  	� 	�	�	� l   �0	�	��0  	� 0 *MAKE SURE TEXT ITEM DELIMITERS ARE DEFAULT   	� �	�	� T M A K E   S U R E   T E X T   I T E M   D E L I M I T E R S   A R E   D E F A U L T	� 	�	�	� r    		�	�	� m    	�	� �	�	�  	� n     	�	�	� 1    �/
�/ 
txdl	� 1    �.
�. 
ascr	� 	�	�	� l  
 
�-�,�+�-  �,  �+  	� 	�	�	� l  
 
�*	�	��*  	� ) #TEMP FILES PROCESSED ON THE DESKTOP   	� �	�	� F T E M P   F I L E S   P R O C E S S E D   O N   T H E   D E S K T O P	� 	�	�	� r   
 	�	�	� c   
 	�	�	� l  
 	��)�(	� b   
 	�	�	� l  
 	��'�&	� I  
 �%	��$
�% .earsffdralis        afdr	� m   
 �#
�# afdmdesk�$  �'  �&  	� m    	�	� �
 
  , T e m p   E x p o r t   F r o m   M a i l :�)  �(  	� m    �"
�" 
TEXT	� o      �!�! 0 exportfolder ExportFolder	� 


 r    


 n   


 I    � 
��  0 f_exists  
 
�
 o    �� 0 exportfolder ExportFolder�  �  
  f    
 o      �� 0 saveloc SaveLoc
 
	


	 l   ����  �  �  

 


 l   �

�  
  PROCESS THE ATTACHMENTS   
 �

 . P R O C E S S   T H E   A T T A C H M E N T S
 


 r    $


 n   "


 2    "�
� 
attc
 o     �� 0 thismessage thisMessage
 o      ��  0 theattachments theAttachments
 


 r   % (


 m   % &��  
 o      �� 0 attcount attCount
 


 X   ) �
�

 k   9 �

 

 
 r   9 @
!
"
! b   9 >
#
$
# o   9 :�� 0 exportfolder ExportFolder
$ n  : =
%
&
% 1   ; =�
� 
pnam
& o   : ;�� 0 theattachment theAttachment
" o      �� 0 thefilename theFileName
  
'
(
' Q   A W
)
*�
) I  D N�
+
,
� .coresavenull���     obj 
+ o   D E�� 0 theattachment theAttachment
, �

-�	
�
 
kfil
- 4   F J�
.
� 
file
. o   H I�� 0 thefilename theFileName�	  
* R      ���
� .ascrerr ****      � ****�  �  �  
( 
/
0
/ O   X p
1
2
1 O  ^ o
3
4
3 I  b n��
5
� .EVRNadtnnull���     EVnn�  
5 �
6� 
� 
EV21
6 4   f j��
7
�� 
file
7 o   h i���� 0 thefilename theFileName�   
4 o   ^ _���� 0 n  
2 m   X [
8
8�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  
0 
9
:
9 l  q q��������  ��  ��  
: 
;
<
; l  q q��
=
>��  
=   SILENT DELETE OF TEMP FILE   
> �
?
? 4 S I L E N T   D E L E T E   O F   T E M P   F I L E
< 
@
A
@ r   q �
B
C
B I  q ~��
D
E
�� .earsffdralis        afdr
D m   q t��
�� afdmtrsh
E ��
F��
�� 
from
F m   w z��
�� fldmfldu��  
C o      ���� 0 trash_folder trash_Folder
A 
G
H
G I  � ���
I��
�� .sysoexecTEXT���     TEXT
I b   � �
J
K
J b   � �
L
M
L b   � �
N
O
N m   � �
P
P �
Q
Q  m v  
O n   � �
R
S
R 1   � ���
�� 
strq
S n   � �
T
U
T 1   � ���
�� 
psxp
U o   � ����� 0 thefilename theFileName
M 1   � ���
�� 
spac
K n   � �
V
W
V 1   � ���
�� 
strq
W n   � �
X
Y
X 1   � ���
�� 
psxp
Y o   � ����� 0 trash_folder trash_Folder��  
H 
Z��
Z l  � ���������  ��  ��  ��  � 0 theattachment theAttachment
 o   , -����  0 theattachments theAttachments
 
[
\
[ l  � ���������  ��  ��  
\ 
]
^
] l  � ���
_
`��  
_ " SILENT DELETE OF TEMP FOLDER   
` �
a
a 8 S I L E N T   D E L E T E   O F   T E M P   F O L D E R
^ 
b
c
b r   � �
d
e
d n  � �
f
g
f I   � ���
h���� 0 trashfolder  
h 
i��
i o   � ����� 0 saveloc SaveLoc��  ��  
g  f   � �
e o      ���� 0 success  
c 
j��
j l  � ���������  ��  ��  ��  	� m     
k
k�                                                                                  emal  alis    F  Macintosh HD               �0ڲH+   R�Mail.app                                                        Ts�0w        ����  	                Applications    �1�      �h�     R�  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  	� 
l
m
l l     ��������  ��  ��  
m 
n
o
n l     ��
p
q��  
p : 4SILENT DELETE OF TEMP FOLDER (THANKS MARTIN MICHEL!)   
q �
r
r h S I L E N T   D E L E T E   O F   T E M P   F O L D E R   ( T H A N K S   M A R T I N   M I C H E L ! )
o 
s
t
s i   � �
u
v
u I      ��
w���� 0 trashfolder  
w 
x��
x o      ���� 0 saveloc SaveLoc��  ��  
v Q     �
y
z
{
y k    �
|
| 
}
~
} r    

�
 l   

�����
� c    

�
�
� l   
�����
� I   ��
���
�� .earsffdralis        afdr
� m    ��
�� afdrtrsh��  ��  ��  
� m    	��
�� 
utxt��  ��  
� o      ���� 0 trashfolderpath  
~ 
�
�
� r    
�
�
� I   ��
���
�� .sysonfo4asfe        file
� l   
�����
� c    
�
�
� o    ���� 0 saveloc SaveLoc
� m    ��
�� 
alis��  ��  ��  
� o      ���� 0 srcfolderinfo  
� 
�
�
� r    
�
�
� n    
�
�
� 1    ��
�� 
pnam
� o    ���� 0 srcfolderinfo  
� o      ���� 0 srcfoldername  
� 
�
�
� r    $
�
�
� n    "
�
�
� 1     "��
�� 
strq
� n     
�
�
� 1     ��
�� 
psxp
� o    ���� 0 saveloc SaveLoc
� o      ���� 0 saveloc SaveLoc
� 
�
�
� r   % (
�
�
� m   % &����  
� o      ���� 0 counter  
� 
�
�
� T   ) f
�
� k   . a
�
� 
�
�
� Z   . I
�
���
�
� =  . 1
�
�
� o   . /���� 0 counter  
� m   / 0����  
� r   4 ;
�
�
� b   4 9
�
�
� b   4 7
�
�
� o   4 5���� 0 trashfolderpath  
� o   5 6���� 0 srcfoldername  
� m   7 8
�
� �
�
�  :
� o      ���� 0 destfolderpath  ��  
� r   > I
�
�
� b   > G
�
�
� b   > E
�
�
� b   > C
�
�
� b   > A
�
�
� o   > ?���� 0 trashfolderpath  
� o   ? @���� 0 srcfoldername  
� m   A B
�
� �
�
�   
� o   C D���� 0 counter  
� m   E F
�
� �
�
�  :
� o      ���� 0 destfolderpath  
� 
�
�
� Q   J [
�
�
�
� r   M R
�
�
� c   M P
�
�
� o   M N���� 0 destfolderpath  
� m   N O��
�� 
alis
� o      ���� 0 destfolderalias  
� R      ������
�� .ascrerr ****      � ****��  ��  
�  S   Z [
� 
���
� r   \ a
�
�
� [   \ _
�
�
� o   \ ]���� 0 counter  
� m   ] ^���� 
� o      ���� 0 counter  ��  
� 
�
�
� r   g n
�
�
� n   g l
�
�
� 1   j l��
�� 
strq
� n   g j
�
�
� 1   h j��
�� 
psxp
� o   g h���� 0 destfolderpath  
� o      ���� 0 destfolderpath  
� 
�
�
� r   o x
�
�
� b   o v
�
�
� b   o t
�
�
� b   o r
�
�
� m   o p
�
� �
�
�  d i t t o  
� o   p q���� 0 saveloc SaveLoc
� 1   r s��
�� 
spac
� o   t u���� 0 destfolderpath  
� o      ���� 0 command  
� 
�
�
� I  y ~��
���
�� .sysoexecTEXT���     TEXT
� o   y z���� 0 command  ��  
� 
�
�
� l   ��
�
���  
� 9 3 this won't be executed if the ditto command errors   
� �
�
� f   t h i s   w o n ' t   b e   e x e c u t e d   i f   t h e   d i t t o   c o m m a n d   e r r o r s
� 
�
�
� r    �
�
�
� b    �
�
�
� m    �
�
� �
�
�  r m   - r  
� o   � ����� 0 saveloc SaveLoc
� o      ���� 0 command  
� 
�
�
� I  � ���
���
�� .sysoexecTEXT���     TEXT
� o   � ����� 0 command  ��  
� 
���
� L   � �
�
� m   � ���
�� boovtrue��  
z R      ������
�� .ascrerr ****      � ****��  ��  
{ L   � �
�
� m   � ���
�� boovfals
t 
�
�
� l     ��������  ��  ��  
� 
�
�
� l      ��
�
���  
� r l
======================================
// HTML CLEANUP SUBROUTINES
=======================================
   
� �
�
� � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   H T M L   C L E A N U P   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

�    l     ��������  ��  ��    l     ����   $ HEADER STRIP (THANKS DOMINIK!)    � < H E A D E R   S T R I P   ( T H A N K S   D O M I N I K ! )  i   � �	
	 I      ������ 0 stripheader stripHeader  o      ���� 0 
parasource 
paraSource �� o      �� 0 myheaderlines myHeaderlines��  ��  
 k     x  l     �~�}�|�~  �}  �|    l     �{�{   * $ FIND THE LAST NON-EMPTY HEADER LINE    � H   F I N D   T H E   L A S T   N O N - E M P T Y   H E A D E R   L I N E  r      m      �   o      �z�z 0 lastheaderline    r      I   	�y!�x
�y .corecnte****       ****! l   "�w�v" o    �u�u 0 myheaderlines myHeaderlines�w  �v  �x    o      �t�t 0 n   #$# V    %%&% k     '' ()( r    *+* n    ,-, 4    �s.
�s 
cobj. o    �r�r 0 n  - o    �q�q 0 myheaderlines myHeaderlines+ o      �p�p 0 lastheaderline  ) /�o/ r     010 \    232 o    �n�n 0 n  3 m    �m�m 1 o      �l�l 0 n  �o  & l   4�k�j4 =    565 o    �i�i 0 lastheaderline  6 m    77 �88  �k  �j  $ 9:9 l  & &�h�g�f�h  �g  �f  : ;<; l  & &�e=>�e  =   COMPARE HEADER TO SOURCE   > �?? 2   C O M P A R E   H E A D E R   T O   S O U R C E< @A@ r   & -BCB l  & +D�d�cD I  & +�bE�a
�b .corecnte****       ****E o   & '�`�` 0 
parasource 
paraSource�a  �d  �c  C o      �_�_ 0 sourcelength  A FGF Y   . KH�^IJ�]H Z  8 FKL�\�[K l  8 >M�Z�YM =  8 >NON n   8 <PQP 4   9 <�XR
�X 
cobjR o   : ;�W�W 0 n  Q o   8 9�V�V 0 
parasource 
paraSourceO m   < =SS �TT  �Z  �Y  L  S   A B�\  �[  �^ 0 n  I m   1 2�U�U J o   2 3�T�T 0 sourcelength  �]  G UVU l  L L�S�R�Q�S  �R  �Q  V WXW l  L L�PYZ�P  Y   STRIP OUT THE HEADERS   Z �[[ ,   S T R I P   O U T   T H E   H E A D E R SX \]\ r   L [^_^ l  L Y`�O�N` n   L Yaba 7  M Y�Mcd
�M 
cobjc l  Q Ue�L�Ke [   Q Ufgf o   R S�J�J 0 n  g m   S T�I�I �L  �K  d o   V X�H�H 0 sourcelength  b o   L M�G�G 0 
parasource 
paraSource�O  �N  _ o      �F�F  0 cutsourceitems cutSourceItems] hih r   \ ajkj n  \ _lml 1   ] _�E
�E 
txdlm 1   \ ]�D
�D 
ascrk o      �C�C 0 	olddelims 	oldDelimsi non r   b gpqp o   b c�B
�B 
ret q n     rsr 1   d f�A
�A 
txdls 1   c d�@
�@ 
ascro tut r   h mvwv l  h kx�?�>x c   h kyzy o   h i�=�=  0 cutsourceitems cutSourceItemsz m   i j�<
�< 
ctxt�?  �>  w o      �;�; 0 	cutsource 	cutSourceu {|{ r   n s}~} o   n o�:�: 0 	olddelims 	oldDelims~ n     � 1   p r�9
�9 
txdl� 1   o p�8
�8 
ascr| ��� l  t t�7�6�5�7  �6  �5  � ��� L   t v�� o   t u�4�4 0 	cutsource 	cutSource� ��3� l  w w�2�1�0�2  �1  �0  �3   ��� l     �/�.�-�/  �.  �-  � ��� l     �,���,  �  BASE64 CHECK   � ���  B A S E 6 4   C H E C K� ��� i   � ���� I      �+��*�+ 0 base64_check base64_Check� ��)� o      �(�( 0 mysource mySource�)  �*  � k     L�� ��� r     ��� m     �'
�' boovfals� o      �&�& 0 base64detect base64Detect� ��� r    ��� m    �� ��� B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4� o      �%�% 0 base64msgstr base64MsgStr� ��� r    ��� m    	�� ��� $ C o n t e n t - T y p e :   t e x t� o      �$�$ &0 base64contenttype base64ContentType� ��� r    ��� I   �#�"�
�# .sysooffslong    ��� null�"  � �!��
�! 
psof� o    � �  0 base64msgstr base64MsgStr� ���
� 
psin� o    �� 0 mysource mySource�  � o      �� "0 base64msgoffset base64MsgOffset� ��� r    #��� I   !���
� .sysooffslong    ��� null�  � ���
� 
psof� o    �� &0 base64contenttype base64ContentType� ���
� 
psin� o    �� 0 mysource mySource�  � o      �� *0 base64contentoffset base64ContentOffset� ��� r   $ +��� c   $ )��� \   $ '��� o   $ %�� "0 base64msgoffset base64MsgOffset� o   % &�� *0 base64contentoffset base64ContentOffset� m   ' (�
� 
doub� o      �� 0 base64offset base64Offset� ��� r   , 1��� c   , /��� o   , -�� 0 base64offset base64Offset� m   - .�
� 
nmbr� o      �� 0 	theoffset 	theOffset� ��� Z   2 I����� A  2 5��� o   2 3�
�
 0 	theoffset 	theOffset� m   3 4�	�	 2� Z  8 E����� ?  8 ;��� o   8 9�� 0 	theoffset 	theOffset� m   9 :����� r   > A��� m   > ?�
� boovtrue� o      �� 0 base64detect base64Detect�  �  �  �  � ��� L   J L�� o   J K�� 0 base64detect base64Detect�  � ��� l     � �����   ��  ��  � ��� l     ������  �  BASE64 DECODE   � ���  B A S E 6 4   D E C O D E� ��� i   � ���� I      ������� 0 base64_decode base64_Decode� ���� o      ���� 0 mysource mySource��  ��  � k     ]�� ��� l     ������  � , &USE TID TO QUICKLY ISOLATE BASE64 DATA   � ��� L U S E   T I D   T O   Q U I C K L Y   I S O L A T E   B A S E 6 4   D A T A� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 olddelim oldDelim� ��� r    ��� m    �� ��� . C o n t e n t - T y p e :   t e x t / h t m l� n     ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    ��� 4   ���
�� 
citm� m    ���� � o    ���� 0 mysource mySource� o      ���� 0 
base64_raw 
base64_Raw� ��� r    ��� b    ��� 1    ��
�� 
lnfd� 1    ��
�� 
lnfd� n     � � 1    ��
�� 
txdl  1    ��
�� 
ascr�  r    - n    ' 4  $ '��
�� 
citm m   % &����  o    $���� 0 
base64_raw 
base64_Raw o      ���� 0 
base64_raw 
base64_Raw 	 r   . 3

 m   . / � 
 - - - - - n      1   0 2��
�� 
txdl 1   / 0��
�� 
ascr	  r   4 B n   4 < 4  9 <��
�� 
citm m   : ;����  o   4 9���� 0 
base64_raw 
base64_Raw o      ���� 0 	multihtml 	multiHTML  r   C H o   C D���� 0 olddelim oldDelim n      1   E G��
�� 
txdl 1   D E��
�� 
ascr  l  I I��������  ��  ��     l  I I��!"��  !  DECODE BASE64   " �##  D E C O D E   B A S E 6 4  $%$ r   I Z&'& I  I X��(��
�� .sysoexecTEXT���     TEXT( b   I T)*) b   I R+,+ m   I J-- �.. 
 e c h o  , l  J Q/����/ n   J Q010 1   O Q��
�� 
strq1 o   J O���� 0 	multihtml 	multiHTML��  ��  * m   R S22 �33 & |   o p e n s s l   b a s e 6 4   - d��  ' o      ���� 0 basehtml baseHTML% 454 l  [ [��������  ��  ��  5 6��6 L   [ ]77 o   [ \���� 0 basehtml baseHTML��  � 898 l     ��������  ��  ��  9 :;: l     ��������  ��  ��  ; <=< l     ��>?��  >  HTML FIX   ? �@@  H T M L   F I X= ABA i   � �CDC I      ��E���� 0 htmlfix htmlFixE FGF o      ���� 0 evhtml evHTMLG HIH o      ���� 0 theboundary theBoundaryI J��J o      ���� 0 	mycontent 	myContent��  ��  D k    
KK LML l     ��������  ��  ��  M NON r     PQP n    RSR 1    ��
�� 
txdlS 1     ��
�� 
ascrQ o      ���� 0 	olddelims 	oldDelimsO TUT r    VWV c    	XYX o    ���� 0 evhtml evHTMLY m    ��
�� 
TEXTW o      ���� 0 	multihtml 	multiHTMLU Z[Z l   ��������  ��  ��  [ \]\ l   ��^_��  ^ ! TEST FOR / STRIP OUT HEADER   _ �`` 6 T E S T   F O R   /   S T R I P   O U T   H E A D E R] aba r    cdc n    efe 2   ��
�� 
cparf o    ���� 0 	multihtml 	multiHTMLd o      ���� 0 
parasource 
paraSourceb ghg Z    ;ij����i E     klk n    mnm 4    ��o
�� 
cobjo m    ���� n o    ���� 0 
parasource 
paraSourcel m    pp �qq  R e c e i v e d :j k   # 7rr sts r   # )uvu l  # 'w����w n   # 'xyx 4   $ '��z
�� 
cobjz m   % &���� y o   # $���� 0 
parasource 
paraSource��  ��  v o      ���� 0 myheaderlines myHeaderlinest {��{ r   * 7|}| n  * 1~~ I   + 1������� 0 stripheader stripHeader� ��� o   + ,���� 0 
parasource 
paraSource� ���� o   , -���� 0 myheaderlines myHeaderlines��  ��    f   * +} o      ���� 0 	multihtml 	multiHTML��  ��  ��  h ��� l  < <��������  ��  ��  � ��� l  < <������  �  TRIM ENDING   � ���  T R I M   E N D I N G� ��� Z   < m������ E   < C��� o   < A���� 0 	multihtml 	multiHTML� m   A B�� ���  < / h t m l >� r   F X��� n  F R��� I   G R�������  0 extractbetween extractBetween� ��� o   G L���� 0 	multihtml 	multiHTML� ��� m   L M�� ��� . C o n t e n t - T y p e :   t e x t / h t m l� ���� m   M N�� ���  < / h t m l >��  ��  �  f   F G� o      ���� 0 	multihtml 	multiHTML��  � r   [ m��� n  [ g��� I   \ g�������  0 extractbetween extractBetween� ��� o   \ a���� 0 	multihtml 	multiHTML� ��� m   a b�� ��� . C o n t e n t - T y p e :   t e x t / h t m l� ���� o   b c���� 0 theboundary theBoundary��  ��  �  f   [ \� o      ���� 0 	multihtml 	multiHTML� ��� r   n w��� n   n u��� 2  s u��
�� 
cpar� o   n s���� 0 	multihtml 	multiHTML� o      ���� 0 
parasource 
paraSource� ��� l  x x��������  ��  ��  � ��� l  x x������  � - 'TEST FOR / STRIP OUT LEADING SEMI-COLON   � ��� N T E S T   F O R   /   S T R I P   O U T   L E A D I N G   S E M I - C O L O N� ��� Z   x �������� E   x ~��� n   x |��� 4   y |���
�� 
cobj� m   z {���� � o   x y���� 0 
parasource 
paraSource� m   | }�� ���  ;� k   � ��� ��� r   � ���� l  � ������� n   � ���� 4   � ���
� 
cobj� m   � ��~�~ � o   � ��}�} 0 
parasource 
paraSource��  ��  � o      �|�| 0 myheaderlines myHeaderlines� ��� r   � ���� n  � ���� I   � ��{��z�{ 0 stripheader stripHeader� ��� o   � ��y�y 0 
parasource 
paraSource� ��x� o   � ��w�w 0 myheaderlines myHeaderlines�x  �z  �  f   � �� o      �v�v 0 	multihtml 	multiHTML� ��u� r   � ���� n   � ���� 2  � ��t
�t 
cpar� o   � ��s�s 0 	multihtml 	multiHTML� o      �r�r 0 
parasource 
paraSource�u  ��  ��  � ��� l  � ��q�p�o�q  �p  �o  � ��� l  � ��n���n  � H BTEST FOR EMPTY LINE / CLEAN SUBSEQUENT ENCODING INFO, IF NECESSARY   � ��� � T E S T   F O R   E M P T Y   L I N E   /   C L E A N   S U B S E Q U E N T   E N C O D I N G   I N F O ,   I F   N E C E S S A R Y� ��� Z   ����m�l� =  � ���� n   � ���� 4   � ��k�
�k 
cobj� m   � ��j�j � o   � ��i�i 0 
parasource 
paraSource� m   � ��� ���  � k   ��� ��� l  � ��h���h  � 4 .TEST FOR / STRIP OUT CONTENT-TRANSFER-ENCODING   � ��� \ T E S T   F O R   /   S T R I P   O U T   C O N T E N T - T R A N S F E R - E N C O D I N G� ��� Z   � ����g�f� E   � ���� n   � ���� 4   � ��e�
�e 
cobj� m   � ��d�d � o   � ��c�c 0 
parasource 
paraSource� m   � ��� �   2 C o n t e n t - T r a n s f e r - E n c o d i n g� k   � �  r   � � l  � ��b�a n   � � 4   � ��`	
�` 
cobj	 m   � ��_�_  o   � ��^�^ 0 
parasource 
paraSource�b  �a   o      �]�] 0 myheaderlines myHeaderlines 

 r   � � n  � � I   � ��\�[�\ 0 stripheader stripHeader  o   � ��Z�Z 0 
parasource 
paraSource �Y o   � ��X�X 0 myheaderlines myHeaderlines�Y  �[    f   � � o      �W�W 0 	multihtml 	multiHTML �V r   � � n   � � 2  � ��U
�U 
cpar o   � ��T�T 0 	multihtml 	multiHTML o      �S�S 0 
parasource 
paraSource�V  �g  �f  �  l  � ��R�R   " TEST FOR / STRIP OUT CHARSET    � 8 T E S T   F O R   /   S T R I P   O U T   C H A R S E T �Q Z   � �P�O E   � �!"! n   � �#$# 4   � ��N%
�N 
cobj% m   � ��M�M $ o   � ��L�L 0 
parasource 
paraSource" m   � �&& �''  c h a r s e t  k   � (( )*) r   � �+,+ l  � �-�K�J- n   � �./. 4   � ��I0
�I 
cobj0 m   � ��H�H / o   � ��G�G 0 
parasource 
paraSource�K  �J  , o      �F�F 0 myheaderlines myHeaderlines* 121 r   � �343 n  � �565 I   � ��E7�D�E 0 stripheader stripHeader7 898 o   � ��C�C 0 
parasource 
paraSource9 :�B: o   � ��A�A 0 myheaderlines myHeaderlines�B  �D  6  f   � �4 o      �@�@ 0 	multihtml 	multiHTML2 ;�?; r   � <=< n   � �>?> 2  � ��>
�> 
cpar? o   � ��=�= 0 	multihtml 	multiHTML= o      �<�< 0 
parasource 
paraSource�?  �P  �O  �Q  �m  �l  � @A@ l 		�;�:�9�;  �:  �9  A BCB l 		�8DE�8  D 4 .TEST FOR / STRIP OUT CONTENT-TRANSFER-ENCODING   E �FF \ T E S T   F O R   /   S T R I P   O U T   C O N T E N T - T R A N S F E R - E N C O D I N GC GHG Z  	6IJ�7�6I E  	KLK n  	MNM 4  
�5O
�5 
cobjO m  �4�4 N o  	
�3�3 0 
parasource 
paraSourceL m  PP �QQ 2 C o n t e n t - T r a n s f e r - E n c o d i n gJ k  2RR STS r  UVU l W�2�1W n  XYX 4  �0Z
�0 
cobjZ m  �/�/ Y o  �.�. 0 
parasource 
paraSource�2  �1  V o      �-�- 0 myheaderlines myHeaderlinesT [\[ r  (]^] n "_`_ I  "�,a�+�, 0 stripheader stripHeadera bcb o  �*�* 0 
parasource 
paraSourcec d�)d o  �(�( 0 myheaderlines myHeaderlines�)  �+  `  f  ^ o      �'�' 0 	multihtml 	multiHTML\ e�&e r  )2fgf n  )0hih 2 .0�%
�% 
cpari o  ).�$�$ 0 	multihtml 	multiHTMLg o      �#�# 0 
parasource 
paraSource�&  �7  �6  H jkj l 77�"�!� �"  �!  �   k lml l 77�no�  n " TEST FOR / STRIP OUT CHARSET   o �pp 8 T E S T   F O R   /   S T R I P   O U T   C H A R S E Tm qrq Z  7dst��s E  7?uvu n  7;wxw 4  8;�y
� 
cobjy m  9:�� x o  78�� 0 
parasource 
paraSourcev m  ;>zz �{{  c h a r s e tt k  B`|| }~} r  BH� l BF���� n  BF��� 4  CF��
� 
cobj� m  DE�� � o  BC�� 0 
parasource 
paraSource�  �  � o      �� 0 myheaderlines myHeaderlines~ ��� r  IV��� n IP��� I  JP���� 0 stripheader stripHeader� ��� o  JK�� 0 
parasource 
paraSource� ��� o  KL�� 0 myheaderlines myHeaderlines�  �  �  f  IJ� o      �� 0 	multihtml 	multiHTML� ��� r  W`��� n  W^��� 2 \^�
� 
cpar� o  W\�� 0 	multihtml 	multiHTML� o      �
�
 0 
parasource 
paraSource�  �  �  r ��� l ee�	���	  �  �  � ��� l ee����  �  CLEAN CONTENT   � ���  C L E A N   C O N T E N T� ��� r  ej��� o  ef�� 0 theboundary theBoundary� n     ��� 1  gi�
� 
txdl� 1  fg�
� 
ascr� ��� r  kz��� n  kt��� 2 pt�
� 
citm� o  kp�� 0 	multihtml 	multiHTML� o      � �   0 thesourceitems theSourceItems� ��� r  {���� m  {~�� ���  � n     ��� 1  ���
�� 
txdl� 1  ~��
�� 
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  %� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  3 7 ;� m  ����
�� 
TEXT� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  =� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  %� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  % "� n     � � 1  ����
�� 
txdl  1  ����
�� 
ascr�  r  �� n  �� 2 ����
�� 
citm o  ������ 0 
theencoded 
theEncoded o      ����  0 thesourceitems theSourceItems  r  � 	
	 m  �� �  = "
 n      1  ����
�� 
txdl 1  ����
�� 
ascr  r   c  
 o  ����  0 thesourceitems theSourceItems m  	��
�� 
ctxt o      ���� 0 
theencoded 
theEncoded  l ��������  ��  ��    r   b   m   �  % l ���� I �� ��
�� .sysontocTEXT       shor  m  ���� ��  ��  ��   n     !"! 1  ��
�� 
txdl" 1  ��
�� 
ascr #$# r  (%&% n  "'(' 2 "��
�� 
citm( o  ���� 0 
theencoded 
theEncoded& o      ����  0 thesourceitems theSourceItems$ )*) r  )0+,+ m  ),-- �..  , n     /0/ 1  -/��
�� 
txdl0 1  ,-��
�� 
ascr* 121 r  1<343 c  1:565 o  16����  0 thesourceitems theSourceItems6 m  69��
�� 
ctxt4 o      ���� 0 
theencoded 
theEncoded2 787 l ==��������  ��  ��  8 9:9 r  =D;<; m  =@== �>>  % %< n     ?@? 1  AC��
�� 
txdl@ 1  @A��
�� 
ascr: ABA r  EPCDC n  EJEFE 2 FJ��
�� 
citmF o  EF���� 0 
theencoded 
theEncodedD o      ����  0 thesourceitems theSourceItemsB GHG r  QXIJI m  QTKK �LL  %J n     MNM 1  UW��
�� 
txdlN 1  TU��
�� 
ascrH OPO r  YdQRQ c  YbSTS o  Y^����  0 thesourceitems theSourceItemsT m  ^a��
�� 
ctxtR o      ���� 0 
theencoded 
theEncodedP UVU l ee��������  ��  ��  V WXW r  etYZY b  ep[\[ m  eh]] �^^  %\ l ho_����_ I ho��`��
�� .sysontocTEXT       shor` m  hk���� 
��  ��  ��  Z n     aba 1  qs��
�� 
txdlb 1  pq��
�� 
ascrX cdc r  u�efe n  uzghg 2 vz��
�� 
citmh o  uv���� 0 
theencoded 
theEncodedf o      ����  0 thesourceitems theSourceItemsd iji r  ��klk m  ��mm �nn  l n     opo 1  ����
�� 
txdlp 1  ����
�� 
ascrj qrq r  ��sts c  ��uvu o  ������  0 thesourceitems theSourceItemsv m  ����
�� 
ctxtt o      ���� 0 
theencoded 
theEncodedr wxw l ����������  ��  ��  x yzy r  ��{|{ m  ��}} �~~  % 0 A| n     � 1  ����
�� 
txdl� 1  ����
�� 
ascrz ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  % 0 9� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  % C 2 % A 0� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  � ��� m  ���� ���  & n b s p ;� n     ��� 1  ���
� 
txdl� 1  ���~
�~ 
ascr� ��� r  ��� c  
��� o  �}�}  0 thesourceitems theSourceItems� m  	�|
�| 
ctxt� o      �{�{ 0 
theencoded 
theEncoded� ��� l �z�y�x�z  �y  �x  � ��� r  ��� m  �� ���  % 2 0� n     ��� 1  �w
�w 
txdl� 1  �v
�v 
ascr� ��� r   ��� n  ��� 2 �u
�u 
citm� o  �t�t 0 
theencoded 
theEncoded� o      �s�s  0 thesourceitems theSourceItems� ��� r  !(��� m  !$�� ���   � n     ��� 1  %'�r
�r 
txdl� 1  $%�q
�q 
ascr� ��� r  )4��� c  )2��� o  ).�p�p  0 thesourceitems theSourceItems� m  .1�o
�o 
ctxt� o      �n�n 0 
theencoded 
theEncoded� ��� l 55�m�l�k�m  �l  �k  � ��� r  5@��� l 5<��j�i� I 5<�h��g
�h .sysontocTEXT       shor� m  58�f�f 
�g  �j  �i  � n     ��� 1  =?�e
�e 
txdl� 1  <=�d
�d 
ascr� ��� r  AL��� n  AF��� 2 BF�c
�c 
citm� o  AB�b�b 0 
theencoded 
theEncoded� o      �a�a  0 thesourceitems theSourceItems� � � r  MT m  MP �   n      1  QS�`
�` 
txdl 1  PQ�_
�_ 
ascr   r  U`	
	 c  U^ o  UZ�^�^  0 thesourceitems theSourceItems m  Z]�]
�] 
ctxt
 o      �\�\ 0 
theencoded 
theEncoded  l aa�[�Z�Y�[  �Z  �Y    r  ah m  ad �  = n      1  eg�X
�X 
txdl 1  de�W
�W 
ascr  r  it n  in 2 jn�V
�V 
citm o  ij�U�U 0 
theencoded 
theEncoded o      �T�T  0 thesourceitems theSourceItems  r  u�  c  u~!"! b  u|#$# m  ux%% �&&  & #$ m  x{'' �((  6 1 ;" m  |}�S
�S 
TEXT  n     )*) 1  ��R
�R 
txdl* 1  ~�Q
�Q 
ascr +,+ r  ��-.- c  ��/0/ o  ���P�P  0 thesourceitems theSourceItems0 m  ���O
�O 
ctxt. o      �N�N 0 
theencoded 
theEncoded, 121 l ���M�L�K�M  �L  �K  2 343 r  ��565 m  ��77 �88  $6 n     9:9 1  ���J
�J 
txdl: 1  ���I
�I 
ascr4 ;<; r  ��=>= n  ��?@? 2 ���H
�H 
citm@ o  ���G�G 0 
theencoded 
theEncoded> o      �F�F  0 thesourceitems theSourceItems< ABA r  ��CDC c  ��EFE b  ��GHG m  ��II �JJ  & #H m  ��KK �LL  3 6 ;F m  ���E
�E 
TEXTD n     MNM 1  ���D
�D 
txdlN 1  ���C
�C 
ascrB OPO r  ��QRQ c  ��STS o  ���B�B  0 thesourceitems theSourceItemsT m  ���A
�A 
ctxtR o      �@�@ 0 
theencoded 
theEncodedP UVU l ���?�>�=�?  �>  �=  V WXW r  ��YZY m  ��[[ �\\  'Z n     ]^] 1  ���<
�< 
txdl^ 1  ���;
�; 
ascrX _`_ r  ��aba n  ��cdc 2 ���:
�: 
citmd o  ���9�9 0 
theencoded 
theEncodedb o      �8�8  0 thesourceitems theSourceItems` efe r  ��ghg m  ��ii �jj  & a p o s ;h n     klk 1  ���7
�7 
txdll 1  ���6
�6 
ascrf mnm r  ��opo c  ��qrq o  ���5�5  0 thesourceitems theSourceItemsr m  ���4
�4 
ctxtp o      �3�3 0 
theencoded 
theEncodedn sts l ���2�1�0�2  �1  �0  t uvu r  ��wxw m  ��yy �zz  "x n     {|{ 1  ���/
�/ 
txdl| 1  ���.
�. 
ascrv }~} r  ��� n  ����� 2 ���-
�- 
citm� o  ���,�, 0 
theencoded 
theEncoded� o      �+�+  0 thesourceitems theSourceItems~ ��� r  � ��� m  ���� ���  \ "� n     ��� 1  ���*
�* 
txdl� 1  ���)
�) 
ascr� ��� r  ��� c  
��� o  �(�(  0 thesourceitems theSourceItems� m  	�'
�' 
ctxt� o      �&�& 0 
theencoded 
theEncoded� ��� l �%�$�#�%  �$  �#  � ��� r  ��� o  �"�" 0 	olddelims 	oldDelims� n     ��� 1  �!
�! 
txdl� 1  � 
�  
ascr� ��� l ����  �  �  � ��� r  !��� n ��� I  ����  0 extractbetween extractBetween� ��� o  �� 0 
theencoded 
theEncoded� ��� m  �� ���  < / h e a d >� ��� m  �� ���  < / h t m l >�  �  �  f  � o      �� 0 trimhtml trimHTML� ��� l ""����  �  �  � ��� r  "%��� o  "#�� 0 	mycontent 	myContent� o      �� 0 thehtml theHTML� ��� l &&����  �  �  � ��� Q  &���� k  )��� ��� r  )0��� m  )*�
� boovfals� o      ��  0 decode_success decode_Success� ��� l 11���
�  �  �
  � ��� l 11�	���	  �  
UTF-8 CONV   � ���  U T F - 8   C O N V� ��� r  1D��� I 1B���
� .sysoexecTEXT���     TEXT� b  1>��� b  1:��� m  14�� ��� 
 e c h o  � n  49��� 1  59�
� 
strq� o  45�� 0 trimhtml trimHTML� m  :=�� ��� $   |   i c o n v   - t   U T F - 8  �  � o      ��  0 newencodedtext NewEncodedText� ��� r  EL��� n  EJ��� 1  FJ�
� 
strq� o  EF��  0 newencodedtext NewEncodedText� o      �� 0 the_utf8text the_UTF8Text� ��� l MM� �����   ��  ��  � ��� l MM������  �  URL DECODE CONVERSION   � ��� * U R L   D E C O D E   C O N V E R S I O N� ��� r  M\��� c  MZ��� b  MV��� b  MR��� m  MP�� ��� . p h p   - r   " e c h o   u r l d e c o d e (� o  PQ���� 0 the_utf8text the_UTF8Text� m  RU�� ���  ) ; "� m  VY��
�� 
ctxt� o      ���� "0 thedecodescript theDecodeScript� ��� r  ]d��� I ]b�����
�� .sysoexecTEXT���     TEXT� o  ]^���� "0 thedecodescript theDecodeScript��  � o      ���� 0 
thedecoded 
theDecoded� ��� l ee��������  ��  ��  � ��� l ee������  � 2 ,FIX FOR APOSTROPHE / PERCENT / EQUALS ISSUES   � ��� X F I X   F O R   A P O S T R O P H E   /   P E R C E N T   /   E Q U A L S   I S S U E S� ��� r  el��� m  eh�� ���  & a p o s ;� n     � � 1  ik��
�� 
txdl  1  hi��
�� 
ascr�  r  mx n  mr 2 nr��
�� 
citm o  mn���� 0 
thedecoded 
theDecoded o      ����  0 thesourceitems theSourceItems  r  y�	
	 m  y| �  '
 n      1  }��
�� 
txdl 1  |}��
�� 
ascr  r  �� c  �� o  ������  0 thesourceitems theSourceItems m  ����
�� 
ctxt o      ���� 0 
thedecoded 
theDecoded  l ����������  ��  ��    r  �� c  �� b  �� m  �� �    & # m  ��!! �""  3 7 ; m  ����
�� 
TEXT n     #$# 1  ����
�� 
txdl$ 1  ����
�� 
ascr %&% r  ��'(' n  ��)*) 2 ����
�� 
citm* o  ������ 0 
thedecoded 
theDecoded( o      ����  0 thesourceitems theSourceItems& +,+ r  ��-.- m  ��// �00  %. n     121 1  ����
�� 
txdl2 1  ����
�� 
ascr, 343 r  ��565 c  ��787 o  ������  0 thesourceitems theSourceItems8 m  ����
�� 
ctxt6 o      ���� 0 
thedecoded 
theDecoded4 9:9 l ����������  ��  ��  : ;<; r  ��=>= c  ��?@? b  ��ABA m  ��CC �DD  & #B m  ��EE �FF  6 1 ;@ m  ����
�� 
TEXT> n     GHG 1  ����
�� 
txdlH 1  ����
�� 
ascr< IJI r  ��KLK n  ��MNM 2 ����
�� 
citmN o  ������ 0 
thedecoded 
theDecodedL o      ����  0 thesourceitems theSourceItemsJ OPO r  ��QRQ m  ��SS �TT  =R n     UVU 1  ����
�� 
txdlV 1  ����
�� 
ascrP WXW r  ��YZY c  ��[\[ o  ������  0 thesourceitems theSourceItems\ m  ����
�� 
ctxtZ o      ���� 0 
thedecoded 
theDecodedX ]^] l ����������  ��  ��  ^ _`_ l ����ab��  a  RETURN THE VALUE   b �cc   R E T U R N   T H E   V A L U E` ded r  ��fgf o  ������ 0 
thedecoded 
theDecodedg o      ���� 0 	finalhtml 	finalHTMLe hih r  ��jkj m  ����
�� boovtruek o      ����  0 decode_success decode_Successi l��l L  ��mm o  ������ 0 	finalhtml 	finalHTML��  � R      ������
�� .ascrerr ****      � ****��  ��  �  � n��n l 		��������  ��  ��  ��  B opo l     ��������  ��  ��  p qrq l      ��st��  s k e
======================================
// GROWL SUBROUTINES
=======================================
   t �uu � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   G R O W L   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
r vwv l     ��������  ��  ��  w xyx l     ��z{��  z  CHECK FOR GROWL   { �||  C H E C K   F O R   G R O W Ly }~} i   � �� I      �������� 0 growl_check Growl_Check��  ��  � Z     7������� I     ������� 0 appisrunning appIsRunning� ���� m    �� ��� 
 G r o w l��  ��  � k   	 3�� ��� r   	 ��� m   	 
��
�� boovtrue� o      ���� 0 growl_running growl_Running� ���� O    3��� k    2�� ��� r    ��� J    �� ��� m    �� ��� $ I m p o r t   T o   E v e r n o t e� ��� m    �� ��� ( S u c c e s s   N o t i f i c a t i o n� ���� m    �� ��� ( F a i l u r e   N o t i f i c a t i o n��  � o      ���� .0 allnotificationsfiles allNotificationsFiles� ��� r    $��� J    "�� ��� m    �� ��� $ I m p o r t   T o   E v e r n o t e� ��� m    �� ��� ( S u c c e s s   N o t i f i c a t i o n� ���� m     �� ��� ( F a i l u r e   N o t i f i c a t i o n��  � o      ���� 60 enablednotificationsfiles enabledNotificationsFiles� ���� I  % 2�����
�� .registernull��� ��� null��  � ����
�� 
appl� l 	 ' (������ m   ' (�� ��� , A p p l e   M a i l   t o   E v e r n o t e��  ��  � ����
�� 
anot� l 
 ) *������ o   ) *���� .0 allnotificationsfiles allNotificationsFiles��  ��  � ����
�� 
dnot� l 
 + ,������ o   + ,���� 60 enablednotificationsfiles enabledNotificationsFiles��  ��  � �����
�� 
iapp� m   - .�� ���  M a i l��  ��  � m    ���                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ��  ��  ��  ~ ��� l     ��������  ��  ��  � ��� l     ������  � 1 +ANNOUNCE THE COUNT OF TOTAL ITEMS TO EXPORT   � ��� V A N N O U N C E   T H E   C O U N T   O F   T O T A L   I T E M S   T O   E X P O R T� ��� i   � ���� I      ������� 0 process_items process_Items� ��� o      ���� 0 itemnum itemNum� ���� o      ���� 0 attnum attNum��  ��  � k     ��� ��� r     ��� m     �� ���  � o      ���� 0 	attplural 	attPlural� ��� Z    ������ =    ��� o    ���� 0 attnum attNum� m    ����  � r   
 ��� m   
 �� ���  N o� o      ���� 0 attnum attNum� ��� ?    ��� o    ���� 0 attnum attNum� m    ���� � ���� r    ��� m    �� ���  s� o      ���� 0 	attplural 	attPlural��  ��  � ���� l   ����� O    ���� Z   " ������� =  " )��� o   " '�~�~ 0 growl_running growl_Running� m   ' (�}
�} boovtrue� k   , ��� ��� r   , 1��� c   , /��� l  , -��|�{� o   , -�z�z 0 itemnum itemNum�|  �{  � m   - .�y
�y 
nmbr� o      �x�x 0 plural_test Plural_Test� ��w� Z   2 ����v � ?  2 5 o   2 3�u�u 0 plural_test Plural_Test m   3 4�t�t � O   8 ` I  < _�s�r
�s .notifygrnull��� ��� null�r   �q
�q 
name l 	 > ?�p�o m   > ?		 �

 $ I m p o r t   T o   E v e r n o t e�p  �o   �n
�n 
titl l 	 @ A�m�l m   @ A � 4 I m p o r t   T o   E v e r n o t e   S t a r t e d�m  �l   �k
�k 
desc b   B O b   B M b   B K b   B I b   B G b   B E m   B C �  N o w   P r o c e s s i n g   o   C D�j�j 0 itemnum itemNum m   E F   �!!    I t e m s   w i t h   o   G H�i�i 0 attnum attNum l 	 I J"�h�g" m   I J## �$$    a t t a c h m e n t�h  �g   o   K L�f�f 0 	attplural 	attPlural m   M N%% �&&  . �e'(
�e 
appl' l 	 P S)�d�c) m   P S** �++ , A p p l e   M a i l   t o   E v e r n o t e�d  �c  ( �b,�a
�b 
iapp, m   V Y-- �..  M a i l�a   m   8 9//�                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �v    O   c �010 k   g �22 343 I  g ��`�_5
�` .notifygrnull��� ��� null�_  5 �^67
�^ 
name6 l 	 i l8�]�\8 m   i l99 �:: $ I m p o r t   T o   E v e r n o t e�]  �\  7 �[;<
�[ 
titl; l 	 m p=�Z�Y= m   m p>> �?? 4 I m p o r t   T o   E v e r n o t e   S t a r t e d�Z  �Y  < �X@A
�X 
desc@ b   q �BCB b   q �DED b   q �FGF b   q |HIH b   q zJKJ b   q vLML m   q tNN �OO  N o w   P r o c e s s i n g  M o   t u�W�W 0 itemnum itemNumK m   v yPP �QQ    I t e m   W i t h  I o   z {�V�V 0 attnum attNumG l 	 | R�U�TR m   | SS �TT    A t t a c h m e n t�U  �T  E o   � ��S�S 0 	attplural 	attPluralC m   � �UU �VV  .A �RWX
�R 
applW l 	 � �Y�Q�PY m   � �ZZ �[[ , A p p l e   M a i l   t o   E v e r n o t e�Q  �P  X �O\�N
�O 
iapp\ m   � �]] �^^  M a i l�N  4 _�M_ l  � ��L�K�J�L  �K  �J  �M  1 m   c d``�                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �w  ��  �  � m    aa�                                                                                  MACS  alis    t  Macintosh HD               �0ڲH+   R�
Finder.app                                                      S����R        ����  	                CoreServices    �1�      �͒     R� R� R�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �  FINDER   � �bb  F I N D E R��  � cdc l     �I�H�G�I  �H  �G  d efe l     �Fgh�F  g  GROWL RESULTS   h �ii  G R O W L   R E S U L T Sf j�Ej i   � �klk I      �Dm�C�D 0 growl_growler growl_Growlerm non o      �B�B 0 growl_running growl_Runningo pqp o      �A�A 0 successcount successCountq r�@r o      �?�? 0 errnum errNum�@  �C  l Z     �st�>�=s =    uvu o     �<�< 0 growl_running growl_Runningv m    �;
�; boovtruet k    �ww xyx O    �z{z k   
 �|| }~} l  
 
�:��:     GROWL FAILURE FOR CANCEL   � ��� 2   G R O W L   F A I L U R E   F O R   C A N C E L~ ��� Z  
 (���9�8� =  
 ��� o   
 �7�7 0 errnum errNum� m    �6�6��� O   $��� I   #�5�4�
�5 .notifygrnull��� ��� null�4  � �3��
�3 
name� l 	  ��2�1� m    �� ��� ( F a i l u r e   N o t i f i c a t i o n�2  �1  � �0��
�0 
titl� l 	  ��/�.� m    �� ���  U s e r   C a n c e l l e d�/  �.  � �-��
�- 
desc� l 	  ��,�+� m    �� ��� " F a i l e d   t o   e x p o r t !�,  �+  � �*��
�* 
appl� m    �� ��� , A p p l e   M a i l   t o   E v e r n o t e� �)��(
�) 
iapp� m    �� ���  M a i l�(  � m    ���                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �9  �8  � ��� l  ) )�'�&�%�'  �&  �%  � ��� l  ) )�$�#�"�$  �#  �"  � ��� l  ) )�!���!  �   GROWL FAILURE   � ���    G R O W L   F A I L U R E� ��� r   ) .��� c   ) ,��� l  ) *�� �� o   ) *�� 0 successcount successCount�   �  � m   * +�
� 
nmbr� o      �� 0 plural_test Plural_Test� ��� Z   / ������ =  / 2��� o   / 0�� 0 plural_test Plural_Test� m   0 1����� I  5 L���
� .notifygrnull��� ��� null�  � ���
� 
name� l 	 7 8���� m   7 8�� ��� ( F a i l u r e   N o t i f i c a t i o n�  �  � ���
� 
titl� l 	 9 <���� m   9 <�� ���  I m p o r t   F a i l u r e�  �  � ���
� 
desc� m   = @�� ��� @ N o   I t e m s   S e l e c t e d   I n   A p p l e   M a i l !� ���
� 
appl� m   A D�� ��� , A p p l e   M a i l   t o   E v e r n o t e� ���
� 
iapp� m   E H�� ���  M a i l�  � ��� =  O R��� o   O P�� 0 plural_test Plural_Test� m   P Q�
�
  � ��� k   U p�� ��� I  U n�	��
�	 .notifygrnull��� ��� null�  � ���
� 
name� l 	 W Z���� m   W Z�� ��� ( F a i l u r e   N o t i f i c a t i o n�  �  � ���
� 
titl� l 	 [ ^���� m   [ ^�� ���  I m p o r t   F a i l u r e�  �  � ���
� 
desc� m   _ b�� ��� 8 N o   I t e m s   E x p o r t e d   F r o m   M a i l !� � ��
�  
appl� m   c f�� ��� , A p p l e   M a i l   t o   E v e r n o t e� �����
�� 
iapp� m   g j�� ���  M a i l��  � ��� l  o o��������  ��  ��  � ��� l  o o��������  ��  ��  � ���� l  o o������  �   GROWL SUCCESS   � ���    G R O W L   S U C C E S S��  � ��� =  s v��� o   s t���� 0 plural_test Plural_Test� m   t u���� � ��� k   y ��� ��� I  y ������
�� .notifygrnull��� ��� null��  � ��� 
�� 
name� l 	 { ~���� m   { ~ � ( S u c c e s s   N o t i f i c a t i o n��  ��    ��
�� 
titl l 	  ����� m    � �  I m p o r t   S u c c e s s��  ��   ��	

�� 
desc	 b   � � b   � � b   � � b   � � m   � � � , S u c c e s s f u l l y   E x p o r t e d   o   � ����� 0 itemnum itemNum l 	 � ����� m   � � �    I t e m   t o   t h e  ��  ��   o   � ����� 0 
evnotebook 
EVnotebook m   � � � *   N o t e b o o k   i n   E v e r n o t e
 ��
�� 
appl m   � � � , A p p l e   M a i l   t o   E v e r n o t e ����
�� 
iapp m   � � �    M a i l��  � !"! l  � ���������  ��  ��  " #$# l  � ���������  ��  ��  $ %��% l  � ���&'��  &   GROWL SUCCESS   ' �((    G R O W L   S U C C E S S��  � )*) ?  � �+,+ o   � ����� 0 plural_test Plural_Test, m   � ����� * -��- k   � �.. /0/ I  � �����1
�� .notifygrnull��� ��� null��  1 ��23
�� 
name2 l 	 � �4����4 m   � �55 �66 ( S u c c e s s   N o t i f i c a t i o n��  ��  3 ��78
�� 
titl7 l 	 � �9����9 m   � �:: �;;  I m p o r t   S u c c e s s��  ��  8 ��<=
�� 
desc< b   � �>?> b   � �@A@ b   � �BCB b   � �DED m   � �FF �GG , S u c c e s s f u l l y   E x p o r t e d  E o   � ����� 0 itemnum itemNumC l 	 � �H����H m   � �II �JJ    I t e m s   t o   t h e  ��  ��  A o   � ����� 0 
evnotebook 
EVnotebook? m   � �KK �LL *   N o t e b o o k   i n   E v e r n o t e= ��MN
�� 
applM m   � �OO �PP , A p p l e   M a i l   t o   E v e r n o t eN ��Q��
�� 
iappQ m   � �RR �SS  M a i l��  0 T��T l  � ���������  ��  ��  ��  ��  �  �  { m    UU�                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+   R�	Growl.app                                                      ��^���        ����  	                Applications    �1�      ��7�     R�  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  y V��V r   � �WXW m   � �YY �ZZ  0X o      ���� 0 itemnum itemNum��  �>  �=  �E       .��[   ; L�� [ `\ h m r w |] �^ � � � �_ �`abcdefghijklmnopqrstuv��  [ ,������������������������������������������������������������������������������������������  0 tagging_switch tagging_Switch�� 0 
evnotebook 
EVnotebook�� 0 
defaulttag 
defaultTag�� 0 successcount successCount�� 0 growl_running growl_Running�� 0 mytitle myTitle�� 0 themessages theMessages�� 0 thismessage thisMessage�� 0 itemnum itemNum�� 0 attnum attNum�� 0 errnum errNum�� 0 usertag userTag�� 0 evtag EVTag�� 0 	multihtml 	multiHTML��  0 thesourceitems theSourceItems�� 0 mysource mySource��  0 decode_success decode_Success�� 0 	finalhtml 	finalHTML�� 0 	myheaders 	myHeaders�� *0 mysource_paragraphs mysource_Paragraphs�� 0 
base64_raw 
base64_Raw�� 0 appisrunning appIsRunning�� 0 
item_check 
item_Check�� 0 
item_count 
item_Count��  0 tagging_dialog tagging_Dialog�� $0 default_notebook default_Notebook�� 0 tag_list Tag_List�� 0 	tag_check 	Tag_Check�� 0 notebook_list Notebook_List��  0 extractbetween extractBetween�� 0 simple_sort  �� 0 mail_process mail_Process�� 0 make_evernote make_Evernote�� 0 f_exists  �� 0 attachment_process  �� 0 trashfolder  �� 0 stripheader stripHeader�� 0 base64_check base64_Check�� 0 base64_decode base64_Decode�� 0 htmlfix htmlFix�� 0 growl_check Growl_Check�� 0 process_items process_Items�� 0 growl_growler growl_Growler
�� .aevtoappnull  �   � ****��  \ ������  ��  ] ������  ��  ^ ������  ��  _ ������  ��  ` �������wx���� 0 appisrunning appIsRunning�� ��y�� y  ���� 0 appname appName��  w ���� 0 appname appNamex �����
�� 
prcs
�� 
pnam�� � 	*�-�,�Ua �������z{���� 0 
item_check 
item_Check��  ��  z �� 0 mypath myPath{ �~�}��|�{�z
�~ afdrcusr
�} .earsffdralis        afdr
�| 
slct�{  �z  �� #�j E�O�  *�,Ec  W X  hUb �y��x�w|}�v�y 0 
item_count 
item_Count�x �u~�u ~  �t�t 0 themessages theMessages�w  | �s�r�s 0 themessages theMessages�r 0 
themessage 
theMessage} �q�p�o�n
�q .corecnte****       ****
�p 
kocl
�o 
cobj
�n 
attc�v B� >�j Ec  OjEc  	O '�[��l kh b  	��,j Ec  	[OY��Uc �m+�l�k��j�m  0 tagging_dialog tagging_Dialog�l  �k   �i�h�g�f�e�i 0 dialogresult  �h 0 	userinput 	userInput�g 0 	buttonsel 	ButtonSel�f 0 	thedelims 	theDelims�e 0 thetags theTags�  9<�d@�c�bIMP�aT�`Y�_^�^c�]�\�[�Z�Y�X�Wz�V��U�T�S��R
�d 
appr
�c 
dtxt
�b 
btns
�a 
dflt
�` 
cbtn
�_ 
disp
�^ 
in B
�] .earsffdralis        afdr
�\ .sysorpthalis        TEXT�[ 
�Z .sysodlogaskr        TEXT
�Y 
rslt
�X 
ttxt
�W 
bhit�V  � �Q�P�O
�Q 
errn�P���O  �U���T 0 tag_list Tag_List�S 0 	tag_check 	Tag_Check�R 0 notebook_list Notebook_List�j � L��%���b  ����mv�������a j l a  O_ E�O�a ,E�O�a ,E�Oa kvE�W X  a Ec  
O)��l+ E�OjvEc  O)�k+ Ec  O�a   )j+ Ec  Y hd �N��M�L���K�N $0 default_notebook default_Notebook�M  �L  � �J�J *0 get_defaultnotebook get_defaultNotebook� ��I��H��G�F�E
�I 
EVnb�  
�H 
EVnd
�G 
cobj
�F 
pnam
�E 
ctxt�K 1� -*�-�[�,\Ze81E�Ob  �  ��k/�,�&Ec  Y hUe �D��C�B���A�D 0 tag_list Tag_List�C �@��@ �  �?�>�? 0 	userinput 	userInput�> 0 	thedelims 	theDelims�B  � �=�<�;�:�9�8�7�= 0 	userinput 	userInput�< 0 	thedelims 	theDelims�; 0 	olddelims 	oldDelims�: 0 thelist theList�9 0 adelim aDelim�8 0 newlist newList�7 0 anitem anItem� �6�5�4�3�2�1
�6 
ascr
�5 
txdl
�4 
kocl
�3 
cobj
�2 .corecnte****       ****
�1 
citm�A V��,E�O�kvE�O ?�[��l kh ���,FOjvE�O �[��l kh ���-%E�[OY��O�E�[OY��O���,FO�f �0)�/�.���-�0 0 	tag_check 	Tag_Check�/ �,��, �  �+�+ 0 thetags theTags�.  � �*�)�(�'�* 0 thetags theTags�) 0 	finaltags 	finalTags�( 0 thetag theTag�' 0 maketag makeTag� W�&�%�$�#�"�!� ����
�& 
kocl
�% 
cobj
�$ .corecnte****       ****
�# 
EVtg
�" kfrmname
�! .coredoexnull���     ****
�  
prdt
� 
pnam
� .corecrel****      � null�  �  �- W� PjvE�O H�[��l kh *��0j  " ���ll 	E�O��6FW X 
 hY 	*�/�6F[OY��UO�g �d������ 0 notebook_list Notebook_List�  �  � �������� "0 listofnotebooks listOfNotebooks� 0 evnotebooks EVNotebooks� "0 currentnotebook currentNotebook� *0 currentnotebookname currentNotebookName�  0 folders_sorted Folders_sorted� 0 selnotebook SelNotebook� 0 	userinput 	userInput� ��������
�	��������������
� .miscactvnull��� ��� null
� 
EVnb
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pnam�
 0 simple_sort  
�	 
appr
� 
prmp
� 
okbt
� 
cnbt� 
� .gtqpchltns    @   @ ns  
� 
dtxt
� .sysodlogaskr        TEXT
� 
ttxt� �� |*j OjvE�O*�-E�O �[��l kh ��,E�O��6G[OY��O)�k+ E�O���������a  E�O�f   a a a l a ,E�O�Ec  Y ��k/Ec  Uh � ����������   0 extractbetween extractBetween�� ����� �  �������� 0 
searchtext 
SearchText�� 0 	starttext 	startText�� 0 endtext endText��  � �������������� 0 
searchtext 
SearchText�� 0 	starttext 	startText�� 0 endtext endText�� 0 tid  �� 0 enditems endItems��  0 beginningtoend beginningToEnd� ��������
�� 
ascr
�� 
txdl
�� 
citm
�� 
ctxt�� -��,E�O���,FO��i/�-E�O���,FO��k/�-E�O���,FO�i ��&���������� 0 simple_sort  �� ����� �  ���� 0 my_list  ��  � ���������������� 0 my_list  �� 0 
index_list  �� 0 sorted_list  �� 0 low_item  �� 0 i  �� 0 	this_item  �� 0 low_item_index  � ����=��\
�� 
cobj
�� 
nmbr
�� 
ctxt�� vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�j ������������� 0 mail_process mail_Process�� ����� �  ���� 0 themessages theMessages��  � ������������������������������������������������ 0 themessages theMessages�� 0 thismessage thisMessage�� 0 	mycontent 	myContent�� 0 	replyaddr 	ReplyAddr�� 0 	emaildate 	EmailDate�� 0 allrecipients allRecipients�� 0 torecipients toRecipients�� 0 allrecipient allRecipient�� 0 toname toName�� 0 toemail toEmail�� 0 
tocombined 
toCombined�� 0 therecipient theRecipient�� 0 ex  �� 0 msglink MsgLink�� 0 theboundary theBoundary�� "0 themessagestart theMessageStart�� 0 themessageend theMessageEnd�� 0 
parasource 
paraSource�� 0 myheaderlines myHeaderlines�� 0 myheaderline myHeaderline�� 0 	cutsource 	cutSource�� 0 evhtml evHTML�� 0 the_template the_Template� 6��L���������������������������(*��?EKVj��nx�������������������������� "������ $0 default_notebook default_Notebook��  0 tagging_dialog tagging_Dialog
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
subj
�� 
ctnt
�� 
raso
�� 
rpto
�� 
rdrc
�� 
trcp
�� 
pnam
�� 
radd
�� 
spac
�� 
TEXT
�� 
meid��  0 extractbetween extractBetween��  ��  
�� 
ret 
�� 
cpar
�� 
alhe
�� 
ctxt�� 0 stripheader stripHeader�� �� 0 make_evernote make_Evernote��)j+  O�	 b   �  
)j+ Y hO�[��l kh o��,Ec  O��,E�O��,Ec  O��,E�O��,E�O��k/�-E�O�E�O ;�[��l kh ��,E�O��,E�O�_ %a %�%a %E�O��%a &E�[OY��Oa E�Oa E�Oa E�O >a E�O��k/�,E�Oa �a ,%a %E�O�a  )�a a m+ E�Y hW X   hO)b  a !a "m+ E�O_ #a $%�%E�Oa %�%_ #%a &%E^ Ob  a '-E^ O�a (,a )&a '-E^ O 8] [��l kh ] a * )] a +a ,m+ Ec  Y h[OY��O)] ] l+ -E^ O] E^ W X   hOa .�%a /%�%a 0%b  %a 1%�%a 2%�%a 3%E^ O)b  b  ���b  ��] b  �] b  ] a 4+ 5OP[OY�(W X   hUk ��[���������� 0 make_evernote make_Evernote�� ����� �  ������������������������������ 0 mytitle myTitle�� 0 evtag EVTag�� 0 	emaildate 	EmailDate�� 0 msglink MsgLink�� 0 	mycontent 	myContent�� 0 mysource mySource�� 0 theboundary theBoundary�� "0 themessagestart theMessageStart�� 0 themessageend theMessageEnd�� 0 	myheaders 	myHeaders�� 0 thismessage thisMessage�� 0 evhtml evHTML�� 0 
evnotebook 
EVnotebook�� 0 the_template the_Template��  � ������������������������ 0 mytitle myTitle�� 0 evtag EVTag�� 0 	emaildate 	EmailDate�� 0 msglink MsgLink�� 0 	mycontent 	myContent� 0 mysource mySource� 0 theboundary theBoundary� "0 themessagestart theMessageStart� 0 themessageend theMessageEnd� 0 	myheaders 	myHeaders� 0 thismessage thisMessage� 0 evhtml evHTML� 0 
evnotebook 
EVnotebook� 0 the_template the_Template� 0 n  � 0 base64detect base64Detect� 0 basehtml baseHTML� )	��������~�}�|�{�z�y��x��w�
1�v6�u�t�s���r�	%	(�q	��p�o�n�m	��l
� 
Enhl
� 
Entt
� 
Ennb� 
� .EVRNcrntnull��� ��� null
�~ 
EV13
�} .EVRNassnnull���     ****
�| 
EV18
�{ .EVRNadtnnull���     EVnn
�z 
EVdd
�y 
EVsu�x 0 base64_check base64_Check�w  0 extractbetween extractBetween
�v 
strq
�u .sysoexecTEXT���     TEXT
�t 
EV19�s 0 htmlfix htmlFix�r 0 base64_decode base64_Decode
�q 
ctxt
�p 
attc�o 0 attachment_process  �n  �m  
�l .ascrcmnt****      � ****�������� @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPYG��])�k+ E�O�e  �)��m+ Ec  Ob  a  )b  a �m+ Ec  Y hOb  a  )b  a �m+ Ec  Y hOa b  a ,%a %j E^ O*���� E�O�jv ��l Y hO� *a ] l 
UO���,FO���,FY �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY�a U�a )�k+ E�O�e  O)�k+ E^ O*���� E�O�jv ��l Y hO� *a ] l 
UO���,FO���,FOPY ��f  �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FY hOPY I�a  @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY hOPY �)�k+ E�O�e  )�k+ Ec  Y +)�a a  m+ Ec  O)b  ��m+ a !&Ec  O*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FOPOa " �a #-jv )��l+ $Y hUOb  kEc  W X % &hUOa 'b  %j (l �k	��j�i���h�k 0 f_exists  �j �g��g �  �f�f 0 exportfolder ExportFolder�i  � �e�d�c�e 0 exportfolder ExportFolder�d 0 mypath myPath�c 0 saveloc SaveLoc� �b�a�`�_�^	��]�\�[�Z	��Y�X
�b afdrcusr
�a .earsffdralis        afdr
�` 
alis�_  �^  
�] 
kocl
�\ 
cfol
�[ 
prdt
�Z 
pnam�Y 
�X .corecrel****      � null�h , �j E�O��&O�E�W X  � *�����l� Um �W	��V�U���T�W 0 attachment_process  �V �S��S �  �R�Q�R 0 thismessage thisMessage�Q 0 n  �U  � 
�P�O�N�M�L�K�J�I�H�G�P 0 thismessage thisMessage�O 0 n  �N 0 exportfolder ExportFolder�M 0 saveloc SaveLoc�L  0 theattachments theAttachments�K 0 attcount attCount�J 0 theattachment theAttachment�I 0 thefilename theFileName�H 0 trash_folder trash_Folder�G 0 success  � 
k	��F�E�D�C	��B�A�@�?�>�=�<�;�:�9�8�7
8�6�5�4�3�2
P�1�0�/�.�-
�F 
ascr
�E 
txdl
�D afdmdesk
�C .earsffdralis        afdr
�B 
TEXT�A 0 f_exists  
�@ 
attc
�? 
kocl
�> 
cobj
�= .corecnte****       ****
�< 
pnam
�; 
kfil
�: 
file
�9 .coresavenull���     obj �8  �7  
�6 
EV21
�5 .EVRNadtnnull���     EVnn
�4 afdmtrsh
�3 
from
�2 fldmfldu
�1 
psxp
�0 
strq
�/ 
spac
�. .sysoexecTEXT���     TEXT�- 0 trashfolder  �T �� ����,FO�j �%�&E�O)�k+ E�O��-E�OjE�O }�[��l kh ���,%E�O ��*�/l W X  hOa  � *a *�/l UUOa a a l E�Oa �a ,a ,%_ %�a ,a ,%j OP[OY��O)�k+ E�OPUn �,
v�+�*���)�, 0 trashfolder  �+ �(��( �  �'�' 0 saveloc SaveLoc�*  � �&�%�$�#�"�!� ��& 0 saveloc SaveLoc�% 0 trashfolderpath  �$ 0 srcfolderinfo  �# 0 srcfoldername  �" 0 counter  �! 0 destfolderpath  �  0 destfolderalias  � 0 command  � ��������
�
�
���
���
�
� afdrtrsh
� .earsffdralis        afdr
� 
utxt
� 
alis
� .sysonfo4asfe        file
� 
pnam
� 
psxp
� 
strq�  �  
� 
spac
� .sysoexecTEXT���     TEXT�) � ��j �&E�O��&j E�O��,E�O��,�,E�OjE�O <hZ�j  ��%�%E�Y ��%�%�%�%E�O 
��&E�W X  O�kE�[OY��O��,�,E�O��%�%�%E�O�j Oa �%E�O�j OeW 	X  fo �
������ 0 stripheader stripHeader� ��� �  ��� 0 
parasource 
paraSource� 0 myheaderlines myHeaderlines�  � ��
�	������ 0 
parasource 
paraSource�
 0 myheaderlines myHeaderlines�	 0 lastheaderline  � 0 n  � 0 sourcelength  �  0 cutsourceitems cutSourceItems� 0 	olddelims 	oldDelims� 0 	cutsource 	cutSource� 	�7�S�� ����
� .corecnte****       ****
� 
cobj
� 
ascr
�  
txdl
�� 
ret 
�� 
ctxt� y�E�O�j E�O h�� ��/E�O�kE�[OY��O�j E�O k�kh ��/�  Y h[OY��O�[�\[Z�k\Z�2E�O��,E�O���,FO��&E�O���,FO�OPp ������������� 0 base64_check base64_Check�� ����� �  ���� 0 mysource mySource��  � ������������������ 0 mysource mySource�� 0 base64detect base64Detect�� 0 base64msgstr base64MsgStr�� &0 base64contenttype base64ContentType�� "0 base64msgoffset base64MsgOffset�� *0 base64contentoffset base64ContentOffset�� 0 base64offset base64Offset�� 0 	theoffset 	theOffset� 
������������������
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
doub
�� 
nmbr�� 2������ MfE�O�E�O�E�O*��� E�O*��� E�O���&E�O��&E�O�� �� eE�Y hY hO�q ������������� 0 base64_decode base64_Decode�� ����� �  ���� 0 mysource mySource��  � �������� 0 mysource mySource�� 0 olddelim oldDelim�� 0 basehtml baseHTML� 
���������-��2��
�� 
ascr
�� 
txdl
�� 
citm
�� 
lnfd
�� 
strq
�� .sysoexecTEXT���     TEXT�� ^��,E�O���,FO��l/Ec  O��%��,FOb  �l/Ec  O���,FOb  �k/Ec  O���,FO�b  �,%�%j 	E�O�r ��D���������� 0 htmlfix htmlFix�� ����� �  �������� 0 evhtml evHTML�� 0 theboundary theBoundary�� 0 	mycontent 	myContent��  � ���������������������������� 0 evhtml evHTML�� 0 theboundary theBoundary�� 0 	mycontent 	myContent�� 0 	olddelims 	oldDelims�� 0 
parasource 
paraSource�� 0 myheaderlines myHeaderlines�� 0 
theencoded 
theEncoded�� 0 trimhtml trimHTML�� 0 thehtml theHTML��  0 newencodedtext NewEncodedText�� 0 the_utf8text the_UTF8Text�� "0 thedecodescript theDecodeScript�� 0 
thedecoded 
theDecoded� J���������p���������&Pz�����������-=K]�m}�������%'7IK[iy����������!/CES��
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
cpar
� 
cobj� 0 stripheader stripHeader�  0 extractbetween extractBetween
� 
citm
� 
ctxt� 
� .sysontocTEXT       shor� 

� 
strq
� .sysoexecTEXT���     TEXT�  �  ����,E�O��&Ec  Ob  �-E�O��k/� ��k/E�O)��l+ Ec  Y hOb  � )b  ��m+ 
Ec  Y )b  �m+ 
Ec  Ob  �-E�O��k/� #��k/E�O)��l+ Ec  Ob  �-E�Y hO��k/�  \��l/� #��l/E�O)��l+ Ec  Ob  �-E�Y hO��l/� #��l/E�O)��l+ Ec  Ob  �-E�Y hY hO��k/a  #��k/E�O)��l+ Ec  Ob  �-E�Y hO��k/a  #��k/E�O)��l+ Ec  Ob  �-E�Y hO���,FOb  a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa a %�&��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa a j %��,FO�a -Ec  Oa ��,FOb  a &E�Oa  ��,FO�a -Ec  Oa !��,FOb  a &E�Oa "a #j %��,FO�a -Ec  Oa $��,FOb  a &E�Oa %��,FO�a -Ec  Oa &��,FOb  a &E�Oa '��,FO�a -Ec  Oa (��,FOb  a &E�Oa )��,FO�a -Ec  Oa *��,FOb  a &E�Oa +��,FO�a -Ec  Oa ,��,FOb  a &E�Oa #j ��,FO�a -Ec  Oa -��,FOb  a &E�Oa .��,FO�a -Ec  Oa /a 0%�&��,FOb  a &E�Oa 1��,FO�a -Ec  Oa 2a 3%�&��,FOb  a &E�Oa 4��,FO�a -Ec  Oa 5��,FOb  a &E�Oa 6��,FO�a -Ec  Oa 7��,FOb  a &E�O���,FO)�a 8a 9m+ 
E�O�E�O �fEc  Oa :�a ;,%a <%j =E�O�a ;,E�Oa >�%a ?%a &E�O�j =E�Oa @��,FO�a -Ec  Oa A��,FOb  a &E�Oa Ba C%�&��,FO�a -Ec  Oa D��,FOb  a &E�Oa Ea F%�&��,FO�a -Ec  Oa G��,FOb  a &E�O�Ec  OeEc  Ob  W X H IhOPs �������� 0 growl_check Growl_Check�  �  � ��� .0 allnotificationsfiles allNotificationsFiles� 60 enablednotificationsfiles enabledNotificationsFiles� ������������������ 0 appisrunning appIsRunning
� 
appl
� 
anot
� 
dnot
� 
iapp� 
� .registernull��� ��� null� 8*�k+  /eEc  O� ���mvE�O���mvE�O*������� UY ht �������� 0 process_items process_Items� ��� �  ��� 0 itemnum itemNum� 0 attnum attNum�  � ����� 0 itemnum itemNum� 0 attnum attNum� 0 	attplural 	attPlural� 0 plural_test Plural_Test� ���a�/�	�� #%�*�-��9>NPSUZ]
� 
nmbr
� 
name
� 
titl
� 
desc
� 
appl
� 
iapp� 

� .notifygrnull��� ��� null� ��E�O�j  �E�Y �k �E�Y hO� }b  e  r��&E�O�k -� %*������%�%�%�%�%�%�a a a a  UY 8� 3*�a �a �a �%a %�%a %�%a %�a a a a  OPUY hUu �l������ 0 growl_growler growl_Growler� ��� �  ���� 0 growl_running growl_Running� 0 successcount successCount� 0 errnum errNum�  � ����� 0 growl_running growl_Running� 0 successcount successCount� 0 errnum errNum� 0 plural_test Plural_Test� (U������������������������5:FIKORY���
� 
name
� 
titl
� 
desc
� 
appl
� 
iapp� 

� .notifygrnull��� ��� null
� 
nmbr� ��e  �� ܢ�  � *����������� UY hO��&E�O�i  *���a �a �a �a � Y ��j   *�a �a �a �a �a � OPY s�k  4*�a �a �a b  %a %b  %a %�a �a � OPY ;�k 4*�a  �a !�a "b  %a #%b  %a $%�a %�a &� OPY hUOa 'Ec  Y hv �~��}�|���{
�~ .aevtoappnull  �   � ****� k    !��  ���  ���  ���  ��z�z  �}  �|  � �y�x�y 0 errtext errText�x 0 errnum errNum� % � � ��w�v�u�t�s�r�q�p�o��nt�m`�le�kj�jn�iq�h�g����f�����e�d
�w 
ascr
�v 
txdl�u 0 growl_check Growl_Check�t 0 
item_check 
item_Check�s 0 
item_count 
item_Count�r 0 process_items process_Items�q 0 mail_process mail_Process�p 0 growl_growler growl_Growler�o 0 errtext errText� �c�b�a
�c 
errn�b 0 errnum errNum�a  �n��
�m 
name
�l 
titl
�k 
desc
�j 
appl
�i 
iapp�h 

�g .notifygrnull��� ��� null
�f 
ret 
�e 
disp
�d .sysodlogaskr        TEXT�{"�Ec  O�Ec  
O���,FO d)j+ O)j+ Ob  jv ,)b  k+ O)b  b  	l+ O)b  k+ 	OPY 	iEc  O)b  b  b  
m+ 
OPW �X  b  e  x��  /� '*�a a a a a a a a a a  OPUY @� ;*�a a a a a _ %b  %a %_ %�%a a  a a !a  OPUOPY #b  f  a "�%_ %�%a #jl $Y hascr  ��ޭ