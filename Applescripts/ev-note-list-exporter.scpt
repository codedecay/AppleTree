FasdUAS 1.101.10   ��   ��    k             l      ��  ��   71
http://veritrope.com
Evernote Note List Exporter
Version 1.01
August 22, 2011

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/evernote-note-list-export
   
           
Installation: Just double-click on the script!

FastScripts Installation (Optional, but recommended):
--Download and Install FastScripts from http://www.red-sweater.com/fastscripts/index.html
--Copy script or an Alias to ~/Library/Scripts/Applications/Evernote
--Set up your keyboard shortcut

CHANGELOG:
1.01     BUGFIX FOR LION
1.00    INITIAL RELEASE
     � 	 	b 
 h t t p : / / v e r i t r o p e . c o m 
 E v e r n o t e   N o t e   L i s t   E x p o r t e r 
 V e r s i o n   1 . 0 1 
 A u g u s t   2 2 ,   2 0 1 1 
 
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t : 
 h t t p : / / v e r i t r o p e . c o m / c o d e / e v e r n o t e - n o t e - l i s t - e x p o r t 
       
                       
 I n s t a l l a t i o n :   J u s t   d o u b l e - c l i c k   o n   t h e   s c r i p t ! 
 
 F a s t S c r i p t s   I n s t a l l a t i o n   ( O p t i o n a l ,   b u t   r e c o m m e n d e d ) : 
 - - D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   f r o m   h t t p : / / w w w . r e d - s w e a t e r . c o m / f a s t s c r i p t s / i n d e x . h t m l 
 - - C o p y   s c r i p t   o r   a n   A l i a s   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / E v e r n o t e 
 - - S e t   u p   y o u r   k e y b o a r d   s h o r t c u t 
 
 C H A N G E L O G : 
 1 . 0 1           B U G F I X   F O R   L I O N 
 1 . 0 0         I N I T I A L   R E L E A S E 
   
  
 l     ��������  ��  ��        l      ��  ��     MAIN PROGRAM      �    M A I N   P R O G R A M        l     ��  ��    , &EVERNOTE NOTEBOOK SELECTION SUBROUTINE     �   L E V E R N O T E   N O T E B O O K   S E L E C T I O N   S U B R O U T I N E      l   � ����  O    �    k   �       I   	������
�� .miscactvnull��� ��� null��  ��        l   
    ! "   r   
  # $ # J   
 ����   $ o      ���� "0 listofnotebooks listOfNotebooks ! 2 ,PREPARE TO GET EVERNOTE'S LIST OF NOTEBOOKS     " � % % X P R E P A R E   T O   G E T   E V E R N O T E ' S   L I S T   O F   N O T E B O O K S     & ' & l    �� ( )��   (  GET THE NOTEBOOK LIST     ) � * * , G E T   T H E   N O T E B O O K   L I S T   '  + , + r     - . - 2    ��
�� 
EVnb . o      ���� 0 evnotebooks EVNotebooks ,  / 0 / X    4 1�� 2 1 k   % / 3 3  4 5 4 r   % * 6 7 6 l  % ( 8���� 8 l  % ( 9���� 9 n   % ( : ; : 1   & (��
�� 
pnam ; o   % &���� "0 currentnotebook currentNotebook��  ��  ��  ��   7 o      ���� *0 currentnotebookname currentNotebookName 5  <�� < s   + / = > = o   + ,���� *0 currentnotebookname currentNotebookName > l      ?���� ? n       @ A @  ;   - . A o   , -���� "0 listofnotebooks listOfNotebooks��  ��  ��  �� "0 currentnotebook currentNotebook 2 o    ���� 0 evnotebooks EVNotebooks 0  B C B l  5 5��������  ��  ��   C  D E D l   5 5�� F G��   F  SORT THE LIST     G � H H  S O R T   T H E   L I S T   E  I J I r   5 = K L K n  5 ; M N M I   6 ;�� O���� 0 simple_sort   O  P�� P o   6 7���� "0 listofnotebooks listOfNotebooks��  ��   N  f   5 6 L o      ����  0 folders_sorted Folders_sorted J  Q R Q l  > >��������  ��  ��   R  S T S l   > >�� U V��   U ( "USER SELECTION FROM NOTEBOOK LIST     V � W W D U S E R   S E L E C T I O N   F R O M   N O T E B O O K   L I S T   T  X Y X r   > S Z [ Z I  > O�� \ ]
�� .gtqpchltns    @   @ ns   \ o   > ?����  0 folders_sorted Folders_sorted ] �� ^ _
�� 
appr ^ m   @ A ` ` � a a 0 S e l e c t   E v e r n o t e   N o t e b o o k _ �� b c
�� 
prmp b l 	 B C d���� d m   B C e e � f f 4 C u r r e n t   E v e r n o t e   N o t e b o o k s��  ��   c �� g��
�� 
okbt g m   F I h h � i i  O K��   [ o      ���� 0 selnotebook SelNotebook Y  j k j r   T ^ l m l n   T Z n o n 4   W Z�� p
�� 
cobj p m   X Y����  o o   T W���� 0 selnotebook SelNotebook m o      ���� 0 
evnotebook 
EVnotebook k  q r q l   _ e s t u s r   _ e v w v J   _ a����   w o      ���� 0 listofnotes listofNotes t . (PREPARE TO GET EVERNOTE'S LIST OF NOTES     u � x x P P R E P A R E   T O   G E T   E V E R N O T E ' S   L I S T   O F   N O T E S   r  y z y r   f t { | { n  f p } ~ } 2   l p��
�� 
EVnn ~ 4   f l�� 
�� 
EVnb  o   h k���� 0 
evnotebook 
EVnotebook | o      ���� 0 allnotes allNotes z  � � � X   u � ��� � � k   � � � �  � � � r   � � � � � l  � � ����� � l  � � ����� � n   � � � � � 1   � ���
�� 
EVet � o   � ����� 0 currentnote currentNote��  ��  ��  ��   � o      ���� "0 currentnotename currentNoteName �  ��� � s   � � � � � o   � ����� "0 currentnotename currentNoteName � l      ����� � n       � � �  ;   � � � o   � ����� 0 listofnotes listofNotes��  ��  ��  �� 0 currentnote currentNote � o   x {���� 0 allnotes allNotes �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   �  SORT THE LIST     � � � �  S O R T   T H E   L I S T   �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 simple_sort   �  ��� � o   � ����� 0 listofnotes listofNotes��  ��   �  f   � � � o      ���� 0 notes_sorted Notes_sorted �  � � � r   � � � � � l 	 � � ����� � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� 0 notes_sorted Notes_sorted � �� � �
�� 
appr � l 	 � � ����� � m   � � � � � � �  L i s t   o f   N o t e s��  ��   � �� � �
�� 
okbt � m   � � � � � � �  E x p o r t   L i s t � �� � �
�� 
cnbt � m   � � � � � � �  C l o s e   W i n d o w � �� ���
�� 
empL � m   � ���
�� boovtrue��  ��  ��   � o      ���� 0 selnote SelNote �  � � � l  � ���������  ��  ��   �  � � � Z   �� � ��� � � l  � � ����� � >  � � � � � o   � ����� 0 selnote SelNote � m   � ���
�� boovfals��  ��   � l  �� � � � � k   �� � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   convert list to text    � � � � *   c o n v e r t   l i s t   t o   t e x t �  � � � r   � � � � � n  � � � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � o      ���� 0 	old_delim   �  � � � r   � � � � � o   � ���
�� 
ret  � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  � � � r   � � � � � c   � � � � � o   � ����� 0 notes_sorted Notes_sorted � m   � ���
�� 
ctxt � o      ���� 0 notes_sorted Notes_sorted �  � � � r   � � � � o   � ����� 0 	old_delim   � n      � � � 1   ��
�� 
txdl � 1   � ��
�� 
ascr �  � � � r  / � � � c  + � � � b  ' � � � b  # � � � b   � � � b   � � � b   � � � b   � � � b   � � � m  	 � � � � � 4 C u r r e n t   L i s t   o f   N o t e s   f o r   � o  	���� 0 
evnotebook 
EVnotebook � m   � � � � �  : � o  ��
�� 
ret  � l  ����� � I ����~
�� .misccurdldt    ��� null�  �~  ��  ��   � o  �}
�} 
ret  � o  "�|
�| 
ret  � o  #&�{�{ 0 notes_sorted Notes_sorted � m  '*�z
�z 
utxt � o      �y�y 0 
exportlist 
ExportList �  � � � r  0Y �  � I 0U�x�w
�x .sysonwflfile    ��� null�w   �v
�v 
prmt m  47 �  N a m e   t h i s   f i l e �u
�u 
dfnm b  :E	 b  :A

 m  := � : N o t e   L i s t   f o r   N o t e b o o k   N a m e d   o  =@�t�t 0 
evnotebook 
EVnotebook	 l 	AD�s�r m  AD �  . t x t�s  �r   �q�p
�q 
dflc l HO�o�n I HO�m�l
�m .earsffdralis        afdr m  HK�k
�k afdmdesk�l  �o  �n  �p    o      �j�j 0 fn   � �i O  Z� k  `�  r  `o I `k�h
�h .rdwropenshor       file o  `c�g�g 0 fn   �f�e
�f 
perm m  fg�d
�d boovtrue�e   o      �c�c 0 fid     I p}�b!"
�b .rdwrwritnull���     ****! o  ps�a�a 0 
exportlist 
ExportList" �`#�_
�` 
refn# o  vy�^�^ 0 fid  �_    $�]$ I ~��\%�[
�\ .rdwrclosnull���     ****% o  ~��Z�Z 0 fid  �[  �]   m  Z]&&�                                                                                  sevs  alis    �  Macintosh HD               �0ڲH+   R�System Events.app                                               UK��Ɖ        ����  	                CoreServices    �1�      ���     R� R� R�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �i   �  EXPORT LIST OPTION     � �'' & E X P O R T   L I S T   O P T I O N  ��   � r  ��()( n  ��*+* 4  ���Y,
�Y 
cobj, m  ���X�X + o  ���W�W 0 selnotebook SelNotebook) o      �V�V 0 
evnotebook 
EVnotebook � -.- l ���U�T�S�U  �T  �S  . /�R/ l ���Q�P�O�Q  �P  �O  �R    m     00�                                                                                  EVRN  alis    V  Macintosh HD               �0ڲH+   R�Evernote.app                                                   �Q4�(y�        ����  	                Applications    �1�      �(�O     R�  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��    121 l     �N�M�L�N  �M  �L  2 343 l     �K�J�I�K  �J  �I  4 565 l      �H78�H  7   SUBROUTINES    8 �99    S U B R O U T I N E S  6 :;: l     �G�F�E�G  �F  �E  ; <=< l     �D�C�B�D  �C  �B  = >?> l     �A@A�A  @  SORT SUBROUTINE   A �BB  S O R T   S U B R O U T I N E? C�@C i     DED I      �?F�>�? 0 simple_sort  F G�=G o      �<�< 0 my_list  �=  �>  E k     uHH IJI r     KLK J     �;�;  L l     M�:�9M o      �8�8 0 
index_list  �:  �9  J NON r    	PQP J    �7�7  Q l     R�6�5R o      �4�4 0 sorted_list  �6  �5  O STS U   
 rUVU k    mWW XYX r    Z[Z m    \\ �]]  [ l     ^�3�2^ o      �1�1 0 low_item  �3  �2  Y _`_ Y    ca�0bc�/a Z   ) ^de�.�-d H   ) -ff E  ) ,ghg l  ) *i�,�+i o   ) *�*�* 0 
index_list  �,  �+  h o   * +�)�) 0 i  e k   0 Zjj klk r   0 8mnm c   0 6opo n   0 4qrq 4   1 4�(s
�( 
cobjs o   2 3�'�' 0 i  r o   0 1�&�& 0 my_list  p m   4 5�%
�% 
ctxtn o      �$�$ 0 	this_item  l t�#t Z   9 Zuvw�"u =  9 <xyx l  9 :z�!� z o   9 :�� 0 low_item  �!  �   y m   : ;{{ �||  v k   ? F}} ~~ r   ? B��� o   ? @�� 0 	this_item  � l     ���� o      �� 0 low_item  �  �   ��� r   C F��� o   C D�� 0 i  � l     ���� o      �� 0 low_item_index  �  �  �  w ��� A I L��� o   I J�� 0 	this_item  � l  J K���� o   J K�� 0 low_item  �  �  � ��� k   O V�� ��� r   O R��� o   O P�� 0 	this_item  � l     ���� o      �� 0 low_item  �  �  � ��� r   S V��� o   S T�� 0 i  � l     ��
�	� o      �� 0 low_item_index  �
  �	  �  �  �"  �#  �.  �-  �0 0 i  b m    �� c l   $���� n    $��� m   ! #�
� 
nmbr� n   !��� 2   !�
� 
cobj� o    �� 0 my_list  �  �  �/  ` ��� r   d h��� l  d e��� � o   d e���� 0 low_item  �  �   � l     ������ n      ���  ;   f g� o   e f���� 0 sorted_list  ��  ��  � ���� r   i m��� l  i j������ o   i j���� 0 low_item_index  ��  ��  � l     ������ n      ���  ;   k l� l  j k������ o   j k���� 0 
index_list  ��  ��  ��  ��  ��  V l   ������ l   ������ n    ��� m    ��
�� 
nmbr� n   ��� 2   ��
�� 
cobj� o    ���� 0 my_list  ��  ��  ��  ��  T ���� L   s u�� l  s t������ o   s t���� 0 sorted_list  ��  ��  ��  �@       �������  � ������ 0 simple_sort  
�� .aevtoappnull  �   � ****� ��E���������� 0 simple_sort  �� ����� �  ���� 0 my_list  ��  � ���������������� 0 my_list  �� 0 
index_list  �� 0 sorted_list  �� 0 low_item  �� 0 i  �� 0 	this_item  �� 0 low_item_index  � ����\��{
�� 
cobj
�� 
nmbr
�� 
ctxt�� vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�� �����������
�� .aevtoappnull  �   � ****� k    ���  ����  ��  ��  � ������ "0 currentnotebook currentNotebook�� 0 currentnote currentNote� >0������������������������ `�� e�� h�������������������� � ��� ����������������� � ���������������������&������������
�� .miscactvnull��� ��� null�� "0 listofnotebooks listOfNotebooks
�� 
EVnb�� 0 evnotebooks EVNotebooks
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� *0 currentnotebookname currentNotebookName�� 0 simple_sort  ��  0 folders_sorted Folders_sorted
�� 
appr
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  �� 0 selnotebook SelNotebook�� 0 
evnotebook 
EVnotebook�� 0 listofnotes listofNotes
�� 
EVnn�� 0 allnotes allNotes
�� 
EVet�� "0 currentnotename currentNoteName�� 0 notes_sorted Notes_sorted
�� 
cnbt
�� 
empL�� �� 0 selnote SelNote
�� 
ascr
�� 
txdl�� 0 	old_delim  
�� 
ret 
�� 
ctxt
�� .misccurdldt    ��� null
�� 
utxt�� 0 
exportlist 
ExportList
�� 
prmt
�� 
dfnm
�� 
dflc
�� afdmdesk
�� .earsffdralis        afdr
�� .sysonwflfile    ��� null�� 0 fn  
�� 
perm
�� .rdwropenshor       file�� 0 fid  
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�����*j OjvE�O*�-E�O �[��l kh  ��,E�O��6G[OY��O)�k+ 
E�O�����a a a  E` O_ �k/E` OjvE` O*�_ /a -E` O (_ [��l kh �a ,E` O_ _ 6G[OY��O)_ k+ 
E` O_ �a a a a a a  ea ! E` "O_ "f �_ #a $,E` %O_ &_ #a $,FO_ a '&E` O_ %_ #a $,FOa (_ %a )%_ &%*j *%_ &%_ &%_ %a +&E` ,O*a -a .a /a 0_ %a 1%a 2a 3j 4a  5E` 6Oa 7 '_ 6a 8el 9E` :O_ ,a ;_ :l <O_ :j =UY _ �k/E` OPUascr  ��ޭ