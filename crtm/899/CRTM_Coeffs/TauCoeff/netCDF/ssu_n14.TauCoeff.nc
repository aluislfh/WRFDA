CDF       
      n_Orders      n_Predictors      
n_Channels        n_Absorbers       sdsl            write_module_history      C$Id: TauCoeff_netCDF_IO.f90,v 5.10 2006/09/21 17:49:41 wd20pd Exp $    creation_date_and_time        2007/07/25, 23:28:04 -0400UTC      title         CCompact-OPTRAN upwelling transmittance coefficients for SSU NOAA-14    history      4$Id: GenTransCoef_SSU.f90,v 1.3. 2007/07/25 ychen Exp $  $Id: Compute_Effective_TauProfile.f90,v 2.9 2007/07/24 19:55:59 wx23yc Exp $:$Id: Assemble_TauProfile_Data.f90,v 2.2 2006/06/30 16:47:16 dgroff Exp $; $Id: Convolve_TauSpc_with_SRF.f90,v 3.3 2006/06/30 16:47:16 dgroff Exp $; LBLRTM v9.4; HITRAN 2000 + AER updates;  $Id: UMBC_Profile_Set.f90,v 1.3 2003/08/13 21:21:02 paulv Exp $; $Id: Interpolate.f90,v 3.10 2004/06/25 17:19:21 paulv Exp $; $Id: Create_AtmProfile.f90,v 1.10 2004/11/02 20:11:14 paulv Exp $;  $Id: Create_IR_SpcCoeff_Sensor.f90,v 6.5 2006/08/15 20:28:54 wd20pd Exp $; $Id: SSU_SRF_ASCII2NC.f90 773 2007-07-24 18:21:01Z paul.vandelst@noaa.gov $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $;   sensor_name       SSU    platform_name         NOAA-14    comment       aASCII SRF data provided by Q.Liu. Cell pressures(hPa):  1.080000E+02  4.050000E+01  1.500000E+01;      id_tag        UMBC         Release              	long_name         $Release number of TauCoeff data file        �   Version              	long_name         $Version number of TauCoeff data file        �   Sensor_Descriptor                     	long_name         =Short text string containing the sensor/satellite description         <  �   NCEP_Sensor_ID                 	long_name         NID used at NOAA/NCEP/EMC to identify a satellite/sensor (-1 == none available)          $   WMO_Satellite_ID               	long_name         EWMO code for identifying satellite platforms (1023 == none available)           0   WMO_Sensor_ID                  	long_name         DWMO code for identifying a satellite sensor (2047 == none available)        <   Sensor_Channel                 	long_name         @List of sensor channel numbers associated with the TauCoeff data        H   Absorber_ID                	long_name         @List of absorber ID values for distinguishing the absorber type.   units         N/A         T   Alpha                  	long_name         8Alpha values used to generate the absorber space levels.   units         Absorber dependent.         `   Alpha_C1               	long_name         MFirst constant (slope) used in defining the Alpha to absorber space equation.      units         Absorber dependent.         x   Alpha_C2               	long_name         OSecond constant (offset) used in defining the Alpha to absorber space equation.    units         Absorber dependent.         �   Order_Index                      	long_name         IIndex list of polynomial orders to use in the gas absorption calculation.      units         N/A       �  �   Predictor_Index                      	long_name         BIndex list of predictors to use in the gas absorption calculation.     units         N/A       �  �   Tau_Coefficients                         	long_name         -Regression model gas absorption coefficients.      units         !Absorber and predictor dependent.        �  �      ssu_n14             ssu_n14             ssu_n14               :  :  :   �   �   �  s  s  s               q   r@*      @$      @      ? �\�?��B��C�?�]b����� �\���|��Ab^��]b����                               
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           �g�@��r�3/B�y�@�aLݗ�ǔk�%�@�Yc�o��R����A0�8��`�:���~5�A:�4N��C�-�ق��AʯB�<?��_l��<����T��@�б��:���ڸ���Q�w_-��@s"EyD��e�R)�@��w�X#���4�'�)@p����G2'��?8
>�{��t�X 8C?�����������؛�?Р!�bH��U��~?ܸJr�@���Pv���Q?ĝN&�?Ϳ�y�p�ʁ?w��>x?�\8��?��c�p?��gR-|fW@5X_*p�l`-���@�� pzז���.�[ @�z>|��s��e�ũ��@��r� ���!��г��P��v�v�b<`0���N��.I@>��q�g{���@���&�����<�EV@��i U�����f�C�@���!Y�b;����?�G��q�@]u��}�O���^����:a�8@�c������4Nh�A(A�ܸ���<���A�+��eB���#��R@з�`����:�{@tҾ!r2���<<b�@�(�!����˽� �@��hX�,�շ�M0��@�ֳ{��(���<�Rp�@�O`8��n�(�Vy�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                �&��]���3�H�@�@�6Ӵ-�ӽ�.�aA�}���h�%�ѵ��mA=mD�殭�HG"r� AH-�j�r�:�|Z��A�Y�sӕ?��ga��E�(v��(�@`�}���1=��T�@��(��rY����}Ro�@�	W�a�����I��0@���i-����"�s�@t�u�I/�N�.���@�=�.j����<$���@�������R�R�n�A'�ZS����1H�8�A0��=/Z��#���O�#Ak^4��߻F~�����E5UĮ?�73�v͡��ؼٳ@1�fo��C�6�;\@K��G��KtH|�zS@BvL��46�0D`��@]�Z�4��_�XKY?�'{�\s(����Gÿ���%��]@A�;��q�wp#�N�@��xG6H����ځ�@ğ9k��z���9���e@�Wa�����fõ���Jd�����<��r��
=M)B�@Iq>�p��t��~��]@��?|������4L��@�Fٝ:����� Z��@���3mj��sSh76��R��d�J?���1�֮��w��ח,?�����V��Ј��@+�s�.J�5p.\�g�@5�!ˮ��+�$/\`f@Y9�v&����2[�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                @ ؾ�����i Б!�@��r�t�����<��Y�A�)��Ӊ�=�nb��ASɩ�����`�1�6A`���L��R�����rA1�Rz:�P�%���A@�MP ������d�&�@�=��
��=&�#8A.��2&<P�8���dxA8�����/��y�gA��ݙL��AmR�^�?n����Z?��.XyVR�&�9���p@a��P����1Zِx(@�$��Z}��X�� �@پ[��^��PT��M@϶_n������Q�B����{�B=x?ʀ��T$�"f�Y���@`I�f����o�ǫ�@���';���z4��@ƥ���M�ċ7 �G@��� �����A�'�?���Ϩv���O����@��'c���8o��4@Q��F�J�`NKe��@d6)�M�`2~�-C@P��`n�3�݋yz8@�қsH�?��d�s��e��д@N&�8.���v��ٗ@�*�ȕH������@�d���l���D�'��@�秐)�����pQ�4�@k:֓�Bj!.F�Z?��#�*���7BO�?�8
&t���la�$?������*<}[i?�,�t��h�����?Ź����E�����0�C                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        