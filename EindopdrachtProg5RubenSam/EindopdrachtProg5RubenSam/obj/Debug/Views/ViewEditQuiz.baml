   M S B A M L   `   `   `  ����  EindopdrachtProg5RubenSam2    ,EindopdrachtProg5RubenSam.Views.ViewEditQuiz   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  ViewEditQuiz��5   	   $��442.641��6   $��547.925��6/    � DataContext 5   	   �� *	Questions+   Locator �� Source# [  .��5      �  � ColumnDefinitions 5   
   �� 5      $
��191* �6   �� 5	      $	��79* �6   .+�5   
   �� $	��Add��6   $
��Left=�6B   $��2.962,10,0,0q�6]   $	��Top=�6s   $��75��6�   $��25��6�   $��1��6�   ��6   �� *CreateQuestion+6�   �� 5   
   $
��Left=�6   $��25��6-   $��
172,10,0,0q�69    �� TextWrapping$
 Wrap=�6M   $	��Top=�6�   $	��208��6�   ��6a   ��  �� Path$ 	VraagName� �� Mode$ TwoWay=�6�   �� 5   
   $��Nieuwe vraag:��6   $
��Left=�6(   $��60,9,0,0q�6C   $	��Top=�6U   $��25��6m   $��92��6y   �� 5   
   $��Naam:��6   $
��Left=�6    $��	60,62,0,0q�6;   $	��Top=�6N   �� 5   
   -   5        $��txtNaam��5      $
��Left=�6"   $��23��6=   $��
109,62,0,0q�6I   $
 Wrap=�6]   $	��Top=�6�   $	��120��6�   ��6q   �� $ QuizName�$ TwoWay=�6�   �� 5   
   $	��id:��6   $
��Left=�6   $��
263,62,0,0q�69   $	��Top=�6M   �� 5   
   -   5        $��lblId��5      $
��Left=�6J   $��
303,59,0,0q�6e   $	��Top=�6y   ��6   �� $ QuizId�$ TwoWay=�6y   �� 5   
   $��Update��6   $
��Left=�6E   $��2.962,62,0,0q�6`   $	��Top=�6v   $��75��6�   $��1��6�   ��6"   �� *UpdateQuizName+6�   &   System.Windows.Controls.DataGrid  5   
      AutoGenerateColumns .  $��8,106,10,118q�6{   $��2��6�    �� SelectedItem 6   �� *SelectedQuestion+��6=   �� *	Questions+	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Id��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 75 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+6H     5      $

 Naam��6%   $ 75 6L    63   �� *Name+6L     5      $
 	Categorie��6%   $ 75 6V    68   �� *	Categorie+6V     5      $
 Aant. antwoorden��6%   $	 120 6^    6?   �� *
Antwoorden+6^   5      �� 5   
   $
��Edit��6   $
��Left=�6E   $��183,331,0,0q�6`   $	��Top=�6u   $��75��6�   $��25��6�   ��6    �� *OpenEditQuestion+6�   �� 5   
   $��Delete��6   $
��Left=�6E   $��278,330,0,0q�6`   $	��Top=�6u   $��75��6�   $��25��6�   ��6"   �� *DeleteQuestion+6�   5      5      