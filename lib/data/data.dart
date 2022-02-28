/* Usuário Logado */
import 'package:facebook_interface/models/story.dart';
import 'package:facebook_interface/models/user.dart';

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
