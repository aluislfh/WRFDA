CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:31 -0400UTC      Release             Version             	Sensor_Id         	hirs2_n11      WMO_Satellite_Id         �   WMO_Sensor_Id           ]   
AC_Release        ����   
AC_Version        ����   title         lSpectral coefficients for hirs2_n11 derived from SRF data file hirs2_n11.srf.nc and solar data file solar.nc   history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: hirs2_n11.srf,v 1.1 2003/08/28 21:50:21 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $   comment       FInterpolated SRFs for transmittance production; Data obtained from HMW           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    �   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  L      Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  L  L   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  L  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            �  �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            �  |   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �     	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            �  �   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            �  D   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            �  �   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  t   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            �                                	   
                                                                                                                                                         @Ӗ�K�{�@��D�.�@�2,��Z@Ԙ
��@��Qqu_@�o�!"�Y@��W��M=@�]-��D@�0�e��@�M"�&�@��Ԧz$G@�<��@��c��@�,uoDF@�c���G9@��3x@��K?�@�b��h�@�?���@��e4�D@�7���n<@����gw�@��f���=@�g��o<�@�ᝉS��@�k����@�$���@����8@��7"��@�E�X&Gf@� ��2j@�/8�@�C����g@�~�yɚ�@�� 	�s@��.c�$%@������@����� z@����B�@��R�p�@����l�@�1�)�Y]@�%�߀�@�Ci��I�@����hW0@���t�Bx@ɂ���l�@�t�,Ae|@�Y��zK{@�ڗj��M@������@�`?s��A S��c�A �*՜��A���8�aA 
�Aۺ�K�@��9=�@���Rݮ@� 8P�R@����Fګ@�����@�u�`k�@��o&{�@�>��┺@�.�*�t�@��~�<U@��*�0�B@���m��C@��ٲp4@�ּvb$@�+�dN��@�~H���@�)܊�ӂ@�<�#ʚn@���gXb;?��z	�  ?�oCv
� ?��r�� ?����H� ?���{'  ?�V�h�� ?�'  ?���R�` ?��~��  ?��:  ?�2Lu�� ?�o�%�l ?��l�  ?�o��'� ?�W:��� ?����� ?�@s7�  ?���q`� ?�p~�4( ?���[x�2?���f��?��;3���?��@�U?��4az?��!7�)V?��0�>?���_7?��R��##?��.V��b?��'�?��?���.A�?�����So?���	K�u?���P0Z�?���`�g�?���/�?��e,�[�?��+��R�                                                                                                                                                        ?����Z�?�N�Ŧ�m?���5�?�h��
?�`"j��?�<���4�?�;@J��?�֌xHE@�|�[?�Pɯ@�][�r@��t2@$D�g�˭@$��N��@%@��?�@%�o�e,R@*;�"T��@,��.?�@/.��͢�