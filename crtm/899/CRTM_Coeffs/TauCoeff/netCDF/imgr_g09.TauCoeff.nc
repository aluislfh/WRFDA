CDF       
      n_Orders      n_Predictors      
n_Channels        n_Absorbers       sdsl            write_module_history      C$Id: TauCoeff_netCDF_IO.f90,v 5.10 2006/09/21 17:49:41 wd20pd Exp $    creation_date_and_time        2007/07/20, 16:27:00 -0400UTC      title         FCompact-OPTRAN upwelling transmittance coefficients for IMAGER GOES-09     history      �$Id: GenTransCoef.f90,v 1.3. 2006/06/11 yhan Exp $  $Id: Compute_Effective_TauProfile.f90,v 2.9 2006/08/18 19:55:59 wd20pd Exp $:$Id: Assemble_TauProfile_Data.f90,v 2.2 2006/06/30 16:47:16 dgroff Exp $; $Id: Convolve_TauSpc_with_SRF.f90,v 3.3 2006/06/30 16:47:16 dgroff Exp $; LBLRTM v9.4; HITRAN 2000 + AER updates;  $Id: UMBC_Profile_Set.f90,v 1.3 2003/08/13 21:21:02 paulv Exp $; $Id: Interpolate.f90,v 3.10 2004/06/25 17:19:21 paulv Exp $; $Id: Create_AtmProfile.f90,v 1.10 2004/11/02 20:11:14 paulv Exp $;  $Id: Create_IR_SpcCoeff_Sensor.f90,v 6.3 2005/08/11 17:26:54 paulv Exp $; $Id: Interpolate_SRFs.f90,v 2.4 2005/05/08 19:20:02 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: imgr_g09.srf,v 1.1 2003/08/28 21:50:23 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $;    sensor_name       IMAGER     platform_name         GOES-09    comment      0Training parameters: varying order; max. order = 10 10  5 (wv, dry, ozone); TB_RMSE_MIN= 0.0100 DTAU_THRESHOLD= 0.0050 ; Surf_emi_ir=0.9800 ; Surf_emi_mw=0.6000;  Mission (23 May.95 - 28 Jul.98) mean CO2 amount of 362.900ppmv used.; Interpolated SRFs for transmittance production; Data obtained from HMW;   id_tag        UMBC         Release              	long_name         $Release number of TauCoeff data file           Version              	long_name         $Version number of TauCoeff data file           Sensor_Descriptor                     	long_name         =Short text string containing the sensor/satellite description         P      NCEP_Sensor_ID                 	long_name         NID used at NOAA/NCEP/EMC to identify a satellite/sensor (-1 == none available)          p   WMO_Satellite_ID               	long_name         EWMO code for identifying satellite platforms (1023 == none available)           �   WMO_Sensor_ID                  	long_name         DWMO code for identifying a satellite sensor (2047 == none available)        �   Sensor_Channel                 	long_name         @List of sensor channel numbers associated with the TauCoeff data        �   Absorber_ID                	long_name         @List of absorber ID values for distinguishing the absorber type.   units         N/A         �   Alpha                  	long_name         8Alpha values used to generate the absorber space levels.   units         Absorber dependent.         �   Alpha_C1               	long_name         MFirst constant (slope) used in defining the Alpha to absorber space equation.      units         Absorber dependent.         �   Alpha_C2               	long_name         OSecond constant (offset) used in defining the Alpha to absorber space equation.    units         Absorber dependent.         �   Order_Index                      	long_name         IIndex list of polynomial orders to use in the gas absorption calculation.      units         N/A      P     Predictor_Index                      	long_name         BIndex list of predictors to use in the gas absorption calculation.     units         N/A      P  T   Tau_Coefficients                         	long_name         -Regression model gas absorption coefficients.      units         !Absorber and predictor dependent.        �  �      imgr_g09            imgr_g09            imgr_g09            imgr_g09                       �   �   �   �  g  g  g  g                  q   r@*      @$      @      ? �\�?��B��C�?�]b����� �\���|��Ab^��]b����                        
   
   
   
   
   
   
                        
   
   
   
   
   
   
                                             
   
   
   
   
   
   
                                                                                                                              
                                    	            	               
         
                                          
                                                               
                                                           	�\���z�ɾ�!(@���}�                                                                ?|�o��d?�_%t����.���O'                                                                �`]�O4�?y&��F�T�i��C�@>                                                                ?XEERS��l����?F�{s�S                                                                ��q�]��=�S�?u�꽹���                                                                �����[AXxR�������/��                                                                ?�q7�X(�n�f�?��蘴P                                                                �$��	�J�g�%��y�@���j,����<9NA��J_�("��=�hA5&��1���6�t} ��A.2q����Eg~@꺣g�]Y@r��������n�@��S��|����AA*�hr��9�o�`��A@�6BX���<A��cA.������q%���_@�Ku���?Ĝaa�������!�.�@%�`Ei�Asp� �@R.����Y��H7@Y�RV���P��J�J:@<�PX���Y2��?��8�[�L5�aO9�@�(Z�HK��J���P�@�9x��>�ֻT�;�@ߧ��ۃ���h'��G�@���G��������,x@�!�7:o��n�Y�~�?vꍰ���f�����?�z5�$���m�k�$@%��IѢ��3��r@8��	qz��4j�$�@%2ж���	�&�vA>?�'�O-��C� @FE��o���w"Z����@�ep�Q#z����q�)@�ue�qs����X��@�?*�u�������"�@�:0޹,��j�ǩLI񿅁0��}?���f`Ծ�8ם��]@p`��"���%=�@�N6N��#�V�]@���Y;Sw���t��-@����[���}B�&r)l�%��@L�@0O	������'�y�                                                                ����sı=�"�ĩ���i���
�                                                                >ɴ��5���&3x�>�m�/��.                                                                ���5)�?iw��@�ÿ�¡M)�,                                                                �tP���ſ�\�3�?鯈ׁ�T                                                                �*��hJn�[��)(X��jl��#�v                                                                >��/\EȾ���*'��?N[�X�U                                                                @�H@�\�p����%@�������s�cAP�7b�,S�Ɨ�$A@�=�%|�G�K�W�AEּ�`��7i�9��A	|�R����f$��@`v��ə���굻�3@��7�Z���M�nnA2��DjV�0"�R'$BA7Jۂ;��4�Ue���A$��Y����:��p e�b6s��jVA�����3O���f 6��B#�
�����G�\��ޞBa��n�r�p�@D��Bs�~S����m��oi��BY_?"թ9�2��]g�������JX�?��S� �$/��5FJ@X&޹�[���\��2E@�=��z�����3�G@�A��rj�����+<�@�iX�B���Q|�T��/>u�D�������<T� \>��¶_�k�<z�ql�?&~f�	[�6v`�%��?=��W"�7���Ո�?%�%_4,�7ܤ-�>�n0Vv�	eG3O��?Lw*�/���4��؏?��(��)��6��u?���뀿�|�i�&#?ٙF��L��i���?����A@V����9�����y@ڲ���\�Y�2��qA7�=_���SIG��e�AcC�]�+��h7� ��wAb���	���P)�lB��A(t�TN�1T��G{
@4�}f�9M�0ou0)�                                                                ?�$dT��$����[�	r?Կ����                                                                @#Za����@^�u	�@6A�ɔ8�                                                                �A.�8���?WR��u=+�Qd���                                                                �א�r�z>�}������1�F���                                                                ?��������l?a��?����,                                                                >Vԁ�?�ƾh���>[���a�j                                                                �&��I�&���v��@-z�-I`�                                                                >�EY�����:eI7>O�=c��                                                                �����tξ��ݵɊ>�F�b4�                                                                ?o���[?�l:k�}��bD����                                                                                                                                                                                                                                                                                                                                        �?�����ai��].1@�i��}���3�B�A�m�{�,a�� �A@��=p���Ht��GQAEQ��\D�4tɀvx�A�3b4d`@��^��l���)�i����Z�w@�A��,u/��+S8�g��A;��g0@�A�=�=�gA?��ic��2�	�k�A_1A7�M���,Ql����������16��@G�FC���{&:�4�@���7_R����j�%�'@�T�@��D�����:8@����K�U��������@������������A�H�\O�$�α_�g!����spοB5r�<��"n�+ęiB0�=P��4���uB.�mcN}��wX�A���J̊?;�l��|?����;Ց�ȴ{`LA?������������@71G����E^V>��@Ie�=�\��B�>��G@/�s�[P���=أm+?tD�PJn�?���]1d�'H6�8��@a��t�����o��L@�4���6���yɾx8@��`)_���mA���@�jG� ��M3�v��>0�H��;u�w�{V�>�_G�����D���#�>�x����zx)�?D�X���ih!��?��U�l�����YG�>�ݓ��0�:��$J�l�_�@-��                                                                ?����b=?�4_7������zD�ˮ                                                                ?x	�T�-���C�3��?�:0�E��                                                                >��n_���ǲz��>��^�a�?                                                                �0_��P�?A��{�ֿ1$���ň                                                                ��m?��Bw>�8ުFU@��U�r�_�                                                                ?fYCG���'[v��??���`7o                                                                �(bb�E��{�I%�|@	6��R~                                                                ?����c#?����^��-'�p                                                                ?P�B�f���]�O?�`M�                                                                ��)�����=����k���A7�                                                                ��G8?���'����ؾ���T                                                                >���y�����赚u�>��I%[,�                                                                �s*�a��?�5���}�q�Bf                                                                �3C6G
��b��s�C@:h��@�j�@l1�W�1@3��Ǟ�                                                @;9������a��6�s&@pw�� ���kA`I.��@P򮄵C�                                                ?jE#d �@�����p�]?�YSW2FS��R��a�?���Q8z                                                �AW~g�.�Afon��ˢ�u)`��:4Aq��$Y]@�VN�%�C�                                                ?�pY��?�Qb�^h�5N�2��?��}+?O�cC                                                >���G��*�gl?Z^��y7���L*v@?r	_�C                                                �n-���co>|�4�/很1�k	�>���������	NV��                                                �1"��-5�,}�H@.��F|s                                                                ?��7��\�?�WnwK^-��-E��                                                                ?���<�访�rJ��y�?�-zd�B                                                                ��y#±$>��<��*��m*_�*Y                                                                ?��BH��o�e�︿���}R(                                                                                                                                                                                                                                                �#̮v�9z�xs��?�@�9٫                                                                ?���9}�?���iO��i��                                                                >�~��Rs��6m?���>�6L,"9�                                                                ?y��s�4��Vl���<?���{@                                                                ��ȇI�j.>�5�/����
�"p	�                                                                ?mI�Hd�¿]���Q?PJ1���^                                                                ��Wd�
�O?Ȯ��m辿����5
�                                                                