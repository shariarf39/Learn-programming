import 'package:better_learn_programming/database/language-list.dart';
import 'package:better_learn_programming/widgets/language_grid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'developer-page.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({Key key}) : super(key: key);

  @override
  _TopicPageState createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  /*BannerAd _bannerAd;
  bool _isBannerAdReady = false;
  Future<InitializationStatus> _initGoogleMobileAds() {
    return MobileAds.instance.initialize();
  }

  @override
  void initState() {
    super.initState();
    _createBannerAd();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  _createBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(
            () {
              _isBannerAdReady = true;
            },
          );
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();
  }*/

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      backgroundColor: Color(0Xffe8f4f7),
      appBar: AppBar(
        backgroundColor: Color(0xfff5e6d3),
        elevation: 0,
        title: Text(
          'Fab Red',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xff5c4450),
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Mdi.developerBoard,
              size: 30,
              color: Colors.blueGrey,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DeveloperPage(),
                ),
              );
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0Xfff5e6d3),
            ),
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: width * .5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Easy Way to',
                              minFontSize: 24,
                              maxLines: 1,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Color(0xff76424e),
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            AutoSizeText(
                              'Learn Programing',
                              minFontSize: 24,
                              maxLines: 2,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Color(0xff203e4a),
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .25,
                        width: MediaQuery.of(context).size.width * .45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/binary.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                /* _isBannerAdReady
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: _bannerAd.size.width.toDouble(),
                          height: _bannerAd.size.height.toDouble(),
                          child: AdWidget(ad: _bannerAd),
                        ),
                      )
                    : SizedBox(
                        height: height * 0.07,
                      ),*/
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XffCDDEEC),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: GridView.builder(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 25,
                          mainAxisSpacing: 25,
                          crossAxisCount: 2,
                          childAspectRatio: aspectRatio / .85,
                        ),
                        itemCount: language.length,
                        itemBuilder: (BuildContext context, int index) =>
                            LanguageGrid(
                          languageData: language[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
