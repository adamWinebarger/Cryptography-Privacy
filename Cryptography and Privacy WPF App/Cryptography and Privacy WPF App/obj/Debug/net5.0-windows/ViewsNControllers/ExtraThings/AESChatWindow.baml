   M S B A M L   `   `   `  ����[  WCryptography and Privacy WPF App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:Cryptography_and_Privacy_WPF_App Cryptography_and_Privacy_WPF_App  5   	   4    .Cryptography_and_Privacy_WPF_App.AESChatWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @local.clr-namespace:Cryptography_and_Privacy_WPF_App     5   	     � Title$  AESChatWindow��5   	   $	��750��6   $	��900��6,   .��5	      � -   5         �Name$ inputTextBox��5	      .+�5
   
   �� -   5         ��Name$ chatBox��5
      $
��Left=�6#    �� AcceptsReturn$
 True��6>   $��
31,170,0,0q�6S   $�� ��6g    �� TextWrapping$
 Wrap=�6o   $	��Top=�6�   $	��527��6�   $	��224��6�   �� 5   
   $*��$Welcome to my AES Encryption Program��6   $��Center=�6?   $��0,33,0,0q�6\   $	��Top=�6n   $��24(�6�   $
��Bold"�6�   �� 5   
   $
��Left=�6   $��
165,80,0,0q�6/   $����So the idea here was to demonstrate proof-of-concept with AES encryption by encrypting and decrypting textfiles. But I thought it would be fun to also add save and load capabilities so you can send AES-encrypted messages to your friends and family.��6C   $
��Wrap=�6C  $	��Top=�6W  $��70��6o  $	��393��6{  �� 5   
   $��Method of key entry:��6   $
��Left=�6/   $��652,115,0,0q�6J   $	��Top=�6_   	� 5   
   -   5         	�Name$ 	usbButton��5      $	��USB��6)   $
��Left=�67   $��600,170,0,0q�6R   $	��Top=�6g   	� 5   
   -   5        $ manualInputButton��5      $��Input Manually��61   $
��Left=�6J   $��745,170,0,0q�6e   $	��Top=�6z   �� 5   
   -   5        $ keyInputLabel��5      $
��Left=�6)   $��600,190,0,0q�6D   $�� ��6Y   $
 Wrap=�6a   $	��Top=�6u   $	��243��6�   �� 5   
   -   5         ��Name$ encryptButton1��5      $��Encrypt Text��6)   $
��Left=�6@   $��600,245,0,0q�6[   $	��Top=�6p   $��26��6�   $��89��6�   6�   �� 5   
   -   5        $ encryptButton2��5      $��Encrypt To File��6)   $
��Left=�6C   $��754,245,0,0q�6^   $	��Top=�6s   $��26��6�   $	��117��6�   6�   �� 5   
   -   5        $ decryptButton1��5      $��Decrypt Text��6)   $
��Left=�6@   $��600,306,0,0q�6[   $	��Top=�6p   $��26��6�   $��89��6�   6�   �� 5   
   -	   5        $ decryptButton2��5      $��Decrypt From File��6)   $
��Left=�6E   $��754,306,0,0q�6`   $	��Top=�6u   $��26��6�   $	��117��6�   6�   �� 5   
   -
   5         ��Name$ outputTextBlock��5      $
��Left=�6-   $��
31,432,0,0q�6H   $�� ��6\   $
��Wrap=�6d   $	��Top=�6x   $	��260��6�   $	��527��6�   �� 5   
   -   5        $ mvOutputButton��5      $��Move Output to TextBlock��6)   $
��Left=�6L   $��654,367,0,0q�6g   $	��Top=�6|   $��32��6�   $	��158��6�   6�   5      5      