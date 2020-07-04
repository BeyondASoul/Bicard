
class VerbInfo {
  final int verbID;
  final String es;
  final String presente;
  final String pasado;
  final String participio;
  final String image;
  
  VerbInfo(
    this.verbID, 
    {
      this.es,
      this.presente,
      this.pasado,
      this.participio,
      this.image,
    }
  );
}

List<VerbInfo> verbos = [
  VerbInfo (1,
  es: 'Llorar',
  presente: 'Cry',
  pasado: 'Cried',
  participio: 'Cried',
  image: 'assets/cry.png'),
  VerbInfo(2, 
  es: 'Correr',
  presente: 'Run',
  pasado: 'Ran',
  participio: 'Run',
  image: 'assets/run.png'),
  VerbInfo(3, 
  es: 'Cargar',
  presente: 'Carry',
  pasado: 'Carried',
  participio: 'Carried',
  image: 'assets/carry.png'),
  VerbInfo(4, 
  es: 'Observar',
  presente: 'Watch',
  pasado: 'Watched',
  participio: 'Watched',
  image: 'assets/watch.png'),
  VerbInfo(5, 
  es: 'Volar',
  presente: 'Fly',
  pasado: 'Flew',
  participio: 'Flown',
  image: 'assets/fly.png'),
];