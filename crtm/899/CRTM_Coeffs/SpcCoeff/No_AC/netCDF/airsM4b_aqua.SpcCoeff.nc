CDF       
      
n_Channels     j         write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:29:37 -0400UTC      Release             Version             	Sensor_Id         airsM4b_aqua   WMO_Satellite_Id           WMO_Sensor_Id           �   
AC_Release        ����   
AC_Version        ����   title         rSpectral coefficients for airsM4b_aqua derived from SRF data file airsM4b_aqua.srf.nc and solar data file solar.nc     history      +$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_AIRS_SRFs.f90,v 2.1 2005/05/08 19:22:37 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $    comment       �Interpolated SRFs for transmittance production;Version 4.0 AIRS SRFs; yoffset=-13.5um; M5offset=3.0; M12offset=-1.5; Tgrat=155.1325; Tfilt=156.339           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    �   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                 �  �   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                 �  �   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                 �  4   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��           P  �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��           P  ,   	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��           P  |   	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��           P  �   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��           P      Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��           P  #l   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��           P  &�   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��           P  *     w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      @�`3?V^,@�b��ŭ@�d�dA�|@�gz��@�iV���@�k��G�@�m�Ir�{@�p6wÙ@�r�)�m�@�t��k*�@�w-��l@�yc��6�@�{���?6@�}�o���@�N��t@傚�c�Z@��"fR@�9Tc�@剋'|�@�٭}on@�,��F`@�{�Nv@�ϓf[@� n�@�t����@���N7�@�v�`+@�p7ۨ)@��rc�@�BNi@�nt�~3@���ZNC@�Oޓ�@�t��@��5�Z�@�$U�C�@�}���@��x���@�1+�vQ@床�7 '@��i���@�@��	�@�������@���!�+}@��WB:#@�ȳ&@�@���:�B@��o��c�@��ϘL�[@��.怇�@�Ԏ���@�����@��P�G@�۱�JQ@����@��vp�/�@���~��c@��<��_�@��X�>@���8	x@��j���@���<�J5@��6�0}@��?�1G@��qP&@��l&��@���`��]@��=!j�u@���gy�@����@�z�	/�@��Y��@�	P���@����Zb@�)B�O@����k@�g�J3@�qd[��@�����@�N��.�@��}'�f@�.ȱh%@�!��C��@�$��G�@�&��=C@�(��?��@�+gνu@�-َ�"@�0N��p@�2��%W�@�57��2�@�7�E $@�:"���@�<��#@�?Y-ն@�A��'1[@�C�|��>@�Fx��j�@�H�A=��@�Kj�ݞ�@�M����@�P_Ke�n@�R���s�@�UWYJ�@�W��`�@�ZQ��`5@���冥@�Ӆm"'@������@��c�Q!_@���a���@��B�&�X@�߱�y��@��%uD�@��ē�@��	��o@�����@���Y�+T@��h�M�@���:�ӡ@��S�0�m@���R)��@��@{�
@���d��@��/�18@������+@� �� �@�����0@��� 6@�	�fJ��@�	+@����؜@���E�%@�|�� @��6���@�xt�M@��ŊMY@�t��@��^�f�@�"s#�m�@�$�%�..@�'s�JR@�)����0@�,v��@�.�7S�@�1|.�'�@�4 �,k@�6��
�@�9	Y���@�;�wiZI@�>s3�{@�@��`�@�C!�;��@�E�[�'�@�H02�$@�J�p��U@�MA�z�@�O��"�@�RT�?,o@�Tߔ��@�Wjx>�O@�Y�a���@�\���h:@�_P_@�a���Ҽ@�d*e"�@�f�0Y�$@�iG���R@�kא�h@�ng�E{=@�p�S��@�s����@�vL�G3@�x�����@�{@� 7�@�}�n��@��g��?�@���|�@�����if@��'CO��@���~Y��@��TH��c@���b��@�����Dj@��H�;@���M�j@��N���@���Ek3@�����V@��^�\y@���&9V�@��W� P@������@������c@��0�+��@����?E�@��nP9̍@���6��@���`��@��O�:�@���M�@����gH�@��4�<yt@��ث��@��}"�� @�� ���@���=��q@��jP�RX@��Ȯ��@�ָ�m�@��_�n�@��o5��@��h=^*@�!���k @�'�\}!�@�-[��@�3 j-!z@�8�ͦ��@�>�yDr@�D��@�J�{#V@�PiUG��@�VQ��@�\/u�v{@�b�b�@�h �Ћ\@�m�?�P@�s�>�p�@�y�w��@����i@ⅼ��6@⋱at�@⑳!���@◪�C��@❰lB�@⣯У8u@⩺�#@⯾uK�@����@��a�s;@���i�lh@����p�S@��=~��@��+�ݗ@��B�/<1@��b�ç@��ߑ�@���l�@���a�~�@����n�o@�����@�HS�)�@�z�rL�@����x@��B��@���=�@�$U���@�*���1@�0ӟ�;@�7\�s@�=Z;���@�C��ڎ�@�I���G�@�P:���@�V�5��8@�\�n�9@�c3@!^>@�i�a���@�o��S�@�vD�Z�@�|�:���@�	���@�p�e+�@��A�@�E���J@㜴�ӕ#@�&�<d@㩚�SZ@����@㶋�t�f@��"~@�Æ��=U@��
���@�А�fd@��FS�$@�ݣP҈�@��17��@������@��U��Ʉ@����B�@���~v�N@�!Ļ �@��ٺ�*@�cr�P�@��D��@��(� ,@�&Y.ri�@�-
-�@�3�	>�o@�:jj��@�A%_�˿@�G�¢Go@�N�@	<Y@�UX�s3K@�\�BB+@�b�g.&�@�i��+|/@�pu��;u@�w@���@�~绞�@���!�@䋼;�9�@䒜*�@�r�e�@�Y�'n@�8��!�@����"@����@�i�t�Yw@�k��2t�@�m~�j��@�oBTD=�@�p�_�3�@�r�K��Y@�t��z��@�vG(07@�x
o��@�y�3h��@�{�x@�}SM��@����@���4Ä�@���7�G�@��f�U�0@��.0gX\@����	q@���}|b�@���p�@��I%�-�@���~�@���U�;�@������Q@��i�Cy�@��1��|�@���rM@�����@���ƥ�@��[��$@��$���8@���ԦW�@����}?�@���|�f@��U�h�@��"�N@���y�Z@����T�W@����`H@��Zp��@��*��#@����>��@���#E*@����ų@��i�Z��@��9�>K@��A�X@����)Q�@�����)k@���޲��@��Tr��@��(���@���i�D@��Ϩ���@�ʣ��w@��x��_F@��N���@��#vA�&@������@������\@�զ����@��}�+ǝ@��U�`�1@��-�N�E@��־@�������@���~@�⑙"�@��k�|��@��E��G@�� �ڵ�@�����u@��׎��@����B��@����ܝ@��l�cV@��I�)%m@��'�9w�@���B�@�����@����A2�@���1*U@���[�p_@� bT��@�A�_��@�#����@��^�@��e�� @�	Ⱥ��K@���I�@������@�p��a@�T"@�9Wc@���v�@���TT@��6���@��K���@����@���[~�@� ��S�@�"g�B�n@�$Q9�qb@�&8|n~G@�(!M��@�*�9?#8��   ?"�*�  ?#V�*`  ?"�T�`  ?#P{B   ?"�;�  ?#a���  ?"�1
   ?#d)�  ?#�Ϡ  ?#^�Z�  ?#5���  ?#`��@  ?#P���  ?#e1`  ?#i�   ?#k�p   ?#s�Z@  ?#qM/�  ?#��@  ?#xIP   ?#�#�  ?#}Y�@  ?#�&@�  ?#��G   ?#��7�  ?#��%�  ?#�x�  ?#��   ?#���   ?#�+/�  ?#�@�  ?#��Q�  ?#�f�   ?#�wP   ?#�O��  ?#�۳�  ?#�A*�  ?$d   ?$�0@  ?$�`  ?$���  ?$��   ?$#�`  ?$(w@  ?$9�`  ?$*F   ?$O�j   ?$4��`  ?$\,��  ?$Jl@  ?$`��  ?$b��`  ?$f&��  ?$r�]@  ?$q{�`  ?$��w   ?$���  ?$��%�  ?$�o�`  ?$��   ?$�=��  ?$��   ?$� )@  ?$�2��  ?$���  ?$�b   ?$��G�  ?$ӑD`  ?$��   ?$�&Z�  ?$�E�`  ?$�f�   ?$��V�  ?$�נ  ?%+ @  ?%Q�@  ?%z1   ?%   ?%#*�@  ?%&�B`  ?%5욠  ?%6E�  ?%??�   ?%M���  ?%I��   ?%U�(�  ?%^g   ?%[~�  ?%~p�   ?%^���  ?%�H`  ?%s
x@  ?%���  ?%�f�`  ?%��<�  ?%��K�  ?%��E@  ?%�.��  ?%�_��  ?%�l�@  ?%˞�  ?%�U   ?%�^��  ?%��F�  ?%��   ?���GR�?���K���?���FQ�?���J��?���F���?���J�`?���F+J�?���Jh�?���F5~�?���I.�?���F���?���H%M�?���F���?���GBy&?���F��?���Fr�}?���Fr��?���F9 �?���F^��?���Ey��?���F=��?���D��D?���F/DT?���Dn)?���E���?���C�s�?���E���?���C��?���D곬?���DT��?���C�Y�?���C��<?���C.�/?���C�h�?���B��L?���C8�H?���B�چ?���B�-?���B;�?���B@J�?���A���?���A͂?���A�+�?���Aj�7?���AM��?���@�$�?���A`Y<?���@�m?���A`�?���?���?���@v��?���?���?���?�@�?���?���?���?B=�?���?^B?���>ĝ�?���>�կ?���>���?���>R��?���>L?���=��=?���=Ϥ�?���=�
�?���=n��?���=A^?���=I?���<�^?���<�F�?���<L�?���<G��?���<?���;�q�?���;�oi?���;��?���;QO?���; �_?���:���?���:��,?���:�W�?���:|~1?���:?���:9?���9α�?���9[��?���9���?���93Ԗ?���8��u?���9'I}?���7���?���9*�b?���7sy&?���8��$?���7}I?���7�}?���7��?���6�4>?���7�&{?���6.��?���7�&?���6Q�?���6��?���6�L?���5Y�?���6jV�?���4�S�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                @C��ȾD@Fop^2@I�'
r�@N��Ѿ�@R����@V���jw@X���@^
z8�@d�>v�@g06~�@mr݂Y{@s��(i@u�հg$@w`�Z\@z:_�2J@{�Sq�@����Or@�@/{�@����@�T<���@��e��@���i�@����@�P?��@�@Y}6@�qa���@���.W�@�H�y�@���(�l@��j@��@�?��=@Ú�C�P@�.���@�lp���@�IP��D@�F���Y@ܡ�b]�@ᖁf`C@�C@���@�_��v�@�1S���@�cz��@�Q"p@��?�(>@�%��@��E׎�@s���@

���@R��
�@�Q�8�@����@���z@K���@#��T�@+��@-�'��H@2%M��@5�AH�`@;h^[xb@@F���f@A[_��v@E�"-
h@Mc^l5@S�O6y�@X8ɗ�(@Z�\��)@]t��I@c��'�l@j$��@k6�8@n���(@t���5�@x
w���@{O�D@��_t@��f�gD@���g8@��b�O@@���ͱ\@��#(*@�׃A��@�N��&@�q���f@�nw$�@��[k��@��AK�@�kQ��@�� ��@�����@�ˣ9b@ȷ�>'@̱s|�:@�x��� @�n�NҜ@�N�֛B@��y��o@����F@�gi/�T@����u�@��y���@���x�r@�b3�`@ �Дe�@RHl��@
�es@��U`c