CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:24:59 -0400UTC      Release             Version             	Sensor_Id         	amsua_n18      WMO_Satellite_Id         �   WMO_Sensor_Id           :   
AC_Release        ����   
AC_Version        ����   title         $Spectral coefficients for amsua_n18.   history       �$Id: Create_MW_SpcCoeff.f90 805 2007-07-27 23:37:39Z paul.vandelst@noaa.gov $; MW_SensorData: $Id: MW_SensorData_Define.f90 780 2007-07-25 17:28:06Z paul.vandelst@noaa.gov $      comment       �Boxcar spectral response assumed; CMB value from J.C. Mather, et. al., 1999, "Calibrator Design for the COBE Far-Infrared Absolute Spectrophotometer (FIRAS)," Astrophysical Journal, vol 512, pp 511-520            Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    L   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  <  P   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  <  �   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  <  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            x     
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            x  |   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            x  �   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            x  l   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            x  �   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            x  \   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            x  �   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            x  L                              	   
                  	   	   	   	   
   
   	   
   
   
   
   
   
   
   	                                                           @7��Tm@@?fF��)�@I&]�#�k@Jfh�a9 @J�H�R7@K3-Dܨ�@Kx\�{ @K�[T�@L�)���,@L�)���,@L�)���,@L�)���,@L�)���,@L�)���,@V@�#FV&?�g����?��zY�H?��X��o�?�-���C?����!o?��΄N_?�Ra[�[S?���uǏ�?��t���?��t���?��t���?��t���?��t���?��t���@��^�">��o��?�>���C@?~q2�|T?�k5�?�<n��?��s�ڻ?7z�L�?�l���]?�#)P�?�#)P�?�#)P�?�#)P�?�#)P�?�#)P�?4m�=j5?�F����?�jz�b�@O�g�[�@E�F��l@���F�@��Պ~d@�A*R@O�|�@��f�$@��f�$@��f�$@��f�$@��f�$@��f�$@O�%��[�;   ��(P�   �т~�   �󷋱   �����   ��*��   ���D   �鲀�   ���Ҕ   � DR�  �!Z.��  �!m`  � �9�   � �r\�  �Kڐ��  ?� ��X?� !P�?� 7ӊ?� :��?� �;E�?� �@��?� ��I?� >&��?� ".?� 9{��?� !�#Nl?� !Q9�?� !1���?� !0x�?� ��*t>��f��s>�o ��?�?�~��!?=p�(?��O(/B?9���'?�.�ȧ??�,N?P?	[F(z�?	[F(z�?	[F(z�?	[F(z�?	[F(z�?	[F(z�?�H@��                                                                                                                        