CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:25:43 -0400UTC      Release             Version             	Sensor_Id         vas_g06    WMO_Satellite_Id         �   WMO_Sensor_Id           v   
AC_Release        ����   
AC_Version        ����   title         hSpectral coefficients for vas_g06 derived from SRF data file vas_g06.srf.nc and solar data file solar.nc   history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: vas_g06.srf,v 1.1 2003/11/19 17:35:37 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $     comment       FInterpolated SRFs for transmittance production; Data obtained from HMW           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
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
                                                                                       @��b�cO@�>k�~��@�w�$�z]@��VV�L�@��n3!\@�*h3v��@�0�U��}@�	I6�8+@�#�T?�@�vv.P@��VlT�@�~�ڞ�%@�Hʽ]dD@���=���@���b��@�Z� �D@�e�?���@�A[V�NQ@���C�Eo@�ʏosua@�~|]��@�������@����O� @����(�'@�fi�MO@��i���@��	����@�Ƿ��L@����@�T����@��ɫ�@�\�<a`;@�G^���@�T�Az��A ���k��Aup/J��@���DjҠ@��a�bF@�n�þ�e@��adS�@���ɢ�q@�ӕge��@�Ά�?Q@�� j�?@���!
�@�{�n�?@�X���@�gL��?��  ?���Ҁ ?�^�}� ?��u��� ?��jR  ?��6cN0 ?�i9�x� ?�@
�, ?�PB"\  ?�ܒ��f ?�VF� ?�̧S�L ?������A?�����¬?����4�?��;���]?�����n?���h�?��1�`=�?��w��?��QH��?��~�_2?��1&9Zq?����3                                                                                                ?�k�ao�$?��??�c�DV6?�IF��7?�/�[@$� �e�B?��W9���?� LH��V@T�\�w@l���9@%���6@,jP���S