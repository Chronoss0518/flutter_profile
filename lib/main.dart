
import 'package:flutter/material.dart';
import 'Component/profile_panel.dart';
import 'Component/text_block.dart';
import 'Component/use_table.dart';

const NAME = "Chronoss";
const CAREER = "IT Engineer";
const CREATER_TYPE = "Game Creater";

const TWITTER_USER_URL = "@__ChWorld__";
const BLUESKY_USER_URL = "@chworld.bsky.social";
const GITHUB_USER_URL = "https://github.com/Chronoss0518";
const FREEGAME_MUGEN_USER_URL = "https://freegame-mugen.jp/cms/mt-cp.cgi?__mode=view&blog_id=1&id=9366";
const FREEM_USER_URL = "https://www.freem.ne.jp/brand/14403";

const URL_FONT_SIZE = 30.0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StartWidget(),
    );
  }
}

class StartWidget extends StatefulWidget
{
  const StartWidget({super.key});

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<StartWidget>
{

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.black,
      //padding: EdgeInsets.fromLTRB(width, height, width, height),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.black,
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(image :DecorationImage(image: AssetImage("resource/image/test_image.png"))),
                    width: 150,
                    height:150,),
                  const TextBlock("Profile",textColor: Colors.white,fontSize: 80.0),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: const ProfilePanelList(
                      [
                        ProfilePanel("Name", NAME,textColor: Colors.white),
                        ProfilePanel("Career", CAREER,textColor: Colors.blue),
                        ProfilePanel("Creater Type", CREATER_TYPE,textColor: Colors.yellow),
                      ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextBlock("Use Program Language",textColor: Colors.white,fontSize: 40.0),
                        UseTable([
                          UseTablePanel("C",textColor: Colors.yellow),
                          UseTablePanel("C++",textColor: Colors.yellow),
                          UseTablePanel("Unity C#",textColor: Colors.green),
                          UseTablePanel("Java",textColor: Colors.red),
                          UseTablePanel("Java Script",textColor: Colors.yellow),
                          UseTablePanel("Flutter Dart",textColor: Colors.blue),
                          UseTablePanel("Python",textColor: Colors.red),
                          UseTablePanel("HLSL",textColor: Colors.blue),
                          UseTablePanel("Shader Lab",textColor: Colors.blue),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: const ProfilePanelList(
                [
                  ProfilePanel("twitter(x)", TWITTER_USER_URL,textColor: Colors.white),
                  ProfilePanel("bluesky", BLUESKY_USER_URL,textColor: Colors.blue),
                  ProfilePanel("github", GITHUB_USER_URL,textColor: Colors.white),
                  ProfilePanel("freem", FREEM_USER_URL,textColor: Colors.yellow),
                  ProfilePanel("freegame-mugen", FREEGAME_MUGEN_USER_URL,textColor: Colors.yellow),
                ],
                fontSize: URL_FONT_SIZE,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
