CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:24:59 -0400UTC      Release             Version             	Sensor_Id         amsua_metop-a      WMO_Satellite_Id            WMO_Sensor_Id           :   
AC_Release        ����   
AC_Version        ����   title         (Spectral coefficients for amsua_metop-a.   history       �$Id: Create_MW_SpcCoeff.f90 805 2007-07-27 23:37:39Z paul.vandelst@noaa.gov $; MW_SensorData: $Id: MW_SensorData_Define.f90 780 2007-07-25 17:28:06Z paul.vandelst@noaa.gov $      comment       �Boxcar spectral response assumed; CMB value from J.C. Mather, et. al., 1999, "Calibrator Design for the COBE Far-Infrared Absolute Spectrophotometer (FIRAS)," Astrophysical Journal, vol 512, pp 511-520            Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    T   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  <  X   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  <  �   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  <  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            x     
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            x  �   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            x  �   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            x  t   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            x  �   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            x  d   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            x  �   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            x  T                              	   
                  	   	   	   	   
   
   	   
   
   
   
   
   
   
   	                                                           @7�g<O@?f�6�l@I&h�6ŏ@Jfb˧2�@J�NΚ,g@K3G�0Yd@KxQ�LY@K���<�@L�)oe�@L�)oe�@L�)oe�@L�)oe�@L�)oe�@L�)oe�@V?���+?�g���a�?��6̾[?��c��H�?�-�t3�?���D�ו?��G�G?�RU�S�
?��ѝ��?��tSpʍ?��tSpʍ?��tSpʍ?��tSpʍ?��tSpʍ?��tSpʍ@��
o2>��}ˈ��>쳿�/�S?~��D^?��$�y?�(h�F�?��U�{?7c{�׽?�M&K?�"�+A�?�"�+A�?�"�+A�?�"�+A�?�"�+A�?�"�+A�?4k��O ?�F�u\$?��^�@O�I'g@E����t@��-�L^@��P��7@��I+,@N�j���@��K�u�@��K�u�@��K�u�@��K�u�@��K�u�@��K�u�@���N:��TV;   ��F<   �ѓ�x   ��N   ���a�   ��(
   ���th   ��x   ����T   �M   �!\c�   �!
1�`  � �(\�  � �f��  �KǾ�   ?� �]?� ��?� 9K�?� 8XCs?� ��d�?� �k@?� �Q��?� ?j��?� i�?� 7���?� !�t�?� !V���?� !O��?� !/�@�?� ���
j>��DFg�>�ot5�v�?����?=�$?��ԟ�k?9��d�?�!U�.e?�ى�H?	Z�kjd?	Z�kjd?	Z�kjd?	Z�kjd?	Z�kjd?	Z�kjd?�z�3��                                                                                                                        