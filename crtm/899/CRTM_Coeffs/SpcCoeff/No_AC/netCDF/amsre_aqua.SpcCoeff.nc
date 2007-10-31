CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:24:59 -0400UTC      Release             Version             	Sensor_Id         
amsre_aqua     WMO_Satellite_Id           WMO_Sensor_Id           �   
AC_Release        ����   
AC_Version        ����   title         %Spectral coefficients for amsre_aqua.      history       �$Id: Create_MW_SpcCoeff.f90 805 2007-07-27 23:37:39Z paul.vandelst@noaa.gov $; MW_SensorData: $Id: MW_SensorData_Define.f90 780 2007-07-25 17:28:06Z paul.vandelst@noaa.gov $      comment       �Boxcar spectral response assumed; CMB value from J.C. Mather, et. al., 1999, "Calibrator Design for the COBE Far-Infrared Absolute Spectrophotometer (FIRAS)," Astrophysical Journal, vol 512, pp 511-520            Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    P   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  0  T   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  0  �   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  0  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            `  �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            `  D   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            `  �   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            `     Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            `  d   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            `  �   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            `  $   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            `  �                              	   
                                                                                          @�33333@�33333@%L�����@%L�����@2�33333@2�33333@7������@7������@B@     @B@     @V@     @V@     ?͑.�2�?͑.�2�?ּX�̅&?ּX�̅&?���2�K?���2�K?�g|^�|�?�g|^�|�?�z�?�z�@����'@����'>����>����>���Bj�>���Bj�>�?��Q�p>�?��Q�p>���!y�>���!y�>����>����?4l<M�1�?4l<M�1�?�E-7&R?�E-7&R?�[�uC�?�[�uC�?������?������?�F��mU?�F��mU?�^���?�^���@�M��@�M�ܿ�*�  ��*�  �׮U�   �׮U�   �����   �����   �&�"�  �&�"�  �%�$y   �%�$y   �C��o  �C��o  ?� ��г?� ��г?� ���`?� ���`?� 
�u�?� 
�u�?� �t� ?� �t� ?� A�}3?� A�}3?� c����?� c����>��YF�,>��YF�,>Ŷ��͒�>Ŷ��͒�>�Ty�12>�Ty�12>�[&?M>�[&?M>���5�O�>���5�O�?���rx?���rx                                                                                                