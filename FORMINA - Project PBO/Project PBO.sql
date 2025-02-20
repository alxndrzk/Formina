PGDMP     )    
                z            Project PBO    14.2    14.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    26794    Project PBO    DATABASE     p   CREATE DATABASE "Project PBO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE "Project PBO";
                postgres    false            �            1259    26869    barang    TABLE     �   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama character varying(100) NOT NULL,
    harga character varying(100) NOT NULL
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    26868    barang_id_barang_seq    SEQUENCE     �   ALTER TABLE public.barang ALTER COLUMN id_barang ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.barang_id_barang_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    26853    karyawan    TABLE     /  CREATE TABLE public.karyawan (
    id_karyawan integer NOT NULL,
    nama character varying(100) NOT NULL,
    alamat character varying(100) NOT NULL,
    no_telepon character varying(100) NOT NULL,
    jenis_kelamin character varying(100) NOT NULL,
    tanggal_lahir character varying(100) NOT NULL
);
    DROP TABLE public.karyawan;
       public         heap    postgres    false            �            1259    26852    karyawan_id_karyawan_seq    SEQUENCE     �   ALTER TABLE public.karyawan ALTER COLUMN id_karyawan ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.karyawan_id_karyawan_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            �            1259    26860 	   pelanggan    TABLE     `  CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    nama character varying(100) NOT NULL,
    alamat character varying(100) NOT NULL,
    no_telepon character varying(100) NOT NULL,
    tanggal_lahir character varying(100) NOT NULL,
    pekerjaan character varying(100) NOT NULL,
    jenis_kelamin character varying(100) NOT NULL
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false            �            1259    26867    pelanggan_id_pelanggan_seq    SEQUENCE     �   ALTER TABLE public.pelanggan ALTER COLUMN id_pelanggan ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelanggan_id_pelanggan_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    213            �            1259    26840 	   transaksi    TABLE     }  CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    tanggal character varying(100) NOT NULL,
    karyawan character varying(100) NOT NULL,
    pelanggan character varying(100) NOT NULL,
    barang character varying(100) NOT NULL,
    harga character varying(100) NOT NULL,
    jumlah character varying(100) NOT NULL,
    total character varying(100) NOT NULL
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            �            1259    26839    transaksi_id_transaksi_seq    SEQUENCE     �   ALTER TABLE public.transaksi ALTER COLUMN id_transaksi ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.transaksi_id_transaksi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210                      0    26869    barang 
   TABLE DATA           8   COPY public.barang (id_barang, nama, harga) FROM stdin;
    public          postgres    false    216   g                 0    26853    karyawan 
   TABLE DATA           g   COPY public.karyawan (id_karyawan, nama, alamat, no_telepon, jenis_kelamin, tanggal_lahir) FROM stdin;
    public          postgres    false    212   �                 0    26860 	   pelanggan 
   TABLE DATA           t   COPY public.pelanggan (id_pelanggan, nama, alamat, no_telepon, tanggal_lahir, pekerjaan, jenis_kelamin) FROM stdin;
    public          postgres    false    213   �       �          0    26840 	   transaksi 
   TABLE DATA           m   COPY public.transaksi (id_transaksi, tanggal, karyawan, pelanggan, barang, harga, jumlah, total) FROM stdin;
    public          postgres    false    210                     0    0    barang_id_barang_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.barang_id_barang_seq', 3, true);
          public          postgres    false    215                       0    0    karyawan_id_karyawan_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.karyawan_id_karyawan_seq', 5, true);
          public          postgres    false    211                       0    0    pelanggan_id_pelanggan_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelanggan_id_pelanggan_seq', 3, true);
          public          postgres    false    214                       0    0    transaksi_id_transaksi_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.transaksi_id_transaksi_seq', 5, true);
          public          postgres    false    209            r           2606    26873    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    216            n           2606    26859    karyawan karyawan_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.karyawan
    ADD CONSTRAINT karyawan_pkey PRIMARY KEY (id_karyawan);
 @   ALTER TABLE ONLY public.karyawan DROP CONSTRAINT karyawan_pkey;
       public            postgres    false    212            p           2606    26866    pelanggan pelanggan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    213            l           2606    26875    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    210               ?   x�3��I��/�W��OOT���U0W(��4434 .CN�� GK##N�p� 2\         �   x�M���1Dϝ���J:q��*"8*,x�҃�&Qb�כqY�����61S����	�m���ơA����Vj��0����S�,�R(�z��	[O����A�����3�%Pn�F�?N����.�(\�&�U-��[�/�@C.�TV�yH�ҧ�{>��`��=7�A������T���)��(�3!�e{F�         �   x�m̱
�@��z�)�������$"imF8�A$�S|{���j�>�O��#^�!.���oE;� e�%Y�Rs϶gc�^�	���.q��#cu��doL��9��uM���A��8�P�<���_�zp�} ׭/      �   o   x�3��N��,�Q0�PpI-N�MJ-R0202��MM�,I�tLJ)����Wp��p���1����e�ӘĜԊļ��"N������Ҝ�ļD�Fq�X@͌���� F~(>     