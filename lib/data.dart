
class VerbInfo {
  final verbID;
  final String presente;
  final String pasado;
  final String participio;
  final String image;
  
  VerbInfo(
    this.verbID, 
    {
      this.presente,
      this.pasado,
      this.participio,
      this.image,
    }
  );
}

List<VerbInfo> planets = [
  VerbInfo (1,
  presente: 'Cry',
  pasado: 'Cried',
  participio: 'Cried',
  image: 'assets/cry.png'),
];