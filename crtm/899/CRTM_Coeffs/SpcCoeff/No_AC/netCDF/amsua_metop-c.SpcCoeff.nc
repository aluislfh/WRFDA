CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:24:59 -0400UTC      Release             Version             	Sensor_Id         amsua_metop-c      WMO_Satellite_Id            WMO_Sensor_Id           :   
AC_Release        ����   
AC_Version        ����   title         (Spectral coefficients for amsua_metop-c.   history       �$Id: Create_MW_SpcCoeff.f90 805 2007-07-27 23:37:39Z paul.vandelst@noaa.gov $; MW_SensorData: $Id: MW_SensorData_Define.f90 780 2007-07-25 17:28:06Z paul.vandelst@noaa.gov $      comment       �Boxcar spectral response assumed; CMB value from J.C. Mather, et. al., 1999, "Calibrator Design for the COBE Far-Infrared Absolute Spectrophotometer (FIRAS)," Astrophysical Journal, vol 512, pp 511-520            Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
   	                                                           @7��^|�@?f�VI@I&sh�h�@Jf\�$_@J�Su���@K3+
oŋ@KxgȖ�@K���o!�@L�)���,@L�)���,@L�)���,@L�)���,@L�)���,@L�)���,@V@qu�?�g�g���?��g|�5�?��om�^ ?�-�9��?���;�6�?��m�SZ?�Rlҁ?�����̐?��t���?��t���?��t���?��t���?��t���?��t���@����>��6Y$�|>촹���r?~����_?� h�?�1��_(?���5۶?7����?�O� n�?�#)P�?�#)P�?�#)P�?�#)P�?�#)P�?�#)P�?4l`e�+�?�F����?��k���@O����@E�+�L@����@����@���@N�X���@��f�$@��f�$@��f�$@��f�$@��f�$@��f�$@�]��n��N��   ��P@(   �љ�   ��   ���P$   ��#�S   ���S�   �鲿�   ���Ҕ   ���   �!X�?@  �!�A`  � �S+�  � �a   �K�R��  ?� �h�?� %cQ`?� 9s�?� 9��?� �p_?� �uuZ?� ��Cc?� >0� ?� ".?� 2ѩ?� !�D�?� !Q�p?� !5��<?� !5 Z�?� ���S>����y�>�o�Ŧ�?�)����?=Ͽ
<?�Ӓ�Q�?9�/��?�;N�^?�X�"�?	[F(z�?	[F(z�?	[F(z�?	[F(z�?	[F(z�?	[F(z�?������                                                                                                                        