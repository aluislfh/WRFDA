CDF       
      
n_Channels     
         write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:26:04 -0400UTC      Release             Version             	Sensor_Id         abi_gr     WMO_Satellite_Id        �   WMO_Sensor_Id           �   
AC_Release        ����   
AC_Version        ����   title         fSpectral coefficients for abi_gr derived from SRF data file abi_gr.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: abi_gr.srf,v 1.1 2004/02/20 15:19:23 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       �Interpolated SRFs for transmittance production; GBH v1 ABI SRFs 23-Jan-2004. Data obtained from Hal Woolf/Mat Gunshor. GBH=Gaussian Boxcar Hydrid. See http://goes2.gsfc.nasa.gov/abihome.htm            Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    l   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  (  p   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  (  �   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  (  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            P  �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            P  8   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            P  �   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            P  �   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            P  (   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            P  x   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            P  �   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            P              	   
                                                                                       @��D�ssk@竾?��@��F�d�@���s���@�7"�y�f@�zy3��@�G��w.]@�%=���@�ͨd�'@�y��@���&�@�D32�G@�|32�i�@�H  ���@�`32�@�D32�wr@�0 �W@��fe���@�hfe�})@��fe��A�-�M#�@�,d!��@�T�O� @�c!�/�@��VR4:n@�?��(�@��3Rgه@����ZU=@�v \�F@���Y@��.��(�@�-$��0@�,�dk`�@��r��`@�pIXNkA@�gY��@��mt���@���
�y@�G/R'}K@����I�?��J��� @ ��0ˀ?�@Rk?� ?�)�` ?��|Tp ?�^��p ?����x ?О��$0 ?Ѽ��x  ?��*sP ?���[��?�ڟ��cm?���,i��?���9E ?���V���?��F�dk�?��C=NTK?��r��?��3=��^?���/                                                                                @-8��"�-@��Z
@�E��V�@����'A@
�i|s� @R��@A��i?�VE���?��-��?�b"��