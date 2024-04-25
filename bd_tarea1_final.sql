PGDMP  /    #                |            tarea1    16.2    16.2 +    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    tarea1    DATABASE     y   CREATE DATABASE tarea1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE tarea1;
                postgres    false            �            1259    17361    actor    TABLE     q   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45),
    edad integer
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    17360    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    17377    actor_participa_en_pelicula    TABLE     u   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer NOT NULL,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    17355    director    TABLE     w   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45),
    edad integer
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    17354    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    17367    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer,
    nombre character varying(45),
    genero character varying(45),
    duracion integer,
    fecha_publicacion date
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    17366    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    17404    premio_mejor_actor    TABLE     s   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer,
    anio integer
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    17403     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    17393    premio_mejor_director    TABLE     y   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer,
    anio integer
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    17392 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    17415    premio_mejor_pelicula    TABLE     y   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer,
    anio integer
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    17414 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            �          0    17361    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    218   W5       �          0    17377    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    221   �<       �          0    17355    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    216   TC       �          0    17367    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    220   �J       �          0    17404    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    225   2a       �          0    17393    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    223   �a       �          0    17415    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    227   �b       �           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    217            �           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    215            �           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    219            �           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 23, true);
          public          postgres    false    224            �           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 35, true);
          public          postgres    false    222            �           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 31, true);
          public          postgres    false    226            >           2606    17381 <   actor_participa_en_pelicula actor_participa_en_pelicula_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_pkey PRIMARY KEY (id_actor, id_pelicula);
 f   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_pkey;
       public            postgres    false    221    221            :           2606    17365    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    218            8           2606    17359    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    216            <           2606    17371    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    220            B           2606    17408 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    225            @           2606    17397 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    223            D           2606    17419 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    227            F           2606    17382 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    218    4666    221            G           2606    17387 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    220    4668    221            E           2606    17372 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    4664    216    220            I           2606    17409 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    218    225    4666            H           2606    17398 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    4664    223    216            J           2606    17420 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    227    220    4668            �   �  x�eWIv�8\��	�$A�Ky�d˶lɶ^o�L:-U�J�M��.V�1���"�S���`���t�1�n4����O�L���5���i���S36f�,Ky��ͩyJ�5c��}31�r�>�^'���Y^�r�����]����-~�3)��	|���{$Q�}��hvF'o=���pa��=�P\�~DD����傋�}�O˨��<'&.rv�ۦ����XYqQ���Y'�4E}lX�q!��f�����~aQJ�������L���n|�)+pO�7z|�!K�Q�+}2͘���=�y���G�<<��inNh0��	v��_�V��k'N3ܟ:��=�fQ�,g?���p�xV����2LP���Q�neƳ��3˔���2�Yž��v��� �3��ABЉ�Zo��ô�~���){ۚ������Q�#��!��'_@-y�.	e��
�/g���H�k���"���{�1C�n�t4��nw�<Wn��à�}w=��+�k4��q�F(<Q���A �D/�������Dz��㈴X�?g��[ �˰L�_���	�iQ
vסW��&�dw㴴:yo:.xQ�ͱk�5C��r�|?�Fe�@���ڮ�
���#�O�=�Q2���̳�1)B��m�MWfX2ܚM�vЄZ�� �	X2YXJ���9, "EJ�uԭ Ģ��T�&Z�\V�~����[��IP�W,#kv�K�d����8.S����N�':+y)�\g$������3�˜}3��i����T�/�G����n@����]�\S*�d���Јʰ����J�K�&{��'5�l���0�xū���Q�6���'vC�*�̖��)2�r��!|I>� �1��
W��m���w4!36����*�2R�숪��������y��f�l����n�XQq���a��F�J�s3`O{�煈*�yV�Ǽ�#_��p�*¢�� �J�&����}¬�Ȗ�U��I( D�ެ�OGm�0*^	7}r��*�~���(��6+�s�r\�!�x]D���q-��~`Du�}��uŮ� n0�W����P��Ȍ�1JS��u��qã����xEA�<t��k�	�Hv�l-�D����4m��R��$J7g����U�Q�����g�zoXI	��:�[�p	H;Q����"Le]}��+iE��| �������d �wZ��7�I�x��/V���7��(�*zS��>d# �AI�W�H��-�{�Y�M@�}G6v
��{�5����K�@5"[���tL�W�J�~1.��>��b��\V�E�M	�� Q
��;>�6A�/Ѻk��>,��!�P�[�c���C�D^8~%�HW����R;!��n�$�aA��o�(Q�>QolV(�.
�1�)P-�h�|����cb��������!2#7���ipI�eP��p<���{ ����B/�~4����A�����t�(����������h
� 7X`��@$�!" �Z^��`�i�C����p�,):M>�.c�-)v�ɘ�^ �ϱ�d�?`폓i�"X��n������`�C���K�
pq�C?���hX�|ѝ�U3|��J��u�bF�v(�jп/�c��}ż���@�X���c�L�4`���F��������*~8��2؍�т�/�NXV�'������U�������4�*|���7��W�+�ɳ7OM�6"ցw����ੲ_��L(_���<�h�"����ט6^�Q�7܃����yx����K�z���+��ќv�+^�}�%4�(��_��d&5~^��*�T\��� J��ѾWF�9P�0��8B�Δ��bz��M��l��Fh:�ĸ����?%��?      �   V  x�E�ّ#9D���l����o��Khb~�B�"�#�o�ٿ�۝�|-�wV��b���=�ߺ-��r��}o�1��N|�G�z��V~+���6ߗ7��_��N~�:6�wu�B状D����m��[��Ź������b��>|6�b���-2�;�:��e�ME�uc��#S��O�bL}RO���;�z��,F���H/u��j�}�璺�� JTE�������c�/������;���)g5t^P�|Gw�/ݯ����z2�T;�`2T;����2�r���r��!ULR[����y���z���nx�h�.�:\��k�����˖�����0������8�T��r!�F�����j��c���s=ݠ�c�Е����_q�0���o)��]U�Q2����+=��Z�u+	���۶�r�*�� ��-��m�{[|P/Lp}�� ��vH�1;�]�5H���û0�ԝJ�R��) �\t��p�K�|۰�m6���A%��2�'QT����bf�S(�$�M�ɿ�VP���a
;X���8m�𾞻�}�եQ4��Jm{n�t踆��H�D-�U�g`t�$��64���&m�@�jN�@Zu`4y�z�.8�w��;t@5*6H�JF�S�$x�6�u�����,�}1���_� ]�F� &�n�0M4<�5}�Vh�lU� �oZ%1ʢ�
9�O�Bw����n/-����1�4�+�H4 ��\���{�t�8��b�|^5&���r4�GC_��[�%KK�c���Z�#�=��9&P���Bж�	?t0�B-�Y)�r��l�Ej�zH���&ys,H���}l1`+
�`��ԣ"WX�B�^&�t�/Xh�}e腵�]F% �4��"����R﵇ ��0)_) LG��
ф	T� �b� =p=�}Oh�֣Gء�&�)���x�ԻF]�_$��L\��r�W��P�
�x��k��UJR�T���R
5R�m�Y%�J
i�<k7����eX����I�}T�g�t�E9F�:%�U`� �񓷀s�D�*��$�:!�3t%}~�,\}��a����K�	+�W�q��D��`��p%�+����꿳��������W�.=K_k��"h�5��t�+�(��pq�r2K��\���	�������J}��Nt	���6�����=���~&'F ���BXX�@��l�i�Ti��!�� {��g�l��|?���~)�>ڽ@/�)��}��Ǯl	~g�QE�4~m�t�͂AJ��b-��py��ȩ����b(��ʽr؝��%�ڋ~v��8�+né�V��-y�Ev���i���YK��"l|d!a�G,`,-z�h
��ka��
Z!:�-wr�W�g�Adg�^��Q�b�
4� ��6Aa� œS��rvs{�� �g���9�uq!��{z������UX_���߽�!0^H�X���z` �~y�('?K�ӷ��Y�����ɏ��0Z��&R���oY'$G�y�E�NU�l���`~x�]51�x�?ݺ��Dh��I#�_0�"A�G�6 $~���'�A��~�)�Go��KK5�}�����1ֿ�օ������?G�)n      �   �  x�mWKr�8\��	& ���mK�-Y�e�R��bWaT$�ɢz���Y�b�?�"fU(|�'_fR�{��=G���z�Լbw���`�ov8◙���v{7v`Zp�~߻�{�2�p����-�?5ά��f����ŷq�-Ӛ7�a�\�n9-�nؕ{�[w(.���g�F��ev��P|Zz;1SsQ��}7u�-�}綖IɅȫ7v��6#kK.*�ţ�&;���Z�w��]q!������P��n�->ٿ�n��S�����n��f
Z4���ݱ��N2Eb°s7��ap��;�Ff*.Z���ݡ��/����jū�ݸ�����&KIV"�}�u]�b�{�<_�c������G&�0����N/�Vn�jy�أ�=�?-�Wi��..�x�av(.bf�>�z�`{ۏG�"y��.��Ȗ�%�h_\7w��wHA�Z�O8x��g����
u=����}Z^)��N�}?�Դix-����6iY+��>��ޝ�^kvf'���k�5�;"+~l�w�v�����q;�݂�J�x�rp/v��*.KJ��a�:O3�K��.�pD�?}�� �U��-��5�u�U��qV�Ν��(���r
`���M���lؗy�tn���� ɔL�e�lS�=�U۞�@pJ��C7�b�H�U�x���U��n��kZ�$�2����ُ���^�[�)�C̪�a��X@Use�\�E��0���/��j����K�u�.��>�^�|���M�vd����trg�u�n�;��I씩��P��%�ʨ5
{���8ߘ�d|�EDdPC���q�؃#nlc�B� ٦��q��vL=�\��1���"�\�ǦfߧyA�=�bA"�|Z0N�"���r��C�-��D��ib�'�Լ1,t�8�#�s���}zB=�Jf�wG��J7�d|�.S���
nj�mp3 �F��z�ٔ�(�#5��-:wR� ������΄Qc��8�VL!�6��PҖ���n:����.�"��
�w��*V�;�J��:�;�o%�GY'��HwZ��6+a�s\�ٵ{�z]���d,0�? zkP�����ho�
��i!�媡�&$�"kC����J�qd���u$��(e���ܒ�<�Y��the�yEg�T������ȡ�k�8�?������M�	"VJB��s�{�o@�a�*M�d���j�ޟDr�H>!���|z���^�5�dR0��k:�F._���>�U��(2�{��6	~�<HH�r�g�b��1v�
Xe���ig�(�Jgh$O��tP���6��$�a�TI,c�h�*�a4r���.�\�.����=������������XG�'5��,��� ����(�(� GQgGFMG9jx�j����&�I��Z1!�J�U�\�:��֫�{w�|�g2�0YL�!�����\���`�]��#쩇�)��Ev �K���x�i�������>7�*o]��D-U$nT�JS�(�=�D��6������$�I2�:��(u��d���7�O�,�CC�����`�ޤD��W����Q�?H�&c�^�?���]z�WҋP����2�Q�������~�ܥ��^u�Η�h_�XLYS�F^����(�IE�p�*�h�tb��{��n!�$-%:�[ 1��-�:���١CCۚ\���Ĕp���A$^�a�*�y�38n���3�
b2��C$io�v�4xe�G-IT}�ǗR�x��
|�^�W��&N���Yu-�*7��$����� ��4Vp�g8��bYh�
�'�#8�I0��u��n.R��vT7�q]�^�H�ُD��1�6��D	m��K�t<ۈ����+]P�D\�IQ���s�?���      �      x��\;��Hr��S����#����BҌ
T�c��Zde�o3"�֨�Z��� ��f�٭Ȉ�p���cUt���i��N�Ϸ�����iZ>������y���FuC��7�;���nz�k��e�n�b?�?���}�/�����&�Fwj�ܩ�jh�F١�:~z[�/o�����>�����u�c�� ;�;)ך�\3���i�M��_Ɵ�!���;��xyo��z�q=S�I�؝�^��|����^�����ϫ?�?Z��QސeN��z�d�:�=]�9X�]�o]c�z���o��O�:î�_`��W�e9�<,�訮�sw��2��ϣ\�������|�hz�S�Yw-�z<�3���6�����iZ��\����TN維�����tZ�������Ҩ��f�g�Z��	�,�q�g=����c����N6X�=;~O4�n�n]�i��u�����4!�!��ox���6���=�!��t�90(8�i��'��N�
`���x�����2��K�3x���cܿ�C��/��`%��e�w��&�q��e��1�h��8,�J�4�9R�`���zz���O2������u���O�O ���Յ��O�\��!�)�A\Ȉ_�1�o��u��L��d��Ѣ��������/���;�)��q_E��NE��t���ǽ����KN��y�Iᇡ��#X�M΍/7���E�-����;9W�G�x��A��w��Q�.k4�^lZ|/3�[��2���~�-���B��^m^_'Yx��u�P�Y\�.�-����
�kBg�Л�%�� �4��W��|�1ފ�!���z���[��Ny�.%��`3M�B�[���k��e�.�a�"DO���d����k�Cu���K1��)*^���'˰�
��KT;9z��<�I�O?��s���>���?�p��mBЂ�-�~�'D�(B_��X_�K�!�|P���\�vx�w��*>��B�t!x���(��N��Y;9Fz-$`�x�m|����^3�uh/���]��]��=
@�dj����:��|9���\��<)e`Lj�T�1C��m�|�d�3����VdF�@Kׂ�*w���X[;�7��F?�E�sez�q�i!���	�Vq�����;�$X�7��{�;��H1��=�&s3�)rMk0�c���ؘ)��G��к�Ѷ`lC���!"(��O���
�rOG����״�n��3�����Ck\��LF*�s$e#Ω�pP0��T2:M�C��p�ģ�x��0��\����η����
S����8�>�;(
�}��i2f��(��Moz���e?�9��� �意 �@���R2��'s�d޵��=�����Q0	�9 ,�]���dR���:�QYl��"1 ݼ^ �k��qR�B��Cׄ����8`#&%2 B�=����o���͠��!��g�X����N1�S@ze��Ϻo�>?[D�(�ݣ+������H�ݮ秴��pN���%�H~�(^�#����-8|�.�G{��L�5#��9��O�e5�3��|k���>{]�~�.�0%hL(���zF��>�sU���Qv�>�=��]ױRx�
�Z'Z��߇�S$$V�����w�RV>��[:+g� �͠�4�6�}��k[�80dR�h�x.j�T�L�g ��N�A�I����֌��>���Ա[�n���/�NA�J��2���^Re���
g�ҏ��z�0ء��(�:�6���>A�P��4L�q��n�Rh~�<�B$:(q��1����;x��+���S��(Ez���o���OL�l���>�L׋%�>s>^&������3��+c�$4��?0�����j�X'9���GԠ$�;"%]Ŭ1#CxYW��V�I����@(ķ��Z��n�<��#�gI[1F�	��,*�s3���.o3p5&Y���ϊ�**���&Bd���{�QU�=��CD��l������Tδ����eA�amUr�qTc�A1��L�Fu9#┦���<�U�x �9�,��YUKoCN�������k�sv-,)K�����;��9�360�u���Z��O �o�bG5p�!9����5�m��׵dupb`|k"z>�P�`���:���y��5�>���ܥ�y�H�V�u��tf��Y�'��.@��R���\� �&F|�kV��Ş��D��)�e ��{z����8w�c���E*t}d����A-?e���<�"�������;�v�K|����`-\O�5"|٢($ r\K���/P_�$A�%�P��̺ �K+��0��ٞ�EO��#�lm�|�?M��8!��뷨���(?�J�e4����w�aU/���D�!a�ol7:;�(nJ�vā��[�X��Do��&"6q�@�� ������i���M��� ��(Lb�ùZ���B�I|!�\�S�<MK��T�n�J@I������~��o��ʲ"����(���\��|W��wx $~�]�pG�*��u�:w(=*�#�+�l_�n�PxL�D�Wn��f�r��RH���d�+\]'4BI��8Yy�證��$(<�P�9'RF��_(os��/�0c&%��
R|9r?��#z�X��;��rҹo�Єw�4¸4��!����dܘ�^%���<ߦm�F�����p��XG�"��-I�D�2_(s���"K�e���`8�="��}�?�B�,�j�Z?�QE���(�;���n��UA*̒��ɺ$��M�nJ̡�v"B)�M����Ǹ^��Vu��9��^�Ɋ���r��	�(��_x��$%e��sO���e����ns��q������r|MJEb��Km�(D0b�>H�Qq�V�bMfz�C}8���i|��s�Fүb�P[�\A��+^���	JsY�j)PeU��@�s���	2�}��Q�#q�ؘ�j�I��yT�<R�$$�#�ha`Ĺע�~���������$��R�>3��`d�iZ���1emCێ+/�x*T0�������äL��ҕ!/�Þ��Rl ��Jg����ۊ�M�:sC޸[]�k9'��8�����Vu��k%X!�ܬr�2_����Rb�.80`:��c{N�@��ao�ψ�q	׭��^������F�f[�T���7��!� ��e�Œ�hO�%;[y��Δ���k��"	��
�M���9��eE=4��;��C!l�4{��Y1����݂D3Ь�Zd�.�pǠ��R��[����T�L"����D6�N�� �W�Z�X�ؔ�����$���+�%���uI�LE���E��0��?j��d���d$ovh����w�yA�wQw�p��	ޯ(XHc�$�" ��Ǖ�rfB��AB6�[Z�EY�b�`�^�t���3��`A�fm��]l/� &��i\RD;%�D�.��6%�+Np;@A6o)1����
CEl��|��2�<� �xP���`���!�h C��û�+���F:��%�:�A.���.V�g���zw3x�����zɸ$�bY.�WE�s�fGG#eX�Bu?�}i��WnNPLsOL�#��n\=��#Pi;�q�j̇�|��4�O��ksX,����Mz�2,��|R�>*�Hp<���]���=�ICA�b\��aL(�%<k�F���4!�� �xf%F�{�jT�M�0�ĥ �3:�U�a��v�U�(Q����v)�գA�\��x�U�W���׺�Y`oI�u�(Z�7���	-�l��ixO���(�I,�5}���M�����9�FS���?�\�iMu��R`��W��ѤJ��KChb�K���B"�sEz�B>:���#�N}��#�grJ��;�
�Ly*���bHg�	hD��+�"���T�M�lQl�84j)��W9����d.	�hX+�U3����y3xK`猴4��yH!�/�����mX�u��4�(aHl0�����u)���GE�К�@��$��Q#�q6A�?� 8  ͪ1e��9��lC���*-�#��y��Pi�~��VN�)���'��Q�.��4h)���㨹�s�v,�ԓ��v,׊�Zl�/5�{ە�Ǖ�j���,u�6�RU�oy{�Fý񎈗V�K�J^�ᢏ�Q-�Ax�۱R|�i��]�o��=$}4/@Z	{Z���5s���Lm���J�s�l1�S�1ajq`gĪ�F|�����6$G���!���\%R$q7��Фqm�ˣF+���`&:�h�dRYB"i��m���������h�NZ\ޒU�]G#b}痱W	gT�m5� f��^���4)FC��A�!�.��K.�5��`�˲
�C$�K�Z�:#�z*ݔ{E8E�����i.Z[|V�Z���l��b�J3��c|/�c�S�vD�h��Z�)hG�(\�C��ͻR�fd��F�P���x���OU?4ζ�<�����O�Y�/eazi*h���y�<�P��Uo<w���h��`��d.3��5η4!��Ap�a��V^%�NG�k�������k�x�i��iOZ��%� S
���+�(����D i���Wa2�Z�;DY��}M'����f�ze~n�.�6��H��t�]-ɼȏ��Z�0�k2��k�5�Z�]f���|�=�E�����p��U?UAU�������U�N�j��i��}Q,+�0BC`ۺ�y���6��A$K�ʁFۨ#	isј�m��,Q�O���J]+|��cp�^��&�}I��53�,���%��k�m��)���Έ��Uk���-���l:�����lT`	���d[
�a@}��+˄	���C}H����7��Ν@�f�l�Z�TʃK]/Ӂ�R�r�B�z�/cQ5�Ҥ��y�@���j�+~�"z�0��ീ �c1XT�U��H�Q�h����lV��H����HH8������6�G���(w3�n;�E����i���/�1�6%�FU1��q�b�QS`s{�:I�.k��?nM�hfŁ;ŦrB�6MaZi�C�v�J��S��qy�n�V�����_�����.�|��gC�����ƺ�(�@�����bo���Ҽ�c�mO'B)5�5�qw�F�y7����4��p��J�e.�4��%��pe��j�Ly�#�m����!4�b�<�!=�]g�G�"��D�)�wH��\� ;�h��:Ul��*AC�R�;e�Qj�m�)83cFw�p��Z��^�#�`'���)����J�j�i���>���6��%*^㵳��
9g�SI�$j��LY��3�-j(/D��}���a���gK���V���F>N�W����f���rf� ���S�v-�U��H{xd�(�Ga(�R����o�`�;�F�AN<ohtx��N���a��KQ��z�ڱl("�J������-9[J���G����@׉v)
%�%/}�G+���h�k����5v7�zP��lkt��]�#H�J~t�Sݬ6N�� Ը�BCL)�u\"���ǿ��[>�<��K#{���U�E@��D!k`oZ�V)5 S���=��������$��v�����m�"\�      �   �   x�%���E1B�P�1��^~�u���8xEd�����*�ث�.(b�1���C���7S�X�;�)CY�<Ts��Z���Z�^̷���\�A�/�R���D�f&�Gl���՟����}��u2z�^_�9����2�)W      �   �   x�5PQ�@!���섖�]���X�_1� Ҹ��*�6���0��Ĵ��>˼�������Ǫ��Q&?�pc5> eي$���p�e$8��x�˒�%�Ԋ-/�m�<[��Ʋʏu����мk9ܭvCI�����/~��LU9��=w�QP�����q]�@���
=/4ܲ:@���T�{i�O�ʿ? � �>�      �   �   x�-PK1Z�a��|Ի���(�t�'!H�xܢ3@�K�4jY����!XW#��Ѷ�2^-�@�G�7r�����"���܉�q�H.b[�ԐD���o*2��:XR��x��s���+�A���9´�o/u���rp[Oh���z�ymP_0�����a���<aa)pͷ\�R�r����sx8h     