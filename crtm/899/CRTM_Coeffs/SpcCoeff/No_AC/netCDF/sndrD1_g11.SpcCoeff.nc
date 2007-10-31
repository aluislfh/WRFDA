CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:50 -0400UTC      Release             Version             	Sensor_Id         
sndrD1_g11     WMO_Satellite_Id         �   WMO_Sensor_Id           r   
AC_Release        ����   
AC_Version        ����   title         nSpectral coefficients for sndrD1_g11 derived from SRF data file sndrD1_g11.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.6 2006/01/26 23:40:30 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.4 2004/08/23 20:27:39 paulv Exp $;$Id: sndrD1_g11.srf,v 1.1 2006/06/02 19:00:00 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       _Interpolated SRFs for transmittance production; Detector #1 SRF. Data obtained from NESDIS/OSO.          Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
                                                                                                                                                @����7τ@�\2���q@���ͥ} @�v�D>�@���!k@�"�$���@�hB'�Щ@ڡ���k�@�3a,���@㠉���@������d@���o�@�	�s�X�@�4�|�@�m��ͬs@���M��@�f�1�>@�`�,t�@�O hi�<@����E%�@�H@���@��c�p��@�Zu
��@����h��@�lE@�mG���@�A��
�@��7 0t @�R�J�E\@�	��% �@����r@�K���]�@��ww?�J@��&��@��y�g>�@��m�u@��,�2�@�K�?�@��1����@�S����G@�j�J���@����b��@��)1)�4@�����`@ɉ��;�@�	T��BW@���f噽@�,��;@���zU�@��!�K��A q��mA�l]y_�A���A�M�#Љ@���qDl�@�D��&�l@�g�H��@�z�����@������@��꿰B@���z��L@�s/m1Uf@�0��$�@�$u�iRT@�1��	@�J�T���@�����I6@��}����@�;U`w��@�D��O'>@�B،���@��\@�Kb?��+�  ?��F�  ?�y�  ?���Z  ?�Ӧ b� ?��v$� ?�M��F� ?���;-� ?���u� ?�XRo۰ ?�QA��� ?���q� ?�|�`O� ?���@ ?��k1  ?�?���@ ?��+k@ ?��Ӭ�� ?����_D�?���~.xz?���6|x:?������?������?��{"�%�?���!q��?��n+r��?���pQ�?����՜?���'��?�����}�?���5]�?�����?���m�?��c�U6�?��X��'�?����_ֺ                                                                                                                                                ?�ve�:/k?�1
B"�,?�'���?�H����?�]��?��ҏ*m?�d.N��@ <҈;@�"p�@0Ɏ��@oQ:]�@[4� �@$Mtbv@$�n#��@%f�}mg�@*k&e02�@,�H�@/C���{�