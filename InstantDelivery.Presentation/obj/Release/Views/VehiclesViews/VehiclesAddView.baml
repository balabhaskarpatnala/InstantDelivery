   M S B A M L   `   `   `  ����   InstantDelivery+    %InstantDelivery.Views.VehiclesAddView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     
�������.��� $��Stretch=�$��Stretch=�$��10q�  � ColumnDefinitions  �� $
��Auto ��� $��* ��� $
��Auto ��� $��* � � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��50 ��� $
��Auto �.+��� $��Numer rejestracyjny:��$��0��$��0��   EditDialogLabel#��[  �� -    ��Name$# NewVehicle_RegistrationNumber��$��1��$��0��  EditDialogTextBox#��[ �� $��Model samochodu:��$��0��$��1��#��[  �� -    ��Name$ VehicleModel��$��1��$��30��$��1��  EditDialogComboBox#��[ ���� *VehicleModels+ �� SelectedItem �� *SelectedVehicleModel+���� .R�$� .+���  �� TextAlignment$ Center=�$��Center=���`�  �� StringFormat$ 	 {0} {1} ��.1���  �� Path$ Brand��� $ Model��� -    ��Name$ AddNewVehicleModel��$��1��$��3��$��Center=�.��Dodaj nowy typ samochodu�� $��Marka:��$��0��$��2��  VehicleModelLabel#��[ �� -   $ NewVehicleModel_Brand��$��1��$��2��  VehicleModelTextBox#��[ �� $��Model:��$��0��$��3��#��[ �� -   $ NewVehicleModel_Model��$��1��$��3��#��[ �� $��Ładowność:��$��0��$��4��#��[ �� -   $ NewVehicleModel_Payload��$��1��$��4��#��[ �� $��	Wymiar X:��$��0��$��5��#��[ �� -   $% NewVehicleModel_AvailableSpaceX��$��1��$��5��#��[ �� $��	Wymiar Y:��$��0��$��6��#��[ �� -   $% NewVehicleModel_AvailableSpaceY��$��1��$��6��#��[ �� $��	Wymiar Z:��$��0��$��7��#��[ �� -	   $% NewVehicleModel_AvailableSpaceZ��$��1��$��7��#��[ �� $��9��$��4��$��0��$��RightToLeft=�	 �� Orientation$	 
Horizontal=�.+��� -
   
 ��Name$
 Cancel��  EditDialogButton#��[ $��Anuluj���� -   $

 Save��  VehicleAddSaveButton#��[ $��Zapisz��