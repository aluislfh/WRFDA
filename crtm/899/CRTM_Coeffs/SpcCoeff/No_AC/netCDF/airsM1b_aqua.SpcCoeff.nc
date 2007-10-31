CDF       
      
n_Channels     �         write_module_history      M$Id: SpcCoeff_netCDF_IO.f90 741 2007-07-13 13:40:58Z paul.vandelst@noaa.gov $      creation_date_and_time        2007/07/31, 15:31:06 -0400UTC      Release             Version             	Sensor_Id         airsM1b_aqua   WMO_Satellite_Id           WMO_Sensor_Id           �   
AC_Release        ����   
AC_Version        ����   title         rSpectral coefficients for airsM1b_aqua derived from SRF data file airsM1b_aqua.srf.nc and solar data file solar.nc     history      +$Id: Create_IR_SpcCoeff.f90 794 2007-07-26 23:13:13Z paul.vandelst@noaa.gov $; $Id: Interpolate_AIRS_SRFs.f90,v 2.1 2005/05/08 19:22:37 paulv Exp $; AER extract_solar.f;$Id: interpolate.f90,v 3.4 2002/10/08 14:48:26 paulv Exp $;$Id: Create_Solar_netCDF_File.f90,v 1.3 2003/02/11 22:16:38 paulv Exp $    comment       �Interpolated SRFs for transmittance production;Version 4.0 AIRS SRFs; yoffset=-13.5um; M5offset=3.0; M12offset=-1.5; Tgrat=155.1325; Tfilt=156.339           Sensor_Type              	long_name         Sensor Type    description       <Sensor type to identify uW, IR, VIS, UV, etc sensor channels   units         N/A    
_FillValue                    �   Sensor_Channel                  	long_name         Sensor Channel     description       List of sensor channel numbers     units         N/A    
_FillValue                   �   Polarization                	long_name         Polarization type flag     description       Polarization type flag.    units         N/A    
_FillValue                   �   Channel_Flag                	long_name         Channel flag   description       Bit position flags for channels    units         N/A    
_FillValue                   �   	Frequency                   	long_name         	Frequency      description       Channel central frequency, f   units         Gigahertz (GHz)    
_FillValue        ��             �   
Wavenumber                  	long_name         
Wavenumber     description       Channel central wavenumber, v      units         Inverse centimetres (cm^-1)    
_FillValue        ��                	Planck_C1                   	long_name         	Planck C1      description        First Planck coefficient, c1.v^3   units         mW/(m^2.sr.cm^-1)      
_FillValue        ��                	Planck_C2                   	long_name         	Planck C2      description       Second Planck coefficient, c2.v    units         
Kelvin (K)     
_FillValue        ��              ,   Band_C1                 	long_name         Band C1    description       $Polychromatic band correction offset   units         
Kelvin (K)     
_FillValue        ��             $<   Band_C2                 	long_name         Band C2    description       #Polychromatic band correction slope    units         K/K    
_FillValue        ��             (L   Cosmic_Background_Radiance                  	long_name         Cosmic Background Radiance     description       5Planck radiance for the cosmic background temperature      units         mW/(m^2.sr.cm^-1)      
_FillValue        ��             ,\   Solar_Irradiance                	long_name         Kurucz Solar Irradiance    description       *TOA solar irradiance using Kurucz spectrum     units         mW/(m^2.cm^-1)     
_FillValue        ��             0l     �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            @��"����@���q�p@�؆�& {@��9P�[@���G�Ѱ@�ݟ�2�@��SF���@��N��@�⻱z�@��pn寐@��%��:�@������@�鐲pd�@��F��i�@����5�@��~X,(@��k�j[6@��#VY��@���yE�@���:\%�@��L 1�@��z��@���N?�@��xe���@��1⩧i@���X9��@��Q�y@�c�D��@�����@����tY@�����!@�
S�pw@�h:��@��IŴ�@���&�@�HγO�@�4sMT@����O@��ʊ�@�E�-cE@��5@���
N0@��z�^@�Hi�L!@�!	%��S@�"ʰL�)@�$�?���@�&P3�XZ@�(�V��@�)���@@�+�m|Y@�-]�<�@�/"ZA�{@�0���M@�2��W��@�4qB3�1@�67�^�@�7�Q|@�9�oAJ�@�;��L`8@�=R2�ڇ@�?b��@�@���
@�B�uiF�@�Ds�P@�F<��@�H~��n@�I���@�K��~+<@�MfYB�	@�O1�@�P�Z��A@�R�f��@�T�.zn@�Vbj4@�X.����@�Y��Wp@�[ɯ���@�]���O@�_f�-ȏ@�a6�4�@�c'z�$@�dԭ�l�@�f�����@�hu�Age@�jF��DO@�lŎh�@�m�+�i�@�o���@�q���%�@�s`��s�@�u4G�@�w�J��@�x��K�@�z� [��@�|�EiL�@�~ZAm�@�03[�v@��	W@��7C�@�N:��@񇈄s1'@�a�"�@�9ަ��@��~@����ߪ@��)a�@�A��d@�u��;@�Q5�J�@�,G�#@��@wT@��+�@��<s;@�0���@�v|:��@�T�T!@�1��@�۷�@��a��@��
�D^@񬪀�:@񮊑�m�@�jË �@�J��o@�*ԟu�@�gI@����@�����2@���ݿ@�����Z�@��f�!��@��6dD�@��L\�@��֔�k@� �?�@�xI�i�@�I�t9�@����@�����@�	�?S�@��0�@�fg���@�:�;@�OS��@����@���-Ʉ@������@�b_�@�8,ϹE@��\:�@���g�W@��Gy�@�!�SmI@�#k��=�@�%C��~@�'��zL@�(�%6�@�*��'@�,��g�@�.�ꌧ@�0^����@�2:|!�1@�4Zim�@�5���*@�7���	h@�9�s��{@�;�]^|@�=dV�u@�?A6f�@�A���@�B��F@�D��;��@�F�pع@�H�	�a�@�J{ၦg@�L\�� O@�N>)?�@�PK��@�R �/e@�S�Κ�@�U�sR&@�W�����@�Y��t��@�[n��@�]S���@�_7�Z[�@�a�:�@�c%1�@�d�E��@�f�+��@�h�[q@�j��l�@�l��x�
@�ni�/~�@�pQ��!�@�r:.��@�t#��w@�vIC�@�w��ي�@�y�q�L@�{ʨ!��@�}����@���ms�@������6@��yk	��@��e�nC�@��Rb��D@��?��0�@��.Y�@��K��@��
��@���k�~@����|"[@������@���H�_�@���ӈ�6@����C^@�������@�����5 @�����2@��s��e@��f_2ݖ@��Yd�|�@��L��PG@��A����@��7d���@��-�@��"4 t@��S^ip@����@��a*�@�����I@@���&M��@���;��s@�����:^@����&=�@�������@���r6�D@����`V�@����(x�@����iՍ@�˼H��@�ͷ� ��@�ϴ�;�@�ѱy��M@�ӯAn6�@�լ�Or@�תf��@�٨[���@�ۧ���@�ݦ��)@�ߧ=	a�@������@��]v�@�娔��c@�穋�oH@��&��q@���+��@�����
�A�]Y(�A���v�A���,XA�lv��+A��:"
�A�,3oAϏ_SXCA��Ók�A�\]��HA��1�kA�2>��zA꠆�� A���׮A��mm�@A���?�A pk���A��*JAe���A�MLUAb�N��A�9xA!kÉ[1A&�9�A,{u}�A2��A7��h�ZA=&'��AB�J� �AHM%j.�AM�S
��ASzR1�AY�y.A^��q�-AdXȻ�Ai�D>�CAo�?�M�AuF�g�Az�F6pUA��7�N/A�J�A��ZChZA������A�f���A�M/��A��]j�A��:�RA�R�9]�A�o���A��Ϳ�bA���ڹuA�fCpGA�2t
�A� �a2A�ϴr�IAܡ�e�A�u�°	A�N_�YA�(�y�mA�h~�A��A���*h)A�a��A��9�gAv?�BA_^rAKZ�G�A#;t���A)/����A/%WH�5A5��X�A;Us�AA��yAG�oh�AM�]/�ASX��cAY�!�A_#�=��Ae.�#��Ak<�G�5AqN�cU�Awa�b�A}v�S��A��)�A���GA��ݤQ�A��M"gA�	mN�!A�-�S��A�T�(1A��U��A���J�A�ݍ3PA���p�A�A�(1A�w�1�:AӲչ+5A��)_�KA�2�ԴA�s�[�A촤�A���:A�C��n:A���cZ�A�׀-�A7w�9A���aA�'�|A5�b�2A%����=A+����A2Z��ScA8�����A?"�8!�AE���|�AK���"�ARi�r'�AX���^�A_S�فAe�ߟگAlA�d�BAr�;��Ay?���AĴ�o(A�K�v�OA�Ӷ��A�\)(d"A��q#��A�x4��QA�!)�PA��Y=@��Ǭ���@��bi��@����8l�@��l+M�@��4l�2*@������@��n�
�@����*�@���t`@��H�/.�@����a�@�����J@��'�]��@����Ɛ�@��jz��@��m��@��T��@�RZ���@�����@����@�>�Nc�@��vnP@���>@�0��9@�֊NDg@�~���@�'��� @� ��Fz�@�#y@g�@�&!����@�(˷���@�+x?�o?@�.$Ϭ�'@�0�
:�\@�3{.��@�6'��@�8����@�;�\�n�@�>4���V@�@�f�@�C��@�FCqx�V@�H���t@�K�4��@�NXZ��@�Q
��j@�S��Q��@�Vs=���@�Y'|�Q0@�[��K��@�^�w--�@�aH-|4�@�c�5��7@�f�44��@�im��LK@�l&(Uc@�n��s%@�q�����@�tS��<&@�w���{@�y��<��@�|�n�`3@�B�r��@����2nU@����&I@��zK�A@��9D%��@���~cQ�@����q�@��z=��.@��:�u�@���@����(M�@���=l�i@��FAM�@��	�/�.@������@����@��X����@���
,@���N�{@���Z/�R@��v6}h@��>���m@������@����Ä�@���S}}^@��hv�`@��3�He�@�� 4�_K@���Ȣ��@�ϛ|�\q@��i+�M�@��7&�;�@���o��@���iZߞ@�ݨ0�3�@��y��>@��Ks�(@��#��@�������@����+8�@��k^�@��ms��@��B�ߴ�@��e��@������@����]@����!�@�u��w5@�O�n5@�(fKP�@���1�@��p���@�����'@�����B@�q`鉦@�N�Б�@�+�O%�@�	i���@�!�)7:@�$�~��Y@�'��߀�@�*�9�8@�-l�'OS@�0M��dH@�3/�e��@�6���z@�8�E��@�;�)���?1B'   ?1G�/  ?1MrR  ?1S=�  ?1X�5@  ?1^O��  ?1d�  ?1i�"�  ?1ov�  ?1u-�  ?1z���  ?1�bO�  ?1����  ?1��P  ?1����  ?1��  ?1�*�0  ?1���   ?1��s@  ?1�z>�  ?1�G3�  ?1���p  ?1�sF�  ?1˦Հ  ?1�dAp  ?1� �   ?1�=   ?1�6p�  ?1�&�  ?1����  ?1�7Ȁ  ?1���  ?1�#�  ?2�y�  ?2ݤ�  ?2~�  ?2F;�  ?23�  ?2"�3   ?2(Hy`  ?2'��   ?2'���  ?217�  ?2=�b  ?2C��0  ?2Exp  ?2H*��  ?2Pg�  ?2Y�C�  ?2_Jd�  ?2b(�0  ?2g-S�  ?2oҳ�  ?2w��  ?2|_��  ?2?�`  ?2���`  ?2����  ?2��u�  ?2��|   ?2���p  ?2����  ?2�=Rp  ?2��&�  ?2���p  ?2�s��  ?2�7y`  ?2í�   ?2ξd0  ?2��$  ?2��   ?2Ⲍ�  ?2��  ?2�ʛP  ?2��[�  ?2���0  ?3�
�  ?3��0  ?3��  ?3�b�  ?3�  ?3"xX�  ?3'��  ?3)��p  ?3.҂�  ?37�=�  ?3@YP  ?3F�  ?3H�<�  ?3Ki!   ?3R;=�  ?3^�w�  ?3jO��  ?3o��  ?3oy2�  ?3k�v�  ?3r��  ?3�'y�  ?3�|y  ?3�ܰ@  ?3��e@  ?3�)0  ?3���  ?3�"[�  ?3�-ʰ  ?3Ĥ�   ?3�|�   ?3��@  ?3�Jt`  ?3�dx  ?3֍e�  ?3��2   ?3�@  ?3��"p  ?3�rv@  ?3���  ?3�&̐  ?4|�  ?4G�0  ?4���  ?4'`  ?4�v@  ?4)p  ?4(L[�  ?44~Հ  ?4?���  ?4C��p  ?4?�Z�  ?4<��   ?4?8  ?�����x?�����:?���~-�?���F��?���1?���߁�?����Vr?���q�z?���=� ?���	��?����.=?����A{?���a�?���=�m?����G?������?�����N?���Cu�?���
�.?�����^?���ޝ?�����U?���7U?����i`?����
:?����s�?����o{?���+��?�����?������?�����P?���Л?���9�3?����Ya?���s��?����eR?�����?���;��?�����E?���o|?�����D?�����Y?���=&�?����!I?���v��?���~9�?���l�?���[�?�����y?����v?���u�G?���K2�?����Ä?�����_?���|] ?���m��?���K�?����r�?���xi?���K�F?���T��?���O�f?�����?���r*�?���!��?���X;?���.��?���
?����x�?�����?�����g?����7?�����?�����w?���DQP?�����?����}?����e�?����g?���RY?����}�?�����f?���m��?���a��?���8 �?�����n?�����-?���L�W?���IN=?���?Ô?��� T�?���w��?��� `C?����#�?������?���/]�?�����}?���+��?���
wI?���
2�0?���
bl�?���
؋+?���
�j!?���
#�?���	~7�?����ii?����\�?���	&��?���	�<?���	'C&?���Ni�?����h�?���n�Y?���~��?����0?���� P?���Dxe?�����>?���E��?���&��?���F�e?���Xw?�����?������?���*�?�����?���w�?����|+?��� �?������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                @'3*�Uv�@'L�.R�@'oY_���@'mu8�"@'}BK[�.@'y۰%;@'u��� @'���$@h@'w1��8�@'[KJh}�@'���ǒ�@'�U�r�@'��/� a@'��R�w@'�T�F�@'��}�c@'�y��M@'�6\�:�@'�kN��@'��p+`@'�3/��@'����qV@'�����q@'���t[�@'�'���8@'���d}@'�7kti�@'�Y�F�@'h0LL-�@':�|��@&�b����@&�����	@(����9@(�	���^@(���7 .@(�ys�@(���hk@(�?����@(���/�M@(�ƈn��@(��%�{@(���9i@(��cy �@(�My#�@(�x�0�@(ɇ�E=�@(��BO@(�U+\�l@(�]`��e@(��pi@(�2����@(��f��@(�BI1@(严�B�@(�l *��@(���+�@(�;�s��@)���Ǉ@),��0@(���x��@(�A���/@(�`���@(��2���@)�|Y$@)!�O��@))���@)0"K���@)4��_�o@)8��@)<�Qf�@)C4�B�@)EO_�O|@)H��A|�@)Q}s�\@)V�X��@)W� 
�)@)B/�M�@)K�b+�B@)j��b�@)j�G��f@)c�4�5@)FKY���@)&��>@)��:�I@)1od���@)6�� h@)�E�@)oiK�@)�QL�dh@)��$���@)�1���@)v��=@)����7@)�Qy��*@)�O�V�@)�<���@)��#p@)��$!�@)��ǲ@)�qk��c@)�Fm�X@)��jؔ�@)����=@)������@)ӽJq�@)�/<<�@)�6Cˀ�@)�0�z/�@)�7�%g�@)���Ӌ@*'x�%�@*��,b�@*xsBM@*	��>�@)�M*�\@)�p��@)��*��K@*d��@*&B�p��@*]�f@*�ġx�@*?����@*Fȕ��b@*K�x��@*H�Y?�@*-�~I��@*=��(�0@*[^�_�@*^�*=��@*f�c��