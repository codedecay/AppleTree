FasdUAS 1.101.10   ��   ��    k             l     ��  ��     
 main.scpt     � 	 	    m a i n . s c p t   
  
 l     ��  ��      Cocoa-AppleScript Applet     �   2   C o c o a - A p p l e S c r i p t   A p p l e t      l     ��������  ��  ��        l     ��  ��    : 4 Copyright 2011 {Your Company}. All rights reserved.     �   h   C o p y r i g h t   2 0 1 1   { Y o u r   C o m p a n y } .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��    > 8 This is the main script for a Cocoa-AppleScript Applet.     �   p   T h i s   i s   t h e   m a i n   s c r i p t   f o r   a   C o c o a - A p p l e S c r i p t   A p p l e t .      l     ��   ��    9 3 You can put the usual script applet handlers here.      � ! ! f   Y o u   c a n   p u t   t h e   u s u a l   s c r i p t   a p p l e t   h a n d l e r s   h e r e .   " # " l     ��������  ��  ��   #  $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( N Hset theVoices to {"Alex", "Bruce", "Fred", "Kathy", "Vicki", "Victoria"}    ) � * * � s e t   t h e V o i c e s   t o   { " A l e x " ,   " B r u c e " ,   " F r e d " ,   " K a t h y " ,   " V i c k i " ,   " V i c t o r i a " } '  + , + l     -���� - r      . / . J      0 0  1�� 1 m      2 2 � 3 3  T o m��   / o      ���� 0 	thevoices 	theVoices��  ��   ,  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 Z Tset myWordFile to (choose file with prompt "Select a file to read:" of type {"txt"})    9 � : : � s e t   m y W o r d F i l e   t o   ( c h o o s e   f i l e   w i t h   p r o m p t   " S e l e c t   a   f i l e   t o   r e a d : "   o f   t y p e   { " t x t " } ) 7  ; < ; l     �� = >��   = % set myclip to get the clipboard    > � ? ? > s e t   m y c l i p   t o   g e t   t h e   c l i p b o a r d <  @ A @ l     �� B C��   B   open for access myWordFile    C � D D 4 o p e n   f o r   a c c e s s   m y W o r d F i l e A  E F E l     �� G H��   G + %set wordContents to (read myWordFile)    H � I I J s e t   w o r d C o n t e n t s   t o   ( r e a d   m y W o r d F i l e ) F  J K J l    L���� L r     M N M I   ������
�� .JonsgClp****    ��� null��  ��   N o      ���� 0 wordcontents wordContents��  ��   K  O P O l     �� Q R��   Q  close access myWordFile    R � S S . c l o s e   a c c e s s   m y W o r d F i l e P  T U T l     ��������  ��  ��   U  V W V l    X���� X r     Y Z Y m     [ [ � \ \      Z n      ] ^ ] 1    ��
�� 
txdl ^ 1    ��
�� 
ascr��  ��   W  _ ` _ l    a���� a r     b c b n     d e d 2   ��
�� 
citm e o    ���� 0 wordcontents wordContents c o      ���� 0 thesentences theSentences��  ��   `  f g f l     �� h i��   h 3 -set AppleScript's text item delimiters to ";"    i � j j Z s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " ; " g  k l k l     ��������  ��  ��   l  m n m l    o���� o r     p q p n     r s r 3    ��
�� 
cobj s o    ���� 0 thesentences theSentences q o      ���� 0 thesentence theSentence��  ��   n  t u t l    % v���� v r     % w x w n     # y z y 2  ! #��
�� 
cwor z o     !���� 0 thesentence theSentence x o      ���� 0 thewords theWords��  ��   u  { | { l     �� } ~��   } &  repeat with aWord in theSentence    ~ �   @ r e p e a t   w i t h   a W o r d   i n   t h e S e n t e n c e |  � � � l  & j ����� � X   & j ��� � � k   6 e � �  � � � l  6 6�� � ���   �   display dialog theSentence    � � � � 4 d i s p l a y   d i a l o g   t h e S e n t e n c e �  � � � l  6 6�� � ���   � 7 1set speakingRate to random number from 500 to 501    � � � � b s e t   s p e a k i n g R a t e   t o   r a n d o m   n u m b e r   f r o m   5 0 0   t o   5 0 1 �  � � � r   6 ; � � � m   6 7���� d � o      ���� 0 themodulation theModulation �  � � � r   < C � � � m   < ?���� � � o      ���� 0 thepitch thePitch �  � � � I  D c�� � �
�� .sysottosnull���     TEXT � o   D E���� 0 thesentence theSentence � �� � �
�� 
VOIC � l  H K ����� � n   H K � � � 3   I K��
�� 
cobj � o   H I���� 0 	thevoices 	theVoices��  ��   � �� � �
�� 
RATE � m   N Q����" � �� � �
�� 
PTCH � m   T W���� k � �� ���
�� 
PMOD � m   Z ]���� ��   �  � � � l  d d��������  ��  ��   �  � � � l  d d�� � ���   � q ksay aWord using (some item of theVoices) speaking rate speakingRate modulation theModulation pitch thePitch    � � � � � s a y   a W o r d   u s i n g   ( s o m e   i t e m   o f   t h e V o i c e s )   s p e a k i n g   r a t e   s p e a k i n g R a t e   m o d u l a t i o n   t h e M o d u l a t i o n   p i t c h   t h e P i t c h �  ��� � l  d d�� � ���   � . (say aWord using (some item of theVoices)    � � � � P s a y   a W o r d   u s i n g   ( s o m e   i t e m   o f   t h e V o i c e s )��  �� 0 thesentence theSentence � o   ) *���� 0 thesentences theSentences��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     j � �  + � �  J � �  V � �  _ � �  m � �  t � �  �����  ��  ��   � ���� 0 thesentence theSentence �  2������ [����������������������~�}�|�{�z�y�x�w�v�u�t�s�� 0 	thevoices 	theVoices
�� .JonsgClp****    ��� null�� 0 wordcontents wordContents
�� 
ascr
�� 
txdl
�� 
citm�� 0 thesentences theSentences
�� 
cobj�� 0 thesentence theSentence
�� 
cwor�� 0 thewords theWords
�� 
kocl
�� .corecnte****       ****� d�~ 0 themodulation theModulation�} ��| 0 thepitch thePitch
�{ 
VOIC
�z 
RATE�y"
�x 
PTCH�w k
�v 
PMOD�u �t 
�s .sysottosnull���     TEXT�� k�kvE�O*j E�O���,FO��-E�O��.E�O��-E�O C�[��l kh  �E` Oa E` O�a ��.a a a a a a a  OP[OY��ascr  ��ޭ