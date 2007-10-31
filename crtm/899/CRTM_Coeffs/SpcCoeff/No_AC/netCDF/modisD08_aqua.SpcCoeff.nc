CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:32:22 -0400UTC      Release             Version             	Sensor_Id         modisD08_aqua      WMO_Satellite_Id           WMO_Sensor_Id           �   
AC_Release        ����   
AC_Version        ����   title         tSpectral coefficients for modisD08_aqua derived from SRF data file modisD08_aqua.srf.nc and solar data file solar.nc   history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: modisD08_aqua.srf,v 1.1 2003/08/28 21:50:27 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $   comment       bInterpolated SRFs for transmittance production; Detector #8 SRF. Data reformatted by LG 2003/06/06           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
_FillValue        ��            �  l                                           !   "   #   $                                                                                                          @�`���"[@�bg�,a@�m�#�@���#�@�t�4}]L@�,/iW[�@唱���@��Q�c@�R�\��@�ֱ��@ڒ��C�9@�S[�in@���l��@�eh�N�@�(����@ԙ5oݙ@�����2�@�����#@�����@�<�w��k@����*@�CA;��6@�	h�&@�F�y 7�@�F�BG�B@�p�΂�@�]1u�O�@������@�b���@�֝���\@�r�@���`�ͰA
�y*�4tA
�IݱA6���wA�s/�jIA ���@�^�׫�@⢐z� @�]#+�1-@ҝ@��|@�Uׁt!@�d�3��@��9 �g�@���@"@�)-�<@�=;��7.@�4L���@��%Q+@�;����@�M�[�%�@���V�8�@�E�Xё�@��Pj@��Ji���@��]v�]@�K�RI��@�!1��B�@�g��{G@���3�E�@����o�@�m����@�%�?�o@��\����?��Qee� ?���D� ?�9
� ?��y2� ?��7ހ ?�q��L  ?�b� ?�J�/8� ?����h ?��[fs@ ?���;7� ?�.{YM� ?��kX�  ?�� �I  ?�Tot  ?��D� ?������?���@l��?����L�?�������?�������?�����B�?��[��,X?���ntH�?��YE>[?���*��?��9�>�?���%X��?��V ��?��@���?��Z���?��b��:d                                                                                                                                @.�Hҕ��@,P���	@,7l�d@+��!��@%n���I`@$�`�'.@�?B��@����U@
tG�M�@��0;xZ@ *�	���?�4�H$8�?�*_��_Y?�(p!q�?�rݶ�)�?󢴊�gj