/* Usuário Logado */
import 'package:facebook_interface/models/story.dart';
import 'package:facebook_interface/models/user.dart';

import '../models/post.dart';

User currentUser = User(
    name: "Jamilton Damasceno",
    urlImage: "https://source.unsplash.com/EQFtEzJGERg/800x600");

/* Lista de usuários online */
List<User> onlineUser = [
  User(
      name: "José Renato de almeida",
      urlImage: "https://source.unsplash.com/UJLAMjEjISo/800x600"),
  User(
      name: "Maria Almeida",
      urlImage: "https://source.unsplash.com/0wRXAXqIp58/800x600"),
  User(
      name: "Fernando Lima de albuquerque filho",
      urlImage: "https://source.unsplash.com/59HOrlAKTOU/800x600"),
  User(
      name: "Marcela Faria",
      urlImage: "https://source.unsplash.com/GXzHGgzraHc/800x600"),
  User(
      name: "Carlos Eduardo",
      urlImage: "https://source.unsplash.com/y8yimL21z8s/800x600"),
  User(
      name: "Joana Santos",
      urlImage: "https://source.unsplash.com/PXWiHU7pbeg/800x600"),
  User(
      name: "Rodrigo Caio",
      urlImage: "https://source.unsplash.com/MS0RHQ1enek/800x600"),
  User(
      name: "Pedro do Carmo",
      urlImage: "https://source.unsplash.com/9ChfwZzv4ys/800x600"),
];

/* Lista de estórias */
List<Story> storysList = [
  Story(
    user: onlineUser[0],
    urlImage: "https://source.unsplash.com/JMWjOup32Fk/800x600",
    isVisualized: true,
  ),
  Story(
    user: onlineUser[1],
    urlImage: "https://source.unsplash.com/no_TCkPUq_s/800x600",
    isVisualized: true,
  ),
  Story(
      user: onlineUser[2],
      urlImage: "https://source.unsplash.com/6dX5TPPM34M/800x600"),
  Story(
      user: onlineUser[3],
      urlImage: "https://source.unsplash.com/PO7CGnoDFUI/800x600"),
  Story(
      user: onlineUser[4],
      urlImage: "https://source.unsplash.com/rewyZqUwAqY/800x600"),
  Story(
      user: onlineUser[5],
      urlImage: "https://source.unsplash.com/1HpQU1evGK8/800x600"),
  Story(
      user: onlineUser[6],
      urlImage: "https://source.unsplash.com/W9z_628BBpc/800x600"),
  Story(
      user: onlineUser[7],
      urlImage: "https://source.unsplash.com/DOb-2jd0sbc/800x600"),
];

/* Lista de postagens */
List<Post> posts = [
  Post(
      user: onlineUser[0],
      description: "Passeio muito legal no final de semana",
      timeAgo: "20m",
      urlImage: "https://source.unsplash.com/DOb-2jd0sbc/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUser[1],
      description: "Quero compartilhar com você algo que aconteceu...",
      timeAgo: "40m",
      urlImage: "https://source.unsplash.com/G0H58Z5aPog/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUser[2],
      description: "Não recomendo esse lugar, não fomos bem atendidos",
      timeAgo: "55m",
      urlImage: "https://source.unsplash.com/1a_u4n02YNo/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUser[3],
      description:
          "Não importa o que você sabe, mas o que faz com o que você sabe!",
      timeAgo: "1h",
      urlImage: "https://source.unsplash.com/sfL_QOnmy00/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUser[4],
      description:
          "Preciso de indicações de eletricista, meu chuveiro pifou :(",
      timeAgo: "2h",
      urlImage: "https://source.unsplash.com/_tWMmC9CQXQ/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUser[5],
      description: "Que chuva maravilhosa!",
      timeAgo: "2d",
      urlImage: "https://source.unsplash.com/a4wUKaaMGWQ/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUser[6],
      description: "Um dia mais que especial, nos divertimos bastante ;)",
      timeAgo: "3d",
      urlImage: "https://source.unsplash.com/YS1OOmHAFD0/800x600",
      likes: 100,
      comments: 30,
      shares: 3),
  Post(
      user: onlineUser[7],
      description: "VOCÊ É DO TAMANHO DOS SEUS SONHOS! Lute, persista, "
          "insista, corra atrás, passe algumas noites sem dormir direito, "
          "mas nunca desista de seus sonhos, acredite que é capaz, se olhe "
          "no espelho e diga pra você: VOCÊ TEM POTENCIAL! "
          "Ninguém além de você mesmo pode torná-lo real.",
      timeAgo: "3d",
      urlImage: "https://source.unsplash.com/Ng2Hg1YMMuU/800x600",
      likes: 230,
      comments: 25,
      shares: 3),
];
