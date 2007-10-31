CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:32:28 -0400UTC      Release             Version             	Sensor_Id         
seviri_m10     WMO_Satellite_Id         9   WMO_Sensor_Id            �   
AC_Release        ����   
AC_Version        ����   title         nSpectral coefficients for seviri_m10 derived from SRF data file seviri_m10.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.6 2006/01/26 23:40:30 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.4 2004/08/23 20:27:39 paulv Exp $;$Id: seviri_m10.srf 788 2007-07-26 14:20:00Z paul.vandelst@noaa.gov $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       FInterpolated SRFs for transmittance production; Data obtained from HMW           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                       Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                        Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                     4   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                     T   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            @  t   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            @  �   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            @  �   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            @  4   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            @  t   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            @  �   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            @  �   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            @  4                     	   
                                                          @�Ǵ���@�W���<@��̢B@�ͣ>��@�J���@�@�1����@؈o�"n�@��%��@��7?��@��d�Tl@�?HA^�@��
ki�@�*��̭�@�<m��@�/���;@�mM���A�����@甖 �(&@�?��"@ї�bԈ@��h=R�8@£G꽓�@�`T��� @���%4�L@��vԲv�@�쉢d8�@���h@��D���@�B����@��8
�H}@�֛�.�@��b^ ޘ@
�E��X ?����` ?����L ?�Mp��� ?�(р ?�<���( ?�@�� ?��`S�� ?�����Q?����?���Kt/?���%�>]?���2��r?��� ?��*X�?��LkS�&                                                                @-<qn��o@���v+�@���`I@	�T/�X5@�h^3<@ �H��j�?����Üm?�Bd�g