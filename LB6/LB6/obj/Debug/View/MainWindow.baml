   M S B A M L   `   `   `  ����>  :LB6, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:LB6LB6  5   	   /clr-namespace:LB6.ViewModelsLB6.ViewModels  5   	       LB6.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   #localclr-namespace:LB6     5   	   +vmclr-namespace:LB6.ViewModels     5   	     � Title$2  ,Проверка четности числа��5	   	   $	��200��6)   $	��400��66    � DataContext 5
          LB6.ViewModels.MyViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   .+�5   
   �� $��0��6   $��
90,30,90,0q�6   ��63   �� *InputNumber+ �� UpdateSourceTrigger$ PropertyChanged=��� 5   
   $��1��6   $��
90,10,90,0q�6   $��Результат: ��61   $
��Left=�6G   �� 5   
   $��1��6   $��180,10,90,0q�6   $
��Left=�6T   ��62   �� *ResultMessage+6T   ]� 5   
   $��2��6   $��Center=�6!   $��Center=�6>   $��0,20,0,0q�6Y   .+�5      �� $��Проверить��6   $��5q�6)   $	��100��6Y   $��45��6e   ��64   �� *CheckEvenCommand+6e   �� 5      $��Сбросить��6   $��5q�6(   $	��100��6T   $��45��6`   ��63   �� *ResetCommand+6`   5       5!      5"      