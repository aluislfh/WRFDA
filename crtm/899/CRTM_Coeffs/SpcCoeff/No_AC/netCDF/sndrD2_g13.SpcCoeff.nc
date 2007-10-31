CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:59 -0400UTC      Release             Version             	Sensor_Id         
sndrD2_g13     WMO_Satellite_Id           WMO_Sensor_Id           r   
AC_Release        ����   
AC_Version        ����   title         nSpectral coefficients for sndrD2_g13 derived from SRF data file sndrD2_g13.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: sndrD2_g13.srf,v 1.1 2004/03/08 21:03:37 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       _Interpolated SRFs for transmittance production; Detector #2 SRF. Data obtained from Mat Gunshor          Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
                                                                                                                                                @��Q/t�@�h�@��a@����E�@�v�$���@��>v�@�g�x]:@�T��
.�@ڟ
���@�,Nk�(�@��M��`@��9TԴB@�o�<jH�@�����+@�(*
5o�@�o8�Ů@�T���!@�g���0S@��'@�:8ޏ#@��N/�@�1��w-@���t%=@�df��@���G���@��d���1@�ji2%"l@�{d��@����@�>�d9�<@������+@�^ӨK�@�>�z�L@���F]�P@�����@��'�n�@����Vp@�*/��@��P���>@�����\$@�U�]�7@����v~@������@�����z@�}Y%��@�w0ȟ�@�q��@��bw�@���ʒ@����#��@�G�g�`lA u<�8�rA�e`��uA��SL?A���YK@������d@�X��Y@�����p@�{/싓�@���T[E�@���>_��@��ŝ�Y@�qú�@�+S78��@�*�os�@� ��e@�:w���@��^W���@��#��v^@�=
}b%
@�5)3D�@�C���F�@���U>?���i�  ?�XiO� ?��6� ?�pޝ�  ?���  ?�:�K6@ ?��ЌՐ ?��+�� ?��.�` ?�}�� ?Ѽa�w� ?�(��� ?��0�6� ?��>  ?��K� ?�_9oA` ?��f�  ?�I?ۭ� ?����� �?���4'��?���,��S?�������?����(�l?����n9	?���4�?��r� Y�?�����g!?��Ź�?������	?�����1�?�����.?���*�>�?����:�?��[ץ m?��M��?���w�_�                                                                                                                                                ?�R���$?�HtMw�?� Fu?�I�+'y#?�,��?h'?�r�6J��?�8�	��@ 9��;ͣ@��D7_	@8����@NH��@3L�c8�@$Ex;}��@$�E��y�@%l���@*N�e���@, 5��o`@/=���6