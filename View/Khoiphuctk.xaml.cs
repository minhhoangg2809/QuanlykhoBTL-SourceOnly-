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

namespace QLK_Dn
{
    /// <summary>
    /// Interaction logic for Khoiphuctk.xaml
    /// </summary>
    public partial class Khoiphuctk : Window
    {
        public Khoiphuctk()
        {
            InitializeComponent();
        }

        private void btn_back_Click(object sender, RoutedEventArgs e)
        {
            Dangnhap view = new Dangnhap();
            view.Show();

            this.Close();
        }
    }
}
