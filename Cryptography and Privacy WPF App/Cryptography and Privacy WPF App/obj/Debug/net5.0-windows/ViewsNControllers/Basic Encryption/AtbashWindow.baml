   M S B A M L   `   `   `  ����[  WCryptography and Privacy WPF App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:Cryptography_and_Privacy_WPF_App Cryptography_and_Privacy_WPF_App  5   	   3    -Cryptography_and_Privacy_WPF_App.AtbashWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @local.clr-namespace:Cryptography_and_Privacy_WPF_App     5   	     � Title$  AtbashWindow��5   	   $	��450��6   $	��800��6+   .��5	      � .+�5
   
   �� $��Atbash��6   $
��Left=�6!   $��
107,40,0,0q�6<   $	��Top=�6P   $��36(�6h   $
��Bold"�6v   �� 5   
   $��Input String��6   $
��Left=�6'   $��
40,135,0,0q�6B   $	��Top=�6V   �� 5   
   -   5         ��Name$ inputStringTextBox��5      $
��Left=�6.   $��
40,166,0,0q�6I   $��TextBox��6]    �� TextWrapping$
 Wrap=�6l   $	��Top=�6�   $	��262��6�   $��17��6�   �� 5   
   -   5         ��Name$ KeyLabel��5      $
��Key:��6"   $
��Left=�61   $��
40,239,0,0q�6L   $	��Top=�6`   �� 5   
   -   5        $ 
keyTextBox��5      $
��Left=�6&   $��
40,265,0,0q�6A   $��TextBox��6U   $
 Wrap=�6d   $	��Top=�6x   $	��262��6�   $��17��6�   �� 5   
   -   5         ��Name$ encryptButton��5      $��Encrypt��6(   $
��Left=�6:   $��564,249,0,0q�6U   $	��Top=�6j   $��33��6�   $	��126��6�   6�   �� 5   
   -   5        $ decryptButton��5      $��Decrypt��6(   $
��Left=�6:   $��564,303,0,0q�6U   $	��Top=�6j   $��33��6�   $	��126��6�   6�   �� 5   
   -   5        $ 
copyButton��5      $��Copy to Clipboard��6%   $
��Left=�6A   $��564,359,0,0q�6\   $	��Top=�6q   $��33��6�   $	��126��6�   6�   �� 5   
   -   5         ��Name$ outputTextBlock��5      $
��Left=�6-   $��
56,311,0,0q�6H   $
��Wrap=�6\   $	��Top=�6p   $��81��6�   $	��246��6�   �� 5   
   -   5         ��Name$ blurbScroller��5      $��499,40,51,217q�6/   .��5      �� -	   5        $ blurbTextBlock��5      $����The Vigenere Cipher is named after John Vigenere - a native of butthole county Mississippi - who wrote it because he was tired of writing things normally and getting them intercepted by the popo while trying to run homemade whiskey across county lines��60   $
��Wrap=�63  5      5      5      