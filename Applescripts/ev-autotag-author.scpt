FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ("
Veritrope.com
Evernote - Author Tagger
Version 1.0
January 28, 2012

// SCRIPT INFORMATION AND UPDATE PAGE
http://veritrope.com/code/evernote-tag-author

// REQUIREMENTS
More details on the script information page.

//CHANGELOG
1.0   INITIAL RELEASE

// RECOMMENDED INSTALLATION INSTRUCTIONS:
This script looks for the Author Name in the Clipboard, so copy the Author Name to it before
running the script. (You can type it in as well). If it finds notes matching that name,
you can type in the tags you'd like to add or remove from those items!
     � 	 	D 
 V e r i t r o p e . c o m 
 E v e r n o t e   -   A u t h o r   T a g g e r 
 V e r s i o n   1 . 0 
 J a n u a r y   2 8 ,   2 0 1 2 
 
 / /   S C R I P T   I N F O R M A T I O N   A N D   U P D A T E   P A G E 
 h t t p : / / v e r i t r o p e . c o m / c o d e / e v e r n o t e - t a g - a u t h o r 
 
 / /   R E Q U I R E M E N T S 
 M o r e   d e t a i l s   o n   t h e   s c r i p t   i n f o r m a t i o n   p a g e . 
 
 / / C H A N G E L O G 
 1 . 0       I N I T I A L   R E L E A S E 
 
 / /   R E C O M M E N D E D   I N S T A L L A T I O N   I N S T R U C T I O N S : 
 T h i s   s c r i p t   l o o k s   f o r   t h e   A u t h o r   N a m e   i n   t h e   C l i p b o a r d ,   s o   c o p y   t h e   A u t h o r   N a m e   t o   i t   b e f o r e 
 r u n n i n g   t h e   s c r i p t .   ( Y o u   c a n   t y p e   i t   i n   a s   w e l l ) .   I f   i t   f i n d s   n o t e s   m a t c h i n g   t h a t   n a m e , 
 y o u   c a n   t y p e   i n   t h e   t a g s   y o u ' d   l i k e   t o   a d d   o r   r e m o v e   f r o m   t h o s e   i t e m s ! 
   
  
 l     ��������  ��  ��        l      ��  ��    � 
======================================
// OTHER PROPERTIES (USE CAUTION WHEN CHANGING)
======================================
     �   � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   O T H E R   P R O P E R T I E S   ( U S E   C A U T I O N   W H E N   C H A N G I N G ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      j     �� �� 0 dialogtitle DialogTitle  m        �   8 T a g   E v e r n o t e   I t e m s   B y   A u t h o r      l     ��������  ��  ��        l      ��  ��    e _
======================================
// MAIN PROGRAM
======================================
     �   � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��         l     !���� ! r      " # " I    ������
�� .JonsgClp****    ��� null��  ��   # o      ���� 0 
defaulttag 
defaultTag��  ��      $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( , &ENTER AUTHOR NAME (DEFAULT: CLIPBOARD)    ) � * * L E N T E R   A U T H O R   N A M E   ( D E F A U L T :   C L I P B O A R D ) '  + , + l   # -���� - r    # . / . l   ! 0���� 0 I   !�� 1 2
�� .sysodlogaskr        TEXT 1 m    	 3 3 � 4 4 8 E n t e r   t h e   n a m e   o f   t h e   a u t h o r 2 �� 5 6
�� 
appr 5 o   
 ���� 0 dialogtitle DialogTitle 6 �� 7 8
�� 
dtxt 7 o    ���� 0 
defaulttag 
defaultTag 8 �� 9��
�� 
disp 9 I   �� : ;
�� .sysorpthalis        TEXT : m     < < � = =  E v e r n o t e . i c n s ; �� >��
�� 
in B > l    ?���� ? I   �� @��
�� .earsffdralis        afdr @ m     A A�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  ��  ��   / o      ���� 0 author_result author_Result��  ��   ,  B C B l  $ ) D���� D r   $ ) E F E l  $ ' G���� G n   $ ' H I H 1   % '��
�� 
ttxt I o   $ %���� 0 author_result author_Result��  ��   F o      ���� 0 author_name author_Name��  ��   C  J K J l  * ; L���� L r   * ; M N M c   * 7 O P O l  * 3 Q���� Q b   * 3 R S R b   * / T U T m   * - V V � W W  a u t h o r : " U o   - .���� 0 author_name author_Name S m   / 2 X X � Y Y  "��  ��   P m   3 6��
�� 
TEXT N o      ���� 0 author_search author_Search��  ��   K  Z [ Z l  < A \���� \ r   < A ] ^ ] m   < ? _ _ � ` `   ^ o      ���� 0 
defaulttag 
defaultTag��  ��   [  a b a l     ��������  ��  ��   b  c d c l     �� e f��   e , &GET LIST OF ITEMS MATCHING AUTHOR NAME    f � g g L G E T   L I S T   O F   I T E M S   M A T C H I N G   A U T H O R   N A M E d  h i h l  B R j���� j O   B R k l k r   F Q m n m I  F M�� o��
�� .EVRNfindnull���     ctxt o l  F I p���� p o   F I���� 0 author_search author_Search��  ��  ��   n o      ���� 0 notelist noteList l m   B C q q�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��   i  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v % IF ITEMS FOUND, THEN ENTER TAGS    w � x x > I F   I T E M S   F O U N D ,   T H E N   E N T E R   T A G S u  y z y l  S? {���� { Z   S? | }�� ~ | ?  S \  �  l  S Z ����� � I  S Z�� ���
�� .corecnte****       **** � o   S V���� 0 notelist noteList��  ��  ��   � m   Z [����   } k   _ � �  � � � I  _ ��� � �
�� .sysodlogaskr        TEXT � m   _ b � � � � � z E n t e r   T a g s   Y o u ' d   L i k e   T o   A s s i g n   o r   R e m o v e   S e p a r a t e d   B y   C o m m a s � �� � �
�� 
appr � o   c h���� 0 dialogtitle DialogTitle � �� � �
�� 
dtxt � o   i j���� 0 
defaulttag 
defaultTag � �� � �
�� 
btns � J   m x � �  � � � m   m p � � � � �  A s s i g n �  � � � m   p s � � � � �  R e m o v e �  ��� � m   s v � � � � �  C a n c e l��   � �� � �
�� 
dflt � m   { ~ � � � � �  A s s i g n � �� � �
�� 
cbtn � m   � � � � � � �  C a n c e l � �� ���
�� 
disp � I  � ��� � �
�� .sysorpthalis        TEXT � m   � � � � � � �  E v e r n o t e . i c n s � �� ���
�� 
in B � l  � � ����� � I  � ��� ���
�� .earsffdralis        afdr � m   � � � ��                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��   �  � � � r   � � � � � l  � � ����� � 1   � ���
�� 
rslt��  ��   � o      ���� 0 dialogresult   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � o   � ����� 0 dialogresult   � o      ���� 0 	userinput 	userInput �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 dialogresult   � o      ���� 0 	buttonsel 	ButtonSel �  � � � r   � � � � � J   � � � �  ��� � m   � � � � � � �  ,��   � o      ���� 0 	thedelims 	theDelims �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  ASSEMBLE TAGS FROM INPUT    � � � � 0 A S S E M B L E   T A G S   F R O M   I N P U T �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 tag_list Tag_List �  � � � o   � ����� 0 	userinput 	userInput �  ��� � o   � ����� 0 	thedelims 	theDelims��  ��   �  f   � � � o      ���� 0 evtag EVTag �  � � � l  � ���������  ��  ��   �  � � � l  � �� � ��   � ( "FINAL CHECK AND FORMATTING OF TAGS    � � � � D F I N A L   C H E C K   A N D   F O R M A T T I N G   O F   T A G S �  � � � r   � � � � � n  � � � � � I   � ��~ ��}�~ 0 	tag_check 	Tag_Check �  ��| � o   � ��{�{ 0 evtag EVTag�|  �}   �  f   � � � o      �z�z  0 final_tag_list final_Tag_List �  � � � l  � ��y�x�w�y  �x  �w   �  � � � l  � ��v � ��v   �  ADD OR REMOVE THE TAGS    � � � � , A D D   O R   R E M O V E   T H E   T A G S �  � � � Z   � � � ��u � =  � � � � � o   � ��t�t 0 	buttonsel 	ButtonSel � m   � � � � � � �  A s s i g n � O   � � � � � I  � ��s � �
�s .EVRNassnnull���     **** � o   � ��r�r  0 final_tag_list final_Tag_List � �q ��p
�q 
EV13 � o   � ��o�o 0 notelist noteList�p   � m   � � � ��                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��   �  � � � =  � � � � o   � �n�n 0 	buttonsel 	ButtonSel � m      �  R e m o v e � �m O   I �l
�l .EVRNunasnull���     **** o  �k�k  0 final_tag_list final_Tag_List �j�i
�j 
EV14 o  �h�h 0 notelist noteList�i   m  �                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �m  �u   � 	
	 l �g�f�e�g  �f  �e  
 �d l �c�c     ELSE IF ITEMS NOT FOUND...    � 4 E L S E   I F   I T E M S   N O T   F O U N D . . .�d  ��   ~ I "?�b
�b .sysodlogaskr        TEXT m  "% � 4 N o   I t e m s   F o u n d   f o r   A u t h o r ! �a
�a 
appr o  &+�`�` 0 dialogtitle DialogTitle �_�^
�_ 
disp I ,9�]
�] .sysorpthalis        TEXT m  ,/ �  E v e r n o t e . i c n s �\�[
�\ 
in B l 05�Z�Y I 05�X�W
�X .earsffdralis        afdr m  01�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �W  �Z  �Y  �[  �^  ��  ��   z  l      �V !�V    m g
======================================
/// TAGGING SUBROUTINES
======================================
   ! �"" � 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / / /   T A G G I N G   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 #$# l     �U%&�U  %  CREATES TAGS LIST   & �'' " C R E A T E S   T A G S   L I S T$ ()( i    *+* I      �T,�S�T 0 tag_list Tag_List, -.- o      �R�R 0 	userinput 	userInput. /�Q/ o      �P�P 0 	thedelims 	theDelims�Q  �S  + k     W00 121 r     343 n    565 1    �O
�O 
txdl6 1     �N
�N 
ascr4 o      �M�M 0 	olddelims 	oldDelims2 787 r    9:9 J    	;; <�L< o    �K�K 0 	userinput 	userInput�L  : o      �J�J 0 thelist theList8 =>= X    L?�I@? k    GAA BCB r    !DED o    �H�H 0 adelim aDelimE n     FGF 1     �G
�G 
txdlG 1    �F
�F 
ascrC HIH r   " &JKJ J   " $�E�E  K o      �D�D 0 newlist newListI LML X   ' CN�CON r   7 >PQP b   7 <RSR o   7 8�B�B 0 newlist newListS n   8 ;TUT 2  9 ;�A
�A 
citmU o   8 9�@�@ 0 anitem anItemQ o      �?�? 0 newlist newList�C 0 anitem anItemO o   * +�>�> 0 thelist theListM V�=V r   D GWXW o   D E�<�< 0 newlist newListX o      �;�; 0 thelist theList�=  �I 0 adelim aDelim@ o    �:�: 0 	thedelims 	theDelims> YZY L   M Q[[ c   M P\]\ o   M N�9�9 0 thelist theList] m   N O�8
�8 
listZ ^�7^ r   R W_`_ o   R S�6�6 0 	olddelims 	oldDelims` n     aba 1   T V�5
�5 
txdlb 1   S T�4
�4 
ascr�7  ) cdc l     �3�2�1�3  �2  �1  d efe l     �0gh�0  g &  CREATES TAGS IF THEY DON'T EXIST   h �ii @ C R E A T E S   T A G S   I F   T H E Y   D O N ' T   E X I S Tf j�/j i    
klk I      �.m�-�. 0 	tag_check 	Tag_Checkm n�,n o      �+�+ 0 thetags theTags�,  �-  l k     Joo pqp O     Grsr k    Ftt uvu r    wxw J    �*�*  x o      �)�) 0 	finaltags 	finalTagsv y�(y X   	 Fz�'{z Z    A|}�&~| l   #�%�$ H    #�� l   "��#�"� I   "�!�� 
�! .coredoexnull���     ****� 5    ���
� 
EVtg� o    �� 0 thetag theTag
� kfrmname�   �#  �"  �%  �$  } k   & 7�� ��� r   & 2��� I  & 0���
� .corecrel****      � null� m   & '�
� 
EVtg� ���
� 
prdt� K   ( ,�� ���
� 
pnam� o   ) *�� 0 thetag theTag�  �  � o      �� 0 maketag makeTag� ��� r   3 7��� o   3 4�� 0 maketag makeTag� n      ���  ;   5 6� o   4 5�� 0 	finaltags 	finalTags�  �&  ~ r   : A��� 4   : >��
� 
EVtg� o   < =�� 0 thetag theTag� n      ���  ;   ? @� o   > ?�� 0 	finaltags 	finalTags�' 0 thetag theTag{ o    �� 0 thetags theTags�(  s m     ���                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  q ��� L   H J�� o   H I�� 0 	finaltags 	finalTags�  �/       �� ����  � �
�	���
 0 dialogtitle DialogTitle�	 0 tag_list Tag_List� 0 	tag_check 	Tag_Check
� .aevtoappnull  �   � ****� �+������ 0 tag_list Tag_List� ��� �  �� � 0 	userinput 	userInput�  0 	thedelims 	theDelims�  � ���������������� 0 	userinput 	userInput�� 0 	thedelims 	theDelims�� 0 	olddelims 	oldDelims�� 0 thelist theList�� 0 adelim aDelim�� 0 newlist newList�� 0 anitem anItem� ��������������
�� 
ascr
�� 
txdl
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
citm
�� 
list� X��,E�O�kvE�O ?�[��l kh ���,FOjvE�O �[��l kh ���-%E�[OY��O�E�[OY��O��&O���,F� ��l���������� 0 	tag_check 	Tag_Check�� ����� �  ���� 0 thetags theTags��  � ���������� 0 thetags theTags�� 0 	finaltags 	finalTags�� 0 thetag theTag�� 0 maketag makeTag� 
�������������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
EVtg
�� kfrmname
�� .coredoexnull���     ****
�� 
prdt
�� 
pnam
�� .corecrel****      � null�� K� DjvE�O <�[��l kh *��0j  ���ll 	E�O��6FY 	*�/�6F[OY��UO�� �����������
�� .aevtoappnull  �   � ****� k    ?��  ��  +��  B��  J��  Z��  h��  y����  ��  ��  �  � 7���� 3������ <�� A�������������� V X���� _������ ��� � � ��� ��� � ������������� ����������� ����� ������
�� .JonsgClp****    ��� null�� 0 
defaulttag 
defaultTag
�� 
appr
�� 
dtxt
�� 
disp
�� 
in B
�� .earsffdralis        afdr
�� .sysorpthalis        TEXT�� 
�� .sysodlogaskr        TEXT�� 0 author_result author_Result
�� 
ttxt�� 0 author_name author_Name
�� 
TEXT�� 0 author_search author_Search
�� .EVRNfindnull���     ctxt�� 0 notelist noteList
�� .corecnte****       ****
�� 
btns
�� 
dflt
�� 
cbtn�� 
�� 
rslt�� 0 dialogresult  �� 0 	userinput 	userInput
�� 
bhit�� 0 	buttonsel 	ButtonSel�� 0 	thedelims 	theDelims�� 0 tag_list Tag_List�� 0 evtag EVTag�� 0 	tag_check 	Tag_Check��  0 final_tag_list final_Tag_List
�� 
EV13
�� .EVRNassnnull���     ****
�� 
EV14
�� .EVRNunasnull���     ****�� ��@*j  E�O��b   ������j 	l 
� E�O��,E�Oa �%a %a &E` Oa E�O� _ j E` UO_ j j �a �b   ��a a a a mva a a a  �a !��j 	l 
a " O_ #E` $O_ $�,E` %O_ $a &,E` 'Oa (kvE` )O)_ %_ )l+ *E` +O)_ +k+ ,E` -O_ 'a .  � _ -a /_ l 0UY "_ 'a 1  � _ -a 2_ l 3UY hOPY a 4�b   �a 5��j 	l 
a 6  ascr  ��ޭ