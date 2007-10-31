CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:32:18 -0400UTC      Release             Version             	Sensor_Id         
modis_aqua     WMO_Satellite_Id           WMO_Sensor_Id           �   
AC_Release        ����   
AC_Version        ����   title         nSpectral coefficients for modis_aqua derived from SRF data file modis_aqua.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: modis_aqua.srf,v 1.1 2003/08/28 21:50:28 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       hInterpolated SRFs for transmittance production; Detector-averaged SRF. Data reformatted by LG 2003/06/05         Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    $   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  @  (   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  @  h   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  @  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            �  �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            �  h   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  �   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            �  h   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            �  �   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            �  h   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  �   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            �  h                                           !   "   #   $                                                                                                          @�`z ��@�bL_Cy�@�m�k�Xi@��5�F@�t����5@�,
eo�	@����i@���7�@���#�@�栽@ڒ�ʜ��@�R�mH3�@��ZFW[�@�e�c@�׸E��@Ԙ�aFQ@��֩�5�@����J�@��Ҵ�� @�<�<c�<@������@�C�C�@�	*����@�F�:Fb�@�F��J�@��LAt�@�]pv�y�@����d�?@�bb]W�@��5�~z�@�q�yo,�@��F��A
�M0�}A
���BA5�R�@?A�|�_5A ��O��@�^Z<#@��1��i@�]&LM�@Ҝ�uE�@�S0��@�epi�|'@����
�@�~�ֺVc@�('���@�<tg�&�@�2���@��%��s@�;��J�6@�Mj��@���R�p�@�E�(>pq@���S&�@��Yq��=@��^�S�@�Kb���@� Y&{��@�g� �.n@���\"��@�҇�zٲ@�m��t$d@�%]�B�@��w͗&�?�׷��� ?�+y��� ?�<�{
  ?�^ΘI0 ?�/��b  ?�VU�=� ?ǨCH ?�|�x� ?�m}�m� ?�#�gu@ ?�/%V�  ?�;{�   ?��M�B� ?���� ?�U2{S� ?�|pH� ?���(���?���_���?����w\Q?���,ң?����C|?���f�?�?��xoy{�?��Ȟ��.?��"����?��޻|�0?��';�+?���v]?��Tێ�?��@y7�)?��Z�?��b���7                                                                                                                                @.�3A��@,2=�S�@,6�7�z@+	���TR@%n�B���@$��eI��@�;p#% @�q��ӎ@
s����L@�B�s��@ +H3Y�?�4�$�V?�)V�hV?�'��@?�rB����?󡝪c�_