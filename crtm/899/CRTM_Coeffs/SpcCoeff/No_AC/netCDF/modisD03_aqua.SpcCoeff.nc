CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:32:19 -0400UTC      Release             Version             	Sensor_Id         modisD03_aqua      WMO_Satellite_Id           WMO_Sensor_Id           �   
AC_Release        ����   
AC_Version        ����   title         tSpectral coefficients for modisD03_aqua derived from SRF data file modisD03_aqua.srf.nc and solar data file solar.nc   history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: modisD03_aqua.srf,v 1.1 2003/08/28 21:50:24 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $   comment       bInterpolated SRFs for transmittance production; Detector #3 SRF. Data reformatted by LG 2003/06/06           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
_FillValue        ��            �  l                                           !   "   #   $                                                                                                          @�`wI�%�@�bm
65�@�m��(n@�慵��@�t�� F�@�,%1RQY@��ٰa@���[�@�J^���@�@kf4]@ړ���@�S��@����y,l@�ei�9y�@�-�	�@ԙ;�ۃ�@��Ӣ���@�����l	@���	Ȋ@�<����@�����H@�C6Sc<�@�	x{0q�@�F~��@�F�%CY�@��!jG~@�]��d��@��³�\�@�b�qX @�֞g�׏@�r$>�@���2O)A
�AWh�oA
�d���A6&?FhA��Lأ�A ���12�@�^�G��f@�w�O'@�\�M���@ҝ$�G>�@�S�a��@�e�����@�����+@��?'� @�)!T@�=G����@�4[����@���LA$@�;����@�M��,'@���VW�@�E��@��@�o��@���?��@��GEk.e@�K�5���@� �c��@�g�>s�j@����**�@����nx@�m�4�޺@�%����@��fe
s�?��Q� ?�C�9B0 ?�[]I� ?�L�4� ?�w��` ?���U�` ?���@ ?�W7� ?�q��� ?�J�
�� ?�V�U ?�B�7  ?����@ ?��?,	  ?�Xr�@ ?�2f�  ?�����.�?���W��?���Ys?���� �L?�����%�?�����w?��l|�Y�?���=�>?��!�j?��$��?����?��ȝ^:�?��UZ���?��A�f��?��Z��'D?��a�#�                                                                                                                                @.�`���@,��pu�@,7�r��@+	��z�@%n��y�d@$�h\���@��I'TT@�<���@
ta�Y�@��^��@ +nO�n8?�4�S+�?�*de�:�?�(q���?�r�C�AU?����*