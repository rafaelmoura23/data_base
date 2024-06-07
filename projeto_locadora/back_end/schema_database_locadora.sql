PGDMP  ;    +                |            locadora_carros    16.2    16.2 B               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    26084    locadora_carros    DATABASE     �   CREATE DATABASE locadora_carros WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE locadora_carros;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    26152    agencia    TABLE     �   CREATE TABLE public.agencia (
    endereco character varying(255) NOT NULL,
    contato character varying(12) NOT NULL,
    numero_agencia integer NOT NULL,
    estado character varying(255) NOT NULL,
    cidade character varying(255) NOT NULL
);
    DROP TABLE public.agencia;
       public         heap    postgres    false    4            �            1259    26301    cargo    TABLE     �   CREATE TABLE public.cargo (
    nome_cargo character varying(255) NOT NULL,
    cod_cargo integer NOT NULL,
    turno character(1) NOT NULL,
    id_funcionario integer NOT NULL
);
    DROP TABLE public.cargo;
       public         heap    postgres    false    4            �            1259    26300    cargo_cod_cargo_seq    SEQUENCE     �   CREATE SEQUENCE public.cargo_cod_cargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cargo_cod_cargo_seq;
       public          postgres    false    230    4                       0    0    cargo_cod_cargo_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cargo_cod_cargo_seq OWNED BY public.cargo.cod_cargo;
          public          postgres    false    229            �            1259    26085    carro    TABLE     ;  CREATE TABLE public.carro (
    ano integer NOT NULL,
    modelo character varying(25) NOT NULL,
    id_carro integer NOT NULL,
    placa character varying(7) NOT NULL,
    tipo character varying(255) NOT NULL,
    disponibilidade character varying(255) NOT NULL,
    id_agencia integer,
    preco_aluguel money
);
    DROP TABLE public.carro;
       public         heap    postgres    false    4            �            1259    26344    clientes    TABLE     o  CREATE TABLE public.clientes (
    nome character varying(255) NOT NULL,
    sobrenome character varying(255) NOT NULL,
    endereco character varying(255) NOT NULL,
    id_cliente integer NOT NULL,
    cidade character varying(255) NOT NULL,
    celular character varying(17) NOT NULL,
    email character varying(255) NOT NULL,
    id_pagamento integer NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false    4            �            1259    26343    clientes_id_pagamento_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_pagamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.clientes_id_pagamento_seq;
       public          postgres    false    233    4                       0    0    clientes_id_pagamento_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.clientes_id_pagamento_seq OWNED BY public.clientes.id_pagamento;
          public          postgres    false    232            �            1259    26213    envia    TABLE     �   CREATE TABLE public.envia (
    id_envia integer NOT NULL,
    observacao character varying(255) NOT NULL,
    id_feedback integer NOT NULL,
    id_cliente integer NOT NULL
);
    DROP TABLE public.envia;
       public         heap    postgres    false    4            �            1259    26212    envia_id_envia_seq    SEQUENCE     �   CREATE SEQUENCE public.envia_id_envia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.envia_id_envia_seq;
       public          postgres    false    227    4                       0    0    envia_id_envia_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.envia_id_envia_seq OWNED BY public.envia.id_envia;
          public          postgres    false    226            �            1259    26169    feedback    TABLE     �   CREATE TABLE public.feedback (
    id_feedback integer NOT NULL,
    data_feedback date NOT NULL,
    comentario character varying(255) NOT NULL,
    avaliacao numeric(5,2) NOT NULL
);
    DROP TABLE public.feedback;
       public         heap    postgres    false    4            �            1259    26168    feedback_id_feedback_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_id_feedback_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.feedback_id_feedback_seq;
       public          postgres    false    222    4                       0    0    feedback_id_feedback_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.feedback_id_feedback_seq OWNED BY public.feedback.id_feedback;
          public          postgres    false    221            �            1259    26293    funcionario    TABLE     	  CREATE TABLE public.funcionario (
    contato character varying(30),
    data_contratacao date,
    id_funcionario integer NOT NULL,
    nome character varying(255),
    sobrenome character varying(255),
    id_agencia integer,
    cidade character varying(255)
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false    4            �            1259    26176    locacao    TABLE     �   CREATE TABLE public.locacao (
    data_locacao date NOT NULL,
    data_devolucao date NOT NULL,
    id_locacao integer NOT NULL,
    valor_total money NOT NULL,
    id_carro integer NOT NULL,
    id_cliente integer NOT NULL
);
    DROP TABLE public.locacao;
       public         heap    postgres    false    4            �            1259    26175    locacao_id_locacao_seq    SEQUENCE     �   CREATE SEQUENCE public.locacao_id_locacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.locacao_id_locacao_seq;
       public          postgres    false    4    224                       0    0    locacao_id_locacao_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.locacao_id_locacao_seq OWNED BY public.locacao.id_locacao;
          public          postgres    false    223            �            1259    26642    login    TABLE     �   CREATE TABLE public.login (
    cpf character varying(20) NOT NULL,
    nome character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    senha character varying(255) NOT NULL
);
    DROP TABLE public.login;
       public         heap    postgres    false    4            �            1259    26803    login_funcionarios    TABLE     �   CREATE TABLE public.login_funcionarios (
    cpf character varying(20) NOT NULL,
    nome character varying NOT NULL,
    email character varying NOT NULL,
    senha character varying NOT NULL
);
 &   DROP TABLE public.login_funcionarios;
       public         heap    postgres    false    4            �            1259    26160 
   manutencao    TABLE       CREATE TABLE public.manutencao (
    id_manutencao integer NOT NULL,
    custo money NOT NULL,
    km character varying(10) NOT NULL,
    data_manutencao date NOT NULL,
    tipo_manutencao character varying(255) NOT NULL,
    descricao character varying(255) NOT NULL
);
    DROP TABLE public.manutencao;
       public         heap    postgres    false    4            �            1259    26159    manutencao_id_manutencao_seq    SEQUENCE     �   CREATE SEQUENCE public.manutencao_id_manutencao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.manutencao_id_manutencao_seq;
       public          postgres    false    220    4                       0    0    manutencao_id_manutencao_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.manutencao_id_manutencao_seq OWNED BY public.manutencao.id_manutencao;
          public          postgres    false    219            �            1259    26102 	   pagamento    TABLE     ?  CREATE TABLE public.pagamento (
    id_pagamento integer NOT NULL,
    status_pagamento character varying(20) NOT NULL,
    forma_pagamento character varying(40) NOT NULL,
    valor money NOT NULL,
    data_pagamento date NOT NULL,
    id_comprovante integer NOT NULL,
    comprovante character varying(20) NOT NULL
);
    DROP TABLE public.pagamento;
       public         heap    postgres    false    4            �            1259    26101    pagamento_id_pagamento_seq    SEQUENCE     �   CREATE SEQUENCE public.pagamento_id_pagamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.pagamento_id_pagamento_seq;
       public          postgres    false    4    217                       0    0    pagamento_id_pagamento_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.pagamento_id_pagamento_seq OWNED BY public.pagamento.id_pagamento;
          public          postgres    false    216            �            1259    26197    recebe    TABLE     b   CREATE TABLE public.recebe (
    id_manutencao integer NOT NULL,
    id_carro integer NOT NULL
);
    DROP TABLE public.recebe;
       public         heap    postgres    false    4            �            1259    26332    verifica    TABLE     �   CREATE TABLE public.verifica (
    id_funcionario integer NOT NULL,
    numero_agencia integer NOT NULL,
    id_carro integer
);
    DROP TABLE public.verifica;
       public         heap    postgres    false    4            Y           2604    26304    cargo cod_cargo    DEFAULT     r   ALTER TABLE ONLY public.cargo ALTER COLUMN cod_cargo SET DEFAULT nextval('public.cargo_cod_cargo_seq'::regclass);
 >   ALTER TABLE public.cargo ALTER COLUMN cod_cargo DROP DEFAULT;
       public          postgres    false    229    230    230            Z           2604    26347    clientes id_pagamento    DEFAULT     ~   ALTER TABLE ONLY public.clientes ALTER COLUMN id_pagamento SET DEFAULT nextval('public.clientes_id_pagamento_seq'::regclass);
 D   ALTER TABLE public.clientes ALTER COLUMN id_pagamento DROP DEFAULT;
       public          postgres    false    233    232    233            X           2604    26216    envia id_envia    DEFAULT     p   ALTER TABLE ONLY public.envia ALTER COLUMN id_envia SET DEFAULT nextval('public.envia_id_envia_seq'::regclass);
 =   ALTER TABLE public.envia ALTER COLUMN id_envia DROP DEFAULT;
       public          postgres    false    226    227    227            V           2604    26172    feedback id_feedback    DEFAULT     |   ALTER TABLE ONLY public.feedback ALTER COLUMN id_feedback SET DEFAULT nextval('public.feedback_id_feedback_seq'::regclass);
 C   ALTER TABLE public.feedback ALTER COLUMN id_feedback DROP DEFAULT;
       public          postgres    false    221    222    222            W           2604    26179    locacao id_locacao    DEFAULT     x   ALTER TABLE ONLY public.locacao ALTER COLUMN id_locacao SET DEFAULT nextval('public.locacao_id_locacao_seq'::regclass);
 A   ALTER TABLE public.locacao ALTER COLUMN id_locacao DROP DEFAULT;
       public          postgres    false    223    224    224            U           2604    26163    manutencao id_manutencao    DEFAULT     �   ALTER TABLE ONLY public.manutencao ALTER COLUMN id_manutencao SET DEFAULT nextval('public.manutencao_id_manutencao_seq'::regclass);
 G   ALTER TABLE public.manutencao ALTER COLUMN id_manutencao DROP DEFAULT;
       public          postgres    false    219    220    220            T           2604    26105    pagamento id_pagamento    DEFAULT     �   ALTER TABLE ONLY public.pagamento ALTER COLUMN id_pagamento SET DEFAULT nextval('public.pagamento_id_pagamento_seq'::regclass);
 E   ALTER TABLE public.pagamento ALTER COLUMN id_pagamento DROP DEFAULT;
       public          postgres    false    217    216    217            b           2606    26158    agencia agencia_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.agencia
    ADD CONSTRAINT agencia_pkey PRIMARY KEY (numero_agencia);
 >   ALTER TABLE ONLY public.agencia DROP CONSTRAINT agencia_pkey;
       public            postgres    false    218            p           2606    26306    cargo cargo_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (cod_cargo);
 :   ALTER TABLE ONLY public.cargo DROP CONSTRAINT cargo_pkey;
       public            postgres    false    230            \           2606    26091    carro carro_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT carro_pkey PRIMARY KEY (id_carro);
 :   ALTER TABLE ONLY public.carro DROP CONSTRAINT carro_pkey;
       public            postgres    false    215            t           2606    26351    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    233            l           2606    26218    envia envia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.envia
    ADD CONSTRAINT envia_pkey PRIMARY KEY (id_envia);
 :   ALTER TABLE ONLY public.envia DROP CONSTRAINT envia_pkey;
       public            postgres    false    227            f           2606    26174    feedback feedback_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (id_feedback);
 @   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_pkey;
       public            postgres    false    222            n           2606    26299    funcionario funcionario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_funcionario);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public            postgres    false    228            h           2606    26181    locacao locacao_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.locacao
    ADD CONSTRAINT locacao_pkey PRIMARY KEY (id_locacao);
 >   ALTER TABLE ONLY public.locacao DROP CONSTRAINT locacao_pkey;
       public            postgres    false    224            x           2606    26809 *   login_funcionarios login_funcionarios_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.login_funcionarios
    ADD CONSTRAINT login_funcionarios_pkey PRIMARY KEY (cpf);
 T   ALTER TABLE ONLY public.login_funcionarios DROP CONSTRAINT login_funcionarios_pkey;
       public            postgres    false    235            v           2606    26648    login login_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (cpf);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public            postgres    false    234            d           2606    26167    manutencao manutencao_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.manutencao
    ADD CONSTRAINT manutencao_pkey PRIMARY KEY (id_manutencao);
 D   ALTER TABLE ONLY public.manutencao DROP CONSTRAINT manutencao_pkey;
       public            postgres    false    220            ^           2606    26109 3   pagamento pagamento_id_pagamento_id_comprovante_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT pagamento_id_pagamento_id_comprovante_key UNIQUE (id_pagamento, id_comprovante);
 ]   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT pagamento_id_pagamento_id_comprovante_key;
       public            postgres    false    217    217            `           2606    26107    pagamento pagamento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT pagamento_pkey PRIMARY KEY (id_pagamento);
 B   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT pagamento_pkey;
       public            postgres    false    217            j           2606    26201    recebe recebe_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.recebe
    ADD CONSTRAINT recebe_pkey PRIMARY KEY (id_manutencao, id_carro);
 <   ALTER TABLE ONLY public.recebe DROP CONSTRAINT recebe_pkey;
       public            postgres    false    225    225            r           2606    26336    verifica verifica_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.verifica
    ADD CONSTRAINT verifica_pkey PRIMARY KEY (id_funcionario, numero_agencia);
 @   ALTER TABLE ONLY public.verifica DROP CONSTRAINT verifica_pkey;
       public            postgres    false    231    231                       2606    26307    cargo cargo_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id_funcionario);
 I   ALTER TABLE ONLY public.cargo DROP CONSTRAINT cargo_id_funcionario_fkey;
       public          postgres    false    228    230    4718            �           2606    26352 #   clientes clientes_id_pagamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_id_pagamento_fkey FOREIGN KEY (id_pagamento) REFERENCES public.pagamento(id_pagamento);
 M   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_id_pagamento_fkey;
       public          postgres    false    4704    233    217            }           2606    26219    envia envia_id_feedback_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.envia
    ADD CONSTRAINT envia_id_feedback_fkey FOREIGN KEY (id_feedback) REFERENCES public.feedback(id_feedback);
 F   ALTER TABLE ONLY public.envia DROP CONSTRAINT envia_id_feedback_fkey;
       public          postgres    false    4710    222    227            y           2606    26372    carro fk_carro_agencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT fk_carro_agencia FOREIGN KEY (id_agencia) REFERENCES public.agencia(numero_agencia);
 @   ALTER TABLE ONLY public.carro DROP CONSTRAINT fk_carro_agencia;
       public          postgres    false    4706    218    215            ~           2606    26357 "   funcionario fk_funcionario_agencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_funcionario_agencia FOREIGN KEY (id_agencia) REFERENCES public.agencia(numero_agencia);
 L   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT fk_funcionario_agencia;
       public          postgres    false    228    4706    218            �           2606    26377    verifica fk_verifica_carro    FK CONSTRAINT     �   ALTER TABLE ONLY public.verifica
    ADD CONSTRAINT fk_verifica_carro FOREIGN KEY (id_carro) REFERENCES public.carro(id_carro);
 D   ALTER TABLE ONLY public.verifica DROP CONSTRAINT fk_verifica_carro;
       public          postgres    false    231    4700    215            z           2606    26182    locacao locacao_id_carro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.locacao
    ADD CONSTRAINT locacao_id_carro_fkey FOREIGN KEY (id_carro) REFERENCES public.carro(id_carro);
 G   ALTER TABLE ONLY public.locacao DROP CONSTRAINT locacao_id_carro_fkey;
       public          postgres    false    4700    215    224            {           2606    26207    recebe recebe_id_carro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.recebe
    ADD CONSTRAINT recebe_id_carro_fkey FOREIGN KEY (id_carro) REFERENCES public.carro(id_carro);
 E   ALTER TABLE ONLY public.recebe DROP CONSTRAINT recebe_id_carro_fkey;
       public          postgres    false    215    225    4700            |           2606    26202     recebe recebe_id_manutencao_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.recebe
    ADD CONSTRAINT recebe_id_manutencao_fkey FOREIGN KEY (id_manutencao) REFERENCES public.manutencao(id_manutencao);
 J   ALTER TABLE ONLY public.recebe DROP CONSTRAINT recebe_id_manutencao_fkey;
       public          postgres    false    220    4708    225            �           2606    26337 %   verifica verifica_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verifica
    ADD CONSTRAINT verifica_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id_funcionario);
 O   ALTER TABLE ONLY public.verifica DROP CONSTRAINT verifica_id_funcionario_fkey;
       public          postgres    false    4718    231    228           