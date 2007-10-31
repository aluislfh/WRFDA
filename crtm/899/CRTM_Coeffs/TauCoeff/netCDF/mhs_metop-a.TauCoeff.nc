CDF       
      n_Orders      n_Predictors      
n_Channels        n_Absorbers       sdsl            write_module_history      A$Id: TauCoeff_netCDF_IO.f90,v 5.4 2004/09/09 20:29:22 paulv Exp $      creation_date_and_time        2006/10/23, 20:00:36 +0000UTC      title         CCompact-OPTRAN upwelling transmittance coefficients for MHS MetOp-A    history      \$Id: GenTransCoef.f90,v 1.3. 2006/06/11 yhan Exp $  $Id: Compute_MW_Transmittance.f90,v 2.3 2006/06/30 16:47:16 dgroff Exp $; $Id: MWLBL_Transmittance.f90,v 3.4 2006/07/05 15:22:35 wd20pd Exp $; $Id: MW_SensorData_Define.f90,v 1.27 2006/07/18 21:05:40 wd20pd Exp $;  $Id: UMBC_Profile_Set.f90,v 1.3 2003/08/13 21:21:02 paulv Exp $; $Id: Interpolate.f90,v 3.10 2004/06/25 17:19:21 paulv Exp $; $Id: Create_AtmProfile.f90,v 1.10 2004/11/02 20:11:14 paulv Exp $;  $Id: Create_MW_SpcCoeff_Sensor.f90,v 6.0 2005/07/05 22:28:31 paulv Exp $; $Id: MW_SensorData_Define.f90,v 1.21 2006/02/02 19:35:28 paulv Exp $;   sensor_name       MHS    platform_name         MetOp-A    comment      Training parameters: varying order; max. order = 10 10  5 (wv, dry, ozone); TB_RMSE_MIN= 0.0100 DTAU_THRESHOLD= 0.0050 ; Surf_emi_ir=0.9800 ; Surf_emi_mw=0.6000;  Number of points used per channel in LBL calculation:   256. Absorption model used: Liebe89/93;     id_tag        UMBC         Release              	long_name         $Release number of TauCoeff data file        �   Version              	long_name         $Version number of TauCoeff data file        �   Sensor_Descriptor                     	long_name         =Short text string containing the sensor/satellite description         d  �   NCEP_Sensor_ID                 	long_name         NID used at NOAA/NCEP/EMC to identify a satellite/sensor (-1 == none available)             WMO_Satellite_ID               	long_name         EWMO code for identifying satellite platforms (1023 == none available)           (   WMO_Sensor_ID                  	long_name         DWMO code for identifying a satellite sensor (2047 == none available)        <   Sensor_Channel                 	long_name         @List of sensor channel numbers associated with the TauCoeff data        P   Absorber_ID                	long_name         @List of absorber ID values for distinguishing the absorber type.   units         N/A         d   Alpha                  	long_name         8Alpha values used to generate the absorber space levels.   units         Absorber dependent.         p   Alpha_C1               	long_name         MFirst constant (slope) used in defining the Alpha to absorber space equation.      units         Absorber dependent.         �   Alpha_C2               	long_name         OSecond constant (offset) used in defining the Alpha to absorber space equation.    units         Absorber dependent.         �   Order_Index                      	long_name         IIndex list of polynomial orders to use in the gas absorption calculation.      units         N/A      �  �   Predictor_Index                      	long_name         BIndex list of predictors to use in the gas absorption calculation.     units         N/A      �  \   Tau_Coefficients                         	long_name         -Regression model gas absorption coefficients.      units         !Absorber and predictor dependent.        $         mhs_metop-a         mhs_metop-a         mhs_metop-a         mhs_metop-a         mhs_metop-a           �  �  �  �  �                  �   �   �   �   �                     q   r@*      @$      @      ? �\�?��B��C�?�]b����� �\���|��Ab^��]b����                                                                         
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                       	         
                                                             	         
                                                                   	      
                                                          	            
                                                           	            
                                                    �/v�')R�@WN�M���m����;@v�b��=�z;�Y��@l#�N�3                                        @.�z���=gF��m~@ON��2�)����M�$VG0�@D����                                        �C�W]�Agʱ�I��v�a<i�AvV8�6��f �\C�DAA0��O�                                        ?}�Տ�ˁ��n��^?�\T�L9�UW`�@��)-�����,                                         @L�,���qw�� �@�EkT�:���v�"<@qq=`l�Kl�W0\                                        ��qdE�>��짢��N��CLY?���zW���ʯ1b>�j���a�                                        ?r��vꊿE�Gl�@?f*�nï�t��e	?q��,ZǿXF���x                                        �0n6��Z@9-SLv��D񒧐��@9�O5��                                                        ?̤���hf��oģ-N�?��$k�U�����W|                                                        ?�9��.B%��%5@E	?�����-���[f d�                                                        �l~�$��?��ⷸ����v���?o&|n�m�                                                        >��a?
<�Ԕ����n>ܚ�n3����o#��ca                                                        >�)��5��*۵	?��
�;��zO�E                                                        ���視�?�`>���6������?���އ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                �+*l!B�"@d���2s4��ǈ#���@�9�Zx��e)�A7&Ya����QD:����A^�`f�G#�_�;�7MZAR�:i��1�`�p@����P��Nݿ��Qt9�퓊@�w%�:���S`�-AHA}O��%"�AD<�D����+(�1@�5śn�K��&jB��?Q�L���x��"�+n�2@-���͌�k��W_�@��;�������d�ip@��<1���'��N@��b���/\��@��:����Q|���CA�S�,�y���br\�dA��4+_������M�:B
l��!�DᛕB!%�������L��B-	�_�����bB�7@`����<��ȩ��@�0k�ÏP�$��힬A`Ⱥ��"AېK_Al�C���LI��@�
}6+�5��|��3@}l.���?$���=o�w�\ꀁb?��k�f���<B��\�@#�hS�e���1sx�@&.J�ȍ��*l� ��@$n�4�r���,�?��j�SY��$�;�}	?TΑ�CſUX.�
?�u{쿡�2��Q�?�R�FS�ķȋ�V�?Ȩ���0�����r?��l)D�������4� ��?;S��%ˈc��@"^}˶)�                                                                �ҵ�����?�zF�׵��ߜȬe                                                                ��B#��o�?��FR@�i���xC'�                                                                �L�ܾd�?]t�@Ml0�N�����                                                                ���-�T�>��3X��脫�q                                                                >�^�\�����{�C�>�C�nu�(                                                                ?nW&��˿��!�2�?q��G8
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ���ȣ*3@qѮʋ����N��A��@�e�$T0-���_�7��@����i@��Y���#��&�.A+jV�����!%�� �1A U��R��>���'~�¾�f�D�@?'f�0��ֿVO;���?x�/#5;���ք9�K?�C�T񒿡8�:�v3?���q�����}L<?XAs%ڴM?6��Z~�H��Q���Bq@6��O&=��o�W+U�1@��}vƼ����(!Z;@�}���J
���R
��@�|�,ʶK�ņ��`�@�V���@��Fȿp�Um����g@}�W4��R@�n�?���E%�qAB5.5a�1��R��|A>�؅PƤ�?_Z&]A1mJ�I��85�}`��|Ojyx�@Ș��_��G���-�@s��J����M�gZi@�H�,˿��Hw���@�� ��:K@t���cf���{��@z��\�n@m�ځr������Bf@�	l
�*����AV�b�A_i����
��*u�A9�]7��������@�|���PI����z�_5@��� ���cx�ߢ�A�uD�[1=����+ALA�d��:�s������A���7�a��,�l�xB�磷��=���B���x��}"^	���#e����,��Yd�@�{�c3�                                                                ��l-Ql�@'Iڛ®��v[Y�U                                                                ?}��4���Q��_o?���<yk)                                                                �Y��[3C?k%�yY��\ۆWhB�                                                                >ب��Z���A~>�[����                                                                ���R
�?�]�;tMb?ma����                                                                ��Ҿ��?�����ݾ��ߤ� f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �%�52j�@tqp�;�C�������F@��� ^q���O-�A�x1�C�)2~�uS�A)�����A�쮲>^�A���J����\��Ɓ@��v?�>�W=��vl@�^�7�v@��[D�Y��(0�:�A�b�m��-1�M�KQA9BXF� |�9���>�gA+�kqW���	��[E�?k@�hnշ��&⤣J@:������r�85!i�@�P0��h���"��P�@б6LT��7�>7d@�V�C�e��$�M�:@�\2
lF���~��V@��z����G�j/�@t��,���G���@�@�����*��;�CΓW@�.}�b����D{V@pG����@Ut�O�����R��~e�@��`:�\>�1��P��������>�����G��
���/?���-!� Db��1?/aM��������C�>�?��o7�@Q�F�;�=���� ���@��l��g���{�.-��Ak\.o�M�&!��m��A/�hӵ#��.8�gk�A")�
��.�	�,�X@�$��;Z                                                                                         �2gŏ�)�Q�Oy@"�#�g                                                                ?͙�Iʾ��z"P��w?��̯DU                                                                �B�r��I�?PymB'���<ۂR�m                                                                �P��^���?a�5�̿Q�����                                                                >Η��?�I�ߤi;��>�e��*�                                                                ��f��X�?�]�w!���:�o5,Y                                                                ��+{J�j?�Ni<�B����1u��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �&��W��v@s*0�'B���V|�
��@�do����fl�}HpA�f`i�j�$��dh�A!�-���3��>�@��h���@�D_=���@�Wh�*��U�20��@{�D��q@�E��&�����=A�/���2"C���A>Օ���?q�UjA19d[���l@g�:?0�`+��w4@:y�ӊ��s]C�V�h@�7�XX�2��7��k(@�HC��@"����+�R�@���P�����yއ�@��ŧ�￾d�b#�E@�t�{��Iv +1��@u�HX�y�����׺s@���������θ��@����o�������˿�e��dBA@p�����c�,R�o�A�#��5�����QQ����R��t��A��O^������A��B���f��nH���n��5��"A�V}ޤZ��\ |�ڸ@m�<������l�39@�z�a����WٞE��,��A���\.�)"<��YA+���!���!E��KVA��K �P���R�mI�>�#����f��R4>�	��1�Օ��aV�>�x>}ߤ�7�j�?��_�3�!�&LX��?|:��PϿ]��b��>��0��;���J�;�2�#%��@-�À�                                                                ?Ђ7>������fR?͗��                                                                �G`QJ�C?VMm��^�Es���{0                                                                �JF�Z�x�?[��ȿL�Ԑ��                                                                >ǇJ�ʅ���ah�eB>�Nxf�D#                                                                ��B��%�?�����N��3ۣyM�                                                                �}:��+R�?�S+��r���S�Ʒ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        