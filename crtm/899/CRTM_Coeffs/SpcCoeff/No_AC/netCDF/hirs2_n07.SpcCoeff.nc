CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:27 -0400UTC      Release             Version             	Sensor_Id         	hirs2_n07      WMO_Satellite_Id        �   WMO_Sensor_Id           ]   
AC_Release        ����   
AC_Version        ����   title         lSpectral coefficients for hirs2_n07 derived from SRF data file hirs2_n07.srf.nc and solar data file solar.nc   history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: hirs2_n07.srf,v 1.1 2003/08/28 21:50:20 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $   comment       FInterpolated SRFs for transmittance production; Data obtained from HMW           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
                                                                                                                                                         @Ӊ�u;�@���,���@�<Ŀ��Y@ԡϖ �M@�SdE�	@�{�j�@����џ@�Q�y|�{@�	�ǣ��@��&�jR@���C�@�߂�@��!����@�)�n���@�bOY��@��߯Y�@�E��N�/@�e��o��@�h(?��@��cE�@�9�(�ll@����Aj@���A�.@�n��B"@��_bC@�o���_@�P�$@����X@���y�G@�Gհ�@�'*Bo]@�����]@�@�4�'?@�|Ч�L@��Slz��@�oÍۣ�@����$J@��S3Q�2@���s��@�)8�e��@���|�>�@�H�A&�@�6D�,d1@�b�YP.@����g�@@����Ep@� L���0@�1�cq��@�_���@�������@�9ʓT9@�Q��T�A NhK�j�A �O+0�A��1 fAf�9\A���?$@������@��Hyd�@�e��{�@�����T�@�#oQY @��ż�@��K�q��@�5�F�@�����@�uc	C��@��
����@����w��@���ؚ��@�ҩ@�@�)!s�?�@�g���?@�����h�@�@�	fU@��Uc
�?|��  ?��Wـ ?�y��� ?���h  ?�i� `  ?�
7� ?�d0-  ?�Y��� ?�Bh��� ?��W� ?�@�@ ?֙��( ?�Y��  ?��"��  ?����@ ?���pv� ?���̀ ?���  ?��%d� ?������?��o1`�?��BG+w�?��-$r��?��>hY�?�����?����~�?��
X�}?��lӮ?7?���R�S�?��&y���?��I�r�(?���=�E?�����z?���,`p�?�������?���iY��?��]��?���
C�                                                                                                                                                        ?�_�韊?�R�𽃢?��#B��?���굴?�m�{8m�?�S�(�E?�B߬+?���3Uɸ@�*9�l@�A;���@��t0C~@�b�q2@$!#��@$��Q$�@%7d朗�@%�%!@q@)�59�x@,(ߚ��@/@����