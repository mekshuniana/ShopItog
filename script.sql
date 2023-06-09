PGDMP     *    )                {            Shop    15.3    15.3 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16398    Shop    DATABASE     z   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop";
                postgres    false            �            1259    16400    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16399    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    16407    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16406    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    16414    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16413    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    16421    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16420    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    16430    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16440    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16439    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    16429    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            ~           2604    16403    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    16410    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16417 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16424 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16433 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16443    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            (          0    16400    category 
   TABLE DATA                 public          postgres    false    215   n9       *          0    16407    image 
   TABLE DATA                 public          postgres    false    217   �9       ,          0    16414    orders 
   TABLE DATA                 public          postgres    false    219   �=       .          0    16421    person 
   TABLE DATA                 public          postgres    false    221   �>       0          0    16430    product 
   TABLE DATA                 public          postgres    false    223   �?       2          0    16440    product_cart 
   TABLE DATA                 public          postgres    false    225   @O       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 40, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 2, true);
          public          postgres    false    218            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 8, true);
          public          postgres    false    220            C           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 5, true);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 8, true);
          public          postgres    false    222            �           2606    16405    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    16412    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    16419    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    16428    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    16445    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    16438    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    16447 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    16453 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3212            �           2606    16463 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3206    215            �           2606    16458 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3214    219    223            �           2606    16448 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3214    223            �           2606    16473 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3214            �           2606    16468 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3212            (   �   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0�b�Ŧ�.l���b����b녽v\�ua���5�'if�̜a��Ƌ���e�1Ȉy6�t�d  ��T0      *   �  x������7F�y��%���-K�LW]d()4i����pK҆Ҽ�@.����lfq���H����7�}��}�����o��=>}������n��s|�k~������o���'}���_~����>�^��E�;D�T��0`�P�1��c�ϟ_?�|���?�x{�Y+Fv����`�(�>�do�$�U̖L婻���� LU�ٺ�&�]Ťd��3��ZPX�(mai�+��H&]��d�ޣ���Fw��:ha���N�4���嫘�0��9#笳w�1󁍃f[{��G|��˔�O��v�Vڙ[m0GЊ+��(�0�*�&s�v�1��@�J�0yg���U�خb�dv�+:�|��[���lγH]ɤ�����3�>�fQ�9�����"c�u
�ˠ�D��ܲꎄ��-	���FK�o�#E�n�QQ�&{g0�rjLd�2��/��j-ck���A�E[rrh�����v���B�V7�5{�F���}mf�D�e�c����A��qH��5�[B�S���eУ�j%�3����J[��]�xc�.س�A����G�v�:�<�g*06��Q���TJ�A�z��fIp�m��tM��,]��������]=F���L��M'����-���zbDWA�)�R�RVɞ6i�j�u��b_=ɗA��F���ZK�iVj�bTC��3�D������I��J�e|�h(v�5S����o�z��EX��0��(8�P���ޫ���v��Zoc�5��3OϾsn�N\�����e�c��{�,ld�a*��HqXB�2�1R�ؠc ���_cg��$˦�*��?��=F�j�d�~���2�F����	�ˠ�Hay󎼰é�w��K����-�ԝ�v�I7�eW��s��ÅA*E:PD�=�� �m�H�iy���}�"� �/�����;����/^�����      ,   �   x���1k�0�w��ے���%K��!�!�Ф]�,�`Hl#K�?���t{�w�x_w�?�Н����>���BL+l����e�����Gd0�G�%���].+Y�������9�I�����u���Q�ZqlA؃Ї��e�h)7�z�G<����7Jn*�out~�Z�jk_���[����M�������i��ACU=Ro&      .     x���Oo�0𻟢5!*���N��U�����ͮ�Bk%��ǒe1��ۓ7y���@�[^  
֠���E����S��S��́�<��pB�ݱ:Rd\�4��%mu��O�m�d���rN;x�}2��U_��w�].�o�oBd�/C��~��ڱ�Æ�齶�C.�y��gL�\�{Ox+����{�)nܐ��1�8~u<p8<E�.U�)�P�s3��a����;�G��]ԗ+S爘�u|��y<��4":�o.��:J#Ag'<%���Z�&m�      0   f  x��ZKo���h�l#f_|m��8�`C$'@r1d�IȦ@�r��J�ʢmX����#@��12��!��;K��`������E9P����W_U��k7^����z�����޽�yk�����n�W6o{��͝�wv6�۠ˍ{��7��ln�ۛ��޽�;w6�=���s�~�����_�>�G��h���������W�ﯼ���n�Wڞy���t/��/wVL�����+K�^��Z���ߤ��0�gC����$�(����eL��_�4L�t�=J�l?=1�)=����D^�^�Kw>L�l���d#L�K�D��ɲ!����2;�x� ���4,hH�β�%�>��y�)�J�G�c~y��83Z��&�ox��0;�B���1��m��ӌ>����idx}�}@wY��<���>�ȭS@�eo������#� k�~F��+{@��BN�|��ZR7H��ο� �{n��'��ʅ2va0��{��zDrп����G+y����|�ڄ� k���0���=��}8�0>D�c�T�E{�}�Ũ u�4l�IbXz����4,���I�����J��d$Y"d7��|�JP�ٱaˉ�@$1شH#g��yإ�-{�m�S2Tȷ�\�M.žJ�p$�"%)�u�~�#�G��h������uU��cl�(�i��j��?�~��fE����|���c�i�XC�ƹ�b�3�Zn�=&%���y̓���%a����p��}$;]� cx�۳b��Y3�I6��ò�P�.v����#�J����d�ɀ�#�d��ݑ4�C��l��$	D9��C�Kj�$1�e�`8p�1��(	�6i�ȹ{�TBdC&yIw���Q���+�R�$c�v
Y'�bM.9Tv�β��@$���w뜞\���}�������*�
x�)�����P��3b7�,�	��h���n���(���q��ƶ�����νj�[8Ci���WN8���>E�
F�9K��/.]}�پS���V�����]�v!�
�6�Dꘜ	)0�cj����n�Z&���
�p>��o�)9��O �^�'��~&,B���#y��f0T<9[��?��鍀�������dZ�[uB���A-w�"-rX���}*I��P!�~QT��(��!�F8��cO5����)`�W��=*�&�h�1�aߣ9i�}�@;�g	uf�%ц�����LW�Ob���N%�V�]p�`�)Q��L#����H2��&�.f���*ǔrWP�]sݲW
�M���l6�|��I!`,/F�:��Y�M��qUA£���)���?I?K�R)9��+T�f�=6�E��9K�C�RFa�4)D�����y��l!�q^�'nCp��&a&O#V��P��~ڙ�g�t�Vl���>Ve�����F�0�r��A!
e�9��"q6�<V��#�묬��ݸ���޸r1|���o�i��=��w�}}os�Fn���n�������j�ۃ����QF������?`���g^x���va�2'<Q�·`�]�C�ߟ~H�)��]�)���r��� g(�
Ӊ�(H����`����6�2,z$ʥ�dv`�H�&#���	���cc��{w"��H�\�i�O$A��V� �=�,���wU�X"���l�HS᤮�#� ��%�$׏�ݪ�Ύ=���ɌR����vN@�W��n�o	��u�m�����[Rof'Z $Z*&�5�f�A$x�.ȯ��G��x�s}֥�(a$����_s&�Nk`�O�P�%�!�����n��f�W�:�\`W
#�")�U�e��R̎�RW���%
OA_E0�g�5m���f�����?&513�a^_�Q�%Z,�LrF�3�2-r� �c�+\����Fe�`)�8�MH�����[����؂��u�ء	�?��8F �i<��LHk;�ٕ�d+�ښ8BL��ѷJX�T D�qX\�: 6������<7�(��k\+��eTv�O`���hx�v�O�q\�ً��,U#�U�Υ�$�ꛊ����*�{�XI�#�7���|Td/3B"d�VMґ���@h^�b{*&���z_��!'�f�-�)o��߾��d��re�TR�8弖�j9��/;-��$�i,�4Lh^8��չ�j��Y�z����+W�8H�#]ש�����V�߃`L��割�V�k��En(Ԓ�sHx�iq��K!�x���"xID�G�te��UgL1�5��c�= �%6��V��"����n���m��{r��Eci�	�F��#b���\ƞ�e�H��a5Aj�F��:�c�=��9F�{,c�)�4:�����
U���ej��y>VrRG��S�̚��̅�[H��\��:�cZ4G�� b�Q8YPHWR��,����8N��n�T˿�M7Wy�X3�PAm!>E0w7�#��<Qn����<�ߛ %b�#Eb�a���'��<���Gϡ�`K�73r����7H���=�	��Д9�>V��;���E���c�űf�P���*��y;��39F"�����;Y�wl����
�	�Ϲ��5�A�=tg	B��.9�g��@�J�|pϥ�;=t,�%�$g9@ނ�C��6�u�i��\oU��v!�����?*�}>��:���{N �#�*����Cv�U5|Uaƚ�H�O��A�����&��[,�
���j��R��Mh����Or�&#Π���֖�����ޯn�{�36�&�����Y�r���q��kuW�DL%���7޾r���׮3ũC����RŲD��E��9�3����6�x}��Cm�*H�����Y��J����!f�����"�),U����5��'8y��8��Y��i�H�U�S��ZɹNd$96��$y �5���Fڂ����⚽{��+To�:%�)�=�`��j������H���\��96M����;�54��|���A[9ZQ�Q���A{xc�d����r�DV�u��̥~��[?�ɼ�z�}�ώK��]$8ِM�	t�R�T����
u������?��1F��v�j]n��j�_oJ���"��U�=������K�˗(���
N��-�k��b�ƈ�	�@Y����y�/�P��F��A4��h���;RW�)aÄ��s��֞T#�yh9�*A*�a��Jt����J�:�m��˕�7OY�Z�NI��u!'h~E�MЉ���ϴ�m��m;K��ﳴ1�[,���ꫠ���6�,�M+�=O����*�*6ݽ�Nue+�g1_���ve��>���p��Y)�z;K6�u�B���fi��u_8Z�1��N��^Z�u�+�z�)��O��ߓ�K�~FߧO����K���?������)�B���������x����w}@ *�}�]p����~{ui��{�����ktIW�t�������u�\�K{���wZz��N���Я6&�v�ҍ�~������cY~��;]~P눅��/�$�D��{�x�ѻyPjf���Xn,gL	h@��z p�}��g��斘���������Ԛo������m<"<��ݭ���G�˦؝֗�\���<�=d�~lw���
El��εe�މZ,�o"�F��:�F��*l�\�B�i�i�s�������]�cU8^��`�r��������yAc)&%HZ�V̩���s5
e��,��{D�O~�7М[N��Ѿ[�LW��0&����M�"d�Gv�xQ���b���U�X�zt��l �wx�9�}�V�`n��Ί��*ߗs������Jms�*d�F��t�p�j����H��]�*�_*�k��}��A	�8�u���ǭ����y�6��gd�K���<�      2   Y   x���v
Q���W((M��L�+(�O)M.�ON,*Q��L�Q(H-*�ϋ3���)�
a�>���
&:
�:
���\�T0�l��4.. @1_     