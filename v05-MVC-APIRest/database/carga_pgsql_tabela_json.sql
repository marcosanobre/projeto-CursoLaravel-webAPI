DROP TABLE IF EXISTS video_aulas;

CREATE TABLE "video_aulas" (
  "videos" json
);

INSERT INTO "video_aulas" ("videos")
VALUES ('
[
	{	"titulo":"Curso gratuito Laravel 9 INTRO #1 - Introdução e instalação",		
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/_h7pq2uc6e4?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"56slkfn"
	},	
	{	"titulo":"Curso gratuito Laravel 9 INTRO #2 - O comando Artisan",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/q3TYbWaSOqY?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"0ctdJAa"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #3 - Criando rotas parte 1",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/0IX7IgqIIe0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"iiYXb7g"
	},	
	{	"titulo":"Curso gratuito Laravel 9 INTRO #4 - Criando rotas parte 2",
		"descricao":"6 mil visualizações",
		"url":"https://www.youtube.com/embed/hMZHocLHwsk?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"YD_EwYW"
	},	
	{	"titulo":"Curso gratuito Laravel 9 INTRO #5 - A camada request",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/cAyzFcB_8Jw?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"8hxhndw"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #6 - Criando controller e linkando com as rotas",
		"descricao":"0 mil visualizações",
		"url":"https://www.youtube.com/embed/isChgZfN27k?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"1WRHgAj"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #7 - Renderizando views",
		"descricao":"3 mil visualizações",
		"url":"https://www.youtube.com/embed/Dpgv2RylSB4?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"p5jGFyT"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #8 - Diretivas do blade template",
		"descricao":"0 mil visualizações",
		"url":"https://www.youtube.com/embed/dxY-x6e5jPE?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"XUcEjXW"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #9 - Criando layouts com blade template",
		"descricao":"6 mil visualizações",
		"url":"https://www.youtube.com/embed/meaRFfy5cdI?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"khd5ret"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #10 - Injetando assets (css e javascript)",
		"descricao":"6 mil visualizações",
		"url":"https://www.youtube.com/embed/8M5JuB6Qgx0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"6lAbwL9"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #11 - Compilando assets (Laravel mix)",
		"descricao":"5 mil visualizações",
		"url":"https://www.youtube.com/embed/j9p7jlPFvk0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"nZDdi8d"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #12 - Introdução a migrations",
		"descricao":"3 mil visualizações",
		"url":"https://www.youtube.com/embed/GsMNL4P9YI4?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"16yCseO"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #13 - Criando models",
		"descricao":"4 mil visualizações",
		"url":"https://www.youtube.com/embed/8pcFJ4-iTBQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"a3fOXTt"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #14 - Seeders e factories",
		"descricao":"1 mil visualizações",
		"url":"https://www.youtube.com/embed/MZ7mNIft1XQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"wDAI1CK"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #15 - Introdução ao Eloquent - Pegando registros",
		"descricao":"1 mil visualizações",
		"url":"https://www.youtube.com/embed/p-vkHYfH3mc?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"zra9rVM"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #16 - Introdução ao Eloquent - Salvando registros",
		"descricao":"5 mil visualizações",
		"url":"https://www.youtube.com/embed/_xWj5bulbH0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"_c-2SBQ"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #17 - Introdução ao Eloquent - Atualizando registros",
		"descricao":"6 mil visualizações",
		"url":"https://www.youtube.com/embed/HV14qNvrwLI?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"ZiQtRfp"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #18 - Introdução ao Eloquent - Deletando registros",
		"descricao":"9 mil visualizações",
		"url":"https://www.youtube.com/embed/SjQLgxwqh7k?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"vGpKFSY"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #19 - Relacionamento 1 para N",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/9ARRTSBp6P8?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"VFgjgtV"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #20 - Relacionamento N para 1",
		"descricao":"0 mil visualizações",
"url":"https://www.youtube.com/embed/kdmK38Eo0ew?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"bi98d55"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #21 - Relacionamento N para N",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/7hDVuE2hXzQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"HhBb6z3"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #22 - Validação",
		"descricao":"9 mil visualizações",
		"url":"https://www.youtube.com/embed/KaivlsFU7YI?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"yEShrt_"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #23 - File upload",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/Nv6z7BFR0W0?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"wHd9rna"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #24 - Paginação",
		"descricao":"0 mil visualizações",
		"url":"https://www.youtube.com/embed/aW_X1OesitM?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"WWA5fRs"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #25 - Projeto aula 01",
		"descricao":"6 mil visualizações",
		"url":"https://www.youtube.com/embed/WUunsWINUmw?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"DrOsPRK"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #26 - Projeto aula 02",
		"descricao":"2 mil visualizações",
		"url":"https://www.youtube.com/embed/shAgpj2PnV8?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"dJV6Cf2"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #27 - Projeto aula 03",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/bc0gkFllAPs?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"lYd_kJq"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #28 - Projeto aula 04",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/pU3Nh3qwM8g?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"xIB_5EO"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #29 - Projeto aula 05",
		"descricao":"1 mil visualizações",
		"url":"https://www.youtube.com/embed/BrvTkU2T05g?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"nmDfOUg"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #30 - Projeto aula 06",
		"descricao":"8 mil visualizações",
		"url":"https://www.youtube.com/embed/DvxOVq97MaU?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"t0ZE_yt"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #31 - Projeto aula 07",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/doC4M22vZII?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"_JB3bru"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #32 - Projeto aula 08",
		"descricao":"9 mil visualizações",
		"url":"https://www.youtube.com/embed/n_0Eb0Ry1oA?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"Dv9DuC8"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #33 - Projeto aula 09",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/AsKHRRDm5cw?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"ek_Msia"
	},
	{	"titulo":"Curso gratuito Laravel 9 INTRO #34 - Projeto aula 10",
		"descricao":"7 mil visualizações",
		"url":"https://www.youtube.com/embed/yB7_iPjqGJQ?list=PLcoYAcR89n-reidRFA3XCIvQPeKFt4dQU",
		"imagem":"https://purr.objects-us-east-1.dream.io/i/OoNx6.jpg",
		"codigo":"74kxqmy"
	}
]
		');

