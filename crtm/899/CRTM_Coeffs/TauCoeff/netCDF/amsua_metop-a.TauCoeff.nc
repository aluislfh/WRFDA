CDF       
      n_Orders      n_Predictors      
n_Channels        n_Absorbers       sdsl            write_module_history      A$Id: TauCoeff_netCDF_IO.f90,v 5.4 2004/09/09 20:29:22 paulv Exp $      creation_date_and_time        2006/10/23, 20:00:36 +0000UTC      title         FCompact-OPTRAN upwelling transmittance coefficients for AMSU-A MetOp-A     history      \$Id: GenTransCoef.f90,v 1.3. 2006/06/11 yhan Exp $  $Id: Compute_MW_Transmittance.f90,v 2.3 2006/06/30 16:47:16 dgroff Exp $; $Id: MWLBL_Transmittance.f90,v 3.4 2006/07/05 15:22:35 wd20pd Exp $; $Id: MW_SensorData_Define.f90,v 1.27 2006/07/18 21:05:40 wd20pd Exp $;  $Id: UMBC_Profile_Set.f90,v 1.3 2003/08/13 21:21:02 paulv Exp $; $Id: Interpolate.f90,v 3.10 2004/06/25 17:19:21 paulv Exp $; $Id: Create_AtmProfile.f90,v 1.10 2004/11/02 20:11:14 paulv Exp $;  $Id: Create_MW_SpcCoeff_Sensor.f90,v 6.0 2005/07/05 22:28:31 paulv Exp $; $Id: MW_SensorData_Define.f90,v 1.21 2006/02/02 19:35:28 paulv Exp $;   sensor_name       AMSU-A     platform_name         MetOp-A    comment      Training parameters: varying order; max. order = 10 10  5 (wv, dry, ozone); TB_RMSE_MIN= 0.0100 DTAU_THRESHOLD= 0.0050 ; Surf_emi_ir=0.9800 ; Surf_emi_mw=0.6000;  Number of points used per channel in LBL calculation:   256. Absorption model used: Liebe89/93;     id_tag        UMBC         Release              	long_name         $Release number of TauCoeff data file        �   Version              	long_name         $Version number of TauCoeff data file        �   Sensor_Descriptor                     	long_name         =Short text string containing the sensor/satellite description        ,  �   NCEP_Sensor_ID                 	long_name         NID used at NOAA/NCEP/EMC to identify a satellite/sensor (-1 == none available)        <  �   WMO_Satellite_ID               	long_name         EWMO code for identifying satellite platforms (1023 == none available)         <      WMO_Sensor_ID                  	long_name         DWMO code for identifying a satellite sensor (2047 == none available)      <  \   Sensor_Channel                 	long_name         @List of sensor channel numbers associated with the TauCoeff data      <  �   Absorber_ID                	long_name         @List of absorber ID values for distinguishing the absorber type.   units         N/A         �   Alpha                  	long_name         8Alpha values used to generate the absorber space levels.   units         Absorber dependent.         �   Alpha_C1               	long_name         MFirst constant (slope) used in defining the Alpha to absorber space equation.      units         Absorber dependent.         �   Alpha_C2               	long_name         OSecond constant (offset) used in defining the Alpha to absorber space equation.    units         Absorber dependent.            Order_Index                      	long_name         IIndex list of polynomial orders to use in the gas absorption calculation.      units         N/A      �  (   Predictor_Index                      	long_name         BIndex list of predictors to use in the gas absorption calculation.     units         N/A      �     Tau_Coefficients                         	long_name         -Regression model gas absorption coefficients.      units         !Absorber and predictor dependent.        lH         amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a       amsua_metop-a         @  @  @  @  @  @  @  @  @  @  @  @  @  @  @                                               :  :  :  :  :  :  :  :  :  :  :  :  :  :  :                           	   
                     q   r@*      @$      @      ? �\�?��B��C�?�]b����� �\���|��Ab^��]b����                                                                         
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
   
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                    
   
   
   
   
   
   
                                                                                                        	            
                                                                         
                                                                      
                                                                
                                                                      
                                                                      
                                                                         
                                                                         
                                                                   
                                                                       
                                                             
                                                                                                                                                         
                                                                      
                                                       	         
                                                       �.Ѐ*S��@P8�y%,j�b���U�@_Ra�U@5�5��Yh��                                                @4�H4���1�f!��$@<��ŉf�$߼%���1`.��                                                ?�AG�o�п���:�ۈ?��!m����~�	?ݑ���                                                �#�(>��?RŪf� ��ir�O�Y?lq�9���Vk�rF��                                                >��5�`S��,�ܦ.�G?Ds>h��<�G��&�o?3��B<��                                                @J�RFC�D�P��@V!{��'��T�W+̽`@;�m��~:                                                �+G��~AS�MG�J�d~�W��AbP�Bv�O�Gƀ��4                                                �O�AB��:s^���/@4 K+O�c                                                                �����Z��?���i��vv��;                                                                ?gO];�5�y�n��?l�y�                                                                �G���)�Y?X�	�
)G�J�k�                                                                >� AK�ZB�� ���+�>�O��d�                                                                ����r���?����g���\��_5M                                                                ��Ғ�b>�P[2�Q���#��K�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �(���$#=@~���S$���8}b_ΓA���)��+������AI� x�^1�]��p�K�Ae��XD���c"�#0AR�f�
��0�G��0?�H8g�� �i�#�g��7C4�N�8@���= �������E@Ȱ�Ķ��`�k,�@�!������F�<�Z@ɇn��V���Q������
�E�A�]�����n�p�BCxbl���_�!Ǥ�MBp{Q�<��v�p�o�Bt��*���g��v��BOX&$ ��"N�a��?�c��[�.���M�v@H,�������eK��@�N}������9���&�@��g7�U���c]@�	2��Ҋ0V�,"@�d*6d��x2_�����7Y�k@Fb`��){��fc�G�@����(?��΀��Gj@�ǥe.�y����A�DB@���re�^�Ŗt�*�@��Ս��M���ow�+?��bnٿN4����O?t�77|�S���I��??�Ժt@���2q���?���(�\��d��%�?�Kj�"�g��~iB�@�G��ǿ��ͮ���A3G-��D��=l�:Aa7;_�%F�r�w�E�Ax��c?V�v���g�Aj,ӡź�QeA��~EA$e��IԶ��S���8�8����@2���7��                                                                ��T*e��?߇/�MJ���F�5 7                                                                ?g�U_��r�zb�Q(��?m���xe                                                                ��"�/�F?��kb������r�s`                                                                �G��{��?X��6�.J�I�Q��=0                                                                >Ĩ4#���2��N&>��ޯ��]                                                                ���ӎ�p�>�u(5}
��R�ڵ�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �'�<��b�@~�����?��;΍Q��A+�OH�
�*b%��Z�AHB#g'��[��ȊG�AdCc*0*F�b��+AQ�t�'z#�.^�v�'�?Ы;C�?�� )�O��4���[�@���E�.����m)�I@��@Ɣ��ُP|Ѯb@��b�R�i��iI����@���=n���*�j�������(�A�x�� ����.��BB�S����^�ܶ4�Bo=��SN�ul�+2�MBs\pEB��f<���1BMxz�,��!.a�z?�<�w�nQ��L�i�:@G
{��e���\� C@��jы��ǚmЙӖ@�2� ����� ��"�@�������jY<u��@���і��������������@F\y��c��B�A%�v@�d�ߍ����t��B4�@�YӪ�?@��>�����@�rɅ��_��P��)%@�IH�}����,Ղ5�?9�[�|�NSd�VQ?t�Ԕ�g�'�x��?������e��F,,�?��H%��A��w��H?�U!x�VG�g�VQ�H�@�
3��PF��I�mJA���nj_�D'TXA`���G��qH��SM=AwҠY��u�	�}
�Ah�h�y�P�N��PA#p�`����,{Y��"R@`��������b5c@��F�M��׺���A�ι�!'�)��|���A1��b��+�/��dPA�B�+����5һ�>�E(8�@��������Ƒp�"@�* S~�M@�{��n1���4�D��%A"+	Q�
�[�jA�-T�p���bU�Y@�N��"?p_B��㣿�G�D@)S'�a�\e�Kx�@���l�O�����@�F��	��<%��7|@�_$�@9������?H@t̸�H��@ѭ$& @w΃}q?�������7@��[�$�ɚ�y��+@���<�`��v6?\�@�-<J;{���Ͼ-@��ױ�c�b�Nh�4��NrL�P?)Md�y��?�;�E�����e[a�K?��&f�����ժ�sK�@	]L3���	�n�mE�@ '�z:l`���ҙ�?����f'?�4<>!G���wYX�@'���nB�@j&���ev��\@�^ɦ�j���"�b�@�dt�>n��yt=@r���ܒ��G�&&s�?�	R���3��<1��B�@ _-���:���~�@K�="��S/�Y-�a@Ṛ�k��I'-���@5�E�A,b��vU�9?��塤t                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �'+C�qV�@M,�Y.Z��PzOlN�R                                                                ?���d����G{\�?�WKݧ'                                                                ����/Ը>���̉�	�1�                                                                ?0���z�F	-^d�?=�˒s�                                                                �����r`��,��hd�@ɽ�)�                                                                ����#��w?�+C��X,��#�t�                                                                @ŝ��mG�A	���P���$OU�                                                                �*�Q�Ш�@A@z�6�e��p���A=@�J�DZ%�����wr@�bA4����f,�'�@�}ٴ�������#@䜐m"����9>�ׁ@=���{4����d��y7@�1&���㪉!�Mh@�=*k��h�Q�<�AS�3%H��"�1TA�8$j|���qn��M@�R���%?��H:�{ȿ�� �o�?�1v��w�d���@)��o3���2*�}Ay@1����\��'��f�&@@s��A���vq�#?�p�@y?J��O����s4��?ǘږb	���!3�@��]��,�����o@оE̿T�V���6�@��+�bc��8tY��?�R7{
1�ҼR9u��@��宅;�Q w0�v@t�_y~d����.S��@��sTV+l��}�ӡ�F@���%����7�ok�@x��Ɔ��L�շ#?����%9�Mu̷���?�O�'�K���.�K��?�y�A#Ͽ���Al]|?��C\���y�;U%�?������{��a�Ի?�`� O� �Ha��@X���u�/��9�&�@�`�]�r����
�3f@�K��RB��~�Z[f�@��*
������:�@t�_����BE�'X�8                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �'�o��@M�f j���Q���:                                                                ?�r)IYD������q:�?�X��]w�                                                                ����I�
>F��]�����C                                                                ?0�;�T��G�5N�	??�����                                                                ��y�/'mG�eY�)@�;H�.<                                                                �����C?��+������r��%�                                                                @��i�r�,A
BB��
�(�t��r                                                                �(�#ʃ�@$V�Bg�;@etw�`���O��;H@�M�.y3�C�#�"A�u�p�S�!��!G�A���,,��P�p@���#� 쿾��G�^O@0���Q�nKH^+@v���Y����=���@���5}K����)�mj@��g�oE���Z�\��@y���Ղ�MeAC��?��ũ�t���cΜi@
�� �`b�&�qܛ�@9yK��c�C>�v�(o@D�sU��</GZE@*qT��� ���Z?�i�.�?2���κ����R�m#?ƈ'��`H���aK;J@X�û������_@CsPӝ�d���@X��u��Z����?�{&z@y?���'/>�:(�&#�X?St�YwK?�ek9+G���&�%�_@�o�R�|NF7�@"d�g�WO�!�X^�5@T��za����^2�@/����;��݆��|@�� 4�y���^l�f� A;��t�^����&A��ǉs�fI�(_�Až���������g@�`G��Ǒ�fwUSfS@X^j�x�I��c.�h[@�3
��w~��(�e�@��)��������s�@���z�m}��a2�b�@��̹�F�Q���#��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �'�k���@O�.㦪�TQ3^�e�                                                                ?���Nεf���y%�<?���m                                                                ?1-E����G}6���?>�xZL^�                                                                ���?3�?���������Vi�                                                                ��6�f֐y��b����@�O��.                                                                @ۛw�-q�A�"�'�&��V8Q�                                                                ���m�3�?�Hfq�����o���                                                                �'�)���%���@�r�C�t�Ġ��Vz@�D�MS8��!~�A���[� �cg�9)A��
�}�U�CkT@�����A?C��L뿑!�o�v�?���⧙���Zn;@�oRr]���I�k@~�4�׭��U�if@
�?�#�����Z�[?�Z�,\�6?�]�̔a-�\����@-+C�m#6�H�����@[.��׬�d<�d�I�@d�ۜGŠ�]����5�@KO��!1��-��M�M�?�	��
�I&�� @����;v��Ki;��@�oZ2�ٍ��r�^@���Vs	��~u���@�y�ꦇ>��8�uMs@�T��}��z��V^_�?��_�����U��� V��ֈ�G�@Fa2�'�r����@�� ��G���Ze�9@�����$���>#%�@�;�l�k��g�*���@��������� ۷gK@���`��h��хr��AHf�*+T����`��A!�<�4]�!0~���~A!����G��� �aS@Ҟ��Y܉������@M�r���K.���\"@r�B!���]��ռ@�#�
a����ؔPX*@�u�3��
����޾٩@�轜wը�U���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �'�e�\:@PEb�����V)��m��                                                                ?��J��k���gŷ�?����J`                                                                ?1�x�r<�H�e�|��?@{f��ڼ                                                                @����# �A�T睡�`�:�                                                                ��� m]? }s�Q/�����"w                                                                ��, �^�ο�Ė�RJ@�x1�~�                                                                ��@H�,�?�#��"+���[�3G                                                                �&���Fk�@2(	�K�@P�;ǵ������ ��@�m@�3�����5`bH@ꈣ�k�@於������N@��{��q��Jwn��?AB�I)���תI�:�?���s�N���4U�?���n0����%@`����m�`��%@�қ]k���M��V?`0l�=?SR���X���G/KH�N?���|/\>��Jܿ��!?�sr��a��B�mE
�?�O�����Q=d,14?֮5��=�����%�?��sy�=Ŀ��b/D(@�L����H�94�,/@p�4s�˼��
��d@�x!�ũ���6u�s@@���F������cq6@�{CJA�X�Y�*�?���ϭ����O^(��?��@�A�;@*�_u6���Z�*��@uR��ߌt����rBy"@u�yߙ4f@U]z����l��a�U3@U��������fT�'a�@br�����5�����@Q�J8*��c�Sw�A=@mw%̺~�n���w:6@e�����T�T*~���@6ͪo�����f���@"�������0����@�@��0�3����T⿌AΧ3�����:�m�A%:����%KO����A�AH���4)\@�`�/�f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �'��L�@P؈��	�X6�_���                                                                ?��#�u"1��0�\���?�6-�                                                                ?2���]$�J)v���?A�GN�P                                                                @���sk��A�a����8�3�                                                                �]=c>f�?!��Yp���2L                                                                ����B{(}?�d���/��d�&�0�                                                                �믟��Sy��b���@��e�                                                                �#Ü�R�@1�d�e~�uޥ�>�(@�NCz������U��"@�0���*9�7�b9A�ۢ��;��FbA���{������ ?��c��R��똆U�*@*�掺Uv�Xn�T@x �	���1��a�@��x4.i������)K<@������t���>S�@J,��4&?P۲�������+����?�p_�q�Ѭ��ĥ�?��L��N�����?�1�����dv�=w?���Yt���� ��?�n�>���WT�7�b�o�?z���#���.4x�?�Y��G��ܬ����@.���v��>4�Rc@�\s.a��&j��D?��	|����^�ӏah@������1����w@NIDڗ$�`�V�C;@i��_�`X�j�c����@c8���q�Q��:��@3ӕ�	����g$���j��[?a�y�b����opX6�?��}`�.��-\��@B�| �F�ьQh�Y@��蝾.���pŔ�?�z�9'F���q��x�@�2b?cρ~6��?�~qĺV���6'ʗ@4/����Sq���D�@eT�SZr�j�Ж�;@b���j��KsՕ&�@b��<��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �&�w�K@KOEh����Q(��j                                                                ?��9��ÿƫ���?����?�                                                                ?�XF3�5���W��!8?�!UX��~                                                                ���Z­-?�۪!`9���R �<                                                                ��
]r���?I$� ��r!E�                                                                ?� ��8j�V�]���@�?3�y                                                                                                                                                        �u�s��@7����~�	���*@���������`��@���,b�|���A	��������A	x�?c�i�����&�M�"0���y@o��M����8E�P0��a�Z"�@ӕZ�p����h�[�.�A8ź/x��u{��@�mj�[,S��r�jk��@�OSQ�z�\�XP����N��9��@�0˒��6�l��P�@\ӷ����z���a@�f�cyb����ƻ�B@�zH�P7����)�w@j.�-��:zV�$o@urJ�g����+Z���@��M_�<�����W�@��ΉH����3�v�Z@�<��%VB��w3�^-@����E8��q| Z���?�B(����Āܖ[@ 5u��l6�)}bG�P�Kޢm��@s�QO������e�,@��:�j�����c���@n��^ƃ�D�?7�v?C:�a*���s �z��?��+a�,��Q��L3�?�ݻ���Ŀ�]�9�S?�����W��Hొc?�Jbu�{����#�<�?���9i魿/�2r3:?���(�^l��5�����@��Z��C�8�ôg$�@Q��r�N��`�x��i$@dq{X�P�`_����@N�6���*,1�g                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �&���*Lp@R��'7y��]'ns��                                                                ?�c���'���WN�m��?�e�                                                                ?1ڔvP�}�OD~m?H�Ƹ\��                                                                �
s��%�?$K�T^�L�a˗�                                                                ���	+�	�?�P1���`�ȦNt3!x                                                                �ڊC�l��'T�nr��@)������                                                                ����=�pA<�O&���8c8i�#                                                                ��"��Y?�h��E�@F�A���z����@��c�>8����6J`���|�����@�OmT��_����$}��@�R��à���i�|�r���VC�b@,F�<S�@�*���5�������@ڕ�Y�����aH�@�U,�Wku���5��q@�
��LD���m����@����j1?�FzHt�
Ev�@4zǘ����Rȯ���@fMu���q+@�@s�\�Yٶ�m�#94Q_@\�c-Bn	�@�cq��f@�(��Pa����\i>�;j�PJ��Q���??�T&{��y��JxM/��?�ja�{�ȿ�:	g]Fo?�^N�$n?⏶����η�I�v?��|�r���E]):���@����������J"�e@��;D����k8:!
�@�.a���"��kaF+�@㙪\w�����acSh�@�q1������(2�?�{*@HD�]�p�OW?|���±	?�$�ܹJt������w?���(��
���Z�@��U|����P����n?�Z�����F;e(�??&n�>d����3���?�Ac�����)���d�@$d��Hq��>���Q�@Eb#M���	�ã�J�=~)9@M*'%c��3��
�x�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �&8�h�J_@Z�j+3���h4�1��.                                                                @�vMJ�g�A8d�C+3J�:�`[��                                                                �%1���@B�j���@�B�l��                                                                >����z�ǾϦV��>����                                                                ?�׺ff���.j+?�K��o�                                                                ���K���?)w{j�^� �oq.o�                                                                �������<?Ȩ�{os��k����5                                                                �a��T�
@2���@�H�qe�����@�r�e?�@�ihW��C���s	F��A���U���z�I�ABf ,���X�
���@�r
�#�I���]��@��>�@���5앨3@�nDr�/�۵�aA#�ܕX&�.��]��A.i[��Y��#��O�FA�$��S����ё�?���E|� �됵ˌ�@R~�c���4�zTe6@IG��-��T�{���@W&v;�َ�Q�q���@Aok���$H����?��V����bO���o���9��|?�x�?[3?���^�H�M:?�3�\@v�T�B����&B�J@�gI��\����o��ϐ@��5HgJ��i7fX��?�4������
��I�\@G�A���N�p��>�.J@�E�Jk\����ڀ �@�NC�e�����C��7@�^���	���?�~�	@_�DAu�(J^W��?v�gʪ����ϐ[?�J�Aw� ��`6��Ԃ@
�������C~�@�W�la��U���?�
sx�=���G�^�F\?C�wM���&u����?�a��c���@0�k�@M36�$ޒ�o��+
\�@�X>g�RI����I3�@�T6�K�+���0��@[�Y&=                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ��b������`\p��?�1ߩ�%�                                                                ���!54 �?�
�=a������sW                                                                >��g��,U����U.�>�l'��S�                                                                ��ٰ�2F?��!`��d��|�/�mo                                                                ��G�2E>,ۢ�A��(�$w�A                                                                A
�M���ٿTǓ�A�-ԙ��                                                                                                                                                        �� Q��@%ި��$�j����7@��\\�B���@�g�>�R�x��Bq�A!���돗�#�<Z�aA����+���\�bJLQ?��^I����S[X��f@���40 ���iw�
@�:O�o����G�d#A���O��yA,5��S���f��H@�y���}�X��K��� ����?�KK�k�4�.KѰxp�@]]�zED7��h���X@�>&�O���<=N�@��O��9��y�r�@���qJ���-&A�Ƈ@2��ͭ@B��N����_ڰt@�Y�X����Wz�7`@��0�t����<^@�8�������Gk��@fÝ�>�#�r�:.�?3+����sB���@M�בa��q���7��@��D����r��h�;@����&����-]=�)@yV�^�u�P�f��y�?5x>�Ūn�q����d?�kD���D����L�B�?ɘ�$L@���kN�M�?�1��#���j�#t�?��(�r���(��^<?i�5����+8�����?s8��w���Fg�=�@��gt�0�D��t�@f1�$�B�}�̓f
@�� i�d;��h�I�W�@y�Է�o��W��9�<�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �
��9�n�E�0�\r@R��eu0                                                                ���z��f�?��8Y����ύ�;                                                                ��T����?�����5���x��                                                                >��L�)�j�ժ����>Ӷ-z�^                                                                ��+��6j?0��E�/`S6��0                                                                �?Q�)L�AWs���O�b�Ii�                                                                @4�|dIs<�O&%}X"�@EbM��v                                                                � �V.�?�+S*@A��d�����\ %	L@��}7l��e��I8@�����G��o\H%f=@�D8�m��r�Oː�@�쮥0kt?�M&b����O��E{�@��q������-��+7�@�&X��H[�����*t@�����.��N� a@�J��]
��~���>@��.$����'��{���B�����I	Z�u��?�!�(_��Ï��M?���`Ͽ�VL>�S/?�o��@R���:���/?�y�r���l.x��@*��SA��n�ur�	e@�!��2Դ���\��d@�3I*?^���_V�3�@�$'Z��������>�@т��|���(I��F@���jͽ?Y8u#��?�w³��� */��@Gs\]����ix'poL�@�70?0c����Y�$@�ǷĬ���8�)L-�@iDd��\(�@,�cZ-X����̨5�y���a�?��Y�p�u��~��@h��^|	�5�	5D@@+�UV]�+7�ɹ�o�7�J[���@?�9�8���&��v��?F#_������oϺ���W?�h�V!�鿻zKѨ?���|D�y�ӭ	vK�B?рJ�E��ír�V�?�x[���1�|�b�0�y                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        � ��G�K'�s!�,��@��S8��                                                                ��&��aY�?�e�Kؿ���X~�                                                                �~�.�o'>�Ƨ�=(辩����?                                                                ����Vf�G?N�s}�B�V�Ǿx��                                                                ??t��̿c��!�j?e _�S                                                                �@9.$AY8���¶�Ro�9�`5                                                                @1���$��N��)�@F�t�
��                                                                �澹	��?�P�
@C�<�9����|;J@�~��O���,��f�@�"���Eo�1�EhA��[�.b�C+EЏ1@�|�V�@��<�}�s��F�w@��:8`�w����U@��mE4B��:��@� ��X�&A J��k'��s3G�v@�C�Q�Q��Լ�"ҝ��֍�d�oh3�?Cij}]M�q����?�d��'���$�#q�?�R�+6_r��E�b���?��6r1Z�?���Qm����[I��_g@329h&j��w�&�k�@��c�˛�����r@��g�{:���"����@��B���"g�[��@�����>��ľBq^l@�z�/��j���%3��?�ϼ����(���I�P@S�b%�x��p�K�(v@���q%����k��@n�Ab4�@I�1�Z)��W�O�H�2@;���?�$S�@L4H?a��l03���:��@�$�2���:{�w�qG@])��`%�s�8�E�@�>
 c�����R��a@t~(u����S��J�^Y�����!�?hV<�WFk��H����?�&�Τ/r��$�(�?�A@��s��⿀e�?��ѐA���S���q�?ý}�*տ��v~hn                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �/v�f.�@WNU�a��m�ك��@v�*q�a��z�,�e�@l"UTqu�                                        @.�����=g@m @ON~�Cq'�2�ʻ�	�M�V�EW�@D��ĦI�                                        �C��AhAg�](�j�v����AvU��
��e��;{HBAA/�v+[�                                        ?}�ډl���nَ�[?�\;���#�9%E@��Y�/2��P8L��                                        @L��q?-�qwe���@�EM�PUh�����ۣ@qE
��r�Klk�?d                                         ��qf	YE:>�����]�N��@�?�sڍ����y��>�j�L�T                                        ?s
��ɿE�U:��i?f*��)D�t��`P�?q���l�M�XF�P���                                        �0�_���@@��$~C�L� ���@@��'��                                                        �$rw�j@��B.o��#B�2�W�@I�����                                                        ?��o��H����Ƒ��?�
����F��ۇ��8                                                        �s�pl�W?���I�N���.k0��?wWb��^                                                        �QI�wx?�Kg��=�"<���PP?�Բ��l                                                        >�����mw�
��3m"?��me���-~��V<                                                        ?����s���n�y9��?��K�.I����!w                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                