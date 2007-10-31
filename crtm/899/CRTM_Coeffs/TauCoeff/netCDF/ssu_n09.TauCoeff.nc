CDF       
      n_Orders      n_Predictors      
n_Channels        n_Absorbers       sdsl            write_module_history      C$Id: TauCoeff_netCDF_IO.f90,v 5.10 2006/09/21 17:49:41 wd20pd Exp $    creation_date_and_time        2007/08/15, 22:00:47 -0400UTC      title         CCompact-OPTRAN upwelling transmittance coefficients for SSU NOAA-09    history      3$Id: GenTransCoef_SSU.f90,v 1.3. 2007/07/25 ychen Exp $  $Id: Compute_Effective_TauProfile.f90,v 2.9 2007/07/24 19:55:59 wx23yc Exp $:$Id: Assemble_TauProfile_Data.f90,v 2.2 2006/06/30 16:47:16 dgroff Exp $; $Id: Convolve_TauSpc_with_SRF.f90,v 3.3 2006/06/30 16:47:16 dgroff Exp $; LBLRTM v9.4; HITRAN 2000 + AER updates;  $Id: UMBC_Profile_Set.f90,v 1.3 2003/08/13 21:21:02 paulv Exp $; $Id: Interpolate.f90,v 3.10 2004/06/25 17:19:21 paulv Exp $; $Id: Create_AtmProfile.f90,v 1.10 2004/11/02 20:11:14 paulv Exp $;  $Id: Create_IR_SpcCoeff_Sensor.f90,v 6.3 2005/08/11 17:26:54 paulv Exp $; $Id: SSU_SRF_ASCII2NC.f90 773 2007-07-24 18:21:01Z paul.vandelst@noaa.gov $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $;    sensor_name       SSU    platform_name         NOAA-09    comment       aASCII SRF data provided by Q.Liu. Cell pressures(hPa):  1.100000E+02  4.250000E+01  1.600000E+01;      id_tag        UMBC         Release              	long_name         $Release number of TauCoeff data file        �   Version              	long_name         $Version number of TauCoeff data file        �   Sensor_Descriptor                     	long_name         =Short text string containing the sensor/satellite description         <  �   NCEP_Sensor_ID                 	long_name         NID used at NOAA/NCEP/EMC to identify a satellite/sensor (-1 == none available)          $   WMO_Satellite_ID               	long_name         EWMO code for identifying satellite platforms (1023 == none available)           0   WMO_Sensor_ID                  	long_name         DWMO code for identifying a satellite sensor (2047 == none available)        <   Sensor_Channel                 	long_name         @List of sensor channel numbers associated with the TauCoeff data        H   Absorber_ID                	long_name         @List of absorber ID values for distinguishing the absorber type.   units         N/A         T   Alpha                  	long_name         8Alpha values used to generate the absorber space levels.   units         Absorber dependent.         `   Alpha_C1               	long_name         MFirst constant (slope) used in defining the Alpha to absorber space equation.      units         Absorber dependent.         x   Alpha_C2               	long_name         OSecond constant (offset) used in defining the Alpha to absorber space equation.    units         Absorber dependent.         �   Order_Index                      	long_name         IIndex list of polynomial orders to use in the gas absorption calculation.      units         N/A       �  �   Predictor_Index                      	long_name         BIndex list of predictors to use in the gas absorption calculation.     units         N/A       �  �   Tau_Coefficients                         	long_name         -Regression model gas absorption coefficients.      units         !Absorber and predictor dependent.        �  �      ssu_n09             ssu_n09             ssu_n09               5  5  5   �   �   �  s  s  s               q   r@*      @$      @      ? �\�?��B��C�?�]b����� �\���|��Ab^��]b����                               
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           �d��S�6�^�5@�zin�V@���l�]�@�R���8���+A��A0���S��;=u���PA:�Jy=��-�F���A��X��?�h����枩��##@Cq�7��i�9)!��Qc*�_%@r��S �+��]�]v!@�!{�Ay���1'��w@o_�0���Fw�Pu!�?8W�U]��t��ul �?�
��w]u���2� ?��˗��چ�cx?��k<&�ɿ�y���?���)[�����9]?x%��0H�?������?�z
�S��\�C卧@9�~�_
�o�N� �@�J�l�$��()���@�@���H����=��l�@�Hm..%���^
��W$�Oy��5 �oF�S��!� �m�2�@<�Y'�B*�eܢ�W@�F�P���� �LM�@���iw���H_.o@�M��	�`17�۝_?�e�Ws@_����[V���)���ɐ�C@�_�Ǐ�s� ��3�IA����Y�`u�XA�Tps��&M!��@�BX6#G�9���5�@t���*�����A��w@���{��˖��Pf�@��j�w�z�է�c��@���I�z����G_K;@�s�Hz���n����ɖ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ��"�y��4��r�6q@���A��A������A���j!��%��Ar&A<�
�l%�G�q���rAG^���f�9��Ꮰ�A�m�I?�����'4ڀpBJ@^�{z���s��� .@���ɡ����l��@�U�E~U���/J��r@�0l|H"���"�_@q�Rv`�?�.���¿s��@�J��G�Ё�@B9Y����v������@���Il����I�����@�ً|������
@�#p�����m���޿����.ZK?��Z�&�G��>NSt@08&ݥ��A�7��?@HI�Qpּ�G�ktͼ�@?@�Q��*�Ⱥ��N@
S5K�2j���~HK~�R:����?�ZD�(Y���o�s��?�㦦��`�R����@)�}q�]8�3���@3�ݨ����)T'#.V�@qro�E��_�5�x��HfƋTk�����2���
�A���@I��&�T�t��qrT@��%/����c+�J@�J���M����p�@�����J��sO�㛮��MJё -�@�f���k/��Tzֳ��@��b8�!	��z$�A$�~L�I�.8̮@�A,���af��!� ]ϖA���ꠝ��Z�'X��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                @ ȣa���ik�l�^L@��MJ�bb��&崎�<A��GD��=u��QAS�8���`;#�]A`U/M�-�R,�e�ԤA1�����P8_tDG�@��ɺr�1�Ҭc���@�*��'��e5�aA�A,������6"�T�WbA6��?�z��-�%�A`��	����m�N��R?nPk:	?�-W���'��*pg�@b�(���f���2]���@�j��m��CB@ٞ�d/�U��T���@�6������S>>I�J��K��`�_?�u�#�"�	A-J@_;^D����L��Z�@���uzb��>�/ܣ@ŭ���Z~�ä c	@��R�ń�����Q)$?��#�9����s���^@T����B�6�Ю^RA@P� �g�2�_��
]>@c|w55���_�Uˌ��@Pd�Of��3�_��6@|��(P?˾+�N�M����Y@Ls�e��!�uH/G(WM@����H����8J���@���ߜ����Dr��@��q���'��9oř@h����A�l�?�=��<g��]�\���?��f
p�����e�:�?��\L�T��>����?�(K�`A��̋�6?���d�ſ�����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        