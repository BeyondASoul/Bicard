import 'package:flutter/foundation.dart';

class Categorias{
  final int categoriaID;
  final String categoria;
  final String imagenCategoria;
  final List<Info> list;

  Categorias(
    this.categoriaID,
    {
      @required this.categoria,
      @required this.imagenCategoria,
      @required this.list
    }
  );
}


class Info {
  final int id;
  final String es;
  final String presente;
  final String pasado;
  final String participio;
  final String pronunciacion1;
  final String pronunciacion2;
  final String pronunciacion3;
  final String image;
  
  Info(
    this.id, 
    {
      @required this.es,
      @required this.presente,
      this.pasado,
      this.participio,
      @required this.pronunciacion1,
      this.pronunciacion2,
      this.pronunciacion3,
      @required this.image,
    }
  );
}

class ColorPagina {
  final int idiomaid;
  final String idioma;
  final String imageIdioma;
  final int colorPrincipal;
  final int colorTextoPrincipal;
  final int colorTextoSecundario;
  final int colorTextoTarjeta;
  final int colorTextoTarjetaSecundario;
  final int colorTarjetaFondo;
  final int colorElementosFaltantes;
  final int colorElementoActual;
  final List<Categorias> categorias;
  
  ColorPagina(
    this.idiomaid,
    {
      @required this.idioma,
      @required this.imageIdioma,
      @required this.colorPrincipal,
      @required this.colorTextoPrincipal,
      @required this.colorTextoSecundario,
      @required this.colorTextoTarjeta,
      @required this.colorTextoTarjetaSecundario,
      @required this.colorTarjetaFondo,
      @required this.colorElementosFaltantes,
      @required this.colorElementoActual,
      @required this.categorias,
      }
  );
}

List<ColorPagina> colorPagina = [
  ColorPagina(1, 
  idioma: 'Inglés',
  imageIdioma: 'assets/en.png',
  colorPrincipal: 0xFFCC444B,
  colorTextoPrincipal: 0xFFDFBEBA,
  colorTextoSecundario: 0x90DFBEBA,
  colorTextoTarjeta: 0xFFCC444B,
  colorTextoTarjetaSecundario: 0x90CC444B,
  colorTarjetaFondo: 0xFFDFBEBA,
  colorElementosFaltantes: 0x90DFBEBA,
  colorElementoActual: 0xFFDFBEBA,
  categorias: [
    Categorias(1,categoria: 'Verbos',imagenCategoria: 'assets/speak.png',
    list: [
  Info (1,
  es: 'Llorar',
  presente: 'Cry',
  pasado: 'Cried',
  participio: 'Cried',
  pronunciacion1: 'Crai',
  pronunciacion2: 'Craid',
  pronunciacion3: 'Craid',
  image: 'assets/cry.png'),
  Info(2, 
  es: 'Correr',
  presente: 'Run',
  pasado: 'Ran',
  participio: 'Run',
  pronunciacion1: 'Ron',
  pronunciacion2: 'Ran',
  pronunciacion3: 'Ron',
  image: 'assets/run.png'),
  Info(3, 
  es: 'Cargar',
  presente: 'Carry',
  pasado: 'Carried',
  participio: 'Carried',
  pronunciacion1: 'Kerri',
  pronunciacion2: 'Kerrid',
  pronunciacion3: 'Kerrid',
  image: 'assets/carry.png'),
  Info(4, 
  es: 'Observar',
  presente: 'Watch',
  pasado: 'Watched',
  participio: 'Watched',
  pronunciacion1: 'Uatch',
  pronunciacion2: 'Uatcht',
  pronunciacion3: 'Uatcht',
  image: 'assets/watch.png'),
  Info(5, 
  es: 'Volar',
  presente: 'Fly',
  pasado: 'Flew',
  participio: 'Flown',
  pronunciacion1: 'Flai',
  pronunciacion2: 'Fliu',
  pronunciacion3: 'Floun',
  image: 'assets/fly.png'),
  Info(6, 
  es: 'Nadar',
  presente: 'Swim',
  pasado: 'Swam',
  participio: 'Swum',
  pronunciacion1: 'Suim',
  pronunciacion2: 'Suam',
  pronunciacion3: 'Sum',
  image: 'assets/swim.png'),
  Info(7, 
  es: 'Escuchar',
  presente: 'Listen',
  pasado: 'Listened',
  participio: 'Listened',
  pronunciacion1: 'Lisen',
  pronunciacion2: 'Lisent',
  pronunciacion3: 'Lisent',
  image: 'assets/listen.png'),
  Info(8, 
  es: 'Oler',
  presente: 'Smell',
  pasado: 'Smelled',
  participio: 'Smelled',
  pronunciacion1: 'Smel',
  pronunciacion2: 'Smelt',
  pronunciacion3: 'Smelt',
  image: 'assets/smell.png'),
  Info(9,
  es: 'Lavar',
  presente: 'Wash',
  pasado: 'Washed',
  participio: 'Washed',
  pronunciacion1: 'Uash',
  pronunciacion2: 'Uasht',
  pronunciacion3: 'Uasht',
  image: 'assets/wash.png'),
  Info(10,
  es: 'Mostrar',
  presente: 'Show',
  pasado: 'Showed',
  participio: 'Showed',
  pronunciacion1: 'Shou',
  pronunciacion2: 'Shouwd',
  pronunciacion3: 'Shouwd',
  image: 'assets/show.png'),
  Info(11, 
  es: 'Jugar',
  presente: 'Play',
  pasado: 'Played',
  participio: 'Played',
  pronunciacion1: 'Plei',
  pronunciacion2: 'Pleied',
  pronunciacion3: 'Pleied',
  image: 'assets/play.png'),
  Info(12, 
  es: 'Guardar',
  presente: 'Save',
  pasado: 'Saved',
  participio: 'Saved',
  pronunciacion1: 'Seib',
  pronunciacion2: 'Seibt',
  pronunciacion3: 'Seibt',
  image: 'assets/save.png'),
  Info(13, 
  es: 'Aprender',
  presente: 'Learn',
  pasado: 'Learned',
  participio: 'Learned',
  pronunciacion1: 'Lern',
  pronunciacion2: 'Lernt',
  pronunciacion3: 'Lernt',
  image: 'assets/learn.png'),
  Info(14, 
  es: 'Ayudar',
  presente: 'Help',
  pasado: 'Helped',
  participio: 'Helped',
  pronunciacion1: 'Jelp',
  pronunciacion2: 'Jelpt',
  pronunciacion3: 'Jelpt',
  image: 'assets/help.png'),
  Info(15, 
  es: 'Platicar',
  presente: 'Talk',
  pasado: 'Talked',
  participio: 'Talked',
  pronunciacion1: 'Tok',
  pronunciacion2: 'Tokt',
  pronunciacion3: 'Tokt',
  image: 'assets/talk.png'),
  Info(16, 
  es: 'Limpiar',
  presente: 'Clean',
  pasado: 'Cleaned',
  participio: 'Cleaned',
  pronunciacion1: 'Clin',
  pronunciacion2: 'Clint',
  pronunciacion3: 'Clint',
  image: 'assets/clean.png'),
  Info(17, 
  es: 'Vender',
  presente: 'Sell',
  pasado: 'Sold',
  participio: 'Sold',
  pronunciacion1: 'Sel',
  pronunciacion2: 'Sold',
  pronunciacion3: 'Sold',
  image: 'assets/sell.png'),
  Info(18, 
  es: 'Pintar',
  presente: 'Paint',
  pasado: 'Painted',
  participio: 'Painted',
  pronunciacion1: 'Peint',
  pronunciacion2: 'Peined',
  pronunciacion3: 'Peined',
  image: 'assets/paint.png'),
  Info(19, 
  es: 'Saltar',
  presente: 'Jump',
  pasado: 'Jumped',
  participio: 'Jumped',
  pronunciacion1: 'Yomp',
  pronunciacion2: 'Yompt',
  pronunciacion3: 'Yompt',
  image: 'assets/jump.png'),
  Info(20, 
  es: 'Dormir',
  presente: 'Sleep',
  pasado: 'Slept',
  participio: 'Slept',
  pronunciacion1: 'Slip',
  pronunciacion2: 'Slept',
  pronunciacion3: 'Slept',
  image: 'assets/sleep.png'),
  Info(21, 
  es: 'Conducir',
  presente: 'Drive',
  pasado: 'Drove',
  participio: 'Driven',
  pronunciacion1: 'Draib',
  pronunciacion2: 'Droub',
  pronunciacion3: 'Draiben',
  image: 'assets/drive.png'),
  Info(22, 
  es: 'Cantar',
  presente: 'Sing',
  pasado: 'Sang',
  participio: 'Sung',
  pronunciacion1: 'Sinj',
  pronunciacion2: 'Sanj',
  pronunciacion3: 'Sunj',
  image: 'assets/sing.png'),
  Info(23, 
  es: 'Bailar',
  presente: 'Dance',
  pasado: 'Danced',
  participio: 'Danced',
  pronunciacion1: 'Dens',
  pronunciacion2: 'Denst',
  pronunciacion3: 'Denst',
  image: 'assets/dance.png'),
  Info(24, 
  es: 'Descansar',
  presente: 'Rest',
  pasado: 'Rested',
  participio: 'Rested',
  pronunciacion1: 'Rest',
  pronunciacion2: 'Rested',
  pronunciacion3: 'Rested',
  image: 'assets/rest.png'),
  Info(25, 
  es: 'Llover',
  presente: 'Rain',
  pasado: 'Rained',
  participio: 'Rained',
  pronunciacion1: 'Rein',
  pronunciacion2: 'Reint',
  pronunciacion3: 'Reint',
  image: 'assets/rain.png'),
  Info(26, 
  es: 'Despertar',
  presente: 'Wake Up',
  pasado: 'Woke Up',
  participio: 'Woken Up',
  pronunciacion1: 'Ueik Op',
  pronunciacion2: 'Uouk Op',
  pronunciacion3: 'Uouken Op',
  image: 'assets/wake.png'),
  Info(27, 
  es: 'Agarrar',
  presente: 'Take',
  pasado: 'Took',
  participio: 'Taken',
  pronunciacion1: 'Teik',
  pronunciacion2: 'Tuk',
  pronunciacion3: 'Teiken',
  image: 'assets/take.png'),
  Info(28, 
  es: 'Hablar',
  presente: 'Speak',
  pasado: 'Spoke',
  participio: 'Spoken',
  pronunciacion1: 'Spik',
  pronunciacion2: 'Spouk',
  pronunciacion3: 'Spouken',
  image: 'assets/speak.png'),
  Info(29, 
  es: 'Enseñar',
  presente: 'Teach',
  pasado: 'Taught',
  participio: 'Taught',
  pronunciacion1: 'Tich',
  pronunciacion2: 'Taujt',
  pronunciacion3: 'Taujt',
  image: 'assets/teach.png'),
  Info(30, 
  es: 'Pensar',
  presente: 'Think',
  pasado: 'Thought',
  participio: 'Thought',
  pronunciacion1: 'Dtink',
  pronunciacion2: 'Dtoujt',
  pronunciacion3: 'Dtoujt',
  image: 'assets/think.png'),
  Info(31, 
  es: 'Hacer',
  presente: 'Make',
  pasado: 'Made',
  participio: 'Made',
  pronunciacion1: 'Meik',
  pronunciacion2: 'Meid',
  pronunciacion3: 'Meid',
  image: 'assets/make.png'),
  Info(32, 
  es: 'Dar',
  presente: 'Give',
  pasado: 'Gave',
  participio: 'Given',
  pronunciacion1: 'Gib',
  pronunciacion2: 'Geib',
  pronunciacion3: 'Giben',
  image: 'assets/give.png'),
  Info(33, 
  es: 'Jalar',
  presente: 'Pull',
  pasado: 'Pulled',
  participio: 'Pulled',
  pronunciacion1: 'Pul',
  pronunciacion2: 'Pult',
  pronunciacion3: 'Pult',
  image: 'assets/pull.png'),
  Info(34, 
  es: 'Tener',
  presente: 'Have',
  pasado: 'Had',
  participio: 'Had',
  pronunciacion1: 'Jab',
  pronunciacion2: 'Jad',
  pronunciacion3: 'Jad',
  image: 'assets/have.png'),
  Info(35, 
  es: 'Empujar',
  presente: 'Push',
  pasado: 'Pushed',
  participio: 'Pushed',
  pronunciacion1: 'Push',
  pronunciacion2: 'Pusht',
  pronunciacion3: 'Pusht',
  image: 'assets/push.png'),
  Info(36, 
  es: 'Contar',
  presente: 'Tell',
  pasado: 'Told',
  participio: 'Told',
  pronunciacion1: 'Tel',
  pronunciacion2: 'Told',
  pronunciacion3: 'Told',
  image: 'assets/tell.png'),
  Info(37, 
  es: 'Levantarse',
  presente: 'Get Up',
  pasado: 'Got Up',
  participio: 'Got Up',
  pronunciacion1: 'Get Op',
  pronunciacion2: 'Got Op',
  pronunciacion3: 'Got Op',
  image: 'assets/getup.png'),
  Info(38, 
  es: 'Escribir',
  presente: 'Write',
  pasado: 'Wrote',
  participio: 'Written',
  pronunciacion1: 'Wrait',
  pronunciacion2: 'Wrout',
  pronunciacion3: 'Writen',
  image: 'assets/write.png'),
  Info(39, 
  es: 'Cortar',
  presente: 'Cut',
  pasado: 'Cut',
  participio: 'Cut',
  pronunciacion1: 'Cat',
  pronunciacion2: 'Cat',
  pronunciacion3: 'Cat',
  image: 'assets/cut.png'),
  Info(40, 
  es: 'Mirar',
  presente: 'Look At',
  pasado: 'Looked At',
  participio: 'Looked At',
  pronunciacion1: 'Luk At',
  pronunciacion2: 'Lukt At',
  pronunciacion3: 'Lukt At',
  image: 'assets/look.png'),
  Info(41, 
  es: 'Vivir',
  presente: 'Live',
  pasado: 'Lived',
  participio: 'Lived',
  pronunciacion1: 'Lib',
  pronunciacion2: 'Libt',
  pronunciacion3: 'Libt',
  image: 'assets/live.png'),
  Info(42, 
  es: 'Dibujar',
  presente: 'Draw',
  pasado: 'Drew',
  participio: 'Drawn',
  pronunciacion1: 'Drau',
  pronunciacion2: 'Driu',
  pronunciacion3: 'Draun',
  image: 'assets/draw.png'),
  Info(43, 
  es: 'Escuchar',
  presente: 'Hear',
  pasado: 'Heard',
  participio: 'Heard',
  pronunciacion1: 'Jir',
  pronunciacion2: 'Jerd',
  pronunciacion3: 'Jerd',
  image: 'assets/hear.png'),
  Info(44,
  es: 'Trabajar',
  presente: 'Work',
  pasado: 'Worked',
  participio: 'Worked',
  pronunciacion1: 'Uork',
  pronunciacion2: 'Uorkt',
  pronunciacion3: 'Uorkt',
  image: 'assets/work.png'),
  Info(45, 
  es: 'Permanecer',
  presente: 'Stay',
  pasado: 'Stayed',
  participio: 'Stayed',
  pronunciacion1: 'Stei',
  pronunciacion2: 'Steit',
  pronunciacion3: 'Steit',
  image: 'assets/stay.png'),
  Info(46, 
  es: 'Traer',
  presente: 'Bring',
  pasado: 'Brought',
  participio: 'Brought',
  pronunciacion1: 'Brinj',
  pronunciacion2: 'Broujt',
  pronunciacion3: 'Broujt',
  image: 'assets/bring.png'),
  Info(47, 
  es: 'Venir',
  presente: 'Come',
  pasado: 'Came',
  participio: 'Come',
  pronunciacion1: 'Kom',
  pronunciacion2: 'Keim',
  pronunciacion3: 'Kom',
  image: 'assets/come.png'),
  Info(48, 
  es: 'Estudiar',
  presente: 'Study',
  pasado: 'Studied',
  participio: 'Studied',
  pronunciacion1: 'Stadi',
  pronunciacion2: 'Stadit',
  pronunciacion3: 'Stadit',
  image: 'assets/study.png'),
  Info(49, 
  es: 'Montar',
  presente: 'Ride',
  pasado: 'Rode',
  participio: 'Ridden',
  pronunciacion1: 'Raid',
  pronunciacion2: 'Roud',
  pronunciacion3: 'Raiden',
  image: 'assets/ride.png'),
  Info(50, 
  es: 'Caminar',
  presente: 'Walk',
  pasado: 'Walked',
  participio: 'Walked',
  pronunciacion1: 'Uok',
  pronunciacion2: 'Uokt',
  pronunciacion3: 'Uokt',
  image: 'assets/walk.png'),
  Info(51, 
  es: 'Ir',
  presente: 'Go',
  pasado: 'Went',
  participio: 'Gone',
  pronunciacion1: 'Gou',
  pronunciacion2: 'Uent',
  pronunciacion3: 'Gon',
  image: 'assets/go.png'),
  Info(52, 
  es: 'Comer',
  presente: 'Eat',
  pasado: 'Ate',
  participio: 'Eaten',
  pronunciacion1: 'It',
  pronunciacion2: 'Eit',
  pronunciacion3: 'Iten',
  image: 'assets/eat.png'),
  Info(53, 
  es: 'Comprar',
  presente: 'Buy',
  pasado: 'Bought',
  participio: 'Bought',
  pronunciacion1: 'Bai',
  pronunciacion2: 'Boujt',
  pronunciacion3: 'Boujt',
  image: 'assets/buy.png'),
  Info(54, 
  es: 'Beber',
  presente: 'Drink',
  pasado: 'Drank',
  participio: 'Drunk',
  pronunciacion1: 'Drink',
  pronunciacion2: 'Drank',
  pronunciacion3: 'Dronk',
  image: 'assets/drink.png'),
  Info(55, 
  es: 'Ver',
  presente: 'See',
  pasado: 'Saw',
  participio: 'Seen',
  pronunciacion1: 'Sii',
  pronunciacion2: 'Sau',
  pronunciacion3: 'Siin',
  image: 'assets/see.png'),
  Info(56, 
  es: 'Leer',
  presente: 'Read',
  pasado: 'Read',
  participio: 'Read',
  pronunciacion1: 'Riid',
  pronunciacion2: 'Redt',
  pronunciacion3: 'Redt',
  image: 'assets/read.png'),
  Info(57, 
  es: 'Preguntar',
  presente: 'Ask',
  pasado: 'Asked',
  participio: 'Asked',
  pronunciacion1: 'Ask',
  pronunciacion2: 'Askt',
  pronunciacion3: 'Askt',
  image: 'assets/ask.png'),
  Info(58, 
  es: 'Decir',
  presente: 'Say',
  pasado: 'Said',
  participio: 'Said',
  pronunciacion1: 'Sei',
  pronunciacion2: 'Sed',
  pronunciacion3: 'Sed',
  image: 'assets/say.png'),
  Info(59, 
  es: 'Responder',
  presente: 'Answer',
  pasado: 'Answered',
  participio: 'Answered',
  pronunciacion1: 'Enser',
  pronunciacion2: 'Ensert',
  pronunciacion3: 'Ensert',
  image: 'assets/answer.png'),],
    ),
    Categorias(2,categoria: 'Sustantivos',imagenCategoria: 'assets/highheels.png',
    list: 
      [
        Info(1,
        es: 'Cuchara',
        presente: 'Spoon',
        pronunciacion1: 'Spuun',
        image: 'assets/spoon.png',
        ),
        Info(2,
        es: 'Tenedor',
        presente: 'Fork',
        pronunciacion1: 'Fork',
        image: 'assets/fork.png',
        ),
        Info(3,
        es: 'Cuchillo',
        presente: 'Knife',
        pronunciacion1: 'Knaif',
        image: 'assets/knife.png',
        ),
        Info(4,
        es: 'Plato',
        presente: 'Plate',
        pronunciacion1: 'Pleit',
        image: 'assets/plate.png',
        ),
        Info(5,
        es: 'Vaso/Copa',
        presente: 'Glass',
        pronunciacion1: 'Glass',
        image: 'assets/glass.png',
        ),
        Info(6,
        es: 'Taza',
        presente: 'Cup',
        pronunciacion1: 'Kop',
        image: 'assets/cup.png',
        ),
        Info(7,
        es: 'Sartén',
        presente: 'Skillet',
        pronunciacion1: 'Skilet',
        image: 'assets/skillet.png',
        ),
        Info(8,
        es: 'Tazón',
        presente: 'Bowl',
        pronunciacion1: 'Boul',
        image: 'assets/bowl.png',
        ),
        Info(9,
        es: 'Popote',
        presente: 'Straw',
        pronunciacion1: 'Strau',
        image: 'assets/straw.png',
        ),
        Info(10,
        es: 'Pan',
        presente: 'Bread',
        pronunciacion1: 'Bred',
        image: 'assets/bread.png',
        ),
        Info(11,
        es: 'Arroz',
        presente: 'Rice',
        pronunciacion1: 'Rais',
        image: 'assets/rice.png',
        ),
        Info(12,
        es: 'Mantequilla',
        presente: 'Butter',
        pronunciacion1: 'Bater',
        image: 'assets/butter.png',
        ),
        Info(13,
        es: 'Huevo',
        presente: 'Egg',
        pronunciacion1: 'Eɡ',
        image: 'assets/egg.png',
        ),
        Info(14,
        es: 'Helado',
        presente: 'Ice Cream',
        pronunciacion1: 'Ais Krim',
        image: 'assets/icecream.png',
        ),
        Info(15,
        es: 'Hielo',
        presente: 'Ice',
        pronunciacion1: 'Ais',
        image: 'assets/ice.png',
        ),
        Info(16,
        es: 'Pepino',
        presente: 'Cucumber',
        pronunciacion1: 'Kiucumber',
        image: 'assets/cucumber.png',
        ),
        Info(17,
        es: 'Uvas',
        presente: 'Grapes',
        pronunciacion1: 'Greips',
        image: 'assets/grapes.png',
        ),
        Info(18,
        es: 'Melón',
        presente: 'Melon',
        pronunciacion1: 'Mélon',
        image: 'assets/melon.png',
        ),
        Info(19,
        es: 'Agua',
        presente: 'Water',
        pronunciacion1: 'Guarer',
        image: 'assets/water.png',
        ),
        Info(20,
        es: 'Sandía',
        presente: 'Watermelon',
        pronunciacion1: 'Guarermélon',
        image: 'assets/watermelon.png',
        ),
        Info(21,
        es: 'Mandarina',
        presente: 'Tangerine',
        pronunciacion1: 'Tenyerín',
        image: 'assets/tangerine.png',
        ),
        Info(22,
        es: 'Limón',
        presente: 'Lemon',
        pronunciacion1: 'Lémon',
        image: 'assets/lemon.png',
        ),
        Info(23,
        es: 'Manzana',
        presente: 'Apple',
        pronunciacion1: 'Apol',
        image: 'assets/apple.png',
        ),
        Info(24,
        es: 'Piña',
        presente: 'Pineapple',
        pronunciacion1: 'Painapol',
        image: 'assets/pineapple.png',
        ),
        Info(25,
        es: 'Papa',
        presente: 'Potato',
        pronunciacion1: 'Poteiro',
        image: 'assets/potato.png',
        ),
        Info(26,
        es: 'Aguacate',
        presente: 'Avocado',
        pronunciacion1: 'Avocarou',
        image: 'assets/avocado.png',
        ),
        Info(27,
        es: 'Mango',
        presente: 'Mango',
        pronunciacion1: 'Mengou',
        image: 'assets/mango.png',
        ),
        Info(28,
        es: 'Pera',
        presente: 'Pear',
        pronunciacion1: 'Per',
        image: 'assets/pear.png',
        ),
        Info(29,
        es: 'Durazno',
        presente: 'Peach',
        pronunciacion1: 'Pich',
        image: 'assets/peach.png',
        ),
        Info(30,
        es: 'Tomate',
        presente: 'Tomato',
        pronunciacion1: 'Tomeiro',
        image: 'assets/tomato.png',
        ),
        Info(31,
        es: 'Zanahoria',
        presente: 'Carrot',
        pronunciacion1: 'Kerrot',
        image: 'assets/carrot.png',
        ),
        Info(32,
        es: 'Ajo',
        presente: 'Garlic',
        pronunciacion1: 'Garlik',
        image: 'assets/garlic.png',
        ),
        Info(33,
        es: 'Cebolla',
        presente: 'Onion',
        pronunciacion1: 'Onion',
        image: 'assets/onion.png',
        ),
        Info(34,
        es: 'Mano',
        presente: 'Hand',
        pronunciacion1: 'Jend',
        image: 'assets/hand.png',
        ),
        Info(35,
        es: 'Brazo',
        presente: 'Arm',
        pronunciacion1: 'Arm',
        image: 'assets/arm.png',
        ),
        Info(36,
        es: 'Pierna',
        presente: 'Leg',
        pronunciacion1: 'Leg',
        image: 'assets/leg.png',
        ),
        Info(37,
        es: 'Pie',
        presente: 'Foot',
        pronunciacion1: 'Fut',
        image: 'assets/foot.png',
        ),
        Info(38,
        es: 'Uña',
        presente: 'Nail',
        pronunciacion1: 'Neil',
        image: 'assets/nail.png',
        ),
        Info(39,
        es: 'Oido',
        presente: 'Ear',
        pronunciacion1: 'Ir',
        image: 'assets/ear.png',
        ),
        Info(40,
        es: 'Nariz',
        presente: 'Nose',
        pronunciacion1: 'Nous',
        image: 'assets/nose.png',
        ),
        Info(41,
        es: 'Diente',
        presente: 'Tooth',
        pronunciacion1: 'Tiudd',
        image: 'assets/tooth.png',
        ),
        Info(42,
        es: 'Hueso',
        presente: 'Bone',
        pronunciacion1: 'Boun',
        image: 'assets/bone.png',
        ),
        Info(43,
        es: 'Ojo',
        presente: 'Eye',
        pronunciacion1: 'Aai',
        image: 'assets/eye.png',
        ),
        Info(44,
        es: 'Lengua',
        presente: 'Tongue',
        pronunciacion1: 'Tong',
        image: 'assets/tongue.png',
        ),
        Info(45,
        es: 'Boca',
        presente: 'Mouth',
        pronunciacion1: 'Mauhd',
        image: 'assets/mouth.png',
        ),
        Info(46,
        es: 'Lentes',
        presente: 'Glasses',
        pronunciacion1: 'Glasses',
        image: 'assets/glasses.png',
        ),
        Info(47,
        es: 'Sol',
        presente: 'Sun',
        pronunciacion1: 'Son',
        image: 'assets/sun.png',
        ),
        Info(48,
        es: 'Lentes de Sol',
        presente: 'Sunglasses',
        pronunciacion1: 'Songlasses',
        image: 'assets/sunglasses.png',
        ),
        Info(49,
        es: 'Gafas Protectoras',
        presente: 'Goggles',
        pronunciacion1: 'Gaggls',
        image: 'assets/goggles.png',
        ),
        Info(50,
        es: 'Chaleco',
        presente: 'Vest',
        pronunciacion1: 'Vest',
        image: 'assets/vest.png',
        ),
        Info(51,
        es: 'Saco',
        presente: 'Coat',
        pronunciacion1: 'Cout',
        image: 'assets/coat.png',
        ),
        Info(52,
        es: 'Guantes',
        presente: 'Gloves',
        pronunciacion1: 'Globs',
        image: 'assets/gloves.png',
        ),
        Info(53,
        es: 'Pantalones',
        presente: 'Jeans',
        pronunciacion1: 'Yins',
        image: 'assets/jeans.png',
        ),
        Info(54,
        es: 'Bufanda',
        presente: 'Scarf',
        pronunciacion1: 'Scarf',
        image: 'assets/scarf.png',
        ),
        Info(55,
        es: 'Calcetines',
        presente: 'Socks',
        pronunciacion1: 'Soks',
        image: 'assets/socks.png',
        ),
        Info(56,
        es: 'Playera',
        presente: 'T-Shirt',
        pronunciacion1: 'Tishert',
        image: 'assets/tshirt.png',
        ),
        Info(57,
        es: 'Vestido',
        presente: 'Dress',
        pronunciacion1: 'Dress',
        image: 'assets/dress.png',
        ),
        Info(58,
        es: 'Gorra',
        presente: 'Cap',
        pronunciacion1: 'Cap',
        image: 'assets/cap.png',
        ),
        Info(59,
        es: 'Bolsa',
        presente: 'Bag',
        pronunciacion1: 'Baj',
        image: 'assets/bag.png',
        ),
        Info(60,
        es: 'Sombrero',
        presente: 'Hat',
        pronunciacion1: 'Jat',
        image: 'assets/hat.png',
        ),
        Info(61,
        es: 'Tacones',
        presente: 'High Heels',
        pronunciacion1: 'Jai Jiils',
        image: 'assets/highheels.png',
        ),
        Info(62,
        es: 'Monedero',
        presente: 'Purse',
        pronunciacion1: 'Purs',
        image: 'assets/purse.png',
        ),
        Info(63,
        es: 'Zapato',
        presente: 'Shoe',
        pronunciacion1: 'Shu',
        image: 'assets/shoe.png',
        ),
        Info(64,
        es: 'Pantalon Corto',
        presente: 'Shorts',
        pronunciacion1: 'Shorts',
        image: 'assets/shorts.png',
        ),
        Info(65,
        es: 'Traje de Baño',
        presente: 'Swimsuit',
        pronunciacion1: 'Suimsuit',
        image: 'assets/swimsuit.png',
        ),
      ],
    ),
    Categorias(3, categoria: 'Pronombres',imagenCategoria: 'assets/answer.png',
    list: [
      Info(1,
        es: 'Yo',
        presente: 'I',
        pronunciacion1: 'Ai',
        pasado: 'Ser/Estar: Am',
        pronunciacion2: 'Am',
        image: 'assets/i.png',
      ),
      Info(2,
        es: 'Tú',
        presente: 'You',
        pronunciacion1: 'Yu',
        pasado: 'Ser/Estar: Are',
        pronunciacion2: 'Ar',
        image: 'assets/you.png',
      ),
      Info(3,
        es: 'Él',
        presente: 'He',
        pronunciacion1: 'Ji',
        pasado: 'Ser/Estar: Is',
        pronunciacion2: 'Is',
        image: 'assets/he.png',
      ),
      Info(4,
        es: 'Ella',
        presente: 'She',
        pronunciacion1: 'Shi',
        pasado: 'Ser/Estar: Is',
        pronunciacion2: 'Is',
        image: 'assets/she.png',
      ),
      Info(5,
        es: 'Eso',
        presente: 'It',
        pronunciacion1: 'It',
        pasado: 'Ser/Estar: Is',
        pronunciacion2: 'Is',
        image: 'assets/it.png',
      ),
      Info(6,
        es: 'Nosotros',
        presente: 'We',
        pronunciacion1: 'Wi',
        pasado: 'Ser/Estar: Are',
        pronunciacion2: 'Ar',
        image: 'assets/plural.png',
      ),
      Info(1,
        es: 'Ustedes',
        presente: 'You',
        pronunciacion1: 'Yu',
        pasado: 'Ser/Estar: Are',
        pronunciacion2: 'Are',
        image: 'assets/plural.png',
      ),
      Info(1,
        es: 'Ellos/Ellas',
        presente: 'They',
        pronunciacion1: 'Dei',
        pasado: 'Ser/Estar: Are',
        pronunciacion2: 'Ar',
        image: 'assets/plural.png',
      ),
    ]

    )
  ],
  ),
  ColorPagina(2,
  idioma: 'Alemán',
  imageIdioma: 'assets/ge.png',
  colorPrincipal: 0xFFFFAA5A,
  colorTextoPrincipal: 0xFF50514F,
  colorTextoSecundario: 0x9050514F,
  colorTextoTarjeta: 0xFF50514F,
  colorTextoTarjetaSecundario: 0x9050514F,
  colorTarjetaFondo: 0xFFfaedcb,
  colorElementosFaltantes: 0x9050514F,
  colorElementoActual: 0xFF50514F,
  categorias: [
    Categorias(1,categoria: 'Verbos',imagenCategoria: 'assets/verbos.png',
    list: [
  Info (1,
  es: 'Llorar',
  presente: 'Weinen',
  pasado: 'Weinte',
  participio: 'Geweint',
  pronunciacion1: 'Bainen',
  pronunciacion2: 'Bainte',
  pronunciacion3: 'Gebaint',
  image: 'assets/cry.png'),
  Info(2, 
  es: 'Correr',
  presente: 'Laufen',
  pasado: 'Lief',
  participio: 'Gelaufen',
  pronunciacion1: 'Laufn',
  pronunciacion2: 'Lif',
  pronunciacion3: 'Gelaufn',
  image: 'assets/run.png'),
  ],
  ),
    Categorias(2,categoria: 'Sustantivos',imagenCategoria: 'assets/sustantivos.png',
    list: 
      [
        Info(1,
        es: 'Cuchara',
        presente: 'Der Löffel',
        pronunciacion1: 'Der Loeffl',
        image: 'assets/spoon.png',
        ),
        Info(2,
        es: 'Tenedor',
        presente: 'Die Gabel',
        pronunciacion1: 'Die Gabe',
        image: 'assets/fork.png',
        ),
        Info(3,
        es: 'Cuchillo',
        presente: 'Das Messer',
        pronunciacion1: 'Das Messa',
        image: 'assets/knife.png',
        ),
      ],
    ),
  ],
  ),
  ColorPagina(3,
  idioma: 'Ruso',
  imageIdioma: 'assets/ru.png',
  colorPrincipal: 0xFF0466c8,
  colorTextoPrincipal: 0xFFe0fbfc,
  colorTextoSecundario: 0x90e0fbfc,
  colorTextoTarjeta: 0xFF0466c8,
  colorTextoTarjetaSecundario: 0x900466c8,
  colorTarjetaFondo: 0xFFe0fbfc,
  colorElementosFaltantes: 0x90e0fbfc,
  colorElementoActual: 0xFFe0fbfc,
  categorias: [
    Categorias(1,categoria: 'Verbos',imagenCategoria: 'assets/verbos.png',
    list: [
  Info (1,
  es: 'Llorar',
  presente: 'Плач',
  pronunciacion1: 'Plach',
  image: 'assets/cry.png'),
  Info(2, 
  es: 'Correr',
  presente: 'Бегать',
  pronunciacion1: 'Begat',
  image: 'assets/run.png'),
  ],
  ),
    Categorias(2,categoria: 'Sustantivos',imagenCategoria: 'assets/sustantivos.png',
    list: 
      [
        Info(1,
        es: 'Cuchara',
        presente: 'Ложка',
        pronunciacion1: 'Lozhka',
        image: 'assets/spoon.png',
        ),
        Info(1,
        es: 'Tenedor',
        presente: 'вилка',
        pronunciacion1: 'Vilka',
        image: 'assets/fork.png',
        ),
        Info(1,
        es: 'Cuchillo',
        presente: 'Нож',
        pronunciacion1: 'Nozh',
        image: 'assets/knife.png',
        ),
      ],
    ),
  ],
  )
];