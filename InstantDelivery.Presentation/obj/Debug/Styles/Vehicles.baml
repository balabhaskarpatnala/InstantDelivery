   M S B A M L   `   `   `  ����R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   VehicleModelTextBox  �� 
TargetType  EditDialogTextBox �� BasedOn �� Property �� Value �� ElementName �� Path  BoolToVisibility �� 	Converter  VehicleModelLabel  EditDialogLabel  VehicleEditSaveButton �� Triggers ^� 
Conditions	 �� Binding
 �� Value  VehicleAddSaveButton�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      5      %�  &	        7  7  &	 �     7  7  &	      7��&	 �	    7���� 5      "  ��6(   8   .�5   
   ��  � y� 6'   �� $ AddNewVehicleModel��$ 	IsChecked�8  6�   5      �� 5      "  ��6&   8   .�5	   
   ��  � y� 6'   �� $ AddNewVehicleModel��$ 	IsChecked�8  6�   5
      �� 5      "  ��6   8   .�5   
   ��  � ��$ 3q�6#   6/   �� 5   
    � ��$ 60��6%   62    5   
   ^� 5       5      �� 5      	 6    �� $  Vehicle_RegistrationNumber��$ (Validation.HasError)�	
 false6w   �� 5      	 6    �� $  Vehicle_VehicleModel_Brand��$ (Validation.HasError)�	
 false6w   �� 5      	 6    �� $  Vehicle_VehicleModel_Model��$ (Validation.HasError)�	
 false6w   �� 5      	 6    �� $" Vehicle_VehicleModel_Payload��$ (Validation.HasError)�	
 false6y   �� 5      	 6    �� $* $Vehicle_VehicleModel_AvailableSpaceX��$ (Validation.HasError)�	
 false6�   �� 5      	 6    �� $* $Vehicle_VehicleModel_AvailableSpaceY��$ (Validation.HasError)�	
 false6�   �� 5      	 6    �� $* $Vehicle_VehicleModel_AvailableSpaceZ��$ (Validation.HasError)�	
 false6�   .0�5      ��  � {� . 6.   5      ^� 5       5      �� 5      	 6    �� $  Vehicle_RegistrationNumber��$ (Validation.HasError)�
 true6w   .0�5       ��  � {� .  6.   5!      ^� 5"       5#      �� 5$      	 6    �� $  Vehicle_VehicleModel_Brand��$ (Validation.HasError)�
 true6w   .0�5&      ��  � {� .  6.   5'      ^� 5(       5)      �� 5*      	 6    �� $  Vehicle_VehicleModel_Model��$ (Validation.HasError)�
 true6w   .0�5,      ��  � {� .  6.   5-      ^� 5.       5/      �� 50      	 6    �� $" Vehicle_VehicleModel_Payload��$ (Validation.HasError)�
 true6y   .0�52      ��  � {� .  6.   53      ^� 54       55      �� 56      	 6    �� $* $Vehicle_VehicleModel_AvailableSpaceX��$ (Validation.HasError)�
 true6�   .0�58      ��  � {� .  6.   59      ^� 5:       5;      �� 5<      	 6    �� $* $Vehicle_VehicleModel_AvailableSpaceY��$ (Validation.HasError)�
 true6�   .0�5>      ��  � {� .  6.   5?      ^� 5@       5A      �� 5B      	 6    �� $* $Vehicle_VehicleModel_AvailableSpaceZ��$ (Validation.HasError)�
 true6�   .0�5D      ��  � {� .  6.   5E      5G      �� 5I      "  ��6   8   .�5J   
   ��  � ��$ 3q�6#   6/   �� 5K   
    � ��$ 60��6%   62   �� 5L   
    � {� . 6&    5M   
   ^� 5N       5O      �� 5P      	 6    �� $  Vehicle_RegistrationNumber��$ (Validation.HasError)�	
 false6w   �� 5Q      	 6    �� $ AddNewVehicleModel��$ 	IsChecked�	
 false6c   .0�5S      ��  � {� . 6.   5T      ^� 5U       5V      �� 5W      	 6    �� $  Vehicle_RegistrationNumber��$ (Validation.HasError)�	
 false6w   �� 5X      	 6    �� $ AddNewVehicleModel��$ 	IsChecked�
 true6c   �� 5Y      	 6    �� $ NewVehicleModel_Brand��$ (Validation.HasError)�	
 false6r   �� 5Z      	 6    �� $ NewVehicleModel_Model��$ (Validation.HasError)�	
 false6r   �� 5[      	 6    �� $ NewVehicleModel_Payload��$ (Validation.HasError)�	
 false6t   �� 5\      	 6    �� $% NewVehicleModel_AvailableSpaceX��$ (Validation.HasError)�	
 false6|   �� 5]      	 6    �� $% NewVehicleModel_AvailableSpaceY��$ (Validation.HasError)�	
 false6|   �� 5^      	 6    �� $% NewVehicleModel_AvailableSpaceZ��$ (Validation.HasError)�	
 false6|   .0�5`      ��  � {� . 6.   5a      ^� 5b       5c      �� 5d      	 6    �� $ AddNewVehicleModel��$ 	IsChecked�	
 false6c   �� 5e      	 6    �� $ VehicleModel��$ SelectedItem�
 6`   Z� .0�5g      ��  � {� .  6.   5h      ^� 5i       5j      �� 5k      	 6    �� $  Vehicle_RegistrationNumber��$ (Validation.HasError)�
 true6w   .0�5m      ��  � {� .  6.   5n      ^� 5o       5p      �� 5q      	 6    �� $ NewVehicleModel_Brand��$ (Validation.HasError)�
 true6r   �� 5r      	 6    �� $ AddNewVehicleModel��$ 	IsChecked�
 true6c   .0�5t      ��  � {� .  6.   5u      ^� 5v       5w      �� 5x      	 6    �� $ NewVehicleModel_Model��$ (Validation.HasError)�
 true6r   �� 5y      	 6    �� $ AddNewVehicleModel��$ 	IsChecked�
 true6c   .0�5{      ��  � {� .  6.   5|      ^� 5}       5~      �� 5      	 6    �� $ NewVehicleModel_Payload��$ (Validation.HasError)�
 true6t   �� 5�      	 6    �� $ AddNewVehicleModel��$ 	IsChecked�
 true6c   .0�5�      ��  � {� .  6.   5�      ^� 5�       5�      �� 5�      	 6    �� $% NewVehicleModel_AvailableSpaceX��$ (Validation.HasError)�
 true6|   �� 5�      	 6    �� $ AddNewVehicleModel��$ 	IsChecked�
 true6c   .0�5�      ��  � {� .  6.   5�      ^� 5�       5�      �� 5�      	 6    �� $% NewVehicleModel_AvailableSpaceY��$ (Validation.HasError)�
 true6|   �� 5�      	 6    �� $ AddNewVehicleModel��$ 	IsChecked�
 true6c   .0�5�      ��  � {� .  6.   5�      ^� 5�       5�      �� 5�      	 6    �� $% NewVehicleModel_AvailableSpaceZ��$ (Validation.HasError)�
 true6|   �� 5�      	 6    �� $ AddNewVehicleModel��$ 	IsChecked�
 true6c   .0�5�      ��  � {� .  6.   5�      5�      5�      