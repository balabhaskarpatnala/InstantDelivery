   M S B A M L   `   `   `  ����  InstantDelivery+    %InstantDelivery.Views.VehiclesAddView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      
�������.��5      � $��Stretch=�6   $��Stretch=�6)   $��10q�6E     � ColumnDefinitions  5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5	      $
��Auto �6   �� 5
      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��50 �6   �� 5      $
��Auto �6   .+�5   
   �� $��Numer rejestracyjny:��6   $��0��6/   $��0��6?      EditDialogLabel#��[  6M   �� 5   
   -   5         ��Name$# NewVehicle_RegistrationNumber��5   /   $��1��6   $��0��6"     EditDialogTextBox#��[ 6V   �� 5   
   $��Model samochodu:��6   $��0��6+   $��1��6;   #��[  6I   �� 5   
   -   5         ��Name$ VehicleModel��5      $��1��6)   $��30��69   $��1��6E     EditDialogComboBox#��[ 5      ��5   R   �� *VehicleModels+ �� SelectedItem 5   ?   �� *SelectedVehicleModel+��5      �� 5       .R�5!      $� .+�5"      ��  �� TextAlignment$ Center=�6$   $��Center=�6;   ��5#      `� 5$   "    �� StringFormat$ 	 {0} {1} ��6/   .1�5%   &   ��  �� Path$ Brand�6.   �� 5&   &   $ Model�6.   5'   #   5)      5*      5+      5-      �� 5/   
   -   5         ��Name$ AddNewVehicleModel��5/   0   $��1��6   $��3��6    $��Center=�6L   .��6g   Dodaj nowy typ samochodu6�   �� 51   
   $��Marka:��6   $��0��6!   $��2��61     VehicleModelLabel#��[ 6?   �� 52   
   -   5        $ NewVehicleModel_Brand��52   0   $��1��6   $��2��6"     VehicleModelTextBox#��[ 6O   �� 54   
   $��Model:��6   $��0��6!   $��3��61   #��[ 6>   �� 55   
   -   5        $ NewVehicleModel_Model��55   0   $��1��6   $��3��6"   #��[ 6O   �� 57   
   $��Ładowność:��6   $��0��6%   $��4��65   #��[ 6C   �� 58   
   -   5        $ NewVehicleModel_Payload��58   /   $��1��6   $��4��6"   #��[ 6P   �� 5:   
   $��	Wymiar X:��6   $��0��6$   $��5��64   #��[ 6B   �� 5;   
   -   5        $% NewVehicleModel_AvailableSpaceX��5;   /   $��1��6   $��5��6"   #��[ 6X   �� 5=   
   $��	Wymiar Y:��6   $��0��6$   $��6��64   #��[ 6A   �� 5>   
   -   5        $% NewVehicleModel_AvailableSpaceY��5>   0   $��1��6   $��6��6"   #��[ 6Y   �� 5@   
   $��	Wymiar Z:��6   $��0��6$   $��7��64   #��[ 6A   �� 5A   
   -	   5        $% NewVehicleModel_AvailableSpaceZ��5A   /   $��1��6   $��7��6"   #��[ 6X   �� 5C   
   $��9��6   $��4��6"   $��0��66   $��RightToLeft=�6F   	 �� Orientation$	 
Horizontal=�6b   .+�5D      �� -
   5        
 ��Name$
 Cancel��5D        EditDialogButton#��[ 6%   $��Anuluj��6O   6b   �� 5E      -   5        $

 Save��5E        VehicleAddSaveButton#��[ 6#   $��Zapisz��6Q   5F      5G      5H      5J      