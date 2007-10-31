CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:47 -0400UTC      Release             Version             	Sensor_Id         
sndrD2_g10     WMO_Satellite_Id         �   WMO_Sensor_Id           r   
AC_Release        ����   
AC_Version        ����   title         nSpectral coefficients for sndrD2_g10 derived from SRF data file sndrD2_g10.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.6 2006/01/26 23:40:30 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.4 2004/08/23 20:27:39 paulv Exp $;$Id: sndrD2_g10.srf,v 1.1 2006/01/25 18:03:49 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       _Interpolated SRFs for transmittance production; Detector #2 SRF. Data obtained from NESDIS/OSO.          Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
                                                                                                                                                @��$ݻ�@�[
�l��@��'��j'@�jl�)��@���.��j@��x��[@�Mam�˔@ڜS"���@�#�`=@�6P��@��H�7g@�x���@���Ǹ6@�/���T^@�tAUo�@���l@�aA��Zo@�}`����@�9> ���@��JԽ:�@�F>]
�@���ݗ�@�[k�͋�@����k�w@�𻿡$@�g���@s@�tT3Z#@���U;�@�?�_Fr@��k)���@�	�d�@�F�D�@��.l�2@��aP�x(@��j�MC�@�ͯ��8@�&)`}�@�F�� '?@��&�H�@�5�;�yC@�m/�a��@���7U@��{�@�w���{�@�U�Vz(�@��
��@��}5:�r@�	�EO>@�p@��8�@�s
��%A �� ��rA�scz%�A5? R$As��]/�@��6��E@�B�s���@�� �@�q�a �@�ͅp#�@����9RT@��B��z�@�o�S�M@�!6�0��@�#�a�6T@�xOR_�@�AWU.	6@���}dt@�۟�)g@�D��6;�@�/��Ż@�: ���=@��w����?��&yz� ?�k�� ?�3�͎  ?�i �  ?��"�:  ?���� � ?¨y�S� ?�����0 ?��|� ?�+!�/@ ?�~�6�d ?��d�N( ?��>7f@ ?���*s� ?��F.�  ?�X4�  ?���Ŧ  ?�yA�)H ?����{�t?���x0�?���[���?����)�?���e#�?���ޡ��?��w{8��?��sJ{�?���`�?���?�?���h�}?���Z,j�?��� ��?����O��?�����Ks?��U����?��[!'�-?���[�N�                                                                                                                                                ?�QSͮZ�?�.穊��?�$���$?�2�)��?�J�}�?������@?�)n�O��@ 6barg@� p[<@0 9�l�@O�8B�@C��@�@$8f�r��@$�$<�T@%}�s�_@*D�#�m�@,/]P�@/%�;�nC