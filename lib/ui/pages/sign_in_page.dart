part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return GeneralPage(
      title: "Sign In",
      subtitle: "Find your best ever meal",
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Email Address",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Type your email address",
                  hintStyle: greyFontStyle,
                  border: InputBorder.none),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Password",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: "Type your password",
                  hintStyle: greyFontStyle,
                  border: InputBorder.none),
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 45,
              child: isLoading
                  ? SpinKitCircle(
                      size: 45,
                      color: mainColor,
                    )
                  : RaisedButton(
                      onPressed: () {},
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: mainColor,
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ))),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 45,
              child: isLoading
                  ? SpinKitCircle(
                      size: 45,
                      color: mainColor,
                    )
                  : RaisedButton(
                      onPressed: () {
                        Get.to(SignUpPage());
                      },
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: greyColor,
                      child: Text(
                        "Create New Account",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )))
        ],
      ),
    );
  }
}