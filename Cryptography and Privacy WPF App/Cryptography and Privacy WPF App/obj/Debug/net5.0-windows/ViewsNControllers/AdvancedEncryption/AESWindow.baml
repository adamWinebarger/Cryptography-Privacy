   M S B A M L   `   `   `  ����[  WCryptography and Privacy WPF App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:Cryptography_and_Privacy_WPF_App Cryptography_and_Privacy_WPF_App  5   	   0    *Cryptography_and_Privacy_WPF_App.AESWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @local.clr-namespace:Cryptography_and_Privacy_WPF_App     5   	     � Title$  	AESWindow��5   	   $	��450��6   $	��800��6(   .��5	      � .+�5
   
   �� $	��AES��6   $
��Left=�6   $��
134,40,0,0q�69   $	��Top=�6M   $��36(�6e   $
��Bold"�6s   �� 5   
   $��Input String��6   $
��Left=�6'   $��
40,135,0,0q�6B   $	��Top=�6V   �� 5   
   -   5         ��Name$ inputStringTextBox��5      $
��Left=�6.   $��
40,166,0,0q�6I   $��TextBox��6]    �� TextWrapping$
 Wrap=�6l   $	��Top=�6�   $	��262��6�   $��17��6�   �� 5   
   $
��Key:��6   $
��Left=�6   $��
40,239,0,0q�6:   $	��Top=�6N   �� 5   
   -   5        $ 
keyTextBox��5      $
��Left=�6&   $��
40,265,0,0q�6A   $��TextBox��6U   $
 Wrap=�6d   $	��Top=�6x   $	��262��6�   $��17��6�   �� 5   
   -   5         ��Name$ littleBlurbTextBlock��5      $
��Left=�62   $��
439,22,0,0q�6M   $
��Wrap=�6a   $	��Top=�6u   $	��195��6�   $	��335��6�   
�5      ��The advanced encryption Standard - also known as Rijndael is a specification for the encryption for encryption of electronic data by the U.S. National Institute of Standards and Technology. This is one of the first modern, strong encryption methodologies that is covered in this program (assuming you looked at these in the order I wanted you to).�� 5      6   �� 5      6   �� 5      $��Black"�6   $�Disclaimer:��6)   ca This is a fairly advanced, fairly modern cipher with some specific key requirements and I would �� 5      $
��Bold"�6   $�strongly��6(   zx recommend using an online key-generator to creat an encryption/decryption key when you run this portion of the program.5      �� 5   
   -   5         ��Name$ encryptButton��5      $��Encrypt��6(   $
��Left=�6:   $��564,249,0,0q�6U   $	��Top=�6j   $��33��6�   $	��126��6�   6�   �� 5   
   -   5        $ decryptButton��5      $��Decrypt��6(   $
��Left=�6:   $��564,303,0,0q�6U   $	��Top=�6j   $��33��6�   $	��126��6�   6�   �� 5   
   -   5        $ 
copyButton��5      $��Copy to Clipboard��6%   $
��Left=�6A   $��564,359,0,0q�6\   $	��Top=�6q   $��33��6�   $	��126��6�   6�   �� 5   
   -   5        $ outputTextBlock��5      $
��Left=�6-   $��
56,311,0,0q�6H   $
��Wrap=�6\   $	��Top=�6p   $��81��6�   $	��246��6�   5       5!      