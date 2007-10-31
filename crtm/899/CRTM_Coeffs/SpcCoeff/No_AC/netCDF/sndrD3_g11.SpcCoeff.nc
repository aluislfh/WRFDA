CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:52 -0400UTC      Release             Version             	Sensor_Id         
sndrD3_g11     WMO_Satellite_Id         �   WMO_Sensor_Id           r   
AC_Release        ����   
AC_Version        ����   title         nSpectral coefficients for sndrD3_g11 derived from SRF data file sndrD3_g11.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.6 2006/01/26 23:40:30 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.4 2004/08/23 20:27:39 paulv Exp $;$Id: sndrD3_g11.srf,v 1.1 2006/06/02 19:00:00 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       _Interpolated SRFs for transmittance production; Detector #3 SRF. Data obtained from NESDIS/OSO.          Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                       Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  H      Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  H  h   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  H  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            �  �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            �  �   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �     	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            �  �   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            �  8   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            �  �   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  X   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            �  �                              	   
                                                                                                                                                @�����r@�\W ��@��I�[��@�v~��@��PͰ@�#r�8Z�@�e6t��t@ڣ��Ћ:@�2�;L�@��*�xc@���	T@�)J�z@�	��?@�4�
v@�m��F�4@���Q���@�f���U@�2�,B@�OX���@�����oN@�Gs�O;@��e�=�]@�[$R<�&@������@�
,־ @�o\$a�@���5|@��}Z�;#@�R���>@���S}�@���tjC@�K�B��9@��wŬ�B@��
�*�@��~����@�����@��n�WD�@�L�q��F@���mk�@�S�J=^�@�l}���r@���Pt�@��� ]�@��~ �>�@ɇ{]{��@�kq��f@���D��@�*.�#G�@��O�m�@��$�&]�A q��J��A�{�m�A�>FA��ep�4@���`Cg�@�D���.�@��X">A@�z�9�s�@��R)n@��|1���@�������@�t�r���@�0B�H�o@�#j���@��q���@�J,:�@���%�Rc@��~\k�-@�;U�NIX@�D�9f��@�Bߋz�@��ߌ�/?���  ?���/̀ ?��Qx� ?���t  ?�߂3�  ?��bU� ?�-� �� ?�����  ?�Lf  ?�gN�I� ?�W|�p ?����$8 ?�|���  ?����@ ?��)�� ?�@P�\` ?��F��@ ?���� ?���A�K?���Õ�}?����aIY?���\�3�?����B�9?��}fs?��ס:�E?��y}�~3?���6|.?��ޣ��?���.m�?���$Z~?��� ��g?����v�?�����?��c�kEZ?��X��h�?���]�b                                                                                                                                                ?�v��53F?�1M�M�?�&·f�w?�H��j�?��C�zI?��]O�� ?�]{�2�@ ?!��@�,���@/��\��@n�%���@YA.iT�@$M���@$�o�D@%f��P�@*k1��]2@,�fQ�]@/D���