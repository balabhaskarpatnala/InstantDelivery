   M S B A M L   `   `   `  ����  InstantDelivery;    5InstantDelivery.Views.EmployeeUsedVehiclesDetailsView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   T PMahApps.Metro, Version=1.1.2.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   $	��650��5   	   $	��400��6     � WindowStartupLocation$  CenterOwner=�6"      DialogWindow#��[  5      .��5      � $��Stretch=�6   $��Stretch=�6)   $��10q�6E    � ColumnDefinitions 5   
   �� 5	      $��* �6   �� 5
      $��* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��Numer rejestracyjny:��6   $��0��6/   $��0��6?     EditDialogLabel#��[ 6M   �� 5   
   -   5         ��Name$  Vehicle_RegistrationNumber��5   A   $��1��6   $��0��6"   {�.    EditDialogTextBox#��[ 6e   �� 5   
   $��Marka:��6   $��0��6!   $��1��61   #��[ 6?   �� 5   
   -   5        $ Vehicle_Brand��5   A   $��1��6   $��1��6"   {�.  #��[ 6X   �� 5   
   $��Model:��6   $��0��6!   $��2��61   #��[ 6?   �� 5   
   -   5        $ Vehicle_Model��5   A   $��1��6   $��2��6"   {�.  #��[ 6X   �� 5   
   $��Ładowność:��6   $��0��6%   $��3��65   #��[ 6C   �� 5   
   -   5        $ Vehicle_Payload��5   A   $��1��6   $��3��6"   {�.  #��[ 6Z   �� 5   
   $��	Wymiar X:��6   $��0��6$   $��4��64   #��[ 6B   �� 5   
   -   5        $ Vehicle_AvailableSpaceX��5   A   $��1��6   $��4��6"   {�.  #��[ 6b   �� 5    
   $��	Wymiar Y:��6   $��0��6$   $��5��64   #��[ 6B   �� 5!   
   -   5        $ Vehicle_AvailableSpaceY��5!   A   $��1��6   $��5��6"   {�.  #��[ 6b   �� 5"   
   $��	Wymiar Z:��6   $��0��6$   $��6��64   #��[ 6B   �� 5#   
   -   5        $ Vehicle_AvailableSpaceZ��5#   A   $��1��6   $��6��6"   {�.  #��[ 6b   �� 5$   
   -   5         ��Name$ CloseWindow��5$   Y   $��7��6   $��2��6   $��20��62   $��60��6>   $��0��6I     EditDialogButton#��[ 6n   $��Zamknij��6�   5%      5&      