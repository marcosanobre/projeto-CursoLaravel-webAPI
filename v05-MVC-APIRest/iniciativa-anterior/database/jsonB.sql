DROP TABLE IF EXISTS video_aulas;

CREATE TABLE "video_aulas" (
  "videos" jsonb
);

INSERT INTO "video_aulas" ("videos")
VALUES ( '{"titulo":"Curso gratuito Laravel 9 INTRO #1 - Introdução e instalação", "descricao":"2 mil visualizações", "url":"https://www.youtube.com/embed/_h7pq2uc6e4?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU", "imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg", "codigo":"56slkfn"}' ),
       ( '{"titulo":"Curso gratuito Laravel 9 INTRO #2 - O comando Artisan", "descricao":"2 mil visualizações", "url":"https://www.youtube.com/embed/q3TYbWaSOqY?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU", "imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg", "codigo":"0ctdJAa"}' );

