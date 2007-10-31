CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:24:59 -0400UTC      Release             Version             	Sensor_Id         amsua_metop-b      WMO_Satellite_Id            WMO_Sensor_Id           :   
AC_Release        ����   
AC_Version        ����   title         (Spectral coefficients for amsua_metop-b.   history       �$Id: Create_MW_SpcCoeff.f90 805 2007-07-27 23:37:39Z paul.vandelst@noaa.gov $; MW_SensorData: $Id: MW_SensorData_Define.f90 780 2007-07-25 17:28:06Z paul.vandelst@noaa.gov $      comment       �Boxcar spectral response assumed; CMB value from J.C. Mather, et. al., 1999, "Calibrator Design for the COBE Far-Infrared Absolute Spectrophotometer (FIRAS)," Astrophysical Journal, vol 512, pp 511-520            Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
   	                                                           @7���*�@?f��=:@I&]��D@Jfy=�c@J�bS�W@K3)���,@KxOm�\�@K��ߤ@@L�(��MD@L�(��MD@L�(��MD@L�(��MD@L�(��MD@L�(��MD@V 1&�x�?�g���O?��Pہ)?��X4+R�?�.z�.�?���Ò��?������?�RR��Lf?���G�c�?��s��H?��s��H?��s��H?��s��H?��s��H?��s��H@{ԛ9>��M@'>�Ec�l�?~p)Ri�?�-�D?�N�x=;?���O�?7^���?�z��+S?�!�*�?�!�*�?�!�*�?�!�*�?�!�*�?�!�*�?3�~�C�?�F����?��ܦݮ@O�-�N�@E����@��쨄�@��l�@��ڽx@O��-@���b3@���b3@���b3@���b3@���b3@���b3@��!d���N`\   ��q�    �х%�   ���V   ���u�   ��+<�   ���=~   �鿹v   ����   �"[   �![&��  �!Rm   � ���   � �S�`  �L�<0  ?� ��F�?� ) %?� 8��?� <Ǜ�?� �kt?� �Z��?� �IL�?� ?�}�?� =G>?� :W
?� !�	fs?� !QrN?� !4�z�?� !+��U?� ��l�>��ys,>�o��R}�?�"=�?=+Į�?����!?9����?�-�QX?���S?	Zb���?	Zb���?	Zb���?	Zb���?	Zb���?	Zb���?IO��~                                                                                                                        