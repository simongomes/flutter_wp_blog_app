import 'package:flutter/material.dart';
import 'package:wp_blog_app/data/posts_data.dart';
import '../../../models/post.dart';
import '../../widgets/blog_list_item.dart';

class HomeScreen extends StatelessWidget {

  List<Post> blogPosts = PostsData.DUMMY_POSTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            color: Theme.of(context).primaryColor,
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Morning", style: TextStyle(color: Theme.of(context).accentColor),),
              Text("Ned Stark", style: Theme.of(context).textTheme.headline1,),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: blogPosts.length,
                  itemBuilder: (_, index) => BlogListItem(post: blogPosts[index],),

              ),
            ],
          ),
        ),
      )
    );
  }
}

