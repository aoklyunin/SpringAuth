PGDMP      5            	    |            javaAudioTikTokDev     13.4 (Ubuntu 13.4-1.pgdg18.04+1)    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    543371    javaAudioTikTokDev    DATABASE     �   CREATE DATABASE "javaAudioTikTokDev" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
 $   DROP DATABASE "javaAudioTikTokDev";
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    543384 
   role_table    TABLE     K   CREATE TABLE public.role_table (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.role_table;
       public         heap    postgres    false    4            �            1259    543440    role_table_id_seq    SEQUENCE     �   ALTER TABLE public.role_table ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.role_table_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 10000000
    CACHE 1
);
            public          postgres    false    201    4            �            1259    543376    tasks_table    TABLE     q   CREATE TABLE public.tasks_table (
    id integer NOT NULL,
    title text,
    user_id integer,
    text text
);
    DROP TABLE public.tasks_table;
       public         heap    postgres    false    4            �            1259    543438    tasks_table_id_seq    SEQUENCE     �   ALTER TABLE public.tasks_table ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tasks_table_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    200    4            �            1259    543396 
   user_table    TABLE     b   CREATE TABLE public.user_table (
    id integer NOT NULL,
    username text,
    password text
);
    DROP TABLE public.user_table;
       public         heap    postgres    false    4            �            1259    543428    user_table_id_seq    SEQUENCE     �   ALTER TABLE public.user_table ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_table_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 100000000
    CACHE 1
);
            public          postgres    false    202    4            �            1259    543404    user_table_roles    TABLE     T   CREATE TABLE public.user_table_roles (
    user_id integer,
    roles_id integer
);
 $   DROP TABLE public.user_table_roles;
       public         heap    postgres    false    4            �          0    543384 
   role_table 
   TABLE DATA           .   COPY public.role_table (id, name) FROM stdin;
    public          postgres    false    201   v       �          0    543376    tasks_table 
   TABLE DATA           ?   COPY public.tasks_table (id, title, user_id, text) FROM stdin;
    public          postgres    false    200   �       �          0    543396 
   user_table 
   TABLE DATA           <   COPY public.user_table (id, username, password) FROM stdin;
    public          postgres    false    202   �       �          0    543404    user_table_roles 
   TABLE DATA           =   COPY public.user_table_roles (user_id, roles_id) FROM stdin;
    public          postgres    false    203   �       �           0    0    role_table_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.role_table_id_seq', 0, false);
          public          postgres    false    206            �           0    0    tasks_table_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tasks_table_id_seq', 2, true);
          public          postgres    false    205            �           0    0    user_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_table_id_seq', 2, true);
          public          postgres    false    204            #           2606    543391    role_table role_table_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.role_table
    ADD CONSTRAINT role_table_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.role_table DROP CONSTRAINT role_table_pk;
       public            postgres    false    201            %           2606    543443    role_table role_table_pk_2 
   CONSTRAINT     S   ALTER TABLE ONLY public.role_table
    ADD CONSTRAINT role_table_pk_2 UNIQUE (id);
 D   ALTER TABLE ONLY public.role_table DROP CONSTRAINT role_table_pk_2;
       public            postgres    false    201            !           2606    543380    tasks_table tasks_table_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.tasks_table
    ADD CONSTRAINT tasks_table_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tasks_table DROP CONSTRAINT tasks_table_pk;
       public            postgres    false    200            '           2606    543437    user_table user_table_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_table
    ADD CONSTRAINT user_table_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_table DROP CONSTRAINT user_table_pk;
       public            postgres    false    202            )           2606    543431    user_table user_table_pk_2 
   CONSTRAINT     S   ALTER TABLE ONLY public.user_table
    ADD CONSTRAINT user_table_pk_2 UNIQUE (id);
 D   ALTER TABLE ONLY public.user_table DROP CONSTRAINT user_table_pk_2;
       public            postgres    false    202            �   !   x�3���q�wt����2�pB�]��b���� s��      �   '   x�3���BN����J.#ά�, '�"�+F��� �7<      �   �   x�5�I�0  �3}g�V���*(J��RťT(_��y�@K#���F�ִ)ޛ�l��#�J��|u�H={HG��X�D��-��	���?���\��{v�)�{�f�d��(o��ͻ�Ի��=;O��o��&�A�Ά�Rn_��I����0�1;�0Q&Y?�2���y��;' �@�<?      �      x�3�4�2b# ����� "     