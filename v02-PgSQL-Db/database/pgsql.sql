DROP DATABASE IF EXISTS video_cursos;

CREATE DATABASE video_cursos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'pt_BR.UTF-8';

\c video_cursos;

CREATE TABLE IF NOT EXISTS grupo_videocurso (
	id SERIAL NOT NULL CONSTRAINT pkey_grupovideocurso PRIMARY KEY,
	titulo varchar(100) NOT NULL,
	created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
        updated_at timestamp without time zone,
        deleted_at timestamp without time zone
);

INSERT INTO grupo_videocurso ( titulo ) VALUES ('Php 8 - Ronaldo Aires'), ('Laravel 9 - Thiago Matos'), ('Node.JS - Luiz Duarte');

CREATE TABLE IF NOT EXISTS video_curso ( 
      id SERIAL NOT NULL CONSTRAINT pkey_videocurso PRIMARY KEY,
      titulo varchar(150) NOT NULL,
      descricao varchar(150),
      url varchar(200) NOT NULL,
      imagem varchar(200), 
      codigo varchar(15),
      tamanho_min varchar(10),
      tamanho_ms varchar(10),
      id_grupo integer,
      created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
      updated_at timestamp without time zone,
      deleted_at timestamp without time zone,
      CONSTRAINT fkey_videocurso_grupo FOREIGN KEY (id_grupo) REFERENCES grupo_videocurso (id) ON DELETE SET NULL ON UPDATE CASCADE
);



DROP TABLE IF EXISTS video_aulas;

CREATE TABLE "video_aulas" (
  id serial not null primary key,
  "videos" jsonb
);

/* GRUPO 1 */

INSERT INTO "video_aulas" ("videos")
VALUES ( '{	"titulo": "Curso gratuito Laravel 9 INTRO #1 - Introdução e instalação", 
		"descricao":"2 mil visualizações", 
		"url":"https://www.youtube.com/embed\/_h7pq2uc6e4?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg", 
		"codigo":"56slkfn"
	}' ),
	('
        {	"titulo":"Curso gratuito Laravel 9 INTRO #2 - O comando Artisan",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/q3TYbWaSOqY?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"0ctdJAa"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #3 - Criando rotas parte 1",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/0IX7IgqIIe0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"iiYXb7g"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #4 - Criando rotas parte 2",
		"descricao":"6 mil visualizações",
		"url":"https://www.youtube.com/embed/hMZHocLHwsk?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"YD_EwYW"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #5 - A camada request",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/cAyzFcB_8Jw?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"8hxhndw"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #6 - Criando controller e linkando com as rotas",
		"descricao":"0 mil visualizações",
		"url":"https://www.youtube.com/embed/isChgZfN27k?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"1WRHgAj"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #7 - Renderizando views",
		"descricao":"3 mil visualizações",
		"url":"https://www.youtube.com/embed/Dpgv2RylSB4?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"p5jGFyT"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #8 - Diretivas do blade template",
		"descricao":"0 mil visualizações",
		"url":"https://www.youtube.com/embed/dxY-x6e5jPE?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"XUcEjXW"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #9 - Criando layouts com blade template",
		"descricao":"6 mil visualizações",
		"url":"https://www.youtube.com/embed/meaRFfy5cdI?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"khd5ret"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #10 - Injetando assets (css e javascript)",
		"descricao":"6 mil visualizações",
		"url":"https://www.youtube.com/embed/8M5JuB6Qgx0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"6lAbwL9"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #11 - Compilando assets (Laravel mix)",
		"descricao":"5 mil visualizações",
		"url":"https://www.youtube.com/embed/j9p7jlPFvk0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"nZDdi8d"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #12 - Introdução a migrations",
		"descricao":"3 mil visualizações",
		"url":"https://www.youtube.com/embed/GsMNL4P9YI4?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"16yCseO"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #13 - Criando models",
		"descricao":"4 mil visualizações",
		"url":"https://www.youtube.com/embed/8pcFJ4-iTBQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"a3fOXTt"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #14 - Seeders e factories",
		"descricao":"1 mil visualizações",
		"url":"https://www.youtube.com/embed/MZ7mNIft1XQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"wDAI1CK"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #15 - Introdução ao Eloquent - Pegando registros",
		"descricao":"1 mil visualizações",
		"url":"https://www.youtube.com/embed/p-vkHYfH3mc?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"zra9rVM"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #16 - Introdução ao Eloquent - Salvando registros",
		"descricao":"5 mil visualizações",
		"url":"https://www.youtube.com/embed/_xWj5bulbH0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"_c-2SBQ"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #17 - Introdução ao Eloquent - Atualizando registros",
		"descricao":"6 mil visualizações",
		"url":"https://www.youtube.com/embed/HV14qNvrwLI?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"ZiQtRfp"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #18 - Introdução ao Eloquent - Deletando registros",
		"descricao":"9 mil visualizações",
		"url":"https://www.youtube.com/embed/SjQLgxwqh7k?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"vGpKFSY"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #19 - Relacionamento 1 para N",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/9ARRTSBp6P8?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"VFgjgtV"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #20 - Relacionamento N para 1",
		"descricao":"0 mil visualizações",
		"url":"https://www.youtube.com/embed/kdmK38Eo0ew?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"bi98d55"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #21 - Relacionamento N para N",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/7hDVuE2hXzQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"HhBb6z3"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #22 - Validação",
		"descricao":"9 mil visualizações",
		"url":"https://www.youtube.com/embed/KaivlsFU7YI?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"yEShrt_"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #23 - File upload",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/Nv6z7BFR0W0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"wHd9rna"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #24 - Paginação",
		"descricao":"0 mil visualizações",
		"url":"https://www.youtube.com/embed/aW_X1OesitM?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"WWA5fRs"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #25 - Projeto aula 01",
		"descricao":"6 mil visualizações",
		"url":"https://www.youtube.com/embed/WUunsWINUmw?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"DrOsPRK"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #26 - Projeto aula 02",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/shAgpj2PnV8?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"dJV6Cf2"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #27 - Projeto aula 03",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/bc0gkFllAPs?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"lYd_kJq"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #28 - Projeto aula 04",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/pU3Nh3qwM8g?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"xIB_5EO"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #29 - Projeto aula 05",
		"descricao":"1 mil visualizações",
		"url":"https://www.youtube.com/embed/BrvTkU2T05g?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"nmDfOUg"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #30 - Projeto aula 06",
		"descricao":"8 mil visualizações",
		"url":"https://www.youtube.com/embed/DvxOVq97MaU?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"t0ZE_yt"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #31 - Projeto aula 07",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/doC4M22vZII?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"_JB3bru"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #32 - Projeto aula 08",
		"descricao":"9 mil visualizações",
		"url":"https://www.youtube.com/embed/n_0Eb0Ry1oA?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"Dv9DuC8"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #33 - Projeto aula 09",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/AsKHRRDm5cw?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"ek_Msia"
	}' ),
	('
	{	"titulo":"Curso gratuito Laravel 9 INTRO #34 - Projeto aula 10",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/yB7_iPjqGJQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"74kxqmy"
	}'
);

insert into video_curso (titulo, descricao, url, imagem, codigo, id_grupo)
	select 	videos->>'titulo' titulo,
                videos->>'descricao' descricao,
		videos->>'url' url,
		videos->>'imagem' imagem,
		videos->>'codigo' codigo,
		2 as id_grupo
	from video_aulas
	where id <= 34;

/* GRUPO 2 */

INSERT INTO "video_aulas" ("videos")
VALUES
( '{"titulo":"Curso de PHP 8   Aula 001   Apresentação do Curso de PHP 8","url":"https://www.youtube.com/watch?v=O73xbQvGhHk","codigo":"O73xbQvGhHk","tamanho_min":"18:04","tamanho_ms":"1084000","imagem":"https://i.ytimg.com/vi/O73xbQvGhHk/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP8   Aula 003   Baixando e Instalando o XAMPP","url":"https://www.youtube.com/watch?v=8DVk8LeuFpc","codigo":"8DVk8LeuFpc","tamanho_min":"6:39","tamanho_ms":"399000","imagem":"https://i.ytimg.com/vi/8DVk8LeuFpc/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 004   Configurações Opcionais do XAMPP","url":"https://www.youtube.com/watch?v=4n_un0Bqsio","codigo":"4n_un0Bqsio","tamanho_min":"3:55","tamanho_ms":"235000","imagem":"https://i.ytimg.com/vi/4n_un0Bqsio/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 005   Configurações do PHP","url":"https://www.youtube.com/watch?v=H9kO0gVSLlo","codigo":"H9kO0gVSLlo","tamanho_min":"8:24","tamanho_ms":"504000","imagem":"https://i.ytimg.com/vi/H9kO0gVSLlo/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 006   Diretório Raiz","url":"https://www.youtube.com/watch?v=BCEbij6HSvY","codigo":"BCEbij6HSvY","tamanho_min":"3:36","tamanho_ms":"216000","imagem":"https://i.ytimg.com/vi/BCEbij6HSvY/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 007   Criando arquivos PHP","url":"https://www.youtube.com/watch?v=mpzERsVDDn4","codigo":"mpzERsVDDn4","tamanho_min":"7:14","tamanho_ms":"434000","imagem":"https://i.ytimg.com/vi/mpzERsVDDn4/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 008   Tags de Abertura e de Fechamento do PHP","url":"https://www.youtube.com/watch?v=uYLqGEMGSf0","codigo":"uYLqGEMGSf0","tamanho_min":"4:10","tamanho_ms":"250000","imagem":"https://i.ytimg.com/vi/uYLqGEMGSf0/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 009   Baixando e Instalando Notepad++","url":"https://www.youtube.com/watch?v=eyln2KpS6Sg","codigo":"eyln2KpS6Sg","tamanho_min":"4:05","tamanho_ms":"245000","imagem":"https://i.ytimg.com/vi/eyln2KpS6Sg/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 010   Comandos echo e print","url":"https://www.youtube.com/watch?v=2VDWrxBeV8Y","codigo":"2VDWrxBeV8Y","tamanho_min":"6:37","tamanho_ms":"397000","imagem":"https://i.ytimg.com/vi/2VDWrxBeV8Y/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 011   Tipos de Comentários","url":"https://www.youtube.com/watch?v=NG17FlQ9hSw","codigo":"NG17FlQ9hSw","tamanho_min":"4:17","tamanho_ms":"257000","imagem":"https://i.ytimg.com/vi/NG17FlQ9hSw/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 012   Include e Require","url":"https://www.youtube.com/watch?v=1umYEonoGas","codigo":"1umYEonoGas","tamanho_min":"7:31","tamanho_ms":"451000","imagem":"https://i.ytimg.com/vi/1umYEonoGas/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 013   Baixando e Instalando Visual Studio Code","url":"https://www.youtube.com/watch?v=dXXL8-Z5uXA","codigo":"dXXL8-Z5uXA","tamanho_min":"7:13","tamanho_ms":"433000","imagem":"https://i.ytimg.com/vi/dXXL8-Z5uXA/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 014   PHP Live Server com Autoreload","url":"https://www.youtube.com/watch?v=ZtLu-uegvBY","codigo":"ZtLu-uegvBY","tamanho_min":"7:52","tamanho_ms":"472000","imagem":"https://i.ytimg.com/vi/ZtLu-uegvBY/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 015   Como Criar Funções com PHP","url":"https://www.youtube.com/watch?v=FSdDqPNQy3s","codigo":"FSdDqPNQy3s","tamanho_min":"8:28","tamanho_ms":"508000","imagem":"https://i.ytimg.com/vi/FSdDqPNQy3s/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 016   Variável e Parâmetros","url":"https://www.youtube.com/watch?v=8SwPVFUh6P4","codigo":"8SwPVFUh6P4","tamanho_min":"9:05","tamanho_ms":"545000","imagem":"https://i.ytimg.com/vi/8SwPVFUh6P4/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 017   Tipos de Dados e Retorno","url":"https://www.youtube.com/watch?v=j_50VZCWgOQ","codigo":"j_50VZCWgOQ","tamanho_min":"11:07","tamanho_ms":"667000","imagem":"https://i.ytimg.com/vi/j_50VZCWgOQ/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 018   Estrutura de Controle IF","url":"https://www.youtube.com/watch?v=Z1XZJ0FT9jc","codigo":"Z1XZJ0FT9jc","tamanho_min":"6:12","tamanho_ms":"372000","imagem":"https://i.ytimg.com/vi/Z1XZJ0FT9jc/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 019   Estrutura de Controle ELSEIF e ELSE","url":"https://www.youtube.com/watch?v=bXb8-F9p9PU","codigo":"bXb8-F9p9PU","tamanho_min":"6:55","tamanho_ms":"415000","imagem":"https://i.ytimg.com/vi/bXb8-F9p9PU/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 020   Lista de Funções e Métodos","url":"https://www.youtube.com/watch?v=j4sSGQAKZPw","codigo":"j4sSGQAKZPw","tamanho_min":"10:23","tamanho_ms":"623000","imagem":"https://i.ytimg.com/vi/j4sSGQAKZPw/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 021   Como Criar uma Função para Resumir Textos Passo a Passo","url":"https://www.youtube.com/watch?v=xIEhn6r0qzw","codigo":"xIEhn6r0qzw","tamanho_min":"13:21","tamanho_ms":"801000","imagem":"https://i.ytimg.com/vi/xIEhn6r0qzw/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 022   Limpando TAGS","url":"https://www.youtube.com/watch?v=jcasYy_g4lg","codigo":"jcasYy_g4lg","tamanho_min":"3:45","tamanho_ms":"225000","imagem":"https://i.ytimg.com/vi/jcasYy_g4lg/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 023   Documentação com PHPdoc","url":"https://www.youtube.com/watch?v=2cTaFqzwqRo","codigo":"2cTaFqzwqRo","tamanho_min":"10:27","tamanho_ms":"627000","imagem":"https://i.ytimg.com/vi/2cTaFqzwqRo/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 024   Baixando e Instalando IDE Apache NetBeans","url":"https://www.youtube.com/watch?v=LAl5U39EdMI","codigo":"LAl5U39EdMI","tamanho_min":"5:16","tamanho_ms":"316000","imagem":"https://i.ytimg.com/vi/LAl5U39EdMI/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 025   Criando Projeto na IDE NetBeans","url":"https://www.youtube.com/watch?v=D5mvl6CgI5E","codigo":"D5mvl6CgI5E","tamanho_min":"7:22","tamanho_ms":"442000","imagem":"https://i.ytimg.com/vi/D5mvl6CgI5E/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 026   Operador Ternário","url":"https://www.youtube.com/watch?v=l2RbRH5QxpA","codigo":"l2RbRH5QxpA","tamanho_min":"14:02","tamanho_ms":"842000","imagem":"https://i.ytimg.com/vi/l2RbRH5QxpA/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 027   Definindo Fuso Horário Padrão","url":"https://www.youtube.com/watch?v=7ajRMX9CpSI","codigo":"7ajRMX9CpSI","tamanho_min":"4:41","tamanho_ms":"281000","imagem":"https://i.ytimg.com/vi/7ajRMX9CpSI/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 028   Criando Função Contar Tempo","url":"https://www.youtube.com/watch?v=DWrugf6OCm4","codigo":"DWrugf6OCm4","tamanho_min":"27:42","tamanho_ms":"1662000","imagem":"https://i.ytimg.com/vi/DWrugf6OCm4/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 029   Tipos de Filtros","url":"https://www.youtube.com/watch?v=iTXf4cS4upk","codigo":"iTXf4cS4upk","tamanho_min":"10:34","tamanho_ms":"634000","imagem":"https://i.ytimg.com/vi/iTXf4cS4upk/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 030   É Melhor Criar ou Utilizar um Filtro","url":"https://www.youtube.com/watch?v=ZRlcnHVJCaE","codigo":"ZRlcnHVJCaE","tamanho_min":"10:06","tamanho_ms":"606000","imagem":"https://i.ytimg.com/vi/ZRlcnHVJCaE/hqdefault.jpg"}' ), 

( '{"titulo":"Curso de PHP 8   Aula 031   Constantes","url":"https://www.youtube.com/watch?v=tEx9MQuPB4w","codigo":"tEx9MQuPB4w","tamanho_min":"10:31","tamanho_ms":"631000","imagem":"https://i.ytimg.com/vi/tEx9MQuPB4w/hqdefault.jpg"}')
;

insert into video_curso (titulo, url, tamanho_min, tamanho_ms, imagem, codigo, id_grupo)
	select 	videos->>'titulo' titulo,
		videos->>'url' url,
                videos->>'tamanhomin' tamanho_min,
                videos->>'tamanho_ms' tamanho_ms,
		videos->>'imagem' imagem,
		videos->>'codigo' codigo,
		1 as id_grupo
	from video_aulas
	where id > 34;

/*
select id, url, url as newurl, descricao from video_curso where id_grupo = 1 and id = 35 
UNION
select id, url, 'https://www.youtube.com/embed/'||substring( url, position('v=' in url)+2)||'?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9' as newurl, descricao 
from video_curso where id_grupo = 1 and id >= 35 order by id asc;
*/
UPDATE video_curso 
SET descricao = url,
url = 'https://www.youtube.com/embed/'||substring( url, position('v=' in url)+2)||'?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9' 
WHERE id_grupo = 1 and id >= 35;

select id, url, descricao from video_curso where id_grupo = 1 and id >= 35 order by id asc;
/*
*/


