   M S B A M L   `   `   `  ����  EindopdrachtProg5RubenSam4    .EindopdrachtProg5RubenSam.Views.ViewSelectQuiz   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  ViewSelectQuiz��5   	   $��324.906��6    $��583.019��61    � DataContext 5   	   �� *Quizes+   Locator �� Source# [  .��5      �  � ColumnDefinitions 5   
   �� 5      $
��169* �6   �� 5	      $
��123* �6   .+�5   
   &   System.Windows.Controls.DataGrid     AutoGenerateColumns .  $��10,10,10,60q�6�   $��2��6�    �� SelectedItem 6   �� *SelectedQuiz+��69   �� *Quizes+ �� Mode$ TwoWay=�   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 75 6H   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 61   �� *Id+6H     5      $
 Naam��6%   $	 75 6L   
 63   �� *Name+6L     5      $ Aant. vragen��6%   $	 75 6V   
 6;   �� *Vragen+6V   5      �� 5   
   $
��Play��6   $
��Left=�6E   $��258,259,0,0q�6`   $	��Top=�6u   $��75��6�   $��25��6�   ��6    �� *PlaySelectedQuiz+6�   5      5      