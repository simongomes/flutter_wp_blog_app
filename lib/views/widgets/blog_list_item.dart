import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wp_blog_app/models/post.dart';

class BlogListItem extends StatelessWidget {
  final Post post;
  const BlogListItem({
    this.post,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    DateTime date = DateTime.parse(post.date);
    String postDate = DateFormat.MMMMd().format(date) + ', ' + DateFormat.y().format(date);

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://images.pexels.com/photos/386000/pexels-photo-386000.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Business',
                          style: Theme.of(context).textTheme.bodyText1
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Text(
                          post.title,
                          style: Theme.of(context).textTheme.headline3,
                          softWrap: true,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        post.author,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        '$postDate  •  5 min read',
                        style: Theme.of(context).textTheme.subtitle2,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Divider(height: 1, color: Color.fromRGBO(0, 0, 0, .15),),
        ],
      ),
    );
  }
}