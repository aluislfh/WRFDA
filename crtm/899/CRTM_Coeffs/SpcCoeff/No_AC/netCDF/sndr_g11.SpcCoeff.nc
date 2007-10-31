CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:49 -0400UTC      Release             Version             	Sensor_Id         sndr_g11   WMO_Satellite_Id         �   WMO_Sensor_Id           r   
AC_Release        ����   
AC_Version        ����   title         jSpectral coefficients for sndr_g11 derived from SRF data file sndr_g11.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.6 2006/01/26 23:40:30 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.4 2004/08/23 20:27:39 paulv Exp $;$Id: sndr_g11.srf,v 1.2 2006/06/02 19:01:22 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $    comment       eInterpolated SRFs for transmittance production; Detector-averaged SRF. Data obtained from NESDIS/OSO.            Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                       Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  H     Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  H  d   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  H  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            �  �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            �  �   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �     	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            �  �   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            �  4   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            �  �   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  T   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            �  �                              	   
                                                                                                                                                @��-2�[@�[�����@��q����@�v<�Kv�@��pqFN@�#��o�@�d�<�d@ڡ}�z/o@�2�6�:e@�-���(@����y@�ӄ�@�	�elP@�4Y� �@�m��Ьl@���7j�@�f�y3��@󈋋O��@�N��&�O@��g��F@�G��6K@���[�*@�[ ����@��S��i�@�	�3LT@�m��J}@�X�@��վ�A�@�RdfX@�	�U"@���p�@�K����%@��w��>@��V�G@��|!	�@�ٛ{�z@�~��Wg@�I����@��F-�U�@�T���_@�l$���@���]z@��1 v9�@��-�$�?@Ɉ��G;@��<�!Y@���4���@�,�Cњ@��s��m@��#BW1A q�t�rA�s�ش�A��6�A�V�T@���	�x&@�C�C�@� �M.@�z痩[c@��8���@��4w��@��[a��@�s ��D�@�0k�g�b@�#���X@�ܮb �@�JҀ:\�@������E@��}�}��@�;U�O7�@�D����h@�B���@���
(H�?���i4  ?��x`d� ?���u�� ?�� cb� ?����  ?�����@ ?�HRz_� ?�ϰ��0 ?��!-� ?�VK�P ?�b�� ?��
U�� ?�|��b� ?��m�� ?��E�  ?�?��� ?��9�̀ ?��dɿ ?���_��?���x=��?�����tY?�����_�?����(��?��~(�p ?���a�t?��p�ˁ�?���.�jT?���b�%�?���L��?�����=?��� ���?������?���(_�?��c�ӈ]?��X���A?���48?                                                                                                                                                ?�uº��0?�0&#��,?�'�W	�?�H���M?���`�?�����[!?�\��j��@ <�4�I/@�u�>Z�@0-K
{
@n�S��_@Z�H
6�@$Me�T@$�oZD@%f�6��;@*k,n"@,�@���@/Dv��