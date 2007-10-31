CDF       
      n_Orders      n_Predictors      
n_Channels        n_Absorbers       sdsl            write_module_history      C$Id: TauCoeff_netCDF_IO.f90,v 5.10 2006/09/21 17:49:41 wd20pd Exp $    creation_date_and_time        2007/08/15, 22:04:28 -0400UTC      title         CCompact-OPTRAN upwelling transmittance coefficients for SSU NOAA-11    history      3$Id: GenTransCoef_SSU.f90,v 1.3. 2007/07/25 ychen Exp $  $Id: Compute_Effective_TauProfile.f90,v 2.9 2007/07/24 19:55:59 wx23yc Exp $:$Id: Assemble_TauProfile_Data.f90,v 2.2 2006/06/30 16:47:16 dgroff Exp $; $Id: Convolve_TauSpc_with_SRF.f90,v 3.3 2006/06/30 16:47:16 dgroff Exp $; LBLRTM v9.4; HITRAN 2000 + AER updates;  $Id: UMBC_Profile_Set.f90,v 1.3 2003/08/13 21:21:02 paulv Exp $; $Id: Interpolate.f90,v 3.10 2004/06/25 17:19:21 paulv Exp $; $Id: Create_AtmProfile.f90,v 1.10 2004/11/02 20:11:14 paulv Exp $;  $Id: Create_IR_SpcCoeff_Sensor.f90,v 6.3 2005/08/11 17:26:54 paulv Exp $; $Id: SSU_SRF_ASCII2NC.f90 773 2007-07-24 18:21:01Z paul.vandelst@noaa.gov $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $;    sensor_name       SSU    platform_name         NOAA-11    comment       aASCII SRF data provided by Q.Liu. Cell pressures(hPa):  1.150000E+02  4.050000E+01  1.550000E+01;      id_tag        UMBC         Release              	long_name         $Release number of TauCoeff data file        �   Version              	long_name         $Version number of TauCoeff data file        �   Sensor_Descriptor                     	long_name         =Short text string containing the sensor/satellite description         <  �   NCEP_Sensor_ID                 	long_name         NID used at NOAA/NCEP/EMC to identify a satellite/sensor (-1 == none available)          $   WMO_Satellite_ID               	long_name         EWMO code for identifying satellite platforms (1023 == none available)           0   WMO_Sensor_ID                  	long_name         DWMO code for identifying a satellite sensor (2047 == none available)        <   Sensor_Channel                 	long_name         @List of sensor channel numbers associated with the TauCoeff data        H   Absorber_ID                	long_name         @List of absorber ID values for distinguishing the absorber type.   units         N/A         T   Alpha                  	long_name         8Alpha values used to generate the absorber space levels.   units         Absorber dependent.         `   Alpha_C1               	long_name         MFirst constant (slope) used in defining the Alpha to absorber space equation.      units         Absorber dependent.         x   Alpha_C2               	long_name         OSecond constant (offset) used in defining the Alpha to absorber space equation.    units         Absorber dependent.         �   Order_Index                      	long_name         IIndex list of polynomial orders to use in the gas absorption calculation.      units         N/A       �  �   Predictor_Index                      	long_name         BIndex list of predictors to use in the gas absorption calculation.     units         N/A       �  �   Tau_Coefficients                         	long_name         -Regression model gas absorption coefficients.      units         !Absorber and predictor dependent.        �  �      ssu_n11             ssu_n11             ssu_n11               7  7  7   �   �   �  s  s  s               q   r@*      @$      @      ? �\�?��B��C�?�]b����� �\���|��Ab^��]b����                               
   
   
   
   
   
   
                                                           
   
   
   
   
   
   
                                                           
   
   
   
   
   
   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           �2f]��1�6��9&��@�|��f����WWo@�R؇<�(�.��њ�A1����E�;�:oA;`��v�>�.0u��FAf-��j ?��`� }��g ��@S�[T���0�@8�L�<��0@q?'�t�����ˢV�@���3����$��@n~�HF���E�u�X/?8��f��t�/Z~��?���DAb��+_�r�?�]�k�߿�ڲ:�|?�"��̓j����8wy�?��Z���;M���?wG
)��?��"�Y?���Pm��ѥ��FE@<t�Ԅ��p�ܺ5Tl@�`��C&������MS@�^�7L}��?�_@�z�v����|�ǏӿK.����H�� WN'�Z��a���k@9F���c<�����@�ۮ��l���BCb�M@���5�A���j�ˤ4@��;����Z�X1Ds���f$�S@c2>�8q��v7�������!��h,@�D������F�j)A�G'MK@��Wg���A���p����kc>@ϝ�(e}��95!�汍@t�g�n|���'��D@���!����N���	P@Ӹ�M�����q�&Q}~@��j�	�C��îz���@�6>��LN�l���`x�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                �!�l^���5���_�@����=��i�sT-\A+b�����&V�AעA=�*{h��H|mF+wIAHP�H)��:�WGU�)A��	=?ި�}�ק�(&�T�s�@_���&���Bp\\@��w�����o���~@�������nX-1�@��s�����%$�w�@sH����s�NP����@���ɖ�;��b�iH�9@�/��R����u�kD�A&�hZ
��0�*��A/���c��"�'��sA	��b�w�ݵ�RqAw��� M���?�ʜ�x3��rUNe@1��k��B�)W��u@J�h����J��v�@A�ZW'�I�/���_@r����¿�,7�*�l?��Nzֿr����-��2�9l��@CN�<��x,��q�@�o��E;/��m��T��@����ڒO��s_�}@�v�,f�����-a���Jhf��C��-
�r�
Oڨ�n)@Il�CQ�f�t�u���`@���'��m���żp!@�/
�������bH�@�� M��B�sC��� c�R��Vg�s?�T�?*����:y��?�2ؼ����c��ܵg@+8:u���4�����&@5C�����+,�i�]q@�f��-��7�f�m`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                @ w��
��iB��zƋ@�����w���RɵA��\J{�=�,U�AS�/�UZW�`a��)Q\A`����@�Rj}�o�A1_��J��P�q�@�/@��4���w��=8Q&��@�ye�Y��Wn XMvA-�y�����7��y)+A7��/���.vQ|2�Au���3����:�&I?nU�^n"�?�w Ca�w�'$��LTt@b4��\��n�D/�@�O������ I��HS@ټ]�Ҭ���9�����@ω��������������o����?�TԎM��"5ζ�*X@_�7/�u��gn�)�c@�B�}k-���ײ��@�"���(8�����W@�F��gĜ��|�j�4�?�t�@'��>W�4�@����7q����X@Q$N�Q��`+���E@c����A�_��Ŧ%@P~����P�3��6��@���
?�WO)��ޱg�0M@MT��L�v�6�W�@�v�\q�����^��`J@��a��!��o�9��@�ŷU������Ș<D@jݤvP�A���/�?��۝0L������?�)�4�@��C�-w�H?�L.ʹͿ���*wwT?��ZwyC��������?�aZ��:��clǀ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        