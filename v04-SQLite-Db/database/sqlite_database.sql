-- video_curso definition

-- grupo_videocurso definition

CREATE TABLE "grupo_videocurso" (
	"id"	INTEGER NOT NULL UNIQUE,
	"titulo"	TEXT NOT NULL,
	"created_at"	TEXT DEFAULT CURRENT_TIMESTAMP,
	"updated_at"	TEXT DEFAULT CURRENT_TIMESTAMP,
	"deleted_at"	TEXT ,
	PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO grupo_videocurso (titulo,created_at,updated_at,deleted_at) VALUES
	 ('Php 8 - Ronaldo Aires','2024-08-28 19:40:18','2024-08-28 19:40:18',NULL),
	 ('Laravel 9 - Thiago Matos','2024-08-28 19:40:18','2024-08-28 19:40:18',NULL),
	 ('Node.JS - Luiz Duarte','2024-08-28 19:40:18','2024-08-28 19:40:18',NULL);

CREATE TABLE video_curso ( 
      id INTEGER NOT NULL UNIQUE,
      titulo varchar(150) NOT NULL,
      descricao varchar(150),
      url varchar(200) NOT NULL,
      imagem varchar(200), 
      video_id varchar(15),
      playlist_id varchar(100),
      tamanho_min varchar(10),
      tamanho_ms varchar(10),
      id_grupo integer,
      created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
      updated_at TEXT,
      deleted_at TEXT, 
      codigo TEXT(100),
      PRIMARY KEY("id" AUTOINCREMENT)
      FOREIGN KEY (id_grupo) REFERENCES grupo_videocurso (id) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        1,
        'Curso gratuito Laravel 9 INTRO #1 - Introdução e instalação',
        '2 mil visualizações',
        'https://www.youtube.com/embed/_h7pq2uc6e4?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        '56slkfn',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        2,
        'Curso gratuito Laravel 9 INTRO #2 - O comando Artisan',
        '2 mil visualizações',
        'https://www.youtube.com/embed/q3TYbWaSOqY?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        '0ctdJAa',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        3,
        'Curso gratuito Laravel 9 INTRO #3 - Criando rotas parte 1',
        '2 mil visualizações',
        'https://www.youtube.com/embed/0IX7IgqIIe0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'iiYXb7g',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        4,
        'Curso gratuito Laravel 9 INTRO #4 - Criando rotas parte 2',
        '6 mil visualizações',
        'https://www.youtube.com/embed/hMZHocLHwsk?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'YD_EwYW',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        5,
        'Curso gratuito Laravel 9 INTRO #5 - A camada request',
        '7 mil visualizações',
        'https://www.youtube.com/embed/cAyzFcB_8Jw?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        '8hxhndw',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        6,
        'Curso gratuito Laravel 9 INTRO #6 - Criando controller e linkando com as rotas',
        '0 mil visualizações',
        'https://www.youtube.com/embed/isChgZfN27k?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        '1WRHgAj',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        7,
        'Curso gratuito Laravel 9 INTRO #7 - Renderizando views',
        '3 mil visualizações',
        'https://www.youtube.com/embed/Dpgv2RylSB4?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'p5jGFyT',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        8,
        'Curso gratuito Laravel 9 INTRO #8 - Diretivas do blade template',
        '0 mil visualizações',
        'https://www.youtube.com/embed/dxY-x6e5jPE?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'XUcEjXW',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        9,
        'Curso gratuito Laravel 9 INTRO #9 - Criando layouts com blade template',
        '6 mil visualizações',
        'https://www.youtube.com/embed/meaRFfy5cdI?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'khd5ret',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        10,
        'Curso gratuito Laravel 9 INTRO #10 - Injetando assets (css e javascript)',
        '6 mil visualizações',
        'https://www.youtube.com/embed/8M5JuB6Qgx0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        '6lAbwL9',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        11,
        'Curso gratuito Laravel 9 INTRO #11 - Compilando assets (Laravel mix)',
        '5 mil visualizações',
        'https://www.youtube.com/embed/j9p7jlPFvk0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'nZDdi8d',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        12,
        'Curso gratuito Laravel 9 INTRO #12 - Introdução a migrations',
        '3 mil visualizações',
        'https://www.youtube.com/embed/GsMNL4P9YI4?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        '16yCseO',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        13,
        'Curso gratuito Laravel 9 INTRO #13 - Criando models',
        '4 mil visualizações',
        'https://www.youtube.com/embed/8pcFJ4-iTBQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'a3fOXTt',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        14,
        'Curso gratuito Laravel 9 INTRO #14 - Seeders e factories',
        '1 mil visualizações',
        'https://www.youtube.com/embed/MZ7mNIft1XQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'wDAI1CK',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        15,
        'Curso gratuito Laravel 9 INTRO #15 - Introdução ao Eloquent - Pegando registros',
        '1 mil visualizações',
        'https://www.youtube.com/embed/p-vkHYfH3mc?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'zra9rVM',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        16,
        'Curso gratuito Laravel 9 INTRO #16 - Introdução ao Eloquent - Salvando registros',
        '5 mil visualizações',
        'https://www.youtube.com/embed/_xWj5bulbH0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        '_c-2SBQ',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        17,
        'Curso gratuito Laravel 9 INTRO #17 - Introdução ao Eloquent - Atualizando registros',
        '6 mil visualizações',
        'https://www.youtube.com/embed/HV14qNvrwLI?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'ZiQtRfp',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        18,
        'Curso gratuito Laravel 9 INTRO #18 - Introdução ao Eloquent - Deletando registros',
        '9 mil visualizações',
        'https://www.youtube.com/embed/SjQLgxwqh7k?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'vGpKFSY',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        19,
        'Curso gratuito Laravel 9 INTRO #19 - Relacionamento 1 para N',
        '2 mil visualizações',
        'https://www.youtube.com/embed/9ARRTSBp6P8?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'VFgjgtV',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        20,
        'Curso gratuito Laravel 9 INTRO #20 - Relacionamento N para 1',
        '0 mil visualizações',
        'https://www.youtube.com/embed/kdmK38Eo0ew?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'bi98d55',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        21,
        'Curso gratuito Laravel 9 INTRO #21 - Relacionamento N para N',
        '2 mil visualizações',
        'https://www.youtube.com/embed/7hDVuE2hXzQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'HhBb6z3',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        22,
        'Curso gratuito Laravel 9 INTRO #22 - Validação',
        '9 mil visualizações',
        'https://www.youtube.com/embed/KaivlsFU7YI?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'yEShrt_',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        23,
        'Curso gratuito Laravel 9 INTRO #23 - File upload',
        '2 mil visualizações',
        'https://www.youtube.com/embed/Nv6z7BFR0W0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'wHd9rna',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        24,
        'Curso gratuito Laravel 9 INTRO #24 - Paginação',
        '0 mil visualizações',
        'https://www.youtube.com/embed/aW_X1OesitM?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'WWA5fRs',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        25,
        'Curso gratuito Laravel 9 INTRO #25 - Projeto aula 01',
        '6 mil visualizações',
        'https://www.youtube.com/embed/WUunsWINUmw?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'DrOsPRK',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        26,
        'Curso gratuito Laravel 9 INTRO #26 - Projeto aula 02',
        '2 mil visualizações',
        'https://www.youtube.com/embed/shAgpj2PnV8?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'dJV6Cf2',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        27,
        'Curso gratuito Laravel 9 INTRO #27 - Projeto aula 03',
        '7 mil visualizações',
        'https://www.youtube.com/embed/bc0gkFllAPs?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'lYd_kJq',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        28,
        'Curso gratuito Laravel 9 INTRO #28 - Projeto aula 04',
        '7 mil visualizações',
        'https://www.youtube.com/embed/pU3Nh3qwM8g?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'xIB_5EO',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        29,
        'Curso gratuito Laravel 9 INTRO #29 - Projeto aula 05',
        '1 mil visualizações',
        'https://www.youtube.com/embed/BrvTkU2T05g?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'nmDfOUg',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        30,
        'Curso gratuito Laravel 9 INTRO #30 - Projeto aula 06',
        '8 mil visualizações',
        'https://www.youtube.com/embed/DvxOVq97MaU?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        't0ZE_yt',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        31,
        'Curso gratuito Laravel 9 INTRO #31 - Projeto aula 07',
        '7 mil visualizações',
        'https://www.youtube.com/embed/doC4M22vZII?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        '_JB3bru',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        32,
        'Curso gratuito Laravel 9 INTRO #32 - Projeto aula 08',
        '9 mil visualizações',
        'https://www.youtube.com/embed/n_0Eb0Ry1oA?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'Dv9DuC8',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        33,
        'Curso gratuito Laravel 9 INTRO #33 - Projeto aula 09',
        '7 mil visualizações',
        'https://www.youtube.com/embed/AsKHRRDm5cw?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'ek_Msia',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        34,
        'Curso gratuito Laravel 9 INTRO #34 - Projeto aula 10',
        '7 mil visualizações',
        'https://www.youtube.com/embed/yB7_iPjqGJQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        '74kxqmy',
        NULL,
        NULL,
        NULL,
        2,
        '2024-07-26 21:10:07.72222',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        38,
        'Curso de PHP 8   Aula 005   Configurações do PHP',
        NULL,
        'https://www.youtube.com/embed/H9kO0gVSLlo?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/H9kO0gVSLlo/hqdefault.jpg',
        'H9kO0gVSLlo',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '504000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        39,
        'Curso de PHP 8   Aula 006   Diretório Raiz',
        NULL,
        'https://www.youtube.com/embed/BCEbij6HSvY?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/BCEbij6HSvY/hqdefault.jpg',
        'BCEbij6HSvY',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '216000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        40,
        'Curso de PHP 8   Aula 007   Criando arquivos PHP',
        NULL,
        'https://www.youtube.com/embed/mpzERsVDDn4?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/mpzERsVDDn4/hqdefault.jpg',
        'mpzERsVDDn4',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '434000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        41,
        'Curso de PHP 8   Aula 008   Tags de Abertura e de Fechamento do PHP',
        NULL,
        'https://www.youtube.com/embed/uYLqGEMGSf0?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/uYLqGEMGSf0/hqdefault.jpg',
        'uYLqGEMGSf0',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '250000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        42,
        'Curso de PHP 8   Aula 009   Baixando e Instalando Notepad++',
        NULL,
        'https://www.youtube.com/embed/eyln2KpS6Sg?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/eyln2KpS6Sg/hqdefault.jpg',
        'eyln2KpS6Sg',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '245000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        43,
        'Curso de PHP 8   Aula 010   Comandos echo e print',
        NULL,
        'https://www.youtube.com/embed/2VDWrxBeV8Y?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/2VDWrxBeV8Y/hqdefault.jpg',
        '2VDWrxBeV8Y',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '397000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        44,
        'Curso de PHP 8   Aula 011   Tipos de Comentários',
        NULL,
        'https://www.youtube.com/embed/NG17FlQ9hSw?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/NG17FlQ9hSw/hqdefault.jpg',
        'NG17FlQ9hSw',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '257000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        45,
        'Curso de PHP 8   Aula 012   Include e Require',
        NULL,
        'https://www.youtube.com/embed/1umYEonoGas?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/1umYEonoGas/hqdefault.jpg',
        '1umYEonoGas',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '451000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        46,
        'Curso de PHP 8   Aula 013   Baixando e Instalando Visual Studio Code',
        NULL,
        'https://www.youtube.com/embed/dXXL8-Z5uXA?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/dXXL8-Z5uXA/hqdefault.jpg',
        'dXXL8-Z5uXA',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '433000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        47,
        'Curso de PHP 8   Aula 014   PHP Live Server com Autoreload',
        NULL,
        'https://www.youtube.com/embed/ZtLu-uegvBY?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/ZtLu-uegvBY/hqdefault.jpg',
        'ZtLu-uegvBY',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '472000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        48,
        'Curso de PHP 8   Aula 015   Como Criar Funções com PHP',
        NULL,
        'https://www.youtube.com/embed/FSdDqPNQy3s?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/FSdDqPNQy3s/hqdefault.jpg',
        'FSdDqPNQy3s',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '508000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        49,
        'Curso de PHP 8   Aula 016   Variável e Parâmetros',
        NULL,
        'https://www.youtube.com/embed/8SwPVFUh6P4?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/8SwPVFUh6P4/hqdefault.jpg',
        '8SwPVFUh6P4',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '545000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        50,
        'Curso de PHP 8   Aula 017   Tipos de Dados e Retorno',
        NULL,
        'https://www.youtube.com/embed/j_50VZCWgOQ?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/j_50VZCWgOQ/hqdefault.jpg',
        'j_50VZCWgOQ',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '667000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        51,
        'Curso de PHP 8   Aula 018   Estrutura de Controle IF',
        NULL,
        'https://www.youtube.com/embed/Z1XZJ0FT9jc?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/Z1XZJ0FT9jc/hqdefault.jpg',
        'Z1XZJ0FT9jc',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '372000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        52,
        'Curso de PHP 8   Aula 019   Estrutura de Controle ELSEIF e ELSE',
        NULL,
        'https://www.youtube.com/embed/bXb8-F9p9PU?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/bXb8-F9p9PU/hqdefault.jpg',
        'bXb8-F9p9PU',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '415000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        53,
        'Curso de PHP 8   Aula 020   Lista de Funções e Métodos',
        NULL,
        'https://www.youtube.com/embed/j4sSGQAKZPw?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/j4sSGQAKZPw/hqdefault.jpg',
        'j4sSGQAKZPw',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '623000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        54,
        'Curso de PHP 8   Aula 021   Como Criar uma Função para Resumir Textos Passo a Passo',
        NULL,
        'https://www.youtube.com/embed/xIEhn6r0qzw?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/xIEhn6r0qzw/hqdefault.jpg',
        'xIEhn6r0qzw',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '801000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        55,
        'Curso de PHP 8   Aula 022   Limpando TAGS',
        NULL,
        'https://www.youtube.com/embed/jcasYy_g4lg?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/jcasYy_g4lg/hqdefault.jpg',
        'jcasYy_g4lg',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '225000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        56,
        'Curso de PHP 8   Aula 023   Documentação com PHPdoc',
        NULL,
        'https://www.youtube.com/embed/2cTaFqzwqRo?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/2cTaFqzwqRo/hqdefault.jpg',
        '2cTaFqzwqRo',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '627000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        57,
        'Curso de PHP 8   Aula 024   Baixando e Instalando IDE Apache NetBeans',
        NULL,
        'https://www.youtube.com/embed/LAl5U39EdMI?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/LAl5U39EdMI/hqdefault.jpg',
        'LAl5U39EdMI',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '316000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        58,
        'Curso de PHP 8   Aula 025   Criando Projeto na IDE NetBeans',
        NULL,
        'https://www.youtube.com/embed/D5mvl6CgI5E?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/D5mvl6CgI5E/hqdefault.jpg',
        'D5mvl6CgI5E',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '442000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        59,
        'Curso de PHP 8   Aula 026   Operador Ternário',
        NULL,
        'https://www.youtube.com/embed/l2RbRH5QxpA?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/l2RbRH5QxpA/hqdefault.jpg',
        'l2RbRH5QxpA',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '842000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        60,
        'Curso de PHP 8   Aula 027   Definindo Fuso Horário Padrão',
        NULL,
        'https://www.youtube.com/embed/7ajRMX9CpSI?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/7ajRMX9CpSI/hqdefault.jpg',
        '7ajRMX9CpSI',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '281000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        35,
        'Curso de PHP 8   Aula 001   Apresentação do Curso de PHP 8',
        '4 mil visualizações',
        'https://www.youtube.com/embed/O73xbQvGhHk?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/O73xbQvGhHk/hqdefault.jpg',
        'O73xbQvGhHk',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        '10:55',
        '1084000',
        1,
        '2024-07-26 21:10:07.72643',
        '2024-07-26 21:13:30.602',
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        36,
        'Curso de PHP8   Aula 003   Baixando e Instalando o XAMPP',
        '7 mil visualizações',
        'https://www.youtube.com/embed/8DVk8LeuFpc?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/8DVk8LeuFpc/hqdefault.jpg',
        '8DVk8LeuFpc',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        '13:55',
        '399000',
        1,
        '2024-07-26 21:10:07.72643',
        '2024-07-26 21:38:58.944',
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        37,
        'Curso de PHP 8   Aula 004   Configurações Opcionais do XAMPP',
        '5 mil visualizações',
        'https://www.youtube.com/embed/4n_un0Bqsio?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/4n_un0Bqsio/hqdefault.jpg',
        '4n_un0Bqsio',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        '18:55',
        '235000',
        1,
        '2024-07-26 21:10:07.72643',
        '2024-07-26 21:39:25.839',
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        61,
        'Curso de PHP 8   Aula 028   Criando Função Contar Tempo',
        NULL,
        'https://www.youtube.com/embed/DWrugf6OCm4?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/DWrugf6OCm4/hqdefault.jpg',
        'DWrugf6OCm4',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '1662000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        62,
        'Curso de PHP 8   Aula 029   Tipos de Filtros',
        NULL,
        'https://www.youtube.com/embed/iTXf4cS4upk?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/iTXf4cS4upk/hqdefault.jpg',
        'iTXf4cS4upk',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '634000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        63,
        'Curso de PHP 8   Aula 030   É Melhor Criar ou Utilizar um Filtro',
        NULL,
        'https://www.youtube.com/embed/ZRlcnHVJCaE?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/ZRlcnHVJCaE/hqdefault.jpg',
        'ZRlcnHVJCaE',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '606000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        64,
        'Curso de PHP 8   Aula 031   Constantes',
        NULL,
        'https://www.youtube.com/embed/tEx9MQuPB4w?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/tEx9MQuPB4w/hqdefault.jpg',
        'tEx9MQuPB4w',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        NULL,
        '631000',
        1,
        '2024-07-26 21:10:07.72643',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        66,
        'Curso Lógica de Programação Completo 2024 [Iniciantes] + Desafios + Muita prática',
        '4 mil visualizações',
        'https://www.youtube.com/embed/mpzERsVDDn4?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'mpzERsVDDn4',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        '10:55',
        '399000',
        3,
        '2024-07-26 22:47:14.06349',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        67,
        'Curso gratuito Laravel 9 INTRO #2 - O comando Artisan',
        '8 mil visualizações',
        'https://www.youtube.com/embed/q3TYbWaSOqY?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        'https://i.ytimg.com/vi/4n_un0Bqsio/hqdefault.jpg',
        'q3TYbWaSOqY',
        'PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU',
        '13:55',
        '1084000',
        3,
        '2024-07-26 22:48:26.151208',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        69,
        'Curso de PHP 8 Aula 032 Informação do servidor e ambiente de execução',
        '9 mil visualizações',
        'https://youtu.be/qXa1j-t_SkE?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'qXa1j-t_SkE',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        '12:47',
        '12321',
        1,
        '2024-08-12 22:12:53.177098',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        70,
        'Curso de PHP 8 Aula 032 Informação do servidor e ambiente de execução',
        '2 mil visualizações',
        'https://www.youtube.com/embed/qXa1j-t_SkE?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://i.ytimg.com/vi/8DVk8LeuFpc/hqdefault.jpg',
        'qXa1j-t_SkE',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        '12:47',
        '12321',
        1,
        '2024-08-12 22:21:45.355387',
        NULL,
        NULL
    );
INSERT INTO video_curso (
        id,
        titulo,
        descricao,
        url,
        imagem,
        video_id,
        playlist_id,
        tamanho_min,
        tamanho_ms,
        id_grupo,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        71,
        'Curso de PHP 8 Aula 033 Introdução aos Arrays',
        '9 mil visualizações',
        'https://www.youtube.com/embed/TBeKxTqxz88?list=PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        'https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg',
        'TBeKxTqxz88',
        'PL0N5TAOhX5E9eJ9Ix6YUIgEw3lNmaIEE9',
        '21:16',
        '1276000',
        1,
        '2024-08-12 23:34:14.553763',
        NULL,
        NULL
    );


UPDATE video_curso SET codigo = video_id WHERE codigo = '' OR codigo IS NULL;

