class Suroo {
  const Suroo({
    required this.text,
    required this.image,
    required this.jooptor,
  });
  final String text;
  final String image;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({
    required this.text,
    this.isTrue = false,
  });

  final String text;
  final bool isTrue;
}

List<Suroo> asiaQuestions = [s1, s2, s3, s4, s5, s6, s7, s8, s9];
List<Suroo> europeQuestions = [s1, s2, s3, s4, s5, s6, s7, s8, s9];

const s1 = Suroo(
  text: 'Moscow',
  image: 'asia/uz.jpeg',
  jooptor: [
    Joop(text: 'Kyrgyzstan'),
    Joop(text: 'Rossia', isTrue: true),
    Joop(text: 'Kazakhstan'),
    Joop(text: 'Uzbekiston'),
  ],
);

const s2 = Suroo(text: 'Astana', image: 'asia/astana.jpeg', jooptor: [
  Joop(text: 'Kazakhstan', isTrue: true),
  Joop(text: 'Rossia'),
  Joop(text: 'Kitay'),
  Joop(text: 'Turkiya'),
]);

const s3 = Suroo(text: 'Tashkent', image: 'asia/uz.jpeg', jooptor: [
  Joop(text: 'Uzbekiston', isTrue: true),
  Joop(text: 'Yaponia'),
  Joop(text: 'Korea'),
  Joop(text: 'Kyrgyzstan'),
]);

const s4 = Suroo(
  text: 'Dushanbe',
  image: 'asia/dushanbe.jpeg',
  jooptor: [
    Joop(text: 'India'),
    Joop(text: 'Tajikstan', isTrue: true),
    Joop(text: 'Avganstan'),
    Joop(text: 'Armenia'),
  ],
);

const s5 = Suroo(
  text: 'Pekin',
  image: 'asia/kitay.jpeg',
  jooptor: [
    Joop(text: 'Korea'),
    Joop(text: 'Kitay', isTrue: true),
    Joop(text: 'Kyrgyzstan'),
    Joop(text: 'USY'),
  ],
);

const s6 = Suroo(
  text: 'Tokio',
  image: 'asia/tokio.jpeg',
  jooptor: [
    Joop(text: 'Korea'),
    Joop(text: 'Yaponia', isTrue: true),
    Joop(text: 'Tajikstan'),
    Joop(text: 'India'),
  ],
);

const s7 = Suroo(
  text: 'Seul',
  image: 'asia/seul.jpeg',
  jooptor: [
    Joop(text: 'Armenia'),
    Joop(text: 'Korea', isTrue: true),
    Joop(text: 'USY'),
    Joop(text: 'Turkiya'),
  ],
);

const s8 = Suroo(
  text: 'Kiev',
  image: 'asia/kiev.jpeg',
  jooptor: [
    Joop(text: 'Armenia'),
    Joop(text: 'Korea'),
    Joop(text: 'Ukraina', isTrue: true),
    Joop(text: 'Turkiya'),
  ],
);

const s9 = Suroo(
  text: 'Minsk',
  image: 'asia/minsk.jpeg',
  jooptor: [
    Joop(text: 'Armenia'),
    Joop(text: 'Korea'),
    Joop(text: 'Belorusia', isTrue: true),
    Joop(text: 'Turkiya'),
  ],
);
