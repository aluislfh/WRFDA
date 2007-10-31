CDF       
      n_Orders      n_Predictors      
n_Channels        n_Absorbers       sdsl            write_module_history      C$Id: TauCoeff_netCDF_IO.f90,v 5.10 2006/09/21 17:49:41 wd20pd Exp $    creation_date_and_time        2007/07/20, 12:01:33 -0400UTC      title         GCompact-OPTRAN upwelling transmittance coefficients for AVHRR/2 NOAA-10    history      �$Id: GenTransCoef.f90,v 1.3. 2006/06/11 yhan Exp $  $Id: Compute_Effective_TauProfile.f90,v 2.9 2006/08/18 19:55:59 wd20pd Exp $:$Id: Assemble_TauProfile_Data.f90,v 2.2 2006/06/30 16:47:16 dgroff Exp $; $Id: Convolve_TauSpc_with_SRF.f90,v 3.3 2006/06/30 16:47:16 dgroff Exp $; LBLRTM v9.4; HITRAN 2000 + AER updates;  $Id: UMBC_Profile_Set.f90,v 1.3 2003/08/13 21:21:02 paulv Exp $; $Id: Interpolate.f90,v 3.10 2004/06/25 17:19:21 paulv Exp $; $Id: Create_AtmProfile.f90,v 1.10 2004/11/02 20:11:14 paulv Exp $;  $Id: Create_IR_SpcCoeff_Sensor.f90,v 6.1 2005/07/05 22:47:46 paulv Exp $; $Id: Interpolate_SRFs.f90,v 2.3 2003/11/19 19:54:24 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: avhrr2_n10.srf,v 1.1 2003/08/28 21:50:18 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $;      sensor_name       AVHRR/2    platform_name         NOAA-10    comment      0Mission (17 Sep.86 - 17 Sep.91) mean CO2 amount of 351.995ppmv used; Training parameters: varying order; max. order = 10 10  5 (wv, dry, ozone); TB_RMSE_MIN= 0.0100 DTAU_THRESHOLD= 0.0050 ; Surf_emi_ir=0.9800 ; Surf_emi_mw=0.6000;  Interpolated SRFs for transmittance production; Data obtained from HMW;    id_tag        UMBC         Release              	long_name         $Release number of TauCoeff data file           Version              	long_name         $Version number of TauCoeff data file            Sensor_Descriptor                     	long_name         =Short text string containing the sensor/satellite description         (  $   NCEP_Sensor_ID                 	long_name         NID used at NOAA/NCEP/EMC to identify a satellite/sensor (-1 == none available)          L   WMO_Satellite_ID               	long_name         EWMO code for identifying satellite platforms (1023 == none available)           T   WMO_Sensor_ID                  	long_name         DWMO code for identifying a satellite sensor (2047 == none available)        \   Sensor_Channel                 	long_name         @List of sensor channel numbers associated with the TauCoeff data        d   Absorber_ID                	long_name         @List of absorber ID values for distinguishing the absorber type.   units         N/A         l   Alpha                  	long_name         8Alpha values used to generate the absorber space levels.   units         Absorber dependent.         x   Alpha_C1               	long_name         MFirst constant (slope) used in defining the Alpha to absorber space equation.      units         Absorber dependent.         �   Alpha_C2               	long_name         OSecond constant (offset) used in defining the Alpha to absorber space equation.    units         Absorber dependent.         �   Order_Index                      	long_name         IIndex list of polynomial orders to use in the gas absorption calculation.      units         N/A       �  �   Predictor_Index                      	long_name         BIndex list of predictors to use in the gas absorption calculation.     units         N/A       �  h   Tau_Coefficients                         	long_name         -Regression model gas absorption coefficients.      units         !Absorber and predictor dependent.        p        avhrr2_n10          avhrr2_n10            b  b   �   �  N  N            q   r@*      @$      @      ? �\�?��B��C�?�]b����� �\���|��Ab^��]b����                        
   
   
   
   
   
   
                                                                                                   
                                       	               
                                                	         ���4[��?w^��Ŵ�?�);���	��yΖ�                                                        ?W�Ƒ�L��M�f	g�?��8�U���}}۴��                                                        ���~���A4kC�+Q�:IA���A'@���T                                                        >@�!u��޾]�*X �>^����C����                                                        @&�����&Q��~G@-p0����;D=�_�                                                        �$�/��b�?9v5|tJ2?c+j�}H�xM��V�f                                                        ���]���>����9[��<��W>�?!Z*]�                                                        �"����5�o��WG�(@�6�{d��ta��HAQ-�d�*�.1�J�0�A;��7ӽ��?�Jf_۲A6��1-�!:8[TL|@��P�?=�.ߤ���";��:�?�[(ĭr�����@/:��@S(�=���sk@B�|��#|�@AR!�V@2
V}���D|���?�ŭU��	���@Ol@�dИ��.�W�@��}�B ���X9{@@ɗ�����Є�@�P�@̔CJ������k̀�@��W��\S�w�(V���;h/ֵ�?�ڲ>����#�b���Y@=���'���M�%"�WH@S�꙳c��RW{Pp��@F�s;����20#�%�@��h��2��y��-8@�T�]����n %T�H@�7�atG� �a}A7�2�����G/��T��AN[���J�sf��A=�y��L�#Zѩ��@�J:��b��z#P)�?�9��h��>-;�ZZ�@sf�����:	�
�@��	��p������Q@�@�._�6���q�,���@���>�������X�;?=Ƃ]���v��r�>M?�'	 (뿷��1P�?�����\��O�q�?·��0|��L�?{��?��"��������3�?Y ��*(J��$��	_��8�&k���x���                                                                >�h��a���X���">�����TB                                                                ?�h9D�������ԗ?���=g                                                                ���@��:?����|?��ݛ��(                                                                �VKP��_?��厔�����/���                                                                �����2#>�9�XC�z�.v                                                                �������>��s-��>�Ի����                                                                ��uwS�W�'6�{�@WV$`��p�۝[�@t`J�..��ac�zD��                                        @E�	g����r��m;@�-3��^���_�l@���U��H�b����                                        ?9^9�R`�?w��W�ԉ�����[I�?�3�F��D���Zr�K}?�@�=t1                                        �F�QIxWwAsh6����C��HBA�:U�k>����hX7�Ad�m�2��                                        ?B����/?.�;Q��(�_a�w.?w<8Y���~�\
��?l��8�R                                        >ɸ���{���0��?'\vu���4�O���/-��?���K�w                                        �P�65��>,Ň�!����g������v�t>ҫc�*ž� Մ�{                                         �1�7V���&H�sEN�@�t u�                                                                ?���~Ã?�i)�Q����0o��                                                                ?���˙+��#��uT?�u6P�|n                                                                ��g����?�3�*T\ÿ�`�8���                                                                >��fq]�)����Q�-�>�����w                                                                ��ybt�ը>�������ۛ�Z~                                                                ?u�z����0�n�� {?![��@��                                                                �3�z��;?��r*��k�p�                                                                ?�<�]&�Q������?�TbrG�                                                                ?3tS�k+H?j�wq yA���lR��z                                                                ��Z���_��9A���?�Ec�;<�                                                                ����B�O?�Y�Q|I��
=+�M                                                                �����'�>�i��N���#�$E                                                                ?ub�)Ϳ��?��?|H /Ӫ�                                                                