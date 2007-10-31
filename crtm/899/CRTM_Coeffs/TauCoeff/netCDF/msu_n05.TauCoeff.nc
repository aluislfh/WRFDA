CDF       
      n_Orders      n_Predictors      
n_Channels        n_Absorbers       sdsl            write_module_history      A$Id: TauCoeff_netCDF_IO.f90,v 5.4 2004/09/09 20:29:22 paulv Exp $      creation_date_and_time        2004/09/21, 17:20:18 +0000UTC      title         $upwelling transmittance coefficients   history      _alter_file.pro; $Id: GenTransCoef.f90,v 1.2. 2004/06/24 yhan Exp $$Id: Compute_MW_Transmittance.f90,v 2.0 2004/05/27 22:26:48 paulv Exp $; $Id: MWLBL_Transmittance.f90,v 3.0 2004/05/27 22:46:02 paulv Exp $; $Id: MW_SensorData_Define.f90,v 1.12 2004/05/18 17:48:04 paulv Exp $$Id: UMBC_Profile_Set.f90,v 1.2 2002/07/22 17:08:04 paulv Exp $; $Id: interpolate.f90,v 3.2 2002/07/12 19:05:13 paulv Exp $; $Id: Interpolate_Profile_Set.f90,v 1.2 2002/07/22 19:19:36 paulv Exp $$Id: Create_MW_SpcCoeff.f90,v 1.13 2004/09/02 16:55:42 paulv Exp $; $Id: MW_SensorData_Define.f90,v 1.14 2004/08/13 16:13:55 paulv Exp $     sensor_name       MSU    platform_name         TIROS-N    comment       �Data for NOAA-14 MSU used for TIROS-N MSU; varying order, max. order = 10,10,5 5 (wv, dry, ozone, microwave), TB_RMSE_MIN=0.025    id_tag        UMBC         Release              	long_name         $Release number of TauCoeff data file           Version              	long_name         $Version number of TauCoeff data file           Sensor_Descriptor                     	long_name         =Short text string containing the sensor/satellite description         P     NCEP_Sensor_ID                 	long_name         NID used at NOAA/NCEP/EMC to identify a satellite/sensor (-1 == none available)          `   WMO_Satellite_ID               	long_name         EWMO code for identifying satellite platforms (1023 == none available)           p   WMO_Sensor_ID                  	long_name         DWMO code for identifying a satellite sensor (2047 == none available)        �   Sensor_Channel                 	long_name         @List of sensor channel numbers associated with the TauCoeff data        �   Absorber_ID                	long_name         @List of absorber ID values for distinguishing the absorber type.   units         N/A         �   Alpha                  	long_name         8Alpha values used to generate the absorber space levels.   units         Absorber dependent.         �   Alpha_C1               	long_name         MFirst constant (slope) used in defining the Alpha to absorber space equation.      units         Absorber dependent.         �   Alpha_C2               	long_name         OSecond constant (offset) used in defining the Alpha to absorber space equation.    units         Absorber dependent.         �   Order_Index                      	long_name         IIndex list of polynomial orders to use in the gas absorption calculation.      units         N/A      P  �   Predictor_Index                      	long_name         BIndex list of predictors to use in the gas absorption calculation.     units         N/A      P  D   Tau_Coefficients                         	long_name         -Regression model gas absorption coefficients.      units         !Absorber and predictor dependent.        �  �      msu_n05             msu_n05             msu_n05             msu_n05                �   �   �   �  �  �  �  �  o  o  o  o                  q   r@*      @$      @      ? �\�?��B��C�?�]b����� �\���|��Ab^��]b����                                                                                                                                                                                                                                                                                                             
                                                                   
                                                                      
                                                             
                                                             �'PɁ_�}@L��8p�O��D��g                                                                ?�w�t����7&\�?�аA%I.                                                                ����};�>:��X�� ރ Q                                                                ?0D2���¿E8;�^?<$\�E`1                                                                @â����^A�������:S�a�@                                                                ��s���8h?�q���俵���ݽ                                                                ?͊��zS��:�!L�@� ���                                                                �.l���L�;q��&�@`׳N�%�v-�v�@w�H+@�`Õ�[�                                        ���L��@L�R��3��c���@hC����]����X@<X�����                                        ?�����b*��M��E���W��#?�`g������&��?ۭ�&�Z�                                        ���/r^
i?��er�y]��+����C?�����A\�13-?�9�~�f�                                        �`P-'(�?>Z�9�ϲ�U��'|�?\��\ 0޿R���C�?2z����                                        ?�G?p=?�Ӿ""�QS?�/Zx�8����m�?䣉����	� 4H�                                        ?5d�����\�o6��?o^c�E��qx��/�?b}��9ͥ�@�'N#                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                �&�o���@/�݀	��                                                                        ?�¤!|󟿰Ʉ`�                                                                        ���"E[@���TF                                                                        ?��'1�M3�������r                                                                        ���zT��>�#
��z�                                                                        ?�Z;��5L����f��                                                                        ��	�o�?�m����                                                                        �)+���G�@m*[���@-�cU�o��[ݖ;4U]@g'�:���V�4:譣                                        ?��+� �������1��?ڻ�XJP���>�{�?��l�ۓh��f���                                        ?2�"�Ʋ��Z8[0j|�?mM妤���pb��,?bR��*��@fSh�l�                                        ���=X�?�µS����� ח~?��8 ����]�?�h ��r                                        >��%�x�_?�<��5�Z�J�,ip?t�tgȐпw�!�Ќ�?a𹵬ge                                        �����h@C�7�_��X����u�@]�jCNA�Qt�B
�@02�gX�                                        ?[��(N���~�%F?��Ѕ�d��'���ؖ?�O�*�N��ȗGv��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                �&�ү��@1]�F2                                                                        ?�5(Vh�U�����mT                                                                        ?��Ne����8��                                                                         ��(2����AR�j�*�                                                                        ��m	���E>�8Vd��                                                                        ?��ҽU��F?]�I                                                                        ���Gd�RT?������                                                                        �(2�w�h@
.�s�J�@[���b�{:��R�@��/�����q�?E��                                        ?º~��R�𗜪_�@�$GJ�V���]~D@0��׃�霒�m
.                                        >�y�:��)��|��p>�A���9�鄱���>�H�7�˾�K���G                                        �<T�+���@i:�!�����nG��[@�������R*�g�@bLח�<�                                        ?�� ���,��;|L��w9�<�?��z�������i�b�?��lM�                                        �1���V�?`}
���b�x+�����?�}�7 ��x���k�?\�zce�                                        �O�e撥?v?S�w0�����Na��?�����oY��"�ߦ�?_�)o^B                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                �&=�?��@J�$�s�                                                                        ���G�__A!���&                                                                        @eI;��W�s ��                                                                        ?��Y9�d}����w                                                                        >����C^n����[�                                                                        �����I*
? ��uh<�                                                                        ���PjT?������                                                                        �F���/+�6��ȥٛ@j��yt�������@���nW�w��2��                                        @,X���p�X+���;@q��!����z�����@tW�ޯ��X��a�8                                        ���vמ?�R���� N����@J��ѫ�wM�.��@����                                        ��1���??�<G��@�B� UH�@�ޣ$h��~30�?ԇ���g                                        ?(�EY�z��U2;��?mwj^�q�t�`�'��?m⑂U�:�Q=G�ƽ                                        ��Lhڜ��?����̃l���cqKP@f����ѿ�K,D-��?��p���                                        ?Q���4ҿÂ�D0)?�~����
W���w@�P���<5_T                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                