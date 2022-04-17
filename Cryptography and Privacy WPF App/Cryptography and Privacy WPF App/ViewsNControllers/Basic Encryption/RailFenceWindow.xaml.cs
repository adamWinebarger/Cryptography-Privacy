﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Cryptography_and_Privacy_WPF_App
{
    /// <summary>
    /// Interaction logic for RailFenceWindow.xaml
    /// </summary>
    public partial class RailFenceWindow : Window
    {

        private RailFenceCipher railFenceCipher = new RailFenceCipher();
        private string plainText, cipherText;
        private int key;
        public RailFenceWindow()
        {
            InitializeComponent();
            blurbTextBlock.Text = K.readFromFile(K.littleBlurbsDir + "railfence.txt");
        }

        private void encryptButton_Click(object sender, RoutedEventArgs e)
        {
            if (!isOnlyNumers(keyTextBox.Text))
                return;

            if (!moreThan1(keyTextBox.Text))
            {
                outputTextBlock.Text = inputStringTextBox.Text;
                return;
            }

            key = int.Parse(keyTextBox.Text);
            plainText = inputStringTextBox.Text;

            outputTextBlock.Text = railFenceCipher.encrypt(plainText, key);

        }

        private void decryptButton_Click(object sender, RoutedEventArgs e)
        {
            if (!isOnlyNumers(keyTextBox.Text))
                return;

            key = int.Parse(keyTextBox.Text);
            cipherText = inputStringTextBox.Text;

            outputTextBlock.Text = railFenceCipher.decrypt(inputStringTextBox.Text, key);

        }

        private void copyButton_Click(object sender, RoutedEventArgs e)
        {
            if (!outputTextBlock.Text.Equals(""))
                Clipboard.SetText(outputTextBlock.Text);
        }

        bool isOnlyNumers(string str)
        {
            if (K.onlyNumbersRegex.IsMatch(str))
                return true;

            MessageBox.Show(K.railFenceKeyError);
            return false;
        }

        bool moreThan1(string str)
        {
            return int.Parse(str) > 1;
        }

    }
}
