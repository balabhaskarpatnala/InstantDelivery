   M S B A M L   `   `   `  ����  InstantDelivery*    $InstantDelivery.Views.PackageAddView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ^ ZCaliburn.Micro.Platform, Version=2.0.2.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  5      
�������.��5      � $��Stretch=�6   $��Stretch=�6)   $��10q�6E     � ColumnDefinitions  5   
   �� 5      $
��Auto �6   �� 5	      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��Waga:��6   $��0��6    $��0��60      EditDialogLabel#��[  6>   �� 5   
   -   5         ��Name$ NewPackage_Weight��5   q     Caliburn.Micro.Message   Attach$2 ,[Event TextChanged] = [Action RefreshCost()]��6   $��1��6T   $��0��6d     EditDialogTextBox#��[ 6�   �� 5   
   $��Wysokość:��6   $��0��6$   $��1��64   #��[  6B   �� 5   
   -   5        $ NewPackage_Height��5   q   $2 ,[Event TextChanged] = [Action RefreshCost()]��6   $��1��6T   $��1��6d   #��[ 6�   �� 5!   
   $��Szerokość:��6   $��0��6%   $��2��65   #��[  6C   �� 5"   
   -   5        $ NewPackage_Width��5"   q   $2 ,[Event TextChanged] = [Action RefreshCost()]��6   $��1��6T   $��2��6d   #��[ 6�   �� 5$   
   $��Długość:��6   $��0��6#   $��3��63   #��[  6A   �� 5%   
   -   5        $ NewPackage_Length��5%   q   $2 ,[Event TextChanged] = [Action RefreshCost()]��6   $��1��6T   $��3��6d   #��[ 6�   �� 5'   
   $��Koszt:��6   $��0��6!   $��5��61   #��[  6>   �� 5(   
   -   5        $
 Cost��5(   A    �� 
IsReadOnly . $��1��6$   $��5��64   #��[ 6O   �� 5*   
   $��Kraj:��6   $��0��6    $��6��60   #��[  6=   �� 5+   
   -   5        $( "NewPackage_ShippingAddress_Country��5+   /   $��1��6   $��6��6"   #��[ 6[   �� 5-   
   $��Miasto:��6   $��0��6"   $��7��62   #��[  6?   �� 5.   
   -   5        $% NewPackage_ShippingAddress_City��5.   /   $��1��6   $��7��6"   #��[ 6X   �� 50   
   $��Ulica:��6   $��0��6!   $��8��61   #��[  6>   �� 51   
   -   5        $' !NewPackage_ShippingAddress_Street��51   /   $��1��6   $��8��6"   #��[ 6Z   �� 53   
   $��Numer domu:��6   $��0��6&   $��9��66   #��[  6C   �� 54   
   -	   5        $( "NewPackage_ShippingAddress__Number��54   /   $��1��6   $��9��6"   #��[ 6[   �� 56   
   $��Kod pocztowy:��6   $��0��6(   $��10��68   #��[  6F   �� 57   
   -
   5        $+ %NewPackage_ShippingAddress_PostalCode��57   1   $��1��6   $��10��6#   #��[ 6`   �� 59   
   $��Województwo:��6   $��0��6'   $��11��67   #��[  6E   �� 5:   
   -   5        $&  NewPackage_ShippingAddress_State��5:   0   $��1��6   $��11��6"   #��[ 6Z   �� 5<   
   $��12��6   $��2��6#   $��0��67   $��RightToLeft=�6G    �� Orientation$ 
Horizontal=�6c   .+�5=      �� -   5         ��Name$ Cancel��5=        EditDialogButton#��[ 6%   $��Anuluj��6O   �� 5>      -   5        $
 Save��5>        AddPackageSaveButton#��[ 6$   $��Zapisz��6R   5?      5@      5A      