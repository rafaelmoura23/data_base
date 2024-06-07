PGDMP  1    )                |            locadora_carros    16.2    16.2     "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    26084    locadora_carros    DATABASE     �   CREATE DATABASE locadora_carros WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE locadora_carros;
                postgres    false                      0    26152    agencia 
   TABLE DATA           T   COPY public.agencia (endereco, contato, numero_agencia, estado, cidade) FROM stdin;
    public          postgres    false    218                    0    26293    funcionario 
   TABLE DATA           u   COPY public.funcionario (contato, data_contratacao, id_funcionario, nome, sobrenome, id_agencia, cidade) FROM stdin;
    public          postgres    false    228   �                 0    26301    cargo 
   TABLE DATA           M   COPY public.cargo (nome_cargo, cod_cargo, turno, id_funcionario) FROM stdin;
    public          postgres    false    230   Y                 0    26085    carro 
   TABLE DATA           o   COPY public.carro (ano, modelo, id_carro, placa, tipo, disponibilidade, id_agencia, preco_aluguel) FROM stdin;
    public          postgres    false    215                     0    26102 	   pagamento 
   TABLE DATA           �   COPY public.pagamento (id_pagamento, status_pagamento, forma_pagamento, valor, data_pagamento, id_comprovante, comprovante) FROM stdin;
    public          postgres    false    217                    0    26344    clientes 
   TABLE DATA           o   COPY public.clientes (nome, sobrenome, endereco, id_cliente, cidade, celular, email, id_pagamento) FROM stdin;
    public          postgres    false    233   �                 0    26169    feedback 
   TABLE DATA           U   COPY public.feedback (id_feedback, data_feedback, comentario, avaliacao) FROM stdin;
    public          postgres    false    222   �!                 0    26213    envia 
   TABLE DATA           N   COPY public.envia (id_envia, observacao, id_feedback, id_cliente) FROM stdin;
    public          postgres    false    227   �#                 0    26176    locacao 
   TABLE DATA           n   COPY public.locacao (data_locacao, data_devolucao, id_locacao, valor_total, id_carro, id_cliente) FROM stdin;
    public          postgres    false    224   �%                 0    26642    login 
   TABLE DATA           8   COPY public.login (cpf, nome, email, senha) FROM stdin;
    public          postgres    false    234   �&                 0    26803    login_funcionarios 
   TABLE DATA           E   COPY public.login_funcionarios (cpf, nome, email, senha) FROM stdin;
    public          postgres    false    235   �'                 0    26160 
   manutencao 
   TABLE DATA           k   COPY public.manutencao (id_manutencao, custo, km, data_manutencao, tipo_manutencao, descricao) FROM stdin;
    public          postgres    false    220   �(                 0    26197    recebe 
   TABLE DATA           9   COPY public.recebe (id_manutencao, id_carro) FROM stdin;
    public          postgres    false    225   �*                 0    26332    verifica 
   TABLE DATA           L   COPY public.verifica (id_funcionario, numero_agencia, id_carro) FROM stdin;
    public          postgres    false    231   R+       &           0    0    cargo_cod_cargo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cargo_cod_cargo_seq', 40, true);
          public          postgres    false    229            '           0    0    clientes_id_pagamento_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.clientes_id_pagamento_seq', 23, true);
          public          postgres    false    232            (           0    0    envia_id_envia_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.envia_id_envia_seq', 25, true);
          public          postgres    false    226            )           0    0    feedback_id_feedback_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.feedback_id_feedback_seq', 20, true);
          public          postgres    false    221            *           0    0    locacao_id_locacao_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.locacao_id_locacao_seq', 21, true);
          public          postgres    false    223            +           0    0    manutencao_id_manutencao_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.manutencao_id_manutencao_seq', 20, true);
          public          postgres    false    219            ,           0    0    pagamento_id_pagamento_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.pagamento_id_pagamento_seq', 20, true);
          public          postgres    false    216               �  x�M�K��0EǗUhT�����TW�	8Χ2Q�J�*�\��w�d�q/���Y4�'L8:�>]�Ow�ϸ����a')8���ײR]�Už��~B�,M�(��*c�A��j�Y/'�7�%i&'_�b��n,{g;�l�^;�gp���J9BT5J������i��]3r�da��V͓:��A�	
y�p�b������Q��A1Oh�JP/q�P2�/'ۘ��} 4��M���3��B��m|&��&Y�r�J�͏1|I��Ng�X�pOk�F?�����"B��(�����NU���O�@^�P�����&&ٵ�#�/]W�N������d 9	f�n���*�3�~���0!�����4r�N��ʈ3c�A���:Oe�XR�hfT�׶w��5�)SI�3���R�F=���=!�Of(CQc��'�ִ�AO�1�q#E��kk�?-������Џ��         Z  x�m�=n�@���)�76�.�%Y���p�j݌�M���k���&H�"U����I��q)��f�7�<)Ke�26/t骚lf3�mJ2t�]L=�C|d��Im���և.ݵ��֨���.��
mt�k���Ӗ�[�xX���p�3�������itVj�QN���}�5�{��>�Jꆇ�F�4
�J�yF�Zg�RA_���7�g��V�]�ά6�J��۴�������+��5d�ِ�ߵ�nyvT�EL����C�a�k�E�gE�<0�j*�"u{���'��j�:4{���qv!�&Gg>&�	ӟR��#]cq��l�ӎ�8�v����t�I�?�vԅ�WCU�����Hj�����tV��2t=l��Ӹ�����	���,�kX�����3�,P���XZ�����@s��<&�:�XI�,&K^-�'��{��k��:�X�_�N	�k>�6�7�1<xY{�^�u�����V��icƬN�A4	aϸ�O=K�㎸e��t�brE�x�P���Fޒ�����Y���QTM�{����eډ�#���{�Ȋ^��w�D�4Ȳ����{7q�q���Fڌ�_?�Mx��p���MZ�}X�V� �g1�         �   x�U��1���aP���3"!����H����>!0��/�ӹ����%wp*��-�M����������>n��D�b"#�a$6��e�le���Ð��S��o�h.j�c'����	W�����e53��ʅ�"��=���y'"o��]S           x�}�Kr�0���)���Ԕ$[~,�`��`H*T�*+e;$jN1!a�d����?}M ����N���@��,��(_e���g�l�ò��P� � ��K��~����t{u=bV�6�l��5��y�C$��	^Vl��7��yz#:F��o��������uZ6Y;8��a&w�bV(�
�����\�=6�B,�
��X����4h(iC� �ݛJ
+�(d$������٧	:;�9{�*k�.��C�Xj�R��'�#Q�,���Xm ��Ƕ��\�5i���@g���0�N�5l/
z�>6J�B�	%�^��|���:LO&��tR���}�7�WD�Er?��ʝ��ap74����Ε
����L^eQv`4�4ʈ�^mT����~�h`Wv@{E?-A�GXp�j��<5j]�62{�Q�ڍ��k^(�,���e� ��hF�H��}xlw��^����f�B��P �n��=�ŭMyQ2P�E���c�'&z��~�Z���OTT         �  x��R�N�P]�|��ܙ��R�'������R��i��W��1� �S&gqg��y��Zq1-���$i���c�Ns�4���5ذ�g���E�^�M�l������Ǥ(?��4n4��|+�x���������h�߷��9I�ٟ�b[�pt|��sv3I���/�)v��s���N��W�.?�4�I<8;�����R�Z���>��E������ �J�܌a�vH�C�3{�F��"R;"��rxu}s�d6�T�W�ѸR�D�������҉ě�t�$��ӭ#٭�������J.�w�6�Ŏ�6� ���!y�2R�
I��$?@Z]�?&�.Ɉ ��&oh�d�,XnWkk� X���V
Q��2�+�;"����sa𝃈_/�::         �  x�e��r�0��WO�=q'��w4a�R)t�FI�"F�2r�ax�0�y��GV�2�U����st�T�(�S��ut�t�g��IZ�w�ߨV��E�s)x]�E�d�Ԅї��j�V_l]C���g�Y�!E�^����UM)ʹu��y�͵= S e��I�������V�J��佚p1�2Z9p���Ga��A\�@ܔT;֖���K.\{��쓎�. �*h�{s05�2(��A3J��#^�^wj�-d�F�]\�z�q����,6U����Y�Ef���d8b��Z����v��;č_O05Tѽ9���,�s�|�*�<~�[�_*0m7(���BH�i���!ZWa[���iv�,ٚ-��m�J�i�,��+ġ���U9��s	x���(�즷pH!�FGq��� ��r����eIH��ĩ1L��>��\�EiK�JQ&�x��j��`X�%���l����~V-�$ҡ3��mlD�H�g�p�6at�����tg�S�n�II�m��7!�A~��$�J*��Y���jq=�V"�[(��ȱ�V��#��u0,	���irL��e��q;o�S'ރ�J�Z�J�FE���j�
v��Q#�`������k��d^}އ/�{�o9d�κpX)j���9�Z��])<V�9k�zԄ������8����b!����Y������4Y����T�B����h唭ՃB�ןbݹ�ߚ�i��E��^-�;��L�m���/el��>]0�� ���           x�u�Mn�@�ףS� �13��tY�)�M��,��Ht0�$�3�`�6Az_��,i����=��G�FYm�7�VݝJ���"�џ���C[zj�/�S�f�=A0���#ŭ�o:��L����V��B����� ���R\,Zg��b��DÈ���"A�u�s��U;�퓭P_W��Ux-�
��`7F|ra��d<�Nk�}@�>��p����C�*���:˓�P����ܳ��ΊY|��$J
�w5�>��tv�<o���h�L�V�Y��h(Y\���7иx�~-�����6�$��ap�^M��ğ)�Z�7�\�P;"����r���]�On�mlr�^��M.k��h��7r���4���к �	r!s�M�
�}������Z7;>���>������|��<Jy��C0�y���sy�qB�i���ed���h��Q��� ��6��|���f�q>s�l���7:��������4����ca^���@3n��$O�[і��z��.�������]
�*��fY�f�V�         �  x�eRKn�0]��PPc(g�E��L�U7��iXؖ#Ƀ ��	�.��)|�Ҟ	I�D���
�_Io"��,��p�������.o\ⱓ���3�`����u��6|�V����^�Qb?:�f�%y��a�N�
(�vppI�/m�	�>�NIJ(�m��[���7PA�d��U�~��^ń��j��r����G�7�fR�3cR����M�W�{�#��ի���A��8�l��T���,�g7�A�T����1�O�y����V7d�8�?�A�G���mR�'�2��H�u�jM����z�e�M�z����vy=q��R-��Qɣ���%���Bk�n��kh��U����:Tk���vL��.p�C�Q��X�kE��f��{-�%|���g�]����[��� �ߝ         0  x�m�Kr!���)��2=(טu��(��S�U~��@��XO�yd����2� B:����M���P6�9�꠪EP'UΒ�PA�h*�4uXlA�T���j�{��T�Mq�b���O��,;������݄eF�n�eHK���@�k��)��X��7�9��zKp����P{���#�>z����yF�����4�YxÁ�/Yُ�r>�@�>��O̳�0>b51�$Ķd=���_�F�O�+k���0��YR������4M�g����;�5"p�!���}���֤'           x�}��r�0 E��;\G�)����b�� �n"������v���ts�ꞹa�"Q�'^�R��L�8A�$�7�WC]�f��ŝic��ao�V��Jo/����2�>Yh��a� ~�0�ܐ5��1�����J8�ZW�E�͢�Mdi|��
3�3�����.tB�]��5�!�ߝF)��<��|z�>.I�2.[�@���]���R�m*@���kLO�̗,���cXF:wI��;�m��Tv:3��ȥ�e�����(��f"         �   x�e̹�0  Й~3Жs���� ����Q.-V��DG�7>���К~��mz�22IF/j���a��dk��ح���w���~<�e���v���JKi�2 �ӲJl���߇�Xâ��=������s*�D����VH�.KYR]qR�� � �#9�         T  x��U;��0��S��2Ɉ��O�#lR��%x͌D*$�"�I�I�U�����"嵓��xd�����O��廲,ܗ{�ޗ�Ê�Z5@[����¤H��Z�1x0x�Q�8�V�W�B��Ӹ7V�QL?�. ��<�ѝ.�H�1�XW�a��h���Kۡ��3��q@�FlD��*�
��RW9l]|�d�������G�ЂV�Ij_Ū���3}�ҮG�Z�edy���w������1�{�E��xG�	�l�&����W�b���h.ner?mH�B� ��&��6�i�&)�T!����b7��Z4�Ql�� ^;d��!�.K>�cZ������DW�x$����6�:�p��pzm�NƒIa,����z޵Ò�h��о������|�"u��D����뙠=X�.�8|F�Gݰ*ë�4�
�A�	Ϲ�8����trY:�k��k�q%EN��r東/�p^,�.��au���ts^hb7���Yc�<K��	;���m�`��x�qKƶ:Cm2�DK~��b%�ι�=�;z��ɺa���׷�%C�v�=}���>����e"n������7����?c67�         H   x���1��t0.5E]�l�q0R)f&�fe��99�\^�8�(V,�qb����ă7^|�Q#5�~����         c   x�͹0ј-�#t��_���l��ez����`�S��.-v��9���W��>=���p��pFKǙ-g�L��p��ƙ/�\����ُ��~����     