   M S B A M L   `   `   `  ����   InstantDelivery*    $InstantDelivery.Views.PackageAddView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     ^ ZCaliburn.Micro.Platform, Version=2.0.2.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  
�������.��� $��Stretch=�$��Stretch=�$��10q�  � ColumnDefinitions  �� $
��Auto ��� $��* � � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��Waga:��$��0��$��0��   EditDialogLabel#��[  �� -    ��Name$ NewPackage_Weight��  Caliburn.Micro.Message   Attach$2 ,[Event TextChanged] = [Action RefreshCost()]��$��1��$��0��  EditDialogTextBox#��[ �� $��Wysokość:��$��0��$��1��#��[  �� -   $ NewPackage_Height��$2 ,[Event TextChanged] = [Action RefreshCost()]��$��1��$��1��#��[ �� $��Szerokość:��$��0��$��2��#��[  �� -   $ NewPackage_Width��$2 ,[Event TextChanged] = [Action RefreshCost()]��$��1��$��2��#��[ �� $��Długość:��$��0��$��3��#��[  �� -   $ NewPackage_Length��$2 ,[Event TextChanged] = [Action RefreshCost()]��$��1��$��3��#��[ �� $��Koszt:��$��0��$��5��#��[  �� -   $
 Cost�� �� 
IsReadOnly . $��1��$��5��#��[ �� $��Kraj:��$��0��$��6��#��[  �� -   $( "NewPackage_ShippingAddress_Country��$��1��$��6��#��[ �� $��Miasto:��$��0��$��7��#��[  �� -   $% NewPackage_ShippingAddress_City��$��1��$��7��#��[ �� $��Ulica:��$��0��$��8��#��[  �� -   $' !NewPackage_ShippingAddress_Street��$��1��$��8��#��[ �� $��Numer domu:��$��0��$��9��#��[  �� -	   $( "NewPackage_ShippingAddress__Number��$��1��$��9��#��[ �� $��Kod pocztowy:��$��0��$��10��#��[  �� -
   $+ %NewPackage_ShippingAddress_PostalCode��$��1��$��10��#��[ �� $��Województwo:��$��0��$��11��#��[  �� -   $&  NewPackage_ShippingAddress_State��$��1��$��11��#��[ �� $��12��$��2��$��0��$��RightToLeft=� �� Orientation$ 
Horizontal=�.+��� -    ��Name$ Cancel��  EditDialogButton#��[ $��Anuluj���� -   $
 Save��  AddPackageSaveButton#��[ $��Zapisz��