   M S B A M L   `   `   `  ����  EindopdrachtProg5RubenSam.    (EindopdrachtProg5RubenSam.ViewCreateQuiz   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  ViewCreateQuiz��5   	   $��330.612��6    $��549.796��61    � DataContext 5   	   �� *Quizes+   Locator �� Source# [  .��5      � .+�5   
   �� $	��Add��6   $
��Left=�6>   $��
385,10,0,0q�6Y   $	��Top=�6m   $��75��6�   $��25��6�   ��6   �� *
CreateQuiz+6�   �� 5   
   $
��Left=�6   $��25��6Z   $��
172,10,0,0q�6f    �� TextWrapping$
 Wrap=�6z   $	��Top=�6�   $	��208��6�   ��6-   ��  �� Path$ QuizName� �� Mode$ TwoWay=�6�   �� 5	   
   $��Nieuwe quiz:��6   $
��Left=�6'   $��	88,10,0,0q�6B   $	��Top=�6U   $��25��6m   $��79��6y   &   System.Windows.Controls.DataGrid  5
   
      AutoGenerateColumns .  $��10,57,10,77q�6�    �� SelectedItem 6   �� *SelectedQuiz+��69   �� *Quizes+$ TwoWay=�   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Id��6%   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 75 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+6H     5      $
	 Naam��6%   $
 75 6L    63   �� *Name+6L     5      $	 Aant. vragen��6%   $
 75 6V    6;   �� *Vragen+6V   5      �� 5   
   $
��Left=�6F   $��
70,247,0,0q�6a   $	��Top=�6u   ��6   �� $ SelectedQuiz.Id�$ TwoWay=�6u   �� 5   
   $
��Left=�6H   $��129,247,0,0q�6c   $	��Top=�6x   ��6   �� $ SelectedQuiz.Name�$ TwoWay=�6x   �� 5   
   $
��Edit��6   $
��Left=�6A   $��210,248,0,0q�6\   $	��Top=�6q   $��75��6�   $��25��6�   ��6    �� *OpenEditQuiz+6�   �� 5   
   $��Delete��6   $
��Left=�6A   $��305,247,0,0q�6\   $	��Top=�6q   $��75��6�   $��25��6�   ��6"   �� *
DeleteQuiz+6�   5      5      