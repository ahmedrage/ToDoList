   M S B A M L   `   `   `  ���� J  FWpfApplication1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1       WpfApplication1.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:WpfApplication1       � Title$  
To Do list��$	��350��$	��525�� � 
ResizeMode$ NoResize=�.���  � ColumnDefinitions �� $
��212* ��� -    ��Name$ 
To_Do_List��$
��305* �.+��� -    ��Name$ 	taskEnter��$��	50,10,0,0q� �� TextWrapping$
 Wrap=�$��23��$	��Top=�$
��Left=�$	��457��$��2���� -    ��Name$ 	taskClick��$��Add Item��$
��Left=�$	��Top=�$��75��$��
195,81,0,0q�$��2�� � Cursor$
 Hand�� � ToolTip$ Click to add an item���� -   	 ��Name$	 taskBox��$
��Left=�$	��151��$��
10,147,0,0q�$	��Top=�$	��483��$��2���� -   $ 
removeItem��$��Complete��$
��Left=�$��	10,81,0,0q�$	��Top=�$��75��$
 Hand��$/ )Click to mark a selected item as Complete���� -   
 ��Name$
 
errorLabel��$�� ��$
��Left=�$��
10,116,0,0q�$	��Top=�$	��120���� -   $ SortAbc��$��Sort ABC��$
��Left=�$��206.388,81,0,0q�$	��Top=�$��75��$��1��$
 Hand��$/ )Click to sort tasks by alphabetical order���� -   $ 	DateEnter��$
��Left=�$��23��$��	50,33,0,0q�$
 Wrap=�$	��Top=�$	��457��$��2��$  ���� -	   $
 label��$
��Task��$
��Left=�$��7,7,0,0q�$	��Top=��� -
   $
 
label_Copy��$
��Date��$
��Left=�$��7,33,0,0q�$	��Top=�