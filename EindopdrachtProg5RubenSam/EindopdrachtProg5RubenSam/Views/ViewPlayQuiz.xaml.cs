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
    /// Interaction logic for ViewPlayQuiz.xaml
    /// </summary>
    public partial class ViewPlayQuiz : Window
    {

        public ViewPlayQuiz()
        {
            InitializeComponent();
        }

        public ViewPlayQuiz(int Id, string Name)
        {
            InitializeComponent();
            // TODO: Complete member initialization
            this.lblQuizName.Content = Name;
            this.lblQuizID.Content = Id;
        }
    }
}
