class CallModel{
  final String name;
  final bool isMissed;
  final String timeDate;
  final String avatarUrl;

  CallModel(
      {required this.name,
        required this.isMissed,
        required this.timeDate,
        required this.avatarUrl});
}

List<CallModel> callsData = [
  CallModel(
      name: "Billie Eilish",
      isMissed: false,
      timeDate: "May 27, 11:47 AM",
      avatarUrl: "https://s2.glbimg.com/AH3jMC-tpdxOOuAQgciytQro8To=/top/smart/e.glbimg.com/og/ed/f/original/2021/03/17/whatsapp_image_2021-03-17_at_14.22.55.jpeg"),
  CallModel(
      name: "Faker",
      isMissed: true,
      timeDate: "May 22, 12:47 AM",
      avatarUrl: "https://s2.glbimg.com/4oP5fCQaE1GDydFO3YDMPcjXC48=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/2/w/eORJw3TuOmAfaA7Bh73g/faker-worlds.jpg"),
  CallModel(
      name: "Faker",
      isMissed: true,
      timeDate: "May 27, 11:47 AM",
      avatarUrl: "https://s2.glbimg.com/4oP5fCQaE1GDydFO3YDMPcjXC48=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/2/w/eORJw3TuOmAfaA7Bh73g/faker-worlds.jpg"),
  CallModel(
      name: "Faker",
      isMissed: false,
      timeDate: "May 27, 11:47 AM",
      avatarUrl: "https://s2.glbimg.com/4oP5fCQaE1GDydFO3YDMPcjXC48=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/2/w/eORJw3TuOmAfaA7Bh73g/faker-worlds.jpg"),
  CallModel(
      name: "Lebron",
      isMissed: false,
      timeDate: "May 27, 11:47 AM",
      avatarUrl:"https://s2.glbimg.com/nyYIH1AlSuBx0uRagOCeRuyAMiA=/0x0:3792x2528/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2021/e/S/8J72QMQPad67mD5CW5Ug/2021-11-22t005120z-1968685482-mt1usatoday17209252-rtrmadp-3-nba-los-angeles-lakers-at-detroit-pistons.jpg"),
  CallModel(
      name: "Messi",
      isMissed: true,
      timeDate: "May 27, 11:47 AM",
      avatarUrl:
      "https://upload.wikimedia.org/wikipedia/commons/c/c1/Lionel_Messi_20180626.jpg"),
  CallModel(
      name: "Ney Ney",
      isMissed: false,
      timeDate: "May 27, 11:47 AM",
      avatarUrl:
      "https://upload.wikimedia.org/wikipedia/commons/8/83/Bra-Cos_%281%29_%28cropped%29.jpg"),
  CallModel(
      name: "Elon Musk",
      isMissed: false,
      timeDate: "May 27, 11:47 AM",
      avatarUrl:
      "https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg"),
  CallModel(
      name: "Will Smith",
      isMissed: true,
      timeDate: "May 27, 11:47 AM",
      avatarUrl:
      "https://br.web.img2.acsta.net/pictures/17/02/08/16/50/452749.jpg"),
];
