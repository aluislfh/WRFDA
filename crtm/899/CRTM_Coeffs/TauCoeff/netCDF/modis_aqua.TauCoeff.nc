CDF       
      n_Orders      n_Predictors      
n_Channels        n_Absorbers       sdsl            write_module_history      A$Id: TauCoeff_netCDF_IO.f90,v 5.4 2004/09/09 20:29:22 paulv Exp $      creation_date_and_time        2006/06/23, 18:50:19 +0000UTC      title         BCompact-OPTRAN upwelling transmittance coefficients for MODIS AQUA     history      q$Id: GenTransCoef.f90,v 1.3. 2006/06/11 yhan Exp $  $Id: Compute_Effective_TauProfile.f90,v 2.7 2006/02/14 17:12:08 paulv Exp $:$Id: Compute_Effective_TauProfile.f90,v 2.7 2006/02/14 17:12:08 paulv Exp $:$Id: Insert_TauProfile.f90,v 1.2 2006/01/26 21:26:08 paulv Exp $; $Id: Compute_Effective_TauProfile.f90,v 2.5 2005/09/16 20:27:43 paulv Exp $:$Id: Assemble_TauProfile_Data.f90,v 2.0 2005/09/23 22:34:25 paulv Exp $; $Id: Convolve_TauSpc_with_SRF.f90,v 3.2 2005/09/16 20:27:43 paulv Exp $;; LBLRTM v9.4; HITRAN 2000 + AER updates;  $Id: UMBC_Profile_Set.f90,v 1.3 2003/08/13 21:21:02 paulv Exp $; $Id: Interpolate.f90,v 3.10 2004/06/25 17:19:21 paulv Exp $; $Id: Create_AtmProfile.f90,v 1.10 2004/11/02 20:11:14 paulv Exp $;  $Id: Create_IR_SpcCoeff_Sensor.f90,v 6.1 2005/07/05 22:47:46 paulv Exp $; $Id: Interpolate_SRFs.f90,v 2.3 2003/11/19 19:54:24 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: modis_aqua.srf,v 1.1 2003/08/28 21:50:28 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $;      sensor_name       MODIS      platform_name         AQUA   comment      lTraining parameters: varying order; max. order = 10 10  5 (wv, dry, ozone); TB_RMSE_MIN= 0.0100 DTAU_THRESHOLD= 0.0050 ; Surf_emi_ir=0.9800 ; Surf_emi_mw=0.6000;  Inserted new data for profile(s): 16; CO2 mixing ratio of 380ppmv used in transmittance calcs.; Interpolated SRFs for transmittance production; Detector-averaged SRF. Data reformatted by LG 2003/06/05;   id_tag        UMBC         Release              	long_name         $Release number of TauCoeff data file        (   Version              	long_name         $Version number of TauCoeff data file        ,   Sensor_Descriptor                     	long_name         =Short text string containing the sensor/satellite description        @  0   NCEP_Sensor_ID                 	long_name         NID used at NOAA/NCEP/EMC to identify a satellite/sensor (-1 == none available)        @  p   WMO_Satellite_ID               	long_name         EWMO code for identifying satellite platforms (1023 == none available)         @  �   WMO_Sensor_ID                  	long_name         DWMO code for identifying a satellite sensor (2047 == none available)      @  �   Sensor_Channel                 	long_name         @List of sensor channel numbers associated with the TauCoeff data      @  0   Absorber_ID                	long_name         @List of absorber ID values for distinguishing the absorber type.   units         N/A         p   Alpha                  	long_name         8Alpha values used to generate the absorber space levels.   units         Absorber dependent.         |   Alpha_C1               	long_name         MFirst constant (slope) used in defining the Alpha to absorber space equation.      units         Absorber dependent.         �   Alpha_C2               	long_name         OSecond constant (offset) used in defining the Alpha to absorber space equation.    units         Absorber dependent.         �   Order_Index                      	long_name         IIndex list of polynomial orders to use in the gas absorption calculation.      units         N/A      @  �   Predictor_Index                      	long_name         BIndex list of predictors to use in the gas absorption calculation.     units         N/A      @     Tau_Coefficients                         	long_name         -Regression model gas absorption coefficients.      units         !Absorber and predictor dependent.        s�  D      modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua          modis_aqua             0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0                                  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                        !   "   #   $      q   r@*      @$      @      ? �\�?��B��C�?�]b����� �\���|��Ab^��]b����                                                                                                                                                                                                                                                                                    
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
                                             
   
   
   
   
   
   
                                                                                                                                                                                                                                          
   
   
   
   
   
   
   
   
   
   
   
   
   
                                             
   
   
   
   
   
   
                                             
   
   
   
   
   
   
                                             
   
   
   
   
   
   
                                    
                                             	                   
                                                               
                                                      
                                           	                           
                                          	                           
                                                      	                         
                           	            	                            
                           	          
                                                	               
                                          	                     
                                                	               
                                                      	             
                                       	                     
                                          	                     
                                          	                               
                                 	               ����\����}WLu@i�By���V���.                                                        ?c<���)��g:?��3\�.��پe�                                                        �������A4���<"�;dU��ǎA(E~���_                                                        =��I�	���]>/0�=�'JRŽ�&�L���                                                        @ܶ	ro�$�ⱆ�e@,Wɉ\����:��Yj                                                        �`e
b��-?�F���:ڿ����e�?���N#?                                                        ?3��Q}"?s�	|��A�����+`?~]''�@z                                                        �"�ˡ�j����/f�@w+��[�                                                                ��~]4��4>Ê�m����"��Y�)                                                                >���P�/���l�K��>��C�F�                                                                �Pb��R?+ev%ZB�#[J t                                                                ?�"��eއ�ķc��W?� K�                                                                �0Q�� �?Atf��<��2��[���                                                                ?% Z{����8�?^7g?,��ǋ8�                                                                �#c��)�?�*�j�J���m�?]�                                                                ��1��b��>�ژ�(R�>�G�ѵ�M                                                                ?m;8�?0�Qt}?R��g��                                                                =�SH���k��J��p!=Й��N��                                                                �Bt[�ht?q/�᪼�~�}���                                                                ��c�B�����T��I�?�W���]                                                                                                                                                        �)j5�@ÿ�\�g~�@��Eh                                                                ?�C�&��j?|��HWZ]��Z��h�5                                                                @��QH�@� ;�Q���漙#C�A                                                                �:r;4m7�?p��q��f܈�C/=                                                                ��qI�-�?�R
�:��?�J�<3                                                                ?BVp�c��w���4�?y�U9{�                                                                >�E�y��d����un>�-#���                                                                �$Uz���Q���Uy@!�`&�                                                                ?��-|ڝ���
�GH�?��l��J�                                                                >�J�I1�-��_��>��>z�e                                                                �#��6#Kd?4�ڂN�-�%r��t�                                                                �"�b3ҝ�?9�8D*喿0���#�                                                                ��Zp|o�>��-!����P�E                                                                ?�o���¿�E���f?��F�{�                                                                �#��=z?Ԫi�#ƾ��o2+�J                                                                �k��T �?�g.�����~o�/                                                                ?_$��Ju�z�Q9D�?~��֫E                                                                �������Rcn+���?V�m��                                                                ���m��>ڿ�]XD*���]Jd+�                                                                =��F]U����Vb���=�epN�7=                                                                �5���C�>*��NG���S\��,�                                                                �(�_������&8@�N�G��                                                                ?�t>9%?�����#��W�4�Z                                                                ����K��@���@Qe��?��m                                                                �PK�=�i�?{�&�&}�v�ܑkg#                                                                ?�V�G����s��?��oJ.;
                                                                >�)��nh �\,O���?3���                                                                �|{��=�_�3(�����SI�                                                                �$")�IPo�y&�2I"@,W���                                                                ?�6�u��Ȱ��/H�?��#��֒                                                                >��0p�.7�;���>� E{��                                                                �#�;F��B?4��W\	2�%�VLn                                                                �%�@�%��?=b�u)�k�2�{�㠾                                                                ��OKL�,>�k��w����2���                                                                ?�
�@῰`�X�H�?�d{C �0                                                                �$��\�?�D
�Yſ�x� ��,                                                                �mR(����?�y|&t������                                                                ����h^>ө��^`>�޲��1>                                                                ��?0��C�>=Cb?K
��Q�                                                                ?W�{�N��uS���?z�Xʖ��                                                                =��^�I==�7��,�=�{l��J                                                                >B���#�d�\��y�>Jq_��a                                                                �,�H���@ �$�f?�ס�jz�                                                                ����ͅ@��l����E�D                                                                ?�%͞GH��r)sOr�?r��Ɣ                                                                A�q�<$R������A(#(��j                                                                �r���,�?��	ߐcj������N�                                                                ?sp@�Zп��f�8??�k�Fz�                                                                                                                                                        �7��q@@UO�`'�g�W�ߔ;@`Fޠ�|@Ebs���J��]��                                        �'2��[�@Q��C:`��d�g 	�@gl��^�Z>x�̀h@7�2                                        ?�6-�����Ǌ�U�?�>�Uؿ坩'|W_?س!"�Up��T��                                         �������?���LM���h��3|9?��w�ˢ���$�(�Y?���'�                                        ?�fj0@h��	�S�2?�T�{������~�a?�N2ێ~��h��z8�                                        >�f�ֱ]��`�c��>��͞��נ?�_
>�>阅�����o����                                        �h�R��D�?�{U�����*YӛZ,?�W�֟�?6:�!#�n��3mK��c                                        �"{]-y��?���N��W��jR�\{                                                                ���V�����_ �܇�?·.J�1                                                                �?1�h4Q?fNePmJB�lK����                                                                ?Ih�Qc�\�p�3?Vr�g�:�                                                                ?D��th���d�Y\�?e~���                                                                ���έ�=�Zy�A����-�$                                                                ��
YBE)	>�W�(���|�m��'                                                                �(�!^������OP��@&zB|�                                                                ?�Hb7C��?���ӛʿ��X���o                                                                �Qjf�WRf?l/xP�s��dq�.�$                                                                ?��I��׿�Pa���?�NЕ                                                                ?R����9�g��ύ;?`��>��                                                                ��_���4AKeQS����&��
\                                                                ��s0İ=�!�]�Ea����                                                                �U������M���r��@�]cw����%�|V@�~��Ķ��<�V�A!�Y���)ˇ>�1?A&^F��ba�x��Jt@�y�DZ?ɉ�L'�����?�@AIO|	���b��Bf�g@z
ʁ�������_X�@����$����11@yѴu����`1�q8�@2|�%^�?Bo�Nk��{��A���?�
���4:�����H?�x����������@?�"9T����П%��?�����;���C�%�0?n�R�7?+��n���?�hA~F���w��F@Y�_]����b8���@�5��a������'�,@��;��r����M��@�*��f���6� �?XiT�����HF��$P@ɳ&r���Qv��Ao�@{=�W�y����ġc@���4bI���yN��@�k�'����D�gS@rpÖ�
��WTɰ0l7@��rz����6��I�@��l@�y��8�nL��A�^��A���m��A�cC���4��"@�L@7_���LTrD¿����1*-?�T���q��!��&7K@;_�E���L�=kq^@T��?�e��Te*��8�@K��䬼b�8��y�D�@�L�� ܿ薛R\K4��*��{?Ӳ#��ſ�H�r��                                                                ?u-7�s~e?:&t*?G9[2v|�                                                                =�!3&��=K��c`D�=���j�8                                                                �yb޺?GٿƛK�)�?�w؛Ϋ4                                                                ����!kN�?�����՜���$Ik`                                                                ���p"��0>揉=�־䕐�7n�                                                                ?u?u��~����^揷j?�@d���]                                                                �&�_4��F�����j[@/k�0��                                                                ?����Ȭ?���ᱭ�����S��                                                                >,����=��R���6-ɺ��                                                                @ӏ� �/��B`u� @��V'��                                                                >N��-�Έ�q�|�"��>w��V�                                                                �����o&?�i����ʿ�9��6�~                                                                �R}Vx�?p�j̰	�k	}�Z��                                                                �!YTk���@[��6������6��@�b�'DtL��u��+�AAL����(uh�^'A0�q����,���΄A��;q:����w�F�?�ah�V��/|�&@`�"�~2�����b�e@��j8��`���Vc��<@�����>�����4���@��� R6�����{�K@\|}Bc��?5���9˿q_��S�?�����FR�?w?ȟ��R�������+?Ӹ*=�)���5a�6?�Li�8h远�l�?lY��^��?Ԛ��T�bue5=o?�l��������f�?�:<ݕb?�(�J-��	�4m�T�@�Yt�{��y_�u2@
�i�q3Y���c�Yw�=�1Ο��@w'7�����'6.��Z@��&��u��t�W�4�@��Ȫ\����#6m�@��DD�nm������@�z-=��8�j��L�E�kD����@�Y�ì�j��7'Q{�A���8�}�qtdA-���9� �2���HA0A����!�S7��A<+�%��lD����K���ĉ���E{�@�H��P���@}8�������ֵb�@���A	��M!��s�@���#ji���2ԫ2a"@|�*�����ƿ�dH�F�?��ܿ�&�                                                                ?E@���,�?O�*)h�6�Q�G-Ci1                                                                =�-�RƤ�����ڷ�=���N+�                                                                �^&�O�H?m��;4п^����Ә                                                                                                                                                                                                                                                                                                                                        @?,�/�]�q�����s@�;������'���@�R��5���k󔭠��)/��AD(����K�
.��nAB��D����#�}�oNܿ�SƢa@Y.vX��W���K��w
@�o�J�g���J\Mݝ�A
���ʜ����q�S@�g�9ǷA�c�i��f��M�@�򘲈�����IzA@��h�� �?�Y��Y�@m�,d����A���1e@�3a�����i+t�:�@��9�����=g����@���3�C�� T"��2�g�/��AbL�q3 "���V�-�A�;��T��e0�s�B��Ax��'�1���B/�!S~��*0Kx�BU�����ߋ?�?T�����vP`W�?�����ݿ�:m�d�@Aٟϊh�0�JW��|@A��X���H6�⍯�@DQҖ�[�3-왰j�@ ��.�}�d�ho!J?�ߟ�]S�l��U�y@Q�H�O��w�Oi�3@�����[���^��~
@�����B��ļ�c@�����w�/��                                                                                        �.<��)@��ߟ4��Z2�k�                                                                ?�d��\$����ؒVGg?�t6�},�                                                                @?
����Q�9TD@D%�×�                                                                >=�1��DG�PY"�}�>B4��%�                                                                �Mn���)?`��ݩ���S� y&��                                                                �A�����?S�Vp!�D�j2o��                                                                ?qɞ�d-����\��q?����H��                                                                �'�q��"�@*,l�����'ŋ�                                                                >�¥^м���34@��>�o�ቔ                                                                ���W�'�?���"�m������QA                                                                � �lȣ>
�ߦd�K�J�O
                                                                ��[,����ȁ��f?�,���                                                                ?yfJ��y2?�)e�7�{����,                                                                 ?Dz���������C��?���8 �                                                                @5���QM�@��eY�e��� m�C����ۍ󛀋@���;n��yF��A �z?_h�!�WbtjvA	o� 2���l�A4���wē���@BM�<�;���jZ|�g@�^��8�Q��UT���@��&�H�<���뺣�@�L���t�O@?U@�qq&S��@�]��#�>�3�8ڴݿ??�* �?�⁀��g��R��i?�7J�kW����E���@	>�.u������C@KJ��湿��
�4?���ڞ1��n\~� ?҈Bz� ��	o;��?@52U�q��V�o�d�<@p�o�=	���Q�R;.�@�*�}ȃ���fg�^�$@p\�q�)��J���GU5A"�ӽ�D��7S�͊�A�ݙ)j����kH!A��3�N���
����BH�q�����5Ƞ�A��I�������Ɲ*A�$B���/*
��?M�H۱����Q��[�?��.b����{%n�?��Ր�[�?���c�e��"o,�W?�C����}^�
��?�Λι�-                                                                                        �C�P� @(��l�-��OV;ZH�@M`kU�.                                                        ?x����砿�StH�=�?�ݧ�ܪͿ�>ʁژ                                                        ���V�@��m�&D:��e0@Ǒ�=��                                                        @>ƅUu�W��7�Y@X?Xδ��@xtf�                                                        >�ı¤���t�_�2T>��I��T.����+�W                                                        ��3�c�Y?!;ͧ�_��"���x?	*�ۻ^�                                                        ��
j�-�?�A�'M?�鈰K_F���1/g��                                                        �$��(�d?�)iԚ�@`����<                                                                ?|�����׿j��I��Y�}�^E�@t                                                                >��	&���\���+>�z0=Zp                                                                ��@8w��f?���|�8���&>Y                                                                �j:z��?1&�x	� R�|#                                                                �ݻ�ϣ'�O��\e�ҝi���                                                                                                                                                        �:��@8m �������Dr\�@ϫ%8�)���zWS�A��(���.q��z5A6u�7=��4�	�lA#�ݿ�� ��c��@_�
\[�$���j� PW@�?�6�St���Ѕ$A
��B�W�l�Y��A�]�@���ޓ�!F@��������(��T@���U;��RQS�?[L�j�̿�a?W��?�_�w����G$�m�d@���v �(�ry�O�@0Q)�U�*u���\�@9I�俿�2�G ��^JM���xA�v�������X���FA�ٗ��m�����JS,B��*\�����![4��A���=_�0A���Y�xk���"NA�� ��?��v@�8��"��?���dӹn���o�)?�JE0����ڞ2�@/��Z��7�?�'7@4O�l�C�#ӷ4�@ u��GC�zH/�`��>���G$>��PH!��"䄹J�?K��r{���f�k��B?vƅ7�[t�|�*VGr�?v �щ�9�c%��?<pY�ך7�pC��˝X?�Ďs��^Tk��%K��� �@`�0��(������B�@�S�Lr2���,81��/@�]x�l����W�C�@g�(�^��%��u�!�U�T�iH@!kx]��                                                                ��,o���Z>��#C����t�>�v�                                                                >��.�����3L7�l>�/�����                                                                ?�X()�J��fCq̉?�7"��.                                                                �'��)� ?@���ˮ�6�Nz���                                                                �=��k���?P
��s��A4��{x                                                                ?�z��D�	��Y%�J�.?�Vd�ʛ                                                                 �)�F�4�� {�?�to��	                                                                ?gz�0�0�?���us������                                                                �vܶRM��?��{�Z=���S�J�
�                                                                ��r`����?� �.Q�?|>FF�E{                                                                �оDb^{-=�PL�w���?�-�?�                                                                ?T��ԈE�����	�p@?�)�÷e                                                                >���u������\�>���b
_m                                                                � lj����1��ڀ��@U�������bm=h�k�@Xr�W(';�"}�;�	                                        @P~R %)�|�fi
RQ@�̃�!G'�� K#��@�w��N?�n`���v�                                        �t��ʕ��?�k-Q��҂ן�Z7?�v��](�㽳�0?͏=Ɋ�                                        �Qw�U?gSA~d��o������4�A��В�X���2�O ��ApND}�                                        ?�D���]?7
�`�J�[�5�9N?f߷���`*n;/�?;@����                                        >�d ����<qQ�7�?$������:�����8?=�"����'���yp�                                        >f�瑯}ؾ��<�rxL>�0�c��@>���~�C��"b=��Z>��׉���                                        �1|�!�k�	��&q���9+L��u                                                                ?���&�?��[��#��x�N�Æ                                                                ?vзG�ѿ�ت�b��?� t��                                                                �+�U�M > �Ե/�|�r{;(                                                                >�:_yo���w	M�c�>�}Z1�L�                                                                >��[>Ι����2��9�>ˊ#߹&                                                                �B�[53?U�b����F;E�DĞ                                                                ?�ڶ��MJ`K@s�#�ּ���;�f��@�t�M��sO?p'o                                        ��1��3�i@;��c�6�b�/��@t9>����t���٫�@_5�y��                                        �4W�a���?c/�e�2�}B~���?����) �~�;�%E~?`�]2�                                        ?��aoW���/�=�A@c�>�j��+��Dk@)tZ	�p������                                        ?1#��mH�?��P(����_:��>�?�3\=����D���?؜t��zI                                        >&�1�7s�;س�->T��8�9�]���W�:>TĔ@�Z��6p�t�                                        ?R�M]c�ҿI�y������`��P?�]iw�?}nZ-ۿ�c�i�1                                        �	���D�'�*�^�@X�r����rjn`��@v���K�(�c�۠��                                        @@�|�����m�W�$A@��4�W���]~u�t@�1���G�a�7s��                                        ?B`J�V��?D�A�E ���yW���?��,��2�Ӷ���?��~U�s0                                        �C��.��"Aq�����L�����LA�F�
>����:�Ae�>��q�                                        ?;:��Q?/ڋt.i�`������?yB
A���N��?p�&�%�                                        >��<�%�	���K�B?�m��^>�Cv�:����|Ѣ��?���z�                                        �Q|:�O>�����`���<��e边�;DP0=>�R������n��a`                                        �3�3��\��'���2Ge@#gq=�n                                                                ?�?��9�&?���d/����PM`#                                                                ���[cr��?�4R�95������{P�                                                                ?�r�I��5�0�K6�?.;ms�I�                                                                ?�R6��*������M�?�I��-һ                                                                ��0���N��B Z�4�>��m�f�                                                                =�@��4a?=�&Cc8:���T���                                                                �6�<����?�ݷ�����nÛ�                                                                ?��S�P5�?t�r*r�k?b�h�(f�                                                                �"Pw]?hο�h�#��?rJ0i!N�                                                                ?��m�������j?�?�N�v                                                                �ZH&h:b>x�����оr;#6O=�                                                                ?
 P&ֆx�$�ri�Ƒ?s�h9?\                                                                ����z>?���r�)~�����*                                                                �[ w��t�ݲ�#6�@:��}���G�~�.�|@@~��5                                                @=S*� �c.��\@r%����+�n)�(�9:@R�x�                                                ?m��z$�ܿ��a����?�ՙI�v-��G�����?�����~                                                �As�]��pAgP����N�vk�n�j�Ar�w� ~�X
�vg?�                                                ?�09
)?�$n�e�7����B?>2����=�4P���E�                                                >�ݮ�����N���m�?%ۣ��I�%�1��>�CX{��f                                                �h55�l>X+h)0l>�C��|��>U��S�>�<�YGxX                                                �/������#�s�4@�@%�iQ�aF                                                                >��`nԧ?,��vm�f�'Qh·�                                                                ?���w�￭�{������90��5                                                                �3���מ�?4������t�Ӧ�                                                                ?���_Bͭ������~?qܱD<�q                                                                >�ļ;1�����o�>������G                                                                �+:T��?7�B���$Vt9en@                                                                �%��=����o'܏@T��˳�                                                                ?���q8��?�Yvc�A����2%�I                                                                ��6�>��=�),|�ޙ����|�                                                                >�D���9b� �Fsޯ�>����FR                                                                �_��-�W�?np:$g�ٿq/I  |�                                                                ��Y��i0F?�P��� �?�Ǉ�z�9                                                                                                                                                        �>�K���@&�Z5n�'��	Q��j$@�~�ǖ����I"�=�AX6L�V��'�Z��?�A10�G���.&�O�_AT����k��H��C�V��ZEw�?fPadӀ��peo�[�?�l��+����?i'@#�2�����4�8%.@;�c���5���$.@#�)�}���w"��@U�T�;-���m�!�@�,����������zAq�)�C'@�I���"��"��t¡A0�n�g��,K��R��A'�L+Ƥ��C�([��]ic��A����(2���m����c�O�?HB�:QI�B�1�``�SBA3aR��D����oB>�Љ��(U�@���B �K�Z�T� kߐ,�??DkdB�˯�uHO���?�bI��S���<�w����g(�y�b?���r�G��1��jZd?�N�;��ֿ�.����?�m�e�:?7C�V�˿$|�̋�?����z�l�ͯ1Z��?��a�n���=g��=@*}�����2��:��@/ÝH����鿳7-4?�� ����8��r����*��=�@�0�a���T�mn�@~�l�?�[����.M/+@��=�����d�2L@��(�jF���a�3�@w�.w���)�v%��@4!$�,@x�S�,q��*b
�8]@�lݨ��u ��A���M@�% �]PA#@���,�TpY�n�@�bؓL�e��4��I�bx�N�[6?��Y���|�Ӿ���i?��?��y���4�#`@���eC�Y}p/@
\x(Y^F��}���K?�#��F�?�׈r:�����s��@�>z<��F?�)�'�@l�ͪ����C}���@�9�PF���vY���s@��,K�}�y2����@O	S��`?:�\q~B?��'�D�W���m~b�@O��P���wD	�1]�@�8������۰�+@��üР���p���@�n/�����q�#��M�?��V�ņ�?�<}iIG�%�>��o@S�?�0���t,�)ß@�#�`�����2� 'Bs@��{�h��-�QP�L@t���'��I�d֦�2����@e�|�S����%�[�@��M09Ҫ��4��^�<@��J� �[�N؄�����uʔ��2@��fS�h�t�d"��@I��՜&?�#��N���W_��w@97iD?��" D��֥@,��~(���,|�d)�x@ \\oxh���X$z�S�������?��	YlT���c�p���c�8�ם���g$�@%��BKE0�#��]ʹ�                                                        ?����pT)?�u��׌����AfK?����-                                                        ?1Z��E��?q0��"^����wlnƖ?�r�[J�O                                                        ���R��'�?��$g��ӿ�{܋տj�;?%E;                                                        ?0���?y8�`���v��*�M?��V�Z�                                                        ?j�%��*��� � K�?�8xK��쿆�)���p                                                        =� EI	�E=Х�\�dt��uYQa�6��u�w���                                                        �)[(t���@�?��&@>ֿ�~�9������                                                        ?�����i@N��� ��22l��m@(�c�8(�                                                        ?D����d��
p��Ӭ?���.E���c�=�                                                        AƒK�߿�=���j&AK��w�<�Ɍ                                                        ?�c���? 9���hS�C�_-aU?=��y�"                                                        ����P����`�;N>�{�oľ����                                                        �ƴZg�>�Hz?����c�I4�>�m���S                                                        �#e�8�����Rl�4@�
m ϕ{��]��.ts@��N$�@���f��B�A,�����1�4'��h
A1L�a���� �	���|@���u�ϔ�0�nI	U?o��?�ÿ�����s2^?�Õ34���[����d���)c?��?Ҡ��ߦ�(~?�q}U���U6���?���Խ�?�*�!�򒿯!-��i?�l�X#C�#���Oڤ@W�ӟ���{��\\�@��3������`s*A��@���N8�����['M��@_aX0�e?�f���k'��d���@��4��-o���M�@'������@C_�����`/�����@fP����`��i&��@J��2<R�"Cf�.)�?F�yCu?�v�n�/(��M���@R���٬��;Rl�,h@���~�2���{-��G@�A��d���Ca[�J@�ۆAw��� y�+2@,i"խ)�iC��QN@��=(��H����E_�@�_��3'j��!���[@���"��I��s("@��cG��s�����s�@p@׼�A3��٥��{?��g�a�^bՂ@0�:?Ȓ��Ce�I��@N�@���Q5��@I��PeN�8�L�H]@��I����g��~~d�&��f�CV��El�L�@e)@�J���m|Z��'K@[]�z�e\                                        ?��V���@�K��>�,-C����\%Dz@2��0s��('`�g+                                        ���d3��+?�1Z��=1����5u@���S+������?�U]:%                                        ?,{��K�п���R�+?��g_��������?�����s��>�S!                                        >�A�_+�?��b2!�#�?د|�l��pwH?���j9*� ���@A�                                        ?5�P`H��e��'W%?��Ɉ�?w���@] �?�5 �u��i�U��\?                                        �4�U��>e�ה����^ܠ��>�ʞ%1$���ΐ&(|>j�u��H�                                        �;ܘ�
ʿ�v����@��P�}�                                                                ?��һA�}��r���?�Ӡz'׊                                                                �l�עU!?�2���u��1�F                                                                ��#b�v��A'^?g���W:b�b                                                                ?���%?	�s�w�(�(�Al�                                                                >vx�ـ�����!�>��٠\��                                                                ���VL�>���F^g��G�                                                                �#Kǖ�\@?��(�)@l�*9�������
+�@�}�}�.��h�j~��A��e�.k�����R�A���B������@ј9X�l��B����Y�?�|�t�3����X	=�?�d�QW�y��cWx��!@JHi_���� ���@��ЖB�����`�?��VxG�x��^2���?��S����lN$9@�!�j8J�M,$pOQ@tU~�r�����~T5a�@���ۡ����7��}��@�1��{L ��=g�M��@w6jZ��l��LLK1�?�����$��9f@Q�Pg� ��y�v�YA�@��0�fW��t� @��w�pm����&:�@�%=���l�v���?��2��̩��Y7�z@7c��kte�^>$}��Y@x�޼������gY'(@�<y3��p���s@� B'�К�p}��/@D�/�����$NMC���@^,rIqQ���A�k=X@����������>�@�@��N��߭��@����@��r�1���1y�g�@zT5p�`��G����?�3�D���(y��
@-$#�d��#�+&@5q{ ���?�Gy��@@Tz�\��6��U�&@$x���܎��ߢY<�?ԉ;�R����0�,�D<�"����[C@8��厐��4X�{�                                                        ?�X�f��@ �f��"}h=��@	�H�#�S                                                        ���5qѥs>����?u#h��ǿ#A_5�                                                        >�&�L���?��_�`�i��)��ϞQ?���I���                                                        >�.�� @��-�r;M��@����>�W����                                                        ��u��7� ��?Ά�?"����k����u                                                                                                                                                �[�=�O?����/�����!���                                                                ?si����<pJ;?w㯻3��                                                                �rU05j�?��X�5Fg����p/��                                                                A	�3J-G�4��N�Au��m�                                                                �ߖ�a��@$E��]D����.�                                                                >7]_�DU�c��'~׊>a��Q}zG                                                                ?<珓�������k���D��                                                                ����8�C�[��N6h@�)Aԡ�Y��J����7@�Q�q���]�ܣ)A&ώel�?�.
��0A(/�(������P��@�kfz�?b=����TQ!�a?ӂ�<��j��*��/�@����x�� ����@�?�_Y.�F��[S@ς�o@�������?���	���?�y��$�
?ɗ�ph��?� 6]P6"�=4��5�@h:^��{Z���L۹��@�iR҆w����=��N@�ߐ����J�7���@l�K_N�`�vc�~��?��-��k�����0v@W��;�K���lڳ|�@�Ӹ�j����y2���l@�w��?������Y��@��} $�"�y`V��c[����LH@3z��t�bh��u�@���#q`���}	�;@�n�׺w����qb*N;@�-���9��RAT@A@u��^��B��xن���p�@E
��B~�j�T��@�2��"���&��9'@�yH�6 ��*-�LIf@�"N��z�}����U�@^G�u'3O�,Y����@q;:����M%+�@���V�e�$�/ߝACaNv^�%L����A(ӫf.B�"岍�A�6Z�+��y��AEW@���k%�����R�&���Wk��c?���O�?L                                                                ?�����?�֯d�N0���җ��                                                                �%�n�:�?C��J.�e�`t��.                                                                ?{�C?�^U���y��v?�x�����                                                                ��i=4��<?�:t/0��m��"$                                                                >�"�˪�o���ԇЎ_>��O�y                                                                �_�e��pֿtQ���?}�O����                                                                