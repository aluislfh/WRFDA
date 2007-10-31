CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:38 -0400UTC      Release             Version             	Sensor_Id         	hirs3_n16      WMO_Satellite_Id         �   WMO_Sensor_Id           ^   
AC_Release        ����   
AC_Version        ����   title         lSpectral coefficients for hirs3_n16 derived from SRF data file hirs3_n16.srf.nc and solar data file solar.nc   history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: hirs3_n16.srf,v 1.1 2003/08/28 21:50:22 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $   comment       FInterpolated SRFs for transmittance production; Data obtained from HMW           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
                                                                                                                                                         @ӝ-���#@��T@��@�<�Y�.\@Ԍ� �7@����_�T@�i��?�A@��ؙ�Qv@�IsN5v@�9���i@׆��H3Z@���ڤ2@�ZE��@���l$?@�&c�T8�@�X�� �@�j��ȴ@�D��@�m�#U�@��D�%~@�1�@�?&֤߇@��mm�F@��R}t}@�eU��@�� k�5�@�n��� @�~�ĺ@�!�f�ki@��)^��@�QI�)�@���b�M
@��M��@�=�?@�r�V�&�@���>��^@����P�@���B: 2@�ԣ��i�@���?�R@�>�:@g@��6=���@���r�y@�_÷��@�3�i��-@��S��R@���ɚ@əb�f�@�$Z��_R@݉�����@�O�YN,@�j���[@�=;_�A 2*�'ӳA g��p�?A����A5H��HA�G�ȥ�@�NPG�@�����O@��$�8@��/�;��@�D Q��@�q:d��@��[6�4�@�/e{!�@�5�sN�z@���y�@���R=�7@�)�A6�G@��;���@��jM�v�@�����@�6}8�d@�-�g�-@�MP[��/@��x��"D?�LfuP� ?���Kp� ?�����  ?�s=�� ?����V� ?���D�@ ?��W.  ?�
��� ?��({�� ?���*� ?����r� ?�6`0 ?�j�-�� ?�M\l�@ ?�����@ ?��4#&  ?�E�&�� ?����  ?ӗ��� ?����E]�?�����>?��X�8o�?��h`G?��2��u0?��Y�
�u?��!�N,�?��I�u��?���g�Mm?���f�?�����c?���yn�@?����	�E?���`��G?���!~��?���T�9v?���esEb?��m�K��?���k�)�                                                                                                                                                        ?�Ӓ��A�?�[b�-�N?��@��?�Y� ?�[���d�?�0�S�9�?�@?�$QD?��e��v@øD��?�{d���@�!��@
��BA@$0�J|.�@$�"a��@%h�cX�@%]K���@*@�c��M@,2��V�@/7�R�Pv