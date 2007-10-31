CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:26:02 -0400UTC      Release             Version             	Sensor_Id         
imgrS2_g13     WMO_Satellite_Id           WMO_Sensor_Id           g   
AC_Release        ����   
AC_Version        ����   title         nSpectral coefficients for imgrS2_g13 derived from SRF data file imgrS2_g13.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: imgrS2_g13.srf,v 1.2 2004/03/09 15:52:04 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       �Interpolated SRFs for transmittance production; Detector-averaged Side #2 SRF. Only one detector for channel 6. Only data between first and last points > 1.0e-06 retained. Original data obtained from Mat Gunshor. Note no channel 5.          Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    �   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                    �   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                    �   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                    �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��               �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��               �   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��                  	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��               8   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��               X   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��               x   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��               �   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��               �                                          @��C�!@�]>��\@�o��� @�	�$+r@���/�@��'�?	 @�IT����@��ّy1*A�2�@�-��;�@�%���8@���iv�@��ꖡ�`@�,J)��@�|ߡJ@��U/�?���6. @�v3�X�?���� ?�+��  ?��%����?�/�|???�����?���]6�R                                @-,�z�}�@�z@7H!A(�?�l��7�I