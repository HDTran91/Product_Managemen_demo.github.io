PGDMP                         x           Sanpham    12.2    12.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    Sanpham    DATABASE     �   CREATE DATABASE "Sanpham" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Sanpham";
                postgres    false            �            1259    16415    product_info    TABLE     �   CREATE TABLE public.product_info (
    id bigint NOT NULL,
    product_name text,
    product_prize bigint NOT NULL,
    image text
);
     DROP TABLE public.product_info;
       public         heap    postgres    false            �            1259    16411    product_info_id_seq    SEQUENCE     |   CREATE SEQUENCE public.product_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_info_id_seq;
       public          postgres    false    204                       0    0    product_info_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_info_id_seq OWNED BY public.product_info.id;
          public          postgres    false    202            �            1259    16413    product_info_product_prize_seq    SEQUENCE     �   CREATE SEQUENCE public.product_info_product_prize_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.product_info_product_prize_seq;
       public          postgres    false    204                       0    0    product_info_product_prize_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.product_info_product_prize_seq OWNED BY public.product_info.product_prize;
          public          postgres    false    203            �
           2604    16418    product_info id    DEFAULT     r   ALTER TABLE ONLY public.product_info ALTER COLUMN id SET DEFAULT nextval('public.product_info_id_seq'::regclass);
 >   ALTER TABLE public.product_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    202    204            �
           2604    16419    product_info product_prize    DEFAULT     �   ALTER TABLE ONLY public.product_info ALTER COLUMN product_prize SET DEFAULT nextval('public.product_info_product_prize_seq'::regclass);
 I   ALTER TABLE public.product_info ALTER COLUMN product_prize DROP DEFAULT;
       public          postgres    false    204    203    204                      0    16415    product_info 
   TABLE DATA           N   COPY public.product_info (id, product_name, product_prize, image) FROM stdin;
    public          postgres    false    204   �                  0    0    product_info_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_info_id_seq', 16, true);
          public          postgres    false    202                       0    0    product_info_product_prize_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.product_info_product_prize_seq', 1, false);
          public          postgres    false    203            �
           2606    16424    product_info product_info_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_info
    ADD CONSTRAINT product_info_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_info DROP CONSTRAINT product_info_pkey;
       public            postgres    false    204                  x�Իǲ�ʒ%6���q�|��#h�5�fm�Z	�g�ǈ�꽮fu�����}�3# "��}�Z'}C�����u3�E����_�����_����ْ�_~c�6�e,v a 1 �N���$�|�_�oI��h N����  xA�/�\�'���>��/�?<��B���`���0싐 ��;8��C`��N��?�&!�ߏ��5�+�����_O�X�Ř�Mڠ�:�a�7#��l1�����7�������?����7��������`B������1��Z`��c�I�o_���&P������I��c��K�O���{��}/�m���!��װ�X#�7�������C�����������͐T��/ł�K6��N���ˋ������ڣ��/���@����� �f��d̊��~t�2����DdG_�$���i�NI*�&9����o��C�,��� �fY�`������L��+���\Ὺ$�ƿ ���6���f��>�_���L��ۦ�!��b{�����A^8}���G��'{���b�����L����� [ �(��bٮ(������S, �GQ�@_��^�ɞ��Q?���?os_{6o{��T�@O�h{��r��t�ڠ��j�~W��l4SM
[��`S�po��x��R�zo��l?��wbW�mW�?��]���������G	P�I���ܩ�RE1�ű�%E������u���z�(��<� �b����P���G<UY�{�}q��l���Z�8�8��嫊���z��3�Śp�'���tw��ϣ�ז�;�;���ES���V�gng��8���w��߮�$�:-Gry���w\�&D���yǴQ�����uQT�g�@���H��A<֌�Ӆ�(��Z��t�i�Gu��,�p�ʔ���5+��J�/p��]L�Q�.���Q��?���6�����K9��#9H����H(S��;�ڍ6���1Vg��nۡ�^n�+�l�U�m��g��Zܤ�R��oYb�L�\�uq�Jn�+7p+�w6��ŶW��)�j�K�L���0���������#e-�f�SG�vi�	�*v�k��p	���w͵�As��a[���3�v;�lt_Iׁi�Z�u�G��	XtjLI�gli�.����=�^�l��^�˳r:�w���z(y��v�G���������ޮ�.z���"��:��C�W"(�gzW)&��E�?JbS�ұ�۾�l6����k%��ܲ).��R�Я�N�楿����|�\.H�X5��Nl��Ǉ�$�W�0���Y)����Ƹ�4���|��.���q�~?Y��^��S�C)�㵒Z�\u-v��En�2,1��5�0"�n�4c6m�'��_Gۅf�p�:��2H�!�+F�<�q��Q���`��?^���E���^ɶ��3��2Y%z@:�r���tؼ-##󀿠���г&i<����$CI�i����E�*~/�cǨ��	�|��n��?V���9�x S���[��5�ؔ�:�<$�s6c�0�#+����x�����N����q��-֫ٵ*�����Kh�$��%BX���Q�܃�_Aq=u��s�y��d'����_@����H�_Vmrb�i�%#�w�1Z8�Z�&��̰��?Z�&/O?B�j��g}����^Gy��{�Q�w�h�$�~���(j߲�oT���j�G�o@���〒��^b���
�#_�3b$��N6��G i�]�(%A͆8��%�<��,�W`�Ime��1�Xm�z����2��=˭ �y?<����Zo��138(C{����;� <Z��
��:@A�p�E�0.�v����R�K�����#����E����9,����E�P�u��$/Fw����>H� e�!8E�Vl�latqwmN&f0�Ւ?�N�}���ҏ��:}�5$���;	%��.؏�g(���,{i��H�E3Fg����`�(���;Q��@#��LD_L��ȍ}9XOu8�f(cϭ�~�2��R��������^H�k�5R�������jVd�Gr�U�У@���}����z���In '�D��ݖO�8�8鄊��KFVUD�^:WEʑ���YS[��z)1٬��>ƛ;w����)�F�.(�N�M8T�� ���e?��VX��ɞ���یE��o�el u���~�G���l��an��������5�<h�1��66:k�!� q�p�p|������� lx(�}K�H����g*���o��!YC�ܸx�{���d�P@�O�wK�,�W�dڡǵ��]_߅��p�}Sh~��c���:���@w#nk2c*#�[��Ħ�A�j��k�����K�X����X���=i�v�5�.(�>�8�NNO}�xE�'����C�ȁ��G>��?q�����rlnk���2�z�V]��d�F���w�7��(T��BS:$4�A����Tv����G��'�.tG,��I�}�'qh���A~Ì��Sf�*ATA҈d�&d����,���t��J�Y�\*kZQS�l��ٟ4�A���泽\�1�7�L�kr����/�M;�|O�j�!H�8_eFb�j)vL�룮��&�� ?�X�]m;\U�w�����/i&�;�B��s@
}5p�o�A}Z�t#�-�#�PZ�V��8A�|�M�����6|�L(&O����l�I�Q׬�ъ�N���rb��h��.`^"8��9���z~~�~fr*�p�>�='*��5;H��R�r��~��j=zj����r�X��^��2���$.?�*"����������gS���{�A��l�mD�U<X�X�v�9��x�J�:�)��@��;��0�"�7�!.��6h�B�����a������������f�qg8-��Q�����b�7�PIkw�G�� �՘��g$S�/�=4GS�Q����/���)0L�k�ބ2��3dG}�1A���<EH�'�/|8d�f|�1G߫{c�6����tY�"Ϥy�hCD+?��k��Ύ�D�M��Sx�f�u%��~�<xE2�H�}�!��w��?��(Ɨ���p׵"�/���\e����?�!@��cS���k���>'�a3U�/�Q)�����&�A�NS��+�����Wy�~�̈́1� �*�x�B��>�h.�>ī�B��Ջ�I�u%�
1R���uS`����Wa�T�D^+|�7@`��� �bm�ܱ�s^9Fq�g�+g�W�զ�����L~_�BK.Gh��p/)�v�<E�&��n���C��|R��o�G6����t;_�"��C��[��\�:�*��V��A�;�i�]��Z�^��КCQWjו��V�7����ͬ��B��"��.#�~��mr�{�'�j�����|�����+����uvR9�T�w���#��>	#�0J�J���&�>:�ʽ�w,������Uq���TqN��Y>5�κ�9�v =�?|~�!�bBL3
����;��A��|�t~/�Cvl���ژe�v��{_.�M��~؄��v�Sz-4�~!��*+�D�e���8=|^�����Ri�`���1g>�-x����}����z���O
���jwo�g%�0BKa��y9c�K�������`D��+�i��ʜg�6D�sfֆ7�7��J�� ��Ѧ�v��;(�䌠t-a��� ���y�)5Ab�ʹ�VM{��̭���X�ۘ	,����7�X�ڧ�7��:JW[2��%lQ����Lh��|ۛI����'��!a7�*=�o���[2�k���_�cv��O�����W�jt��/|�l�D�-��V����,��R��B�)!�wl5��8�;w2�l���I0y�2�N!�J�܋(q[�|��:�6qJ�(��U/�n��X|�uW�ط��<#��F?�wOX�zݳ$�Ǭ<�|Fd:I�ң&�4f���wo���z�,�a�(���"֧A��xcZ�/�֥�᎕IA���;�C�y��jD\d҄���~@뚁����.�Ļ�5�Г���:~u�찰^r�^	�<d̨�&��    �r�mtL�V��j�ݫi�?f� A���V����ݐ�4�q���@�ׂ��d�,3��r�h܊�nbp#p�0Q\Y#0]�+�T���i���q��s��pB�h��u��J�������d0t+��Z�b�[�v�����6��e4X�ƅ�����gq��wi��P���?"j7��d,����|��S(��'��Kf&�%#�@<"J��������v�N�I�ة� �q�d�.T����/m���;�p�J�Y�~�<]!}��/"�Ή��7�ů`{�։���zG����V��vs�7��Y������@6��W[���Hѐ�ڭ�C�g���B��wk�/9%Y�\���\q��ڼ�+����Sa�q�?����"�������f
���Y6p���j}���~J�)i��B9i�E�NzE��`f���W���/WM6*	�7��Y�
HF�}<dL7ֽ�:�8t�+Y�}mos�w��4J`�@�j�5�2��,�~�7X� ��-�����<J	�s?Q�M�E��[
�)��*�d�N�����D���M�%/��+}uȫ���1��>�� ྴ�9���#|(<6>"�&��m�MJH�W�?��hT��FfZ_����L%��(��2�TFO�aT��b��
����2n�CY�;�R����m YE[7����zb{:��-wZ�J��=�ׂ�B`H����@2�
Oo�_�rK�����1hfn�.�`���(ւ�(0 ��ǜ�O=�M=f[U��]B֏�_���C����Ӧ~�ӱ����Ӷ��><��@,��JuR�J#F#��l'GVv:�1ԅ�-�n��$�6�NQ�l֥�����iy:� ��⫅�mY	w�*J7�@V�)���O2<E���YJa�-�2Q����}��?��[�p2��%f�8㢍��(�_�Ht50_�*|@t�9��t������3~4<z��E	w���?y����7N���C.;K�h]�`�������O�������U�=�����b��rX<��ɬd�dI���q6����2�q
J[LbT�볡.����=�����h����A���Bd���XEaWw*����(!�^�tb�ֿ�.�����P`�#���X���qo"%,R��k[(�j׌�Jud�D���� ��%m�w����U�C=<�Ӵ�7�yh��g�芵m`b��hn�(��F���P�=�R��u��$�����x�Y�XA�t�w��JL蛱_�V��3931�����CE�l͵�����/zR��gԮ �I�J.-���so�w��NL�_φZ���M7�R�<�^�u3� �����o��]�O�LjZ���b �=������{t�B��(L��5���ƃQa<d۾=�ri�T�1��^�X n�י=�%� F�T�9��s���T�W�W�%���r-�]J�n+_p��C�")e׳L�k{�����7� ��:�
���|�V^$1U�OL�eM��O lV�V����]�''���l�/�f�r��Ѳ�F����7,�*ho����g,�)
L�mԫ5�:�t0*˗4�3�R���U���"m�g���i�<�4Y`�|�m��+�8y��ʃ� r~f_�L����lӦwS�AM4��X��X[�hm����mQ;N���h��\�مk՟��k���0�*�HbMc��x�p��'�,��i��q����J��q�4�_Wn���mp�gP���f���BDMƓ�kM�`��Xp�!�k���Q(���k��
�Ӕđ��kW�?p���Ϯ�"O\X��K�x̝�f��/n�]������[���s�����S����:�S�37--�Jc:�"X�K�����.���iy"�Ǜ9�>���'������#*�Ҕ_��a�6��!��x+�=�&ۃ�E������^;�� �T��d�)���N�����4�D>����
�O��Ⱥ�����+���5!�������U.ߝ��Q�
jt"�su��8�|?-���U?լCP��SNxV��(�+PӅ�د_H�/W�@��>�����w�p����_�y��Ӧ]m�X�g>�]�0P ��a��=2ES~qt��.(�蟧�>��Ň1���T�[A��|.�B��Ҡ��5'
���ğ2��Rm��$���S����5�v>#��V��E~��_����)�6�����Y��6XovCʂ�% �"��B!"}�1yܶ��d=G�T��tC[��^;T����u�L5hk��j�wP3b�H#6��٣!8�i"Y{�����h�#,�\�U��`��5�ڇJ�\=���*�KEg���g��Vt~8�LzP�l�����uU�)<��#�&��v=��W��e�ݹx�pl�6,�YdW�&�o;2�,�����7)�[CTy%k�I$�m��|;PF�%�0pң��"ثw�_�|�R�M�7��0�-��H-��?�8E�C��8�sF�A_q�C��f�AKŲl�L(��kL�����_3v�Ou��cQR�9�TS����MY��t��H�ͯ_���bm�G��+�V���� ���1�����x B��Y��.�Y���2�/�������^����f��s�/zD|	 )�_)I��`$�/��Y
�x� J��(���R�^9���������/Ѹ�?U�@W�{D=EB=��,�,����hg��������T7\��^�����V���������D����J��Um�Dq�߫8��{%��t�T��,!�{ugQ�dY��Oh/��y�'.��\kmoT���y�c0��]U2�!��?�� �2Y�5�_a񧊁}'���F��k*靫D����T�9h5�r��s���u�+�V��P�}��6�y�y�Ͳ��tkm%�],����h�T��}�,s�NN݂@��Q�<e�r��Q�=�"��Go��3��"zB�i��fIez���@�"�I��z��eQ��������#o��X�Jn;En�͛i���>$'/�s~?� �O<�-�oJa05GgQ��@�1�O^�)��eԕ�t�>N�_2[�_�&�v��v���N�@�}�$_����ZZƈD���H�o]�sr��O�� <��N#}����W�.�uo�'���{#-l{�G�P�x��)�޲;����u�h��g�4^ ��������ş��RrGJu��o��A�x}e(^�{���*r^pf�ё�!�U��a���G�*� �ga}c�Ua��~�c�!� �_W7�⪮�]���7���,2^u;:{���I�%��V)�vkaP�(��S�Jԗ��� ��U�_co�R��,���ؓ�W��P"���N��G/�����7.�ՒW��,	�+N�⭭!�����������G�ц���Yن�?hV:6=����Sȁ���"lr��{D����*��Z�鲻��-���c�?_�
��ν�ʣ,��mޗ�i�l�糔�zi��	�?�z�~-�a���wui+ڟpѹ�#n��=�dƉ.�/��H���h�\I���f7���W�4&�n䡒Gζ����)�YqW��F�U�I+b� �������z�&c�����a�v��\}
0�e��w5�0�M�J{;��u$W�p�g�?	(�/�;NgX0/�s �?K|W����JE&8`dÍ��J洐�-X����>���p�"�����v�U���WˌUnvލk���ZI��;�ιU�W6�Jf�!BG��_qW>�q��0���~^J?b��Dˤ�z�(� A/صq���ŪN���B���A�
�"{�	��0}���?o��BةG�#p�nm���:���2����δV9m�x�����9����i�]^��H����vׯ4���
I^�Ì�M�y�+3�s����K)��w}�eA\_
P�5�	^�b�AsH\�ɁL)�W �8��/���;�[;�dj��Sy}���|�Q$ǌ�����#'o���|R�>���Kϧ5̨u-Y��P^e$Wl�8{�S���    W���xx	fyg~�C#�c�����ѻ�4n��~�:����6r�lUB�,��S�43x�q�Zb�
pе&��������r$��U�U���zu�;�u��F��Gի�Ɠ������Ÿ�a"h7��m����e��ÔQ��i�ǹ��r6~��1)k���LL��;�W�X���h4ΐ�z�0Au��
��� �����)!�G����q�;Y���9���T�>�k=zeǴ�������n)��0���&hv�-'X�_����/OlӐA�V��0�B������2^���ʐ��G��W{���~�E�u2���%c'��Z�2�Z�;4-Z+A4"L�5�I�֫��$j�;�[����_��G;_�Ri2��5�DۡC�jCj}�k�O��ǸJl��?�:W��~��`W�@0�?%�v�͊��rF�Lc�X�(�l��1���ED�r�s��r63�� T}.GN�|zI)q���2K%�jZ�����=�#��/u� _�w~ze
F���K�ɴ��qYƪ�	�usn�.�ی�珕��Q�	;~�vzE~Y�@��
SQ����F���������Ʊ��}7��[-(�������e8v���Eڶ��\��aÃLώۃ�wѮ������&��%�B�@�[��v����� o�ML�O���I���k����gV䦫�+��ƚ+���E��{�&a�]C{�Y�d���i���-���{3�sR�S^R	1����Q��ܕ�������Z��g�҆��My�M���0;d�����{��,>|W�S���L�L,}e�V^�®���9FU�h�|սf���a��k��",K�SG���-M��/�ջ.�w�y���/��1��Ӗ��j��l�/�����g (�P�r8Ś���i^C�i���N��ZwX��Fm�Ƕ��|:��WO�+C�N�J�9L��m�Z�cGp,�b
Ƣ���ލ���dV	�7����!�焯�f��J~�6�T�fܥԼ�7OeU��7�6j��W���)/��w��j4�VT�ә�s����u�N֍R�gyT�f,�/#�l؆!���v�y�	�jC>���%TtY�X��L0j��Gb!�%����^d��^^�}�T����O�� V���9�EX��p�Q/�4.�����W����^�"��zK��Z�pv�{�-����w��W9XL�9�7���0@O�+~�-'�"̲o�>q����臨J�:��XeNuk�WǐIh��&��آ���B-\���f��WX/v=~�1��VX�[�� t�� )����.��ٳ��5M_n�}>����b�X�?6�o�+V<�B��X�
c�L��TF��=y�奍[�UE���]U�o�.ʷ�{q��|��z��G*a$6�����/n3X�m���x��	�ae�;�}�0/u�]R��u-;�C1��\�7qQd�3��/�K�d5�>��0��"�e\(��Ds��6nE��8����Z��� }^=�KC۝����V�ʹ����dt�����a�>9��j=��U��M:{��G��#T�PPjT��z~s��Q� ��m54G��^8�@�{AV�~ �Uy����#�D���#{�{�襭_�V��`�:�U�	2�F�.ih���B���G��s��6X�<�]2g*	8̸1��RM
gVxNQ N�U
�6Q�$�g��E� ��y"t���������B@8�6S�ؙN�����2.��������W���u��NO���[�`A^&���.�����iW�K�x��0y�p���U�� u��i���sԺ��a�u=�{���G�N^�zy�eĴ"�NM��=%��խ����h*"|+�@>u2���
w����SaeػiÃe��F
�L)~�ǝ�TV}5@���Wo�Y�q;#[6:*i~a;�� ��:�K�H�g�/K1P$P�a�С��7�)~jMU����}�@=O�F���KH�-;��j��U� ���}�E6���:K�#�?V�jy%�e���
a+�;�3���;�̹��_���%L�
ծ�?��p���xE��e�ɼϥr,X���c�P��V�����u����bٚ.>�_|.I�'.?�0�~T�9�*���N0�&q;�5�PTF�Ո"�@�t��� m?8a�lR0�b�*����̏9S
������+����$�<(�	N����T�	�1�3�U��Y�a�։��
NRT ��f��H^$�7�T��4hl�d��4�l�C�+�teP�-��A��򕱛��� ����G#�;���(��|�ӫ]��hr����f���*�;1��L���N����|��uˊ���$}F���[ȕ�=�&�w Bl&i�G2wcT�M��C�f�"�E�j�wr����f�0�R�-�{���W������0;{��f_gF��~�N���=�@ ���sr��c�P��\L�T�k�y\�u��Ҷ�R_?)�6�wubw�'��.I���)Zݴ����	���9!��=�j����{v�РHյf���1��ls��V��E�p!�����\�-�4�Ql�8D'�:���T&�v(��� ������� ��"}�+�:�	-�g%��>�C��kX������9A��I��J�� �����w/3S��h������L�����E*��=Bkr �b���w4]��q&�j���;����A|��:cx��2��O��� ���D'�r�x���p�\����9�u"�Cp9^��9�n��V�/�@�K�8)����ǵ��ջ!����l��tθ�B&1�T/M��^��b��9z�r[�_�������6��DMؕ����?�$��F�ӽ�#ៈ8)��)�ƙa(9�6彶W7aUY���e.��'���x�7��0��hI�L��y�ga]J+�@��+�.���ǿ�� �\��v���	�I�u�O�#&��5�yw9���s�V�g{��2$.m1�C�Vb����| -��As<U/$p�:ߓ��
��!7�V��2�W����� �|�υT�U�1����D�k3��<U˚YrcՓ�OdFn�Ӏ�P�����X>��@~B?���N}��u[Կ|�r�9o����^�I�0H�Q0T:���q�!O�N�f4�y��o��#^e�K��i�8r�^˘r0[�7�dT��;?���~�7R*2D�$R����~��+�x(�#����)WU9��`錿��� 5A"K�2���&$���5�X
�eF9�=�H�Ɂ��w��
�5M�0������Iήh+�~e`٢���KܨnÖ���>z�!/Sj��Ca�-m�n�a�C���.X.��Ҹ��p��_C�ܵ�6�K���7�%��̒{�v����F�/�x�5�9-������{��@$��^��*^p���O��V"4n��L��Ys;� U4�ʀw�ɗG�ݥYwѸ;ekB�(������zu�
�&��A�.��&W�5�7=r|�ɤ�������X�*@���˺H���{�!k೔?q��%gv/��+��������~#^Z��3wvO+�
~�ܵBm��}�1U��֭�FV�F�ϩz�z��Vwm�-���e�5SF�7�z'�8�`V)�1J�Y�$U�?_��N72N�8C�K͈g��eQ,D���Q��.��]����"[��`�G�7��k�$T�%�!�7����+
7Wi�ֺw�)	�/B����E�9�ڍ�c�<ɮP��^����xl2�3��t�����ζ�9)��y�ջ��^�#b���W�����&�����4��Y�ߛ��u��1�g���K^���/4���ن�ψ|��07n:����q���f�ԣ�/g�z�;=5O�p~ǐѧ��ޓ"+JO)Z����W}b�d:�U[y)�X�r���F�'��->�8�N���O���4/��~���j�gW��Ѣ���r�b��HX����J�;���<j�s¬�� ��~f�&w"�Ԯ;�vOe��:N����kBVk���Y��=*)>=k���ē����� �9����7��8�P�|    ݺ 6������:��|k��L7j�X���N�]�<WV��SÐh����]��~U�!�a��i�2E��~�+�����,���Tl��d�`h�%��`�W��c�ӧ�'��$�1�w��ʌb�C)~�O�dV�tE0�Up�'�����?����鍜�id(��X1I�}�q�;���cty�r�2R7�>>��������E�>�Y.�R\e�k:D$��k�Zo&�b��0cv��1ws�Ó��c}��d�x!�Wm����

���(p,��x��qR��~�D��ik)-/�kNЭ�9�7H�>(�m�ʀܠ�B��m�'����V\H�I�$��6n�v��倵��5���aMx$2��b�7�7#�D�L��^�Q�|�3dc�$����]l�LG)������b"�)yBL�����K|xkZ�χ��d�{�K(���+Aӎ'hk��l�.ʘ�:���yE(C[�f�_�'v�,J:Z�	����A��oM��9��Ѭ]1���Y�>U�r,�g_j�dr��iVH�2�d� ƛ��ݯ{N��S�41�o���S]�������r��P:���4I���FdU�UQ�K�K����P�)�����Hpޫ�����3�)�Z ����B�U����Z���L�FCk���k�vl`�&ܓw�(F�6�$c��ux�AU�4��b=��*԰���Z��
��"����&�4���R;�~������}"�K���K���Y�P�-���1�.;?���R=Bma�t����?^���NHu�O��6L���!&�R�o7
�t�<A��:�!�>h��Z�oMMe�W<Oa��{�Æ'�*oAT��K��kR�Z*�ȞZ�ʰe0��#*N��*��s-ᷣ�桋�TZFnrޝnp)�ic��"��?�ڼ�� 9(���ہ(?��o�u�p�W�Yse	�#���d�֙PI�h~_i� �G�ཇ�<��k�	j�����'��D]�y�m�؏)({�������<�B�Em���g>Ȝ&��P�f|#�����N��f����X�z.`0 i�\��/�ƚo���>=�ܰF� ���~��Zi.^��X؉�t��e�>��@U�Y>�H��-I�VO�^���8���{�f����H�J�xG�����i��{��y���a�w�5���ٝ�%#�;�Vn��t�*?$u���s�s���7��jgv��ɺ�.��8����[�]�ABo5�
���?�M�A����q�T�e�w�9�m�B��*��]iՎ�e�br�z6��Vm����K(�PG���㶕mɐ�ޢ6~�ۡ���l�CT0�(ѿ��D?��&��n�l��Z!(��F*�-�E}���H���dT|Zi�&ȗ?^��]�G:�?���N��n04�K(<V����՛�����F�w�wV��f�۽���������d9�!��U�����h�{�]����6����u���ͦ+tɟb���5��P�'>R�k�U[^���,g4�|N��];�p}��!�OTV��5���Jg�*��m2ӯ�	�łws ���Ml�����`����-v��������7Fq��w�# j�Y�j2�`�sۙ~�u��)��H����LK�ؗ���a�`SS��[�ɧ/�vA@�:v<1�~)�7���z>�pă�pB5����˅�W�<�(xsf���?��پ��+wQ	.p \����a7>#�P9��*�mǳ�m��[o`�/�#�eD�0\?�˄9��C��xu4���
�&i}�nF��K�q��g,�t���A�M�����iʅWTUUs@�\�qL��K_v�t��E�����71S%lM& �˖�j�!�e��ww��Fh�0sn��/Q���G�Q��r�:,��2��aB6I*Q��G#��Ĉ
���cl4�C�-&�2P2�
�ӿ���G�l>~����g�=��M�.Y��w�V�3�Ovrܡp�+�|U��V%���D�eo��Ͼ�\ò#��B�ک~����	��*-���d�Q��|���"�4%~��`��ӭ���~OsxN&��/t�B�[�+a�z�:}�@�kh-bf��ը�	��k'��J���Q���tc�$OP��k��8R�[J�ȴ8�; �U���V�
?�H�- �b�[Q
_վ�r|E�\<�P.���ʻ�nk=�O
��Y'��,'.(I![q���(�J%��Ԓ���~\+wP��V�"U��q�;��5��,N�D�=bSv��b~f.0�`��j&s_E��ڵ|����V����������I��3/:��7�7���uO��Zq���b��8�;A�u��uGsE�h"P�U�6���a�P���;'��vS�)j^Yᔕ�6g8nb�,�î�ld�����ը��c,�N�E��v9W�<���z5��� �l�SR�$�n��np2�P<^V�I\Ȥ�/n�G.��a�K�{�{��/?�>w�2�F�>�6Kk-J,�٦2�a�̇E��.����+ʒ9��zb���m��K�=�J�-W��l�PXQbA�C�K���s�K�3���z������}��w\�Q�'�Ћ�F���c��N5C�B��%<��<��}p�fSu�s�4vl�rv��q]`MUT���5������{�{�;�!��\h�X�E[ӭ��(8El��ͰD�>n��%��=�&'���92�O"n1x]�蒄{��q�T��x@r�Bb*�V����2G�wil��_��'a�L�k���Ȯ[~>V��2̳C�a�h8�<m�!�d���
�Ij�݁��DD#{�,z��v��M��3<\�T�؆ߏ�8_B����*�%J��!�/h�|�Ʃ�L��[�u�ujف�Ϊ��@
�rp =熁�#ut@�/�����f��I�*=\Q^ٹT�!���r�%"�Ƚ�d��7�0�k��젙�ȻW�7$�dd���4�C�I�"c�,)���v��-Z�O�v0�A�Q_�r�0&�!���ٸ뵷1�������du�B����CZ�t���g���b=a������{i/�W�L	=^^Cc-�� �Ys��;#���y���.�b~#E�M����A>�Hs���ڷа�/u4����d�%ňQ�e�@i��؋����t��9@Af+?�76�o�E!�ڟ��e�����PݪlX�S�SǇ"��t�l�a�%#d�b�\Y���m��i�mu	��>~E���X�@Z�$cR#�D>�q�VK$��[8��i��h=ux�7�f���A��9ol����+�JN���U�z%���Y�}RO��UҭZ��x{��R���������s����Z���>�2�qB�r�����8��%Zb�/@���eu�f�(`+�JC�v>*���;J�S���@y��Z�^�ƨ�@S���5 7!�a|@(3U���&[&�\$�i@�ԩ*ߋTv˿�=rJ�=:�#ÿ3Sb:p� b�Hy8);YG�����I5VFF�c�'�7�˓Eɂ���:�������I�'��}��:ѯ��@��K�Bb�~��G�<��%
�:�%"Jw�F��-�]��8�Uo6�A�l��Zy�7�A4�\��V��Z�����7�MJo���6�Tdp���q`s��)���z�l�-���߾�h�pU;"��#�����t}4�~J��/��}������
��o4�S�� طQ���	�V���F�И*�����^l٭:x����TN��F��G"���P0�T0½m�*��_��g�E��,nw��$t�?�n)X�SXu���9���BJD�]-����s�EN0����t��ٓ`Is��t�{�����tr�=r�&��L���dh=�Z��Pi����LϽG��B�7ZXD�arc9v �dn�|���F�{W�nOv���>J�>����dޤ����+�/T�&�p�(�#8p��iN����\��b���p^G(����p����	�� �v��@�*��2y�l�8`wp}���'�i>סo��Fl�ܠ���'B�e����)�4��S:B�'�u1���o�g��0��l%[>�.�\�W
�� �  aU@i}�-Q���)�)(b��t�En�I0�Y�m�F����ǹѲ⼿��y�Aa23������ĺ7�`,�SxϞ�t|;r��{"j�� �So	9lh	VJ��q��X��+�(��$���Mɝdq;�_�1�"���r�*���mh�͒T�;�8L��b3��b�Aӟ�]��H*�%�;���^z;ڸ�:$X�-���*oU��,����V��T������V�)�[u��f	v�����b���"��h�:2�����׽�E�&�s�����.�\��+Яγ�k�g� ��n&uD�8�%�;��s���4+��5��������0Pea
�e�E��n�5�Oj�5�#��3��O�7���0�"9�����w�q�q]��=j?�7n�	}���FK	ա��WZ�je*�����N�΂C�N���)��^01~\�O�m� ρ�K�m%��4KgfIB�
F�Q*�v4��G�y��ֿ��������?���@     