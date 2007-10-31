CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:32:21 -0400UTC      Release             Version             	Sensor_Id         modisD06_aqua      WMO_Satellite_Id           WMO_Sensor_Id           �   
AC_Release        ����   
AC_Version        ����   title         tSpectral coefficients for modisD06_aqua derived from SRF data file modisD06_aqua.srf.nc and solar data file solar.nc   history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: modisD06_aqua.srf,v 1.1 2003/08/28 21:50:26 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $   comment       bInterpolated SRFs for transmittance production; Detector #6 SRF. Data reformatted by LG 2003/06/06           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
_FillValue        ��            �  l                                           !   "   #   $                                                                                                          @�`�U�C�@�bp����@�m�@�o	@��L��C@�tąߨ�@�,0��`�@唐�~�*@�z`t@�RC&�@���Qir@ڒ�vJOF@�R����@����
)�@�epݜ>@�%맕�@ԙ=ƶ@���[ۥ�@�������@���[�*�@�<���+@����{�@�CB���@��qm@�Fq���@�FǑ�FS@�J�p'�@�]O�|�@���@�b�j�@�֥��j�@�q��9�I@����J.�A
�kM��lA
�D#!�A6'`�4SA�g2�4�A �](�@�^�F@.@�;� �@�\���7�@ҝ>l�*�@�U$����@�e2ⵁ�@���aBP|@���Ɠ@�)3f��@�=4��9`@�4^�&��@�� 8-�@�;���J@�M�$�ȣ@���>�-�@�EȌ�4@��R��y@��1>�@��4�fa�@�K�T�	�@� �4db@�g�K��@���0�O�@��꘸�@�n���x@�%��Ub@��hn��?��W갴 ?�[��m� ?�._m� ?�]*Ep ?�o�W@ ?�)*f� ?ǃ��� ?���/8 ?�Q� �� ?��vk@ ?���P�0 ?�3dH� ?��~z}� ?���  ?�fx�5� ?�!Қt� ?���3�V{?�����N�?��߼��?���XK0?����G�?���%��~?��}��?�?��ܬn+?��'|̞�?������>?��9� ��?��ʇ�F�?��U��*?��?敯??��ZA3Q�?��b�-]                                                                                                                                @.�j���@,�C6��@,7�s�d@+	d#Y	O@%p�8lO@$�N���@��랖G@�B�0d@
t6_Y�}@�i��t�@ +^��?�4�bs��?�*T쾉?�(�!�?�rظ[e�?����g