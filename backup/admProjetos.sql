--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-05-21 21:26:14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 33713)
-- Name: projetos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projetos (
    id integer NOT NULL,
    project character varying(255),
    teacher character varying(255)
);


ALTER TABLE public.projetos OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 33712)
-- Name: projetos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projetos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projetos_id_seq OWNER TO postgres;

--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 217
-- Name: projetos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projetos_id_seq OWNED BY public.projetos.id;


--
-- TOC entry 220 (class 1259 OID 33750)
-- Name: tarefas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tarefas (
    id integer NOT NULL,
    projeto_id integer NOT NULL,
    name character varying(255),
    photo text,
    status_tarefa character varying(255),
    description character varying(300)
);


ALTER TABLE public.tarefas OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 33749)
-- Name: tarefas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tarefas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tarefas_id_seq OWNER TO postgres;

--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 219
-- Name: tarefas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tarefas_id_seq OWNED BY public.tarefas.id;


--
-- TOC entry 4700 (class 2604 OID 33716)
-- Name: projetos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projetos ALTER COLUMN id SET DEFAULT nextval('public.projetos_id_seq'::regclass);


--
-- TOC entry 4701 (class 2604 OID 33753)
-- Name: tarefas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarefas ALTER COLUMN id SET DEFAULT nextval('public.tarefas_id_seq'::regclass);


--
-- TOC entry 4853 (class 0 OID 33713)
-- Dependencies: 218
-- Data for Name: projetos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projetos (id, project, teacher) FROM stdin;
1	Backend	Thiago Ferreira
2	Frontend	Marcelo Carboni
3	Projetos	Thiago Ferreira e Marcelo Carboni
4	Mobile	Marcelo Carboni
5	Banco de Dados	Thiago Ferreira
6	Design	Marcelo Carboni
\.


--
-- TOC entry 4855 (class 0 OID 33750)
-- Dependencies: 220
-- Data for Name: tarefas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tarefas (id, projeto_id, name, photo, status_tarefa, description) FROM stdin;
1	1	Laura Violla	1747869826515-laura.jpg	Em andamento	Realizar CRUD completo da API de Usuários
2	2	Bruna Savelli	1747869861338-bruna.jpg	Pendente	Finalizar Footer do site Doçuras de Paris
3	3	Evelyn Oliveira	1747869931316-evelyn.jpg	Em andamento	Realizar documentação do projeto
4	4	Ana Carolina Freitas	1747869969885-anaCarolina.jpg	Concluído	Realizar página de Login do Usuário
5	1	Alejandra Barros	1747870004612-alejandra.jpg	Pendente	Finalizar o Swagger da API de Harry Potter
6	5	Giovanna Alba	1747870031084-giovanna.jpg	Concluído	Finalizar tabela de produtos
7	1	Amanda	1747870057558-amanda.jpg	Concluído	Implementar rotas protegidas na API
8	5	Enzo	1747870097231-enzo.png	Em andamento	Normalizar tabelas e revisar chaves estrangeiras
9	2	Giovanna Caron	1747870133491-giovannaCaron.jpg	Em andamento	Refatorar layout da página de contato
10	4	João Vitor	1747870153772-joaoVitor.jpg	Em andamento	Integrar notificações push no aplicativo
11	1	Luana	1747870185305-luana.jpg	Em andamento	Implementar middleware de autenticação
12	5	Samuel	1747870221267-samuel.jpg	Em andamento	Otimizar consultas com índices compostos
13	2	Ana Julia	1747870259055-anaJulia.jpg	Pendente	Criar animações com Framer Motion
14	4	Caio	1747870282514-caio.jpg	Pendente	Publicar app na Play Store
15	1	Flavia	1747870303570-flavia.jpg	Pendente	Criar serviço de envio de e-mails pela API
16	5	Julia	1747870325239-julia.jpg	Pendente	Criar procedures para geração de relatórios
17	3	Raphaelle	1747870358991-raphaelle.jpg	Pendente	Revisar backlog e dividir tarefas da equipe
18	6	Sara	1747870396844-sara.jpg	Pendente	Finalizar ícones e tipografia do design system
19	3	André	1747870431279-andre.jpg	Concluído	Preparar apresentação final do projeto completo
20	6	Fernanda	1747870463359-fernanda.jpg	Concluído	Criar protótipos de alta fidelidade no Figma
21	3	Isabella	1747870489319-isabella.jpg	Concluído	Organizar documentação técnica do projeto final
22	6	Kevin	1747870511087-kevin.jpg	Concluído	Desenvolver paleta de cores para o produto digital
23	2	Luiz Henrique	1747870539535-luizHenrique.jpg	Concluído	Criar seção de depoimentos responsiva
24	4	Pablo	1747870562143-pablo.jpg	Concluído	Testar funcionalidades no Android e iOS
25	1	Bernardo	1747870584279-bernardo.jpg	Concluído	Criar endpoint para atualização de senha
26	1	Ana Leme	1747872587504-anaLeme.jpg	Pendente	Adicionar logs de erro no servidor
27	4	Anna	1747872607431-anaLeme.jpg	Pendente	Adaptar layout para tablets
28	2	Camila	1747872637739-camila.jpg	Pendente	Ajustar espaçamento entre seções da página inicial
29	5	Fabio	1747872657590-fabio.jpg	Pendente	Revisar relacionamentos entre tabelas no banco de dados
30	2	Gabriela	1747872686702-gabriela.jpg	Concluído	Implementar carrossel de imagens na página inicial
31	5	Guilherme	1747872707353-guilherme.jpg	Concluído	Criar views para relatórios mensais
32	1	Julia Guarnieri	1747872732065-juliaGuarnieri.jpg	Concluído	Criar API RESTful para gerenciamento de produtos
33	4	Lucas	1747872756554-lucas.jpg	Concluído	Publicar nova versão do app com correções de bugs
34	3	Maria	1747872779854-lucas.jpg	Em andamento	Realizar checklist de entregas do projeto
35	6	Natalia	1747872802588-natalia.jpg	Em andamento	Refinar estilo dos botões e campos de formulário
36	3	Richard	1747872827175-richard.jpg	Em andamento	Atualizar cronograma no Trello e repassar com o time
37	6	Vitor	1747872848320-vitor.jpg	Em andamento	Aplicar testes de contraste e legibilidade no protótipo
38	2	Aline	1747872877512-aline.jpg	Em andamento	Corrigir responsividade da página de login
39	1	Nicolly	1747872900705-nicolly.jpg	Pendente	Integrar API com serviço externo de pagamentos
40	4	Leticia	1747872943408-leticia.jpg	Pendente	Implementar autenticação por biometria no app
41	1	Renan Azevedo	\N	Conclu¡do	Configurar autentica‡Æo com OAuth2
42	1	Juliana Brito	\N	Pendente	Criar logs detalhados para auditoria
43	1	Paulo S‚rgio	\N	Em andamento	Refatorar rotas privadas com middleware
44	1	Camila Moura	\N	Conclu¡do	Criar endpoint de exporta‡Æo de dados
45	1	Mauro Oliveira	\N	Pendente	Documentar API no Swagger
46	1	L¡gia Santos	\N	Em andamento	Testar integra‡Æo com banco MongoDB
47	1	Andressa Lopes	\N	Conclu¡do	Implementar estrat‚gia de refresh token
48	1	Vin¡cius Campos	\N	Em andamento	Criar endpoint para reset de senha
49	1	Tatiane Alves	\N	Pendente	Validar payloads com biblioteca Joi
50	1	Diego Mattos	\N	Conclu¡do	Realizar testes automatizados com Jest
51	2	Patr¡cia Silva	\N	Pendente	Ajustar cores para dark mode
52	2	JoÆo Pedro Cruz	\N	Em andamento	Desenvolver componente de alerta global
53	2	Carla Mendes	\N	Conclu¡do	Refatorar layout da p gina de checkout
54	2	Let¡cia Oliveira	\N	Pendente	Criar anima‡äes em CSS para o banner
55	2	Caio Bastos	\N	Conclu¡do	Finalizar tela de perfil do usu rio
56	2	Aline Figueiredo	\N	Em andamento	Reestruturar navega‡Æo mobile
57	2	Rafael Augusto	\N	Pendente	Implementar menu hamburguer animado
58	2	Fernanda Ribeiro	\N	Conclu¡do	Corrigir layout quebrado no Safari
59	2	Suelen Marques	\N	Em andamento	Aplicar estiliza‡Æo com TailwindCSS
60	2	Bruno Santos	\N	Pendente	Responsividade do formul rio de contato
61	3	Thais Rocha	\N	Conclu¡do	Montar checklist das entregas finais
62	3	Lucas Barbosa	\N	Pendente	Criar plano de contingˆncia para bugs
63	3	Eduarda Leite	\N	Em andamento	Revisar kanban e dividir novas tarefas
64	3	Matheus Ferreira	\N	Conclu¡do	Organizar pasta de assets do projeto
65	3	J‚ssica Costa	\N	Pendente	Criar modelo de ata de reuniÆo
66	3	Gabriel Souza	\N	Em andamento	Atualizar metas da sprint no Jira
67	3	Ana Beatriz Lima	\N	Pendente	Compilar feedbacks da revisÆo de c¢digo
68	3	Rodolfo Andrade	\N	Conclu¡do	Conferir documenta‡Æo final no Notion
69	3	F bio Menezes	\N	Em andamento	Apresentar overview do projeto para stakeholders
70	3	Nat lia Vasconcelos	\N	Pendente	Enviar e-mail com link da apresenta‡Æo
71	4	Luana Martins	\N	Pendente	Ajustar permissäes no app mobile
72	4	Eduardo Paiva	\N	Em andamento	Conectar app … API de localiza‡Æo
73	4	Vanessa Moura	\N	Conclu¡do	Publicar nova versÆo do app na App Store
74	4	Daniel Moreira	\N	Em andamento	Implementar scanner de QR Code
75	4	Luciana Rocha	\N	Pendente	Criar tela de configura‡äes do app
76	4	Samuel Costa	\N	Conclu¡do	Corrigir bug no login com Facebook
77	4	Priscila Souza	\N	Pendente	Testar layout em dispositivos pequenos
78	4	Felipe Tavares	\N	Em andamento	Criar splash screen animada
79	4	Yasmin Nogueira	\N	Conclu¡do	Substituir ¡cones para versÆo 2.0
80	4	Andr‚a Dias	\N	Em andamento	Revisar navega‡Æo entre telas
81	5	Mariana Figueira	\N	Conclu¡do	Criar stored procedure para limpeza de dados
82	5	Wagner Lopes	\N	Pendente	Revisar integridade referencial entre tabelas
83	5	Bianca Sales	\N	Em andamento	Mapear queries lentas para otimiza‡Æo
84	5	Jorge Menezes	\N	Pendente	Configurar backup autom tico di rio
85	5	Isabel Correia	\N	Conclu¡do	Criar ¡ndices para tabelas de acesso
86	5	Roberto Lima	\N	Em andamento	Atualizar diagrama ER com novas tabelas
87	5	Daniele Fonseca	\N	Pendente	Revisar normaliza‡Æo at‚ 3FN
88	5	Gustavo Pires	\N	Em andamento	Criar triggers para atualiza‡äes em cascata
89	5	Kelly Santos	\N	Conclu¡do	Migrar dados do ambiente de homologa‡Æo
90	5	Leonardo Queiroz	\N	Pendente	Testar restore a partir de backup
91	6	Ariane Silveira	\N	Conclu¡do	Criar guia de estilo com varia‡äes de botÆo
92	6	Vitor Hugo Duarte	\N	Pendente	Definir tipografia principal do app
93	6	Elaine Borges	\N	Em andamento	Desenvolver ¡cones personalizados em SVG
94	6	Cristina Neves	\N	Pendente	Finalizar telas com grid de produtos
95	6	Thiago Pinto	\N	Conclu¡do	Ajustar espa‡amentos e paddings do prot¢tipo
96	6	Rebeca Andrade	\N	Em andamento	Aplicar feedback visual da equipe de UX
97	6	Alberto Almeida	\N	Pendente	Criar design para o modo escuro
98	6	Juliane Duarte	\N	Conclu¡do	Revisar contraste de cores para acessibilidade
99	6	Hugo Santana	\N	Em andamento	Padronizar estilos de t¡tulos e subt¡tulos
100	6	Paula Xavier	\N	Pendente	Organizar pastas e arquivos no Figma
\.


--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 217
-- Name: projetos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projetos_id_seq', 6, true);


--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 219
-- Name: tarefas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tarefas_id_seq', 100, true);


--
-- TOC entry 4703 (class 2606 OID 33720)
-- Name: projetos projetos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projetos
    ADD CONSTRAINT projetos_pkey PRIMARY KEY (id);


--
-- TOC entry 4705 (class 2606 OID 33757)
-- Name: tarefas tarefas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarefas
    ADD CONSTRAINT tarefas_pkey PRIMARY KEY (id);


--
-- TOC entry 4706 (class 2606 OID 33758)
-- Name: tarefas tarefas_projeto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarefas
    ADD CONSTRAINT tarefas_projeto_id_fkey FOREIGN KEY (projeto_id) REFERENCES public.projetos(id) ON DELETE CASCADE;


-- Completed on 2025-05-21 21:26:15

--
-- PostgreSQL database dump complete
--

