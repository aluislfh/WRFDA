CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:26:00 -0400UTC      Release             Version             	Sensor_Id         
sndrD3_g13     WMO_Satellite_Id           WMO_Sensor_Id           r   
AC_Release        ����   
AC_Version        ����   title         nSpectral coefficients for sndrD3_g13 derived from SRF data file sndrD3_g13.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: sndrD3_g13.srf,v 1.1 2004/03/08 21:03:38 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       _Interpolated SRFs for transmittance production; Detector #3 SRF. Data obtained from Mat Gunshor          Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
                                                                                                                                                @����ٳ�@�i_���"@�ʼ
\@�u�༐}@��T�!��@���)g@�VQl� @ښ�sL>@�-��Dy�@�N_�w@����S9�@�p�F��8@��w�EF@�(.W{�"@�n���C@�x<��>@�g��"a�@�4
�E@�<���6@�ɗ,��(@�1��=<�@���/7]@�cm��`Y@��Wd�e@��E�=�x@�e㺺3I@�;?�@��=Y��@�>�:M@��`G��@�_�i�#@�>���!@����,�@��.��h�@��:[)�>@�����~@�1���3@���b �a@��H[���@�R��E[
@��1Vك@��r�G@����~a@�u<���@�z�#�6�@��]��@�ǵ��/@��q�x]@��˵2�#@�G�c���A t���#A���w�A9 ^A���S@��Lq{v@�X�0���@��k��_@�zn7~0@��H	S@��?�8	@���l�@�m�Z���@�,gA@�*@d��@� �,�S�@�;_��٥@��_��d�@��*=1��@�<�Q���@�5_�o@�C��c�N@��Yɏ�?��o��  ?��k.  ?��ʮ�  ?���p\� ?��)�[� ?�r�C&  ?��~�'� ?�3|V�H ?���K� ?��P�` ?��k\]( ?���� ?�u�52  ?��H  ?��8�@ ?�B
� ?��	O�� ?�4�$�� ?�����?���1��?���I��?���<��?���"?9?���I�?��▧��?��_��g�?�� C$��?����m3�?���<oz�?�����y?���q���?����p�?����v8�?��\���?��M�UB�?�����6�                                                                                                                                                ?�V"b!�?�Ix/��?����Ts�?�G�C9�0?�+'m��?�s�>e?�<�p��@ 4�X�5@�xs5�@7EP��@M�͝�u@5{�(m�@$E��XG�@$�e�F@%lUUˁ�@*O8��/�@, o�C@/=��a�