   M S B A M L   `   `   `  ����  InstantDelivery+    %InstantDelivery.Views.VehicleEditView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   T PMahApps.Metro, Version=1.1.2.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   $	��500��5   	   $	��450��6     � WindowStartupLocation$  CenterOwner=�6"      DialogWindow#��[  5   	   .��5      � $��Stretch=�6   $��Stretch=�6)   $��10q�6E    � ColumnDefinitions 5   
   �� 5	      $
��Auto �6   �� 5
      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��Numer rejestracyjny:��6   $��0��6/   $��0��6?     EditDialogLabel#��[ 6M   �� 5   
   -   5         ��Name$  Vehicle_RegistrationNumber��5   /   $��1��6   $��0��6"     EditDialogTextBox#��[ 6S   �� 5   
   $��Marka:��6   $��0��6!   $��1��61   #��[ 6?   �� 5   
   -   5        $ Vehicle_Brand��5   /   $��1��6   $��1��6"   #��[ 6F   �� 5   
   $��Model:��6   $��0��6!   $��2��61   #��[ 6?   �� 5   
   -   5        $ Vehicle_Model��5   /   $��1��6   $��2��6"   #��[ 6F   �� 5!   
   $��Ładowność:��6   $��0��6%   $��3��65   #��[ 6C   �� 5"   
   -   5        $ Vehicle_Payload��5"   /   $��1��6   $��3��6"   #��[ 6H   �� 5$   
   $��	Wymiar X:��6   $��0��6$   $��4��64   #��[ 6B   �� 5%   
   -   5        $ Vehicle_AvailableSpaceX��5%   /   $��1��6   $��4��6"   #��[ 6P   �� 5'   
   $��	Wymiar X:��6   $��0��6$   $��5��64   #��[ 6B   �� 5(   
   -   5        $ Vehicle_AvailableSpaceY��5(   /   $��1��6   $��5��6"   #��[ 6P   �� 5*   
   $��	Wymiar X:��6   $��0��6$   $��6��64   #��[ 6B   �� 5+   
   -   5        $ Vehicle_AvailableSpaceZ��5+   /   $��1��6   $��6��6"   #��[ 6P   �� 5-   
   $��7��6   $��2��6"   $��0��66   $��RightToLeft=�6F    �� Orientation$ 
Horizontal=�6b   .+�5.      �� -   5         ��Name$ Cancel��5.        EditDialogButton#��[ 6%   $��Anuluj��6O   �� 5/      -	   5        $
 Save��5/        VehicleEditSaveButton#��[ 6#   $��Zapisz��6R   50      51      52      