   M S B A M L   `   `   `  ����  EindopdrachtProg5RubenSam3    -EindopdrachtProg5RubenSam.Views.ViewEditVraag   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  ViewEditVraag��5   	   $��433.384��6   $	��600��60    � DataContext 5   	   �� *	Answers+   Locator �� Source# [  .��5      � .+�5   
   �� $��Naam:��6   $
��Left=�6    $��
103,90,0,0q�6;   $	��Top=�6O   �� 5	   
   -   5        $��txtNaam��5	      $
��Left=�6"   $��23��6=   $��
152,90,0,0q�6I    �� TextWrapping$
 Wrap=�6]   $	��Top=�6�   $	��120��6�   ��6q   ��  �� Path$ QuestionName� �� Mode$ TwoWay=�6�   �� 5   
   $	��id:��6   $
��Left=�6   $��
306,90,0,0q�69   $	��Top=�6M   �� 5   
   -   5        $��lblId��5      $
��Left=�6N   $��
347,90,0,0q�6i   $	��Top=�6}   ��6   �� $ 
QuestionId�$ TwoWay=�6}   �� 5   
   $��Update��6   $
��Left=�6I   $��
473,98,0,0q�6d   $	��Top=�6x   $��75��6�   ��6"   �� *UpdateQuestionName+6�   �� 5   
   $	��Add��6   $
��Left=�6=   $��
385,10,0,0q�6X   $	��Top=�6l   $��75��6�   $��25��6�   ��6   �� *	AddAnswer+6�   �� 5   
   $
��Left=�6A   $��25��6\   $��
172,10,0,0q�6h   $
 Wrap=�6|   $	��Top=�6�   $	��208��6�   ��6   �� $ 
AnswerName�$ TwoWay=�6�   �� 5   
   $��Nieuw antwoord:��6   $
��Left=�6*   $��60,9,0,0q�6E   $	��Top=�6W   $��25��6o   $	��107��6{   �� 5   
   $
��Edit��6   $
��Left=�6C   $��
385,35,0,0q�6^   $	��Top=�6r   $��75��6�   $��25��6�   ��6    �� *UpdateCategory+6�   �� 5   
   $
��Left=�6   $��25��6-   $��
172,35,0,0q�69   $
 Wrap=�6M   $	��Top=�6�   $	��208��6�   ��6a   �� $ Category�$ TwoWay=�6�   �� 5   
   $��
Categorie:��6   $
��Left=�6%   $��	60,34,0,0q�6@   $	��Top=�6S   $��25��6k   $��92��6w   &   System.Windows.Controls.DataGrid  5   
      AutoGenerateColumns .  $��40,129,30,64q�6x    �� SelectedItem 6   �� *SelectedAnswer+��6X   �� *	Answers+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Id��6%   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 75 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+6H     5       $	 Tekst��6%   $
 75 6M    64   �� *Name+6M     5!      $	 	IsCorrect��6%   $
 75 6V    68   �� *	IsCorrect+6V   5#      �� 5%   
   $��Delete��62   $
��Left=�6C   $��254,357,0,0q�6^   $	��Top=�6s   $��75��6�   ��6   �� *DeleteAnswer+6�   �� 5&   
   $��
True/false��6@   $
��Left=�6U   $��
40,365,0,0q�6p   $	��Top=�6�    d� 	IsChecked 6   �� *	IsCorrect+$ TwoWay=�6�   5(      5)      