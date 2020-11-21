import 'package:wp_blog_app/models/post.dart';

class PostsData {
  static List<Post> DUMMY_POSTS = [
    Post(
      id: 1,
      title: 'Sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
      author: 'Leanne Graham',
      content: 'Euia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto',
      date: DateTime.now().toIso8601String(),
    ),
    Post(
      id: 2,
      title: 'Qui est esse',
      author: 'Ervin Howell',
      content: 'Est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla',
      date: DateTime.now().add(Duration(days: 1)).toIso8601String(),
    ),
    Post(
      id: 3,
      title: 'Ea molestias quasi exercitationem repellat qui ipsa sit aut',
      author: 'Clementine Bauch',
      content: 'Et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut',
      date: DateTime.now().add(Duration(days: 2)).toIso8601String(),
    ),
    Post(
      id: 4,
      title: 'Eum et est occaecati',
      author: 'Patricia Lebsack',
      content: 'ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa\nquis hic commodi nesciunt rem tenetur doloremque ipsam iure\nquis sunt voluptatem rerum illo velit',
      date: DateTime.now().add(Duration(days: 3)).toIso8601String(),
    ),
  ];
}