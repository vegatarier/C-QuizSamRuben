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

namespace EindopdrachtProg5RubenSam.Views
{
    /// <summary>
    /// Interaction logic for ViewEditQuiz.xaml
    /// </summary>
    public partial class ViewEditQuiz : Window
    {

        public ViewEditQuiz()
        {
            InitializeComponent();
        }

        public ViewEditQuiz(int Id, string Name)
        {
            InitializeComponent();
            this.lblId.Content = Id;
            this.txtNaam.Text = Name;
            
        }
    }
}
