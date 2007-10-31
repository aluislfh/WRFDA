CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:32:19 -0400UTC      Release             Version             	Sensor_Id         modisD02_aqua      WMO_Satellite_Id           WMO_Sensor_Id           �   
AC_Release        ����   
AC_Version        ����   title         tSpectral coefficients for modisD02_aqua derived from SRF data file modisD02_aqua.srf.nc and solar data file solar.nc   history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: modisD02_aqua.srf,v 1.1 2003/08/28 21:50:24 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $   comment       bInterpolated SRFs for transmittance production; Detector #2 SRF. Data reformatted by LG 2003/06/06           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    (   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  @  ,   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  @  l   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  @  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            �  �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            �  l   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  �   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            �  l   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            �  �   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            �  l   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  �   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            �  l                                           !   "   #   $                                                                                                          @�`q�P�@�bo�G�@�m��ح@�޵��L@�t�?@�,81��@�ca�@��|�2@�J^���@�pMR��@ړ,^�a@�Sl7@���8�v7@�eg_%��@�'[�`�@ԙAyt�_@��ͭ[�a@�����(�@���D$*@�<�L:ڈ@����{f@�CJ��c�@�	o��9�@�FzC>6@�F�%CY�@����@�]��Xr$@���F�ã@�b�Ek^;@�֛�s��@�r{�@���:ɂ�A
�*T�A
�R��A67p҉�A�e}�/A ��SC@�_�v@�i��@�\ҩµ5@ҝ$�G>�@�T$.0�D@�e�W1?@���#@���4��@�)9G��@�=8C
-�@�4i��P@��7�X@�;��g@�M��'�@���W\@�E��@��]��U@����?/�@��A}%�=@�K�5���@� �(5�D@�h�{��@����7�@�����@�m�]Z{�@�%��M�@��o4s��?ޞD�6< ?�rވOP ?�j��f� ?�Ue��  ?�#��� ?���p�0 ?��=3 ?�ʯ�� ?�q��� ?�	�Q0 ?���z	� ?�d�]�0 ?����@ ?��잨  ?�a�3,� ?�FMR�  ?�����C?���/޹,?�����xB?���8��_?����r?���1� �?��oOs�?�����r�?��!�j?���6�/?���U!?���d=e?��T�A��?��A��.?��Z�*��?��`҄                                                                                                                                @.�?��@,�\�ɚ@,7,%CqJ@+	��V�@%n�ϣ�'@$���0�@���Ä�@�C�=�@
ta�Y�@�����@ +�Jg?�4�<��A?�*]̬��?�(l�MZT?�r��q}N?��
�