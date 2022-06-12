class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Billie Eilish",
      message: "Fiz uma música mó dahora",
      time: "21:47",
      avatarUrl: "https://s2.glbimg.com/AH3jMC-tpdxOOuAQgciytQro8To=/top/smart/e.glbimg.com/og/ed/f/original/2021/03/17/whatsapp_image_2021-03-17_at_14.22.55.jpeg"),
  ChatModel(
      name: "Faker",
      message: "Bora jogar um lol?",
      time: "15:31",
      avatarUrl: "https://s2.glbimg.com/4oP5fCQaE1GDydFO3YDMPcjXC48=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/2/w/eORJw3TuOmAfaA7Bh73g/faker-worlds.jpg"),
  ChatModel(
      name: "Lebron",
      message: "Tu furou a bola?",
      time: "12:26",
      avatarUrl:"https://s2.glbimg.com/nyYIH1AlSuBx0uRagOCeRuyAMiA=/0x0:3792x2528/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2021/e/S/8J72QMQPad67mD5CW5Ug/2021-11-22t005120z-1968685482-mt1usatoday17209252-rtrmadp-3-nba-los-angeles-lakers-at-detroit-pistons.jpg"),
  ChatModel(
      name: "Messi",
      message: "Tu viu meu golaço?",
      time: "15:40",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/c/c1/Lionel_Messi_20180626.jpg"),
  ChatModel(
      name: "Ney Ney",
      message: "Meu tornozelo ta zuado hein",
      time: "10:10",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/8/83/Bra-Cos_%281%29_%28cropped%29.jpg"),
  ChatModel(
      name: "Elon Musk",
      message: "Ta afim de um trampo?",
      time: "9:47",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg"),
  ChatModel(
      name: "Will Smith",
      message: "Bora tomar um café?",
      time: "8:43",
      avatarUrl:
          "https://br.web.img2.acsta.net/pictures/17/02/08/16/50/452749.jpg"),
];

