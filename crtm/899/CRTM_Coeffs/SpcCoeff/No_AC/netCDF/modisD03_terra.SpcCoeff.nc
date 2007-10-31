CDF       
      
n_Channels              write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:32:13 -0400UTC      Release             Version             	Sensor_Id         modisD03_terra     WMO_Satellite_Id           WMO_Sensor_Id           �   
AC_Release        ����   
AC_Version        ����   title         vSpectral coefficients for modisD03_terra derived from SRF data file modisD03_terra.srf.nc and solar data file solar.nc     history      �$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: modisD03_terra.srf,v 1.1 2003/08/28 21:50:25 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $      comment       bInterpolated SRFs for transmittance production; Detector #3 SRF. Data reformatted by LG 2003/06/06           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    0   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                  @  4   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                  @  t   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                  @  �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��            �  �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��            �  t   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  �   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��            �  t   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��            �  �   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��            �  t   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��            �  �   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��            �  t                                           !   "   #   $                                                                                                          @�U�}��D@�V:uS^�@�n(�Ejm@�sLѾE@�]L��b'@���g�@�Ҧ�@���|@�,��;p@���v��@ڗgӇ�@�W��Ќ�@���Ʃ	8@�fY�2-@��=��R@Ԡ2ح~ @�����@�����f�@��/�Cc�@�B�.y�@�w��st@�0��j@�*��@�KSN[k�@�U3-��@��S�>@�bBk�*�@����@�b�A�i�@��Dy#��@�w���]@�g�2A
�~��r�A��!@�A6Ҩ�'(Aɕ��9A @B~�b@��5��M@��B���i@�p�[6@��p�Ybz@�@D���@�nPG�'@��c	W��@��:�/�@�*����g@�H��m��@�D�L]L@�����d�@�)0��#�@�M��gD�@��YN)d�@�!�а@���Ã�h@��#�vo�@��;h���@�`u�n6�@����@�kA҆:�@��g�2�@���w�}c@�ns�_~�@�)<͢#�@��Њ0H?�i�#rx ?�
[QP ?���CG@ ?���L�� ?�C%nG� ?�^��9` ?��繸 ?�[��%P ?����- ?�B󡁐 ?�m2�` ?�a��` ?�n|� ?� 	B� ?�Op�)@ ?�(�A� ?����:۬?���.���?���hɇs?���}=?���[�?��	e\[?��Ϣ�?����~?��:ÐI�?���9~K�?��{n��?���!�Hl?��S�bA?��Oob�?��Z�d�m?��lѤ�                                                                                                                                @.��?��Y@+�` �v�@,7��Z�@+8H/@|@%6��@${\N���@��fw}@�A��8�@
����.�@�Z&�Q�@ 0����W?�?�A]u?�*M�آ�?�)�RA��?�{�:�2?�ĝ+�+