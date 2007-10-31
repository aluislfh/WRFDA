CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:41 -0400UTC      Release             Version             	Sensor_Id         vas_g04    WMO_Satellite_Id        �   WMO_Sensor_Id           v   
AC_Release        ����   
AC_Version        ����   title         hSpectral coefficients for vas_g04 derived from SRF data file vas_g04.srf.nc and solar data file solar.nc   history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: vas_g04.srf,v 1.1 2003/11/19 17:35:37 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $     comment       FInterpolated SRFs for transmittance production; Data obtained from HMW           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    �   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  0  �   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  0  (   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  0  X   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            `  �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            `  �   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            `  H   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            `  �   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            `     Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            `  h   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            `  �   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            `  (                              	   
                                                                                       @��;�4D�@�5�/��@Ԁ�H�9@������@���mI2@�)V=��0@���)�@�F?���Q@� Y+�@��@��Df@�|���@�HwU�/@�>��ea
@��V|^e@�����L@�T/�}2@�s1��Mj@�@6�
��@��O]��@�� r3@�{��NgC@�8�1�O@��=�j��@��7�O�`@�<��n��@��O��2|@��Dù�j@��x�q�x@�����@�NWt|�9@��ui��~@�Н]��@�;b[�@���*A �o�1�A�En�B�@��	$�@�	g)���@�{�=��@�R�1@�ޟ�3��@���xBA@��o��k�@�,�x��<@���v�]@����t(�@�R�3��@��+S��8?��,mĀ ?�I��e  ?�Q��c  ?�7��W  ?�>04	  ?�h}�	p ?�4G�D� ?��Xe9� ?���L� ?��(�� ?��;}  ?����i ?����3ĺ?��{5Po?��|��*?��6k�7?��'o�'?��@_��?���U}1@?��siJ��?��A�L�.?��P�V�?��/d��?��E�Q�X                                                                                                ?�Z�d�:?���%�o?�s��M1�?�=U8��4?�H���+@$�@~���?���|6P?����$ @�Ӷ�
@��jO�@%� ��)�@,���vb