part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  User user;
  File pictureFile;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Sign Up",
      subtitle: "Register and eat",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          GestureDetector(
            onTap: () async {
              PickedFile pickedFile =
                  await ImagePicker().getImage(source: ImageSource.gallery);
              if (pickedFile != null) {
                pictureFile = File(pickedFile.path);
                setState(() {});
              }
            },
            child: Container(
              width: 110,
              height: 110,
              margin: EdgeInsets.only(top: 26),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/photo_border.png"))),
              child: (pictureFile != null)
                  ? Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: FileImage(pictureFile),
                              fit: BoxFit.cover)),
                    )
                  : Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/photo.png"),
                              fit: BoxFit.cover)),
                    ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Full Name",
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
              controller: nameController,
              decoration: InputDecoration(
                  hintText: "Type your full name",
                  hintStyle: greyFontStyle,
                  border: InputBorder.none),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
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
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
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
              obscureText: true,
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
              child: RaisedButton(
                  onPressed: () {
                    Get.to(AddressPage(
                      User(
                          name: nameController.text,
                          email: emailController.text),
                      passwordController.text,
                      pictureFile,
                    ));
                  },
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: mainColor,
                  child: Text(
                    "Continue",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  )))
        ],
      ),
    );
  }
}
