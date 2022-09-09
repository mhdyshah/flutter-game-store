class Game {
  String bgImg;
  String icon;
  String name;
  String type;
  String desc;
  num score;
  num download;
  num review;
  List<String> images;

  Game(
    this.bgImg,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.review,
    this.desc,
    this.images,
  );

  static List<Game> generateGames() {
    return [
      Game(
        "assets/images/ori1.jpg",
        "assets/images/ori_logo.png",
        "Ori and The Blind Forest",
        "Adventure",
        4.8,
        384,
        324,
        "This game is great test it ",
        [
          "assets/images/ori2.jpg",
          "assets/images/ori3.jpg",
          "assets/images/ori4.jpg",
          "assets/images/ori5.jpg",
        ],
      ),
      Game(
        "assets/images/rl1.jpg",
        "assets/images/rl_logo.png",
        "Rayman Legends",
        "Adventure",
        4.7,
        512,
        226,
        "This is Rayman game and great test it",
        [
          "assets/images/rl2.jpg",
          "assets/images/rl3.jpg",
          "assets/images/rl4.jpg",
          "assets/images/rl5.jpg",
        ],
      ),
    ];
  }
}
