part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final Function buttonTab1;
  final Function buttonTab2;
  final String buttonTitle1;
  final String buttonTitle2;

  const IllustrationPage(
      {@required this.title,
      @required this.subtitle,
      @required this.picturePath,
      @required this.buttonTab1,
      this.buttonTab2,
      @required this.buttonTitle1,
      this.buttonTitle2});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 221,
            width: 200,
            margin: EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(picturePath))),
          ),
          Text(title, style: blackFontStyle1),
          Text(
            subtitle,
            style: greyFontStyle,
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 12),
            height: 45,
            width: 200,
            child: RaisedButton(
              onPressed: buttonTab1,
              color: mainColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                buttonTitle1,
                style: blackFontStyle2,
              ),
            ),
          ),
          (buttonTab2 == null)
              ? SizedBox()
              : SizedBox(
                  height: 45,
                  width: 200,
                  child: RaisedButton(
                    onPressed: buttonTab2,
                    color: mainColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      buttonTitle2,
                      style: blackFontStyle2,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
