CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:26:04 -0400UTC      Release             Version             	Sensor_Id         	imgr_mt1r      WMO_Satellite_Id         �   WMO_Sensor_Id           &   
AC_Release        ����   
AC_Version        ����   title         lSpectral coefficients for imgr_mt1r derived from SRF data file imgr_mt1r.srf.nc and solar data file solar.nc   history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.6 2006/01/26 23:40:30 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.4 2004/08/23 20:27:39 paulv Exp $;$Id: imgr_mt1r.srf,v 1.1 2006/05/22 15:29:50 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $   comment       MInterpolated SRFs for transmittance production; Data obtained from Hal Woolf.            Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                       Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                       Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                       Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                    (   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��               8   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��               X   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��               x   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��               �   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��               �   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��               �   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��               �   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��                                                         @�#W?��@�dU����@���@�l-�v�@��V��=�@�	<$�_@�)<9y�t@��T`�2@��ٌn@��+#g��@�����A+K��݄@�րퟕ3@���3�1@��k��t@����w?ֵ�M�h ?�n��( ?�Wd � @�k�� ?���§�?���w��?���K��(?��.�d�                                 @ ٴDfu?�\~���@����-�@/�;��