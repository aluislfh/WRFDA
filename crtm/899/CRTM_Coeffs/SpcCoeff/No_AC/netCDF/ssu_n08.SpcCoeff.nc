CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 886 2007-08-23 22:51:40Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/08/27, 17:43:14 -0400UTC      Release             Version             	Sensor_Id         ssu_n08    WMO_Satellite_Id         �   WMO_Sensor_Id           s   
AC_Release        ����   
AC_Version        ����   title         hSpectral coefficients for ssu_n08 derived from SRF data file ssu_n08.srf.nc and solar data file solar.nc   history      2$Id: Create_IR_SpcCoeff.f90 886 2007-08-23 22:51:40Z paul.vandelst@noaa.gov $; $Id: SSU_SRF_ASCII2NC.f90 773 2007-07-24 18:21:01Z paul.vandelst@noaa.gov $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $     comment       `ASCII SRF data provided by Q.Liu. Cell pressures(hPa):  1.090000E+02  4.050000E+01  1.300000E+01         Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    �   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                    �   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                    �   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                    �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��              �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��              �   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��              �   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��                 Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��              ,   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��              D   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��              \   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��              t                                 @Ӝѡ�q�@Ӛ=��D@ӗ� �@��?h�M@��5�&@���i�g�@��jUЁ	@��d�<a�@���vs�@���yL�@�ˏ��@��R�?�Ƨ6�� ?�g�[{  ?�D�=� ?��7��(*?��)��?���Ov|`                        ?���ʉ�?�����"�?���Y�