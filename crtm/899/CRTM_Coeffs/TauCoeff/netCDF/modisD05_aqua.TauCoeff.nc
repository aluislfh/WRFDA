CDF       
      n_Orders      n_Predictors      
n_Channels        n_Absorbers       sdsl            write_module_history      A$Id: TauCoeff_netCDF_IO.f90,v 5.4 2004/09/09 20:29:22 paulv Exp $      creation_date_and_time        2006/06/23, 18:50:43 +0000UTC      title         BCompact-OPTRAN upwelling transmittance coefficients for MODIS AQUA     history      t$Id: GenTransCoef.f90,v 1.3. 2006/06/11 yhan Exp $  $Id: Compute_Effective_TauProfile.f90,v 2.7 2006/02/14 17:12:08 paulv Exp $:$Id: Compute_Effective_TauProfile.f90,v 2.7 2006/02/14 17:12:08 paulv Exp $:$Id: Insert_TauProfile.f90,v 1.2 2006/01/26 21:26:08 paulv Exp $; $Id: Compute_Effective_TauProfile.f90,v 2.5 2005/09/16 20:27:43 paulv Exp $:$Id: Assemble_TauProfile_Data.f90,v 2.0 2005/09/23 22:34:25 paulv Exp $; $Id: Convolve_TauSpc_with_SRF.f90,v 3.2 2005/09/16 20:27:43 paulv Exp $;; LBLRTM v9.4; HITRAN 2000 + AER updates;  $Id: UMBC_Profile_Set.f90,v 1.3 2003/08/13 21:21:02 paulv Exp $; $Id: Interpolate.f90,v 3.10 2004/06/25 17:19:21 paulv Exp $; $Id: Create_AtmProfile.f90,v 1.10 2004/11/02 20:11:14 paulv Exp $;  $Id: Create_IR_SpcCoeff_Sensor.f90,v 6.1 2005/07/05 22:47:46 paulv Exp $; $Id: Interpolate_SRFs.f90,v 2.3 2003/11/19 19:54:24 paulv Exp $; $Id: SRF_ASCII2NC.f90,v 1.3 2003/11/19 14:00:25 paulv Exp $;$Id: modisD05_aqua.srf,v 1.1 2003/08/28 21:50:25 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $;   sensor_name       MODIS      platform_name         AQUA   comment      fTraining parameters: varying order; max. order = 10 10  5 (wv, dry, ozone); TB_RMSE_MIN= 0.0100 DTAU_THRESHOLD= 0.0050 ; Surf_emi_ir=0.9800 ; Surf_emi_mw=0.6000;  Inserted new data for profile(s): 16; CO2 mixing ratio of 380ppmv used in transmittance calcs.; Interpolated SRFs for transmittance production; Detector #5 SRF. Data reformatted by LG 2003/06/06;     id_tag        UMBC         Release              	long_name         $Release number of TauCoeff data file        $   Version              	long_name         $Version number of TauCoeff data file        (   Sensor_Descriptor                     	long_name         =Short text string containing the sensor/satellite description        @  ,   NCEP_Sensor_ID                 	long_name         NID used at NOAA/NCEP/EMC to identify a satellite/sensor (-1 == none available)        @  l   WMO_Satellite_ID               	long_name         EWMO code for identifying satellite platforms (1023 == none available)         @  �   WMO_Sensor_ID                  	long_name         DWMO code for identifying a satellite sensor (2047 == none available)      @  �   Sensor_Channel                 	long_name         @List of sensor channel numbers associated with the TauCoeff data      @  ,   Absorber_ID                	long_name         @List of absorber ID values for distinguishing the absorber type.   units         N/A         l   Alpha                  	long_name         8Alpha values used to generate the absorber space levels.   units         Absorber dependent.         x   Alpha_C1               	long_name         MFirst constant (slope) used in defining the Alpha to absorber space equation.      units         Absorber dependent.         �   Alpha_C2               	long_name         OSecond constant (offset) used in defining the Alpha to absorber space equation.    units         Absorber dependent.         �   Order_Index                      	long_name         IIndex list of polynomial orders to use in the gas absorption calculation.      units         N/A      @  �   Predictor_Index                      	long_name         BIndex list of predictors to use in the gas absorption calculation.     units         N/A      @      Tau_Coefficients                         	long_name         -Regression model gas absorption coefficients.      units         !Absorber and predictor dependent.        s�  @      modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua       modisD05_aqua          0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0                                  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                        !   "   #   $      q   r@*      @$      @      ? �\�?��B��C�?�]b����� �\���|��Ab^��]b����                                                                                                                                                                                                                                                                                    
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
                                                      
                                           	                           
                                          	                           
                                                      	                            
                        	            	                            
                           	          
                                                	               
                                          	                     
                                                	               
                                                      	             
                                       	                     
                                          	                     
                                          	                              
                                 	               ���u_����ӭ
�@�=z3��>�U@                                                        ?cY~`АH��CG�5��?�*Q�V忙*fj��                                                        ���hy�A4�b]+���;g���_/A(E�	DU                                                        =����ܰz��^�,�'6=ซR� ��H˂t|�                                                        @�J���$�q�3S�@,h	��B�����N�                                                        �`��_r`?�}�&�=�����{?���2�                                                        ?3��[��Q?s����'��L��s��?~���K�                                                        �"�TYB��Į�-�?@hfB��                                                                ���A���>æ"���̾�9�N`eC                                                                >���J|�����Ec>���Ը6�                                                                �5�H�p�?+E�
�¿#F8m.J�                                                                ?��̗����Ć���r?�ܴ����                                                                �0?{\܈�?Aa�>��ȿ2���Ҫ                                                                ?%���RQ`�9oR�+��?-��B0                                                                �#[,��̎?��	&�-1���_�                                                                ���IK��!>�.��Ǥ�ΛV�s��                                                                ?l�M `�w??Z-]�x?6G����                                                                =���V`p��$�<Β�=�3\�C{                                                                �;Y�OT��?k ax��ȿ{��B�GR                                                                ��p|���_��D���Z4?�G|&�4                                                                                                                                                        �) �G�8k�����K*Y@F!>�M                                                                ?�Bc��� ?}2���ٿ�m@���                                                                @�n�ReS@��A� ü���|0�-�                                                                �:OP��b?oԴ<+���f��[���                                                                �޻=�8!?Ӻ1F�?���0�.�                                                                ?B#)i]>�w��U�~?yi<��                                                                >�W]@��X��p㼦�>�{g ��                                                                �$R�-�7����Vm4@3 ���                                                                ?�����r����ܾ?���WP                                                                >���if?�-����w>�;���                                                                �#���m"?4�m��ϔ�%r�J|�                                                                �"�K�Y?9���5窿0�r�r�                                                                ����hO
>��p�0����eqd�                                                                ?�8��v6��ea�ws~?��:RR*�                                                                �#�;�?��,����Չ��m��                                                                �kGBK��?�tcZ�LĿ�қ��-�                                                                ?_xN���z�{�t��?}���e�V                                                                ��S5�_k�R�E�2?V�dQ�N                                                                ��fE�s�>ڛp�y���
� n                                                                =����u't���ʣ�;0=�D%T	�E                                                                �3�;{��>$8Qu|֒�R��=n�H                                                                �(��d����n�ӱ�@�Q�m=                                                                ?�jD�qڶ?���K"��&G�F�                                                                ����c�@�wX���e����?�                                                                �P䢣��?{�ڏܲ:�vq~	x�                                                                ?�Ã�i�b���2��&?��]y�@�                                                                >�����&O�.�SRN�?�g_@^                                                                �{޻�a8�=�1����d����W� 3                                                                �$!��G1���MU�@C]ȶ-R                                                                ?�,aO=ݿȤ�W_OQ?��oqM�|                                                                >��u6�l�.%l����>k��;�N                                                                �#˰�|?4�HƖݿ%��1m��                                                                �%��^-�?=U��{z�2�Wr���                                                                ��?ARm��>�Xߢ�D��o�i���                                                                ?����]5��N�i�ɰ?�S &Hg�                                                                �$-0,A�?���+�|��:���                                                                ��Cs�P>�:�ి��g��ŀ�                                                                ?V�_F�{�t�z��'�?z����                                                                ���=��m��AuJ�>�`?H�]���#                                                                �mH��N?�u��F�u��^$��O                                                                =�}2�?^=��ΣU�=����H�@                                                                >CÖ����eM� ��>L���                                                                �,�e�[��@h4`�?�6�:
iS                                                                ��q��F@��4���nKB�{                                                                ?�=�aA蒿�o4ni��?r@Wj@D                                                                A�=�|ˢ����ZA�#�                                                                �r3)م?����)w^����&��                                                                ?sqK�������_ߺ�?��o��#                                                                                                                                                        �7���@U +�Y/��g�U=�%�@`fZ�(@D��7���J�Q�1��                                        �'5�|���@Q�-��(�d�1Z��_@guS�zX�ZJ��wY�@7,��`��                                        ?�5�\�Ͱ�����8�?�D]�~����85^[?ض�M�A��Yku��^                                        ����}�u�?�%���<��z� ^ѝ?��1i����:_�#�?�!�sn�]                                        ?�G�Fh����G�#:?�w;\TW���=<,E<?���8b$������`                                        >�j�6�����gc�z��>�v��z�ר�%p�F>�H�A�ꖾ��l*��                                        �h����)?�B�ȁ����\PQ���?��mCv|�����+ʿ��P�/�                                        �"z�Y�4?�O<����V	h�                                                                ��ck W��>aw�?�j0��rA                                                                �?G��.��?fT�3n�q�lI�                                                                ?I]x	�!.�\�O��Y1?V�A}��                                                                ?D��6;��dk�xK�?ef��s�n                                                                ���gğ��=�]�������:�B                                                                ���%V��>Ԏ&��m�����t2                                                                �(�K��I����A��@&s�D*4;                                                                ?�F35"8q?���j���z<�                                                                �Qhh��d1?l-^Mڹ׿dq�̿�                                                                ?�Ф#��ӿ�]L����?�^q�                                                                ?R�0 $�g��?`���n�                                                                ��h/0v!�AOB����*E:�                                                                ������=�Dd�(����t���
                                                                �5����i�M�X���@���q�sg���>�d�@���/=+�$�7���A!�3�D�4�)Q���A%�HD3}�$N0@�/�����?ɆN͠2H�����@A< �:��b��gk@yϷ,�b
��^gU�	~@��&�>B�����wy5@y6n� sE�_~�}/@1�51W�l?B�f���\�|z�,�?���0! o��􈍞�!?���^^����`q�?��Ȇ	���A�n<\?�*�0N���&MD�?o�nx?'�xv���?�d��փ���yX��@X��Db����6)��2�@��_������PQ�\=@��tB�����@Nڲ�@����0Ma��׎��P?X�ξ�:��P���@��iʚ�Qt8�BԼ@{12��������;m@�s��;����}l@�ۛjCl�����{/�@rL�����WVK���@����6%�����H�@聆�2#��&�?�A�=�P���T�?A�A"Am%��!wz�t@�
pK���t�]�tؿ�\�/ȅX?�,P�է��!����"�@<j�H�=�M�fD��@UmN0��K�UU4�A&@M���9�ʻ{�@g'ȁ��� �qW�3���v3?�=��=�}������K�                                                                ?u��.�q?%�	���?Hٓ���K                                                                =��f��=�O� �$=�=�Ec7                                                                �xA�h�8ÿƼ�:��
?ʂ&m�w                                                                ��
���U�?����G>���'����                                                                �Ե�{W�~>�+�8�ؾ�7ǐ�                                                                ?uQ/$+�����U�8?�\���j                                                                �&�%8�s��s!m*7@/R��#*?                                                                ?���ry�?����.Ύ����Q�H�                                                                >�ճ��=��!ӐG�5���آ                                                                @��k�u���U߇���@�@l��                                                                >N! �l��q3���>w�ҁ&�                                                                ��ZI�[�0?�M�󮩀���lC �                                                                �R%�[??p-�U��f�jj-h[%                                                                �!�A�ռ�@\��~����8L�X�@�}.8�[���k��WMA�C�0�(5��T+JA0��1H��,N��J��A(g*�k���[��O�{?�d� ��7�0Wց��@a~ؘ/a����&���@����N"������	_@��t�H��3l�*J�@�\Ԁ�IL��]k�p@]m�&K+�?4��.�@�q!hC�]?�+s��Z����X�?�`Uöu-�Ҝy.�f?ӕ�k\�,��9��?�3���f�����g��?lV� Q�n?�mp-�b�MS?�wqɯ1���s�Mx�f?�-v�?J?ױkP���`���@�N ���E�	*�@k%쫃���=Z���Q�=�DJ͎�@w9��{_��9���@��Z}A"s�̭����@������k��:S���@�F��tiB��\���@��@����j��@��p9%��b�@����{���\&��A
	��l�"�I���A1�q����6|kS�HnA3C��DW�%D�e6�Ag���@M��\)]	Կ_�I�<�񿱦H8B@2�[�P���A�7@~�%�̠����H����@�(h���g������@�(�m����1V.�@}s���)%���D�;�Ф���}�?�=�l/�                                                                ?Ew\U�?Pi�7�)�R9����                                                                =���b�h��}�1=��9`��^                                                                �^b%��]�?n�w�1�^ݐL(Z                                                                                                                                                                                                                                                                                                                                        @J`�/���q�>��@�.��D���%�4
N@���V6Y�嫴8��*�*����AD�}�@���L���RfACO@M!��$��܉?�����B��@Y\-b������X�V@Ҝ_�:��yr�.4�A
����:���x�٠@��|Bh�AQ?7�p����k�@���m�6�����Q>'@z)��B�>�Ϩ
�@l�LPl���!G�3n@����؊f���x�.�@�;��$�����B'�@���%�J��ղeZ���2������Ab�g_Ek���UF/@A��,����l;�٩B%�wm�&�'�����B0/ï����*���)B������W��t9!?o+��n��u/��K]?�M�e�p%����yro@�����0����@A�I�/��H+��%�@DQ��/�36
�Zy@7o;�B�d׷ۘ��?��C<t��{�Ƙ@Q�豱��w�&=L!@���՜|������{_@������i�%�>�@��Y����w$�"m<b                                                                                        �.ؓ�d@�o����+�)                                                                ?ѿ��.�տ�$:��E?�w.Qlr                                                                �K�����?_��p|��R���Ã�                                                                @;��o�i��O��*���@A����#                                                                �Ao�_�?R�1^�R��D���`z                                                                >=ED��~�P!8,��>A��C"�                                                                ?p鷭�i鿇��+�"?�J|ݢ�[                                                                �'���i�@�P%��u��,_�K                                                                >��A��4b����褰�>�V�goh\                                                                ��H�8�֪?��4�{|���
ێZ�G                                                                �� ���_�>��'B���8��                                                                ���A��e���)�yB�?�P@n�,�                                                                ?A�ӛ5���az�t/?�c@�z�                                                                ?xfbhi�?��	5�����&��                                                                @Řn۞S�P�2�ͭ�@��&�����':y�[���`?Z@�r�P���&~<�A ���y܎�!��`d��A#�f�����$��������r��@A��Z���4Kh�@��O�~���8���Er@�u5N.���q'���@�3��&��g���a�������	@�"���>�}����6�?jtT���?���+�'����H�#Z??�P�2�����G���@`�����,�ݍ�@n"��
k���?.�U�?�6i�b�ӿ��$u�?ԕP
���5w���@8�;�k�[\-t��P@s�{�ʡa����3<GD@�SUɁ�<���a���^@s^�I�z��Ou7D�{TA#����]���g2y�FA�Щ�w���s���OmA�B��9�
�5h�AB|b����
�MȞ8A��s0]���\�0I`A�-�%�3��~���I2?Lc�U��Ŀ}U�}^C/?�GQ�&?��YbZ����S��?�v��I�1����;Y�?��s�탿������o?�gR�j}                                                                                        �-	9r��@((���j��N�B���l@M���-                                                        ?x�N�1���t�,Y�?��)�R~����3\                                                        ��:�Թ+@Vb����%���@o)��                                                        @?��t;�a�Xm����@Y;�̥���Ac�E�q5                                                        >��뙖���k����>���A�~m�����pK                                                        ��&��?!5E���M�"p��J3?	#[�l                                                        ��9)�+�{?�{�2K��?�Y�T�g��q�1��9                                                        �$�-�IA?��Xm�v@��)�                                                                 ?|S`�|o��f�r���G�Asu                                                                >�f4��R���r����>��aTj�                                                                ��.���o?�5�}�)����	�                                                                ��ql|�?-��B���%7f�                                                                ���z|����]3�6r������R                                                                                                                                                        �K���@8ճ�����Y�@�@��ɱ�}�����m
�~A���Jg�.�-��ܲA6�����4&ӵ�ʻA#�ݺ ��� ڟ �G@`��a�j��b3t�u@ӑY�`'2����X���AK� ���ϝ���A�#f���9K�@�1�Ri����ofU�@�U��#�S]�{,�I^?ZHQU�b��e=Nڇ?ӯI��ǿ�w��wn@,�����(�8�Ej@/�#E��H�)�F0�l@��NF���N�8����^�J�'��A�7ڒ{�w��	�"�!A�U����2�<��yA�˚9B���V�$e��_;���fA�
���������A��X���?�"��ؿ9=]��M�?�����Ŀ�=C],�?�t��)�1!�9�@/�vj	�7!c�"�@4[K��q�#۫���f@ z�H���w�&���>�6+�g��>�&����$8�!R��?L��:[�g5	S�?w��[���|׍�~N�?v)�G��_�c�V��?<I�&=��q�3��?�q�������1Z4s� �,R�4�@^�#��������bt@�x-�
�\���}�U��@�YJÆ���pfH�F�@g_�ځ���%��n���Ͽ�V/@!��� �                                                                ��1�ޥ�o>���-El��nB;�k�                                                                >��������#\#IW>�#k�{k�                                                                ?�Z��2���d�>q>?�/��#��                                                                �'�=?͊C?@�1̕�ѿ6�7zʻQ                                                                �=�U���?P �7zy�A'���                                                                ?��&�����8��"?���6r��                                                                �3*3�yW� ���F�?��e�<�                                                                ?g���#:4?�E3���2��Ô�R�                                                                �v�$��?��C�`ѿ�_��Ҏi                                                                ��}��ǅ�?�����?Q3                                                                 ����+Pt=��c�A*���z@t�/                                                                ?T�8��%ῄ��&Y�?�.(����                                                                >��ӂ94*��"U~��v>����Z�                                                                � �V����1�.�_�T@VF�'���cO�L8��@Z��᧢s�+��K#ٍ                                        @P5j�X+W�|01���@���@�P+���~-�Q@�M�μ3v�nG���                                        �s���zq?���k�P��ޤ�`�?�$Q��r
��g�n��?�<%��(                                        �Q=Rp��>A~'Sď����8'�[A���=Bo��7�6�t�Ap(&�O�                                        ?�(0��?7˶.Z�[��PjM??gj�N��N�a�U�F��?@�:�F�                                        >�}����a��pw��V?$(������9����+�?<�u�Q�&ې���                                        >e-�T�ݾ�T�2X�>�gPrK�>����k����8@dH>��� �.�                                        �1�d��z�liK���TW���                                                                ?��D��]�?�f������l|d��K                                                                ?s����4�����AJN�?�
���7�                                                                �/X�8|>"���<c�km�]��                                                                >�x��≍f�>�(�R�#                                                                >ȑ[DW��ۣ�H��>̀�<	�k                                                                �D:7�B�?V���4!��H)0sL�                                                                ?�1���m�M Ҩ�@s��#����_���@�U��YoN�s=����                                        ���z-s��@;T��<\��a�qO�_@s�,�c���tBLO|�@^ƙ���%                                        �3���W�?b������|�+'܂?�5��L�}��?��?`OqL��                                        ?�ۄ�����`�,-'�@�N;��V�+/f�B��@(�K^x������״                                        ?1i�Y2?�w��Ͽʧ����?�7�*���C��?��ڞ��                                        >U�jf��:����>Sذ:���\{x�� N>S�s��/y�54�,��                                        ?Q�[�?>/���	��S��H-�?�e.��0�� �3=M�jؒEM/�                                        �C��9�(�t�@YmZq���r �/t\o@v�  ����c��L��a                                        @@��o:�mƨ��a(@�����n���n$@�G����J�a��Ptf                                        ?Clm�S.?Aw��bp鿢7�`/s?ɀ��9n���[�?�N��!߳                                        �C���Z!�Aq�t��U��@�c��FA�.�I���V�kjtAf5�m#1�                                        ?O�G?0T;x\��`�+��?yj|�������cNg?p_�Ӵ�                                        >�F(~C����r��? !-�Nz�>��(�m���n�Y�?΃����                                        �QUCA\k]>��3i����0O����)E>ԧ�~_!�ʾy�                                        �3�ϐ���'�A�F4i@#vo�|��                                                                ?�1���b8?��{��P��\��7��                                                                ���	{�3?�	�����֘e�/                                                                ?ʵ; �a�5�۰e��?.$H���                                                                ?�j��+b���t��b�?�L�"��                                                                ���	��=9��e�O��w>�1���$�                                                                =�b����y=��{��Y~�ݳ�Rff                                                                �6��vߞ�?��ou�JB�u^@��m                                                                ?�������?s�F0�?dB5����                                                                �$�����K�u�?q�\�3L                                                                ?�s����ջ1c��A?�"E��I                                                                �Z���"h>x������rLry�0�                                                                ?
��`��$���+�^?��!�                                                                ����/��?����Ldd���`*վ                                                                �[OOC�
�?��@:��]-��Gr��@@q-�꾂                                                @=V;�����c1CDw��@r)1�߀T�n0�W�
J@R�����Y                                                ?m��F&������s�?�;f`,���I�7�?��+�J��                                                �Ax��ݥAgV��z��vq��x
Ar�%}+��X)�'�                                                ?�j���o?���z��7��Z��?=�Mh@ܖ�4J��fc                                                >���I����a~vP$i?A=�	�7�Ji5`>���WI�                                                �hm#�&O�>[Lޱ��>�IYo7���a��R�>�����S                                                �/�Mct��#���$<@%���!Z�                                                                >�Ǆ�
��?,��j��'��\N                                                                ?����ϊ����Y0����=lS_�                                                                �3� XVC ?4�*�p��Q��lz�                                                                ?�#�醩��
~|C�?r@+��                                                                >�䮐�.羹��OL�>��_���:                                                                �+5~�L�a?8�哿$q����5                                                                �%���9�k�`S�u@ x��v�                                                                ?��&�$�?����꿈��B�J�                                                                ��G�����=��l��{���huj��                                                                >壘_�Е�v̎�? �^j�c�                                                                �`���,�?q�B$mdl�s�����                                                                ���;:&�}?�k`~7U?��W	#                                                                                                                                                        �=o�jp@&�$�Z�����0���@�q�2�����=i�|1WAL��j�'�uY:�A1'��m��.���n�AFE��z���<�re,R�g{3{&?fk�Z(����>�R?�"� ��4�K�l@#��YJ�8�4����j�@;0z����5�F�
a�@#ۇT2:W�����k@U��v�w���3
��@�xj��N����C6hAT�{��@�p�9�?�"��2 A0Zbn5�T�,&�I[M�A,W��;��=����]I^ŤD�A��Z�\6���l��U~��Ӱ��`B�M���1��i�zBA>Bw}_�D�K���B>.�X��(m�&d�B7��0� V�"js?D5_�'P�t������?��&��5����E�U�v��V	�Y�?�gL�����_�u��?�l/�=��D6	�_?�{����?7 tB�$S��B
?�y�C����͙�ܐ0?��[�����.���@*l��g�Q�2�AL�@/�K��M�׳4`�,?�ہ��L��0��2䵇���֣i�@q�_ϰ�UH$S)��@_;�����&� �@����O�����C���@�,T����������X0@wЄ5"�y�)������@4i��$�@w�����G��ԯ�**@�J����_og�VA%���g�%V�l׻A##������l�@��h����f��ڿc���ܚ�?����ӿ�~�<,4�?��{ 6h�	y�eC��@P�%�'���[�ƞ@#���"��$�Ƶ�?�Պ!��?���R��G��I��8��@�FV^��Fe׷�@l��&B*��1��	qb@�Ӻ�&�4����؊�L@�Np����w���S�@L��PB7c?:�e��7?�H���%��<��@O��,"=2�w?Ϯ+��@�4ۍ|����֤�{$�@����T�d��g���9@�d�}I��q�I2$e>?����_?�o������&��o@Thz׍�t�OS�,'@��^�Vs>�������@��3ho���� ��R�@t��b; ��J�շ@I��1 r�$�@d
6�(���"O����@���1�{V��=J���@�+���T@�`g7���������@��h�םq�{��`���@Pq.�%WD?��tع�Ͽ�n�՝W�@	]?a����p��~�@&��c���#�:ru��@��ӂ�?��]�*�{0�
�h?�.T������&Z�k���M���6c jT@%�2a��#n����                                                        ?��A�8�J?�]�F=���~J�?���A4�                                                        ?1QH8���?q�o���������	?�Y�33�                                                        ��߶ʇK?�́�����E3?��t�)��^�                                                        ?1�����$?xU5wiW鿄�R�E�W?�q��a�                                                        ?h��7�Y쿔r����?�4�Mƿ��2                                                        =��հ��3=��855�&���k�(���F��                                                        �-������C�a�h@>�I�����9�V@��                                                        ?�<��F)@��#����2KGNQ��@(��w�                                                        ?DN�+H�ʿ�Ț����?��+L�뿖�컱M�                                                        A�bX��=�tY�KAK,Kl�=��A                                                        ?�]��]�? 9�)��C�)�/Ly?=�Q7"�                                                        ��ݿ�N׾���t?� >�2�R�ľ�Ć{Λ�                                                        ��v*��>��=p����α
�]�>�R�#l                                                        �#f0����� �)xM�@�IZ:�S��҅�3�8@����?���{<Z�A,��2���4|�?V�A1M��0�� ��A|(:@�����&�0�ٶ��?p?-p�(���߅��x?�����8��8�"�X��ʅK=~?�$t�Ԅ����n�.?�<W((��ǚ� �?�F�y?�!���2��1Gg�b?�%90�N��"�h,7@W)7T���{�
��Z�@��[��������e�F@��O� ������*h@_�
җr?��-��a���np3��@��ʩ�0l}U��@2wma��@6���+g^�ZNr��2@cIƒ����]Ƌ��/y@HI�N��� �L�S}?FQ�d�7;�y���H���t]Iw@R�\͡�.�Gp8���@���u�'?��8ͨ��@�Q;f�]����f	���@�����)������*@*a�j*��g��1�@���P����L�,�5@�'u���1W�)�@��i������N�F��@�:���v��&�b��N@n��TUă������?�4�x��$�]���@.؄��1/�B!�h=�@M;&�L�O�FF;�@H����7�$U}6{@^~SW���T�(��3�'?�5�h��J�G���ך@fԣ�ތ�orcC��@]�-��`                                        ���U�A @�Ա�������9��"�7�8��@7q�C�M��,I�E��                                        ��sqd�?임�� �����T@5J9ќj����N�?����07                                        ?3Ef{$�����VI(�s?ë�V��#����k�^t?�����<��&/@	"�                                        >��
۲����/���?M�S�zm�{w�?Y��.�� E�+$                                        ?)�� ��Yr�Z��?tk[S�+z��;k�h�?y?jC�˿_ ~��r                                        �%�
d�l>W �C�;se�/���>�K���y*����H>_������                                        �P`Һf����9g@�{B,N�                                                                ?�Y��O�����_]�?�W�(p�                                                                �m#��Z�?�I�j����C~c�                                                                ��R/,�A��A6f����D[��                                                                ?(e̬�?
 �
�~�(����n�                                                                >v����о�>i�W�>����fA                                                                �����И>�������~9��'                                                                �#K4��k\@?[LH�@I@k�2����[�I�L@�XlƲ�w��H����.A���(h����)_��AZF>8t��{��P}�@��g�B�B~;|$w?�<E=����ZqC\e�?���]r避��a	o�i@
�N��}4�Zߘ�@�R��)��� ;4?��<ҤbP��ބ�.?���O����~bf@�Z �_�M$}�VY�@tF��$Z5���K�s�j@�zx������%؞(@� 9Z��
(����@w	)�ᚿ���X�?����=������@Q޷A7��y����p@���]�������{��@���=zUv��h4{;��@���!���v de��?���\ ��v�d��@7�HV��]�u�/�@x0н1"R���9Դu@��]��0V�@�~@7�*��p]�t�@Dc��4�\�#SM��@\,xWY�B���E�=xT@���N��'����s��@�bH��������@��I�yk�����z�@vu�C??�C��-*�?��M�1�}��J[QF�@�-;��'�";3���@3�ƛ���=��C�pN@>%e�O��4�50C�@"��}Wd�����G?҉|*tc��w�����p���@'��LCk�&Ņ��I                                                        �|��Ǒ��?���������E�?�\g`�V�                                                        �9*t/^f?���3��?
�wJ]¿z �N+�                                                        ?)*�u �?�`��*��������1?�WC.�T                                                        >̶t�ڿ����F�8���y�5G>���zsk                                                        �U/�Z��a�f;@9�?�e���C������U                                                        ?��]����C�Y-[F?�?�M��m?y���                                                        �<�vE3�?�>���]�����5�g                                                                ?s�3�������o�?wN�w��r                                                                �q� ��i?�݇�8����i�*���                                                                A	���OhX�"�]��YAjZ�.a�                                                                ��)Ǐ�@$D��;6��s�q3                                                                >6���__�c�E�\>a��h�9�                                                                ?)'Lr�4������?�	���                                                                �G�EKS�Z���%&@� C��G�Ҙe�k�@�t!�D��-0�ZC�A&}�P��-	D:��A'jd�����F�m�@��֌��?bt����~�������1?�æ3P�v��y��y|@J,��D�F�_���@xa��:1����<%c@�O���I���%uu?���f^�?�Jg���A?��7J�bn?����}�A��H��@k�!˨���|�J��@�S���3�����K	@��\>������J���@ohM�Ϳv�4�n?�-�Y
��<�o�J�@X���p���swᚿ�@�zgC�4��/ rȹv@����͈��`�7Dn�@�6��u���z
Hv��g��[�O@3��K��b���Ř[@�W���s���Q��/@��K�|^��? YG�@��hİ�3��4�ܙ�M@v�K�A��D���M`�/�:�*@Dg]��!�i�F]`��@�VZ�칼����e2@��w��Ȝ��t��o�O@��=�W'�{=����@[v|qDʜ�))&1hn@qu+�.�R��������@�TI��t����A���k��%���3�A)�`Z�oy�#�D%���A��$������`@��dNiݿ��i������$�c?��N�H��                                                                ?��@1�?�� 1ܥ���F�W<                                                                �%��IG"?C�!��Ͽf")V�O�                                                                ?z�� �꿟U��p��?��)W��                                                                ���W�Y3?�l�-M_���� �v                                                                >���}J?꾏�9�J:>�yO��/I                                                                �_׻:���t��c�6�?~>'2�Q                                                                