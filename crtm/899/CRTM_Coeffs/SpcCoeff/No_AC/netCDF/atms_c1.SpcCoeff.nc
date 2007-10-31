CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:24:59 -0400UTC      Release             Version             	Sensor_Id         atms_c1    WMO_Satellite_Id        �   WMO_Sensor_Id           m   
AC_Release        ����   
AC_Version        ����   title         "Spectral coefficients for atms_c1.     history       �$Id: Create_MW_SpcCoeff.f90 805 2007-07-27 23:37:39Z paul.vandelst@noaa.gov $; MW_SensorData: $Id: MW_SensorData_Define.f90 780 2007-07-25 17:28:06Z paul.vandelst@noaa.gov $      comment       �Boxcar spectral response assumed; CMB value from J.C. Mather, et. al., 1999, "Calibrator Design for the COBE Far-Infrared Absolute Spectrophotometer (FIRAS)," Astrophysical Journal, vol 512, pp 511-520            Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    H   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  X  L   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  X  �   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  X  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            �  T   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            �     	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  �   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            �  d   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            �     Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            �  �   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  t   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            �  $                              	   
                                       	   	   
   
   
   
   
   
   
   
   
   
   
   
   
   	   
   
   
   
   
   
                                                                                        @7������@?ffffff@I&fffff@I�G�z�@Jffffff@J�I�^5?@K333333@KxQ��@K�     @L�)� K@L�)� K@L�)� K@L�)� K@L�)� K@L�)� K@V�����@d�     @f���R@f���R@f���R@f���R@f���R?�g|^�|�?��V2�c?��a���?��ۑ��l?�-�^f�?���ؠju?��#2״?�RU�k(�?��؊��?��t��N?��t��N?��t��N?��t��N?��t��N?��t��N@�I�L��@�9�i@uP�Ѥ@uP�Ѥ@uP�Ѥ@uP�Ѥ@uP�Ѥ>���!y�>�<��+?~��;9�?��y�3?����?�C�	�?������?7cX�W?�[dT�?�#ՙhR?�#ՙhR?�#ՙhR?�#ՙhR?�#ՙhR?�#ՙhR?3��O_c?`jQ􂬜?fN:�x?fN:�x?fN:�x?fN:�x?fN:�x?�F��mU?���4�]@O����[@�h*H�2@E�w[)@��G�r^@��cp|�@��g(\@Oe�/@���_��@���_��@���_��@���_��@���_��@���_��@i@�]/��@!�O�d��@!�O�d��@!�O�d��@!�O�d��@!�O�d���F0E   ���h   ��%��   ��^�   ���   ���.   ��l�   ��=E�   ��a�   ����   �5�   �!X>J�  �!nh�  � ����  � �(Š  �1��k�  �4�  ��L�@ ����Z  �ll��  �T�0�X  �9��<`  ?� J<�|?� ���A?� �)?� ="�?� �o/?� �`L�?� ��8?� �]^�?� �r�?� �1�?� 5D�?� !�W�?� !S0�.?� !2p�?� !+�mQ?� -���?� �b�?��Tyz?��*�
?�J�,?� g�h?� �۝>>�[&?M>�oBOj�?�᫂�?� DJ�?=��Ka?�ǐgV?9�B'd?�!@�W?��Ε�?	[�=,�?	[�=,�?	[�=,�?	[�=,�?	[�=,�?	[�=,�?U䅌�G?NLy�?uW�UE?uW�UE?uW�UE?uW�UE?uW�UE                                                                                                                                                                                