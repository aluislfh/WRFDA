CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:56 -0400UTC      Release             Version             	Sensor_Id         
sndrD4_g12     WMO_Satellite_Id            WMO_Sensor_Id           r   
AC_Release        ����   
AC_Version        ����   title         nSpectral coefficients for sndrD4_g12 derived from SRF data file sndrD4_g12.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.6 2006/01/26 23:40:30 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.4 2004/08/23 20:27:39 paulv Exp $;$Id: sndrD4_g12.srf,v 1.1 2006/01/25 18:03:49 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       _Interpolated SRFs for transmittance production; Detector #4 SRF. Data obtained from NESDIS/OSO.          Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
                                                                                                                                                @��˓c��@�^�|��@�܅(�$@�z�lܫb@��~�:�h@���G��@�qʂ�[�@ڳ�����@�����@�O���@��Bu�Ԗ@�K{���@�ma'��@�)@�M�@�t�he!@�lV,��@�h��w�@��KO-@�R}�<�@��s��F@�D��H�@��p�
�@�k�$n�@���ٞߚ@��9�@��x���@�7�b�+@� �(B��@�Gl.!@�@��5��@��g��@�@�e�@��~�ց@��P�aU@���:��m@��z�>#G@���S��d@�X����@��1=W� @�`&�}k@��Z)�I@��o	���@�˛j�@��4�ײ@�T�
�K�@�@8y��@��Ӹ8Q�@�'�,M��@�w�� �@�Mچ�A ���%�A���A#��pA��@cf�@����0�<@�H��c��@��83X�@�~��P�@��ȫ�@��=6���@��8_ذ3@����f�@� �Umט@�8񿧧@����V9@�I��Eܩ@��ʬ���@��ϧ,FT@�Er_9@�A����@�E�A5�@���w�X
?���3  ?���r  ?����  ?���{�� ?���Bـ ?����` ?��Z.�X ?��\��� ?�##��  ?�3-��� ?�e[�2\ ?��\�t  ?��)r@ ?�FD��  ?��T�� ?�xi�Z  ?�̀Pe` ?ҏ3�n� ?�����m�?���N�Y�?����Xj�?���>n��?����1��?����vH�?����B:Q?��K�T�M?����l*:?����f�S?�����O1?��u� ��?�����~&?���}�1�?�������?��b+⧙?��ZG�\�?���X�aa                                                                                                                                                ?�|\ i=�?�6 �Xz~?�!�ދ�?�R�)��?�9]\Z\�?���x_��?�y1ҫ�*@ RL�)�g@�\�9~�@F��%|@\MU1�@W��6�@$>LW���@$����@%~o�\�b@*e"���@,$�E.A�@//�]��