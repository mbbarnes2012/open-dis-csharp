   M S B A M L   `   `   `  ����G  COpenDis.Demo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:OpenDis.DemoOpenDis.Demo  5   	       OpenDis.Demo.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ,localclr-namespace:OpenDis.Demo     5   	   -   5          �Name$  
mainWindow��5   2    � Title$ 
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5       
  tempdt �� Path  ExtrasTemplate �� ItemTemplate �� ItemsSource  SpecificTemplate  SubcategoryTemplate  cet �� Orientation  	Evemplate  Eemplate 	 enums��%5  &	        &	 H     7   &	 �     7  &	     7  &	 �    7  &	 �    &	 �    7  &	     7  �� 5   
   .R�5      �� ��6   �� $ Description�5	      �� 5
   
   8    6:   �� *Extras+.R�5      �� ��6   �� $ Description�5      �� 5   
   8    6<   �� *
Specifices+.R�5      �� ��6   �� $ Description�5      �� 5   
   8    6?   �� *Subcategories+.R�5      �� ��6   �� $ Description�5      �� 5   
   8    6/   �� *
Categories+.R�5      �� $ 
Horizontal=�6   $��Center=�62   .+�5      �� $��Center=�67   ��6   �� $
 Kind�67   �� 5      $	�� / ��6   �� 5      $��Center=�69   ��6   �� $ Domain�69   �� 5      $	�� / ��6   �� 5      $��Center=�6:   ��6   �� $ Country�6:   5      5      �� 5   
   .R�5      �� $ 
Horizontal=�6   .+�5      �� ��6   �� $ Value��� 5      $	�� - ��6   �� 5       ��6   �� $
 Name�5!      5"      �� 5#   
   8    64   �� *Values+.R�5$      �� ��6   �� $
 Name�5%      �� 5&   
   8    61   �� *Enums+.R�5'      �� $ 
Horizontal=�6   $��Center=�62   .+�5(      �� $��Center=�6<   ��6   �� $ 	Namespace�6<   5)      5*      5+      .��5,      � .+�5-   
   �� .@�5.      �� $��Entity types��6   .��5/      �  � RowDefinitions 50      �� 51      $
��Auto �6(   �� 52      $��* �6(   .+�54      `� .�55      c� $��0��6"   $��Stretch=�60   .@�56      d� -   5         d�Name$ toggleEntityTree��56   <   	 d� 	IsChecked$
	 TrueY�6+   .��6u   Tree6{   d� 57      -   5        $ toggleEntityGrid��57   +   $	 FalseY�6d   .��6v   Grid6|   �� 58      �� 59      $��CET Version:��6$   d� 5:      -   5        $ toggleCet2006��5:   <   $
	 TrueY�6+   .��6o   
2006 R356y   d� 5;      -   5        $ toggleCet2010��5;   +   $	 FalseY�6^   .��6p   
2010 RC36z   5<      5=      R� 5>      -   5        $��treeViewEntityTypes��5>   _   $y�Visible=�6   $��1��64   $��Stretch=�6A   $��Stretch=�6z   #��[ 6�   ��6�   �� 6�   &   System.Windows.Controls.DataGrid  5?      -   5        $��dataGridEntityTypes��5?   @   $y�Hidden=�6   $��1��63   
   AutoGenerateColumns
 .     
IsReadOnly .    CanUserSortColumns .  ��6w   ��  �� Mode$ OneWay=� �� 
GroupStyle 5@      (  "System.Windows.Controls.GroupStyle  5A         HeaderTemplate 5B   "   �� 5C   &   .R�5D   *   �� .+�5E   .   �� ��68   �� $
 Name�5F   +   5G   '      ContainerStyle 5I   "   �� 5J   &    �� 
TargetType" ��6,   .�5K   *   ��  �� Property � �� �� Value 5L   .   �� 5M   2    �� 
TargetType" ��6B   .R�5N   6   9� ��5O   :   �� 5P   >   ��6H   �� $
 Name�.��5R   :   �� 5S   7   5T   3   5V   +   5W   '   5Y         Columns 5[      0  *System.Windows.Controls.DataGridTextColumn  5\      ,  &System.Windows.Controls.DataGridColumn   Header$ Country��61   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6B   �� *	Country+  5]      $ Domain��61    6A   �� *Domain+  5^      $
 Kind��61    6?   �� *Kind+  5_      $ Category��61    6C   �� *
Category+  5`      $ Subcategory��61    6F   �� *Subcategory+  5a      $ Specific��61    6C   �� *
Specific+  5b      $ Extra��61    6@   �� *Extra+  5c      $ Range��61    6@   �� *Id2+  5d      $ Description��61    6F   �� *Description+5f      5g      5h      �� 5i      $��Aggregate types��6   .��5j      �  5k      �� 5l      $
��Auto �6(   �� 5m      $��* �6(   .+�5o      `� .�5p      c� $��0��6"   $��Stretch=�60   .@�5q      �� $��CET Version:��6$   d� 5r      -   5        $ toggleAggregate2006��5r   <   $
	 TrueY�6+   .��6{   
2006 R356�   d� 5s      -	   5        $ toggleAggregate2010��5s   +   $	 FalseY�6j   .��6|   
2010 RC36�   5t      5u      R� 5v      -
   5        $��treeViewAggregateTypes��5v   J   $��1��6   $��Stretch=�6,   $��Stretch=�6h   #��[ 6�   ��6�   �� 6�   5w      5x      �� 5y      $��Enumerations��6   .��5z      �  5{      �� 5|      $��* �6(   .+�5~      R� -   5        $��treeViewEnumerations��5~   J   $��0��6   $��Stretch=�6,   $��Stretch=�6f   #��[ 6�   ��6�   �� 6�   5      5�      5�      5�      5�      