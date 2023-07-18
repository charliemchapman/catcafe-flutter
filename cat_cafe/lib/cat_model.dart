class CatModel {
  final String name;
  final String breed;
  final String urlAvatar;
  final bool isAwake;

  const CatModel(
      {required this.name,
      required this.breed,
      required this.urlAvatar,
      required this.isAwake});

  static List<CatModel> allCats = [
    const CatModel(
        name: 'Chester',
        breed: 'British Shorthair',
        urlAvatar: "assets/british-shorthair.jpeg",
        isAwake: true),
    const CatModel(
        name: 'Sylvester',
        breed: 'Siamese',
        urlAvatar: "assets/scottish-fold.jpeg",
        isAwake: false),
    const CatModel(
        name: 'Sean',
        breed: 'Scottish Fold',
        urlAvatar: "assets/siamese.jpeg",
        isAwake: true),
    const CatModel(
        name: 'Simon',
        breed: 'British Shorthair',
        urlAvatar: "assets/british-shorthair.jpeg",
        isAwake: true),
    const CatModel(
        name: 'Sylvia',
        breed: 'Siamese',
        urlAvatar: "assets/scottish-fold.jpeg",
        isAwake: true),
    const CatModel(
        name: 'Monte',
        breed: 'Scottish Fold',
        urlAvatar: "assets/siamese.jpeg",
        isAwake: false),
    const CatModel(
        name: 'Franchesca',
        breed: 'British Shorthair',
        urlAvatar: "assets/british-shorthair.jpeg",
        isAwake: true),
    const CatModel(
        name: 'Sam',
        breed: 'Siamese',
        urlAvatar: "assets/scottish-fold.jpeg",
        isAwake: false),
    const CatModel(
        name: 'Sally',
        breed: 'Scottish Fold',
        urlAvatar: "assets/siamese.jpeg",
        isAwake: true),
    const CatModel(
        name: 'Lucy',
        breed: 'British Shorthair',
        urlAvatar: "assets/british-shorthair.jpeg",
        isAwake: true),
    const CatModel(
        name: 'Mary',
        breed: 'Siamese',
        urlAvatar: "assets/scottish-fold.jpeg",
        isAwake: true),
    const CatModel(
        name: 'Bob',
        breed: 'Scottish Fold',
        urlAvatar: "assets/siamese.jpeg",
        isAwake: true),
  ];
}
