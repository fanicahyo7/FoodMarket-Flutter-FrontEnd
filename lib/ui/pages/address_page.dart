part of 'pages.dart';

class AddressPage extends StatefulWidget {
  final User user;
  final String password;
  final File pictureFile;

  AddressPage(this.user, this.password, this.pictureFile);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController phoneNumController = TextEditingController();
  TextEditingController houseNumController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  bool isLoading = false;
  List<String> cities;
  String selectedCity;

  @override
  void initState() {
    super.initState();
    cities = ['Bandung', 'Malang', 'Batu', 'Sidoarjo'];
    selectedCity = cities[0];
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Address",
      subtitle: "Make sure it’s valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Phone No.",
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
              controller: phoneNumController,
              decoration: InputDecoration(
                  hintText: "Type your phone number",
                  hintStyle: greyFontStyle,
                  border: InputBorder.none),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Address",
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
              controller: addressController,
              decoration: InputDecoration(
                  hintText: "Type your address",
                  hintStyle: greyFontStyle,
                  border: InputBorder.none),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "House No.",
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
              controller: houseNumController,
              decoration: InputDecoration(
                  hintText: "Type your house number",
                  hintStyle: greyFontStyle,
                  border: InputBorder.none),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "City",
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
              child: DropdownButton(
                  value: selectedCity,
                  isExpanded: true,
                  underline: SizedBox(),
                  items: cities
                      .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e,
                            style: blackFontStyle3,
                          )))
                      .toList(),
                  onChanged: (items) {
                    setState(() {
                      selectedCity = items;
                    });
                  })),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 45,
              child: (isLoading == true)
                  ? Center(
                      child: loadingIndicator,
                    )
                  : RaisedButton(
                      onPressed: () async {
                        User user = widget.user.copyWith(
                            phoneNumber: phoneNumController.text,
                            address: addressController.text,
                            houseNumber: houseNumController.text,
                            city: selectedCity);

                        setState(() {
                          isLoading = true;
                        });

                        await context.bloc<UserCubit>().signUp(
                            user, widget.password,
                            pictureFile: widget.pictureFile);

                        UserState state = context.bloc<UserCubit>().state;

                        if (state is UserLoaded) {
                          context.bloc<FoodCubit>().getFoods();
                          context.bloc<TransactionCubit>().getTransactions();
                          Get.to(MainPage());
                        } else {
                          Get.snackbar("", "",
                              backgroundColor: "D9435E".toColor(),
                              icon: Icon(
                                MdiIcons.closeCircleOutline,
                                color: Colors.white,
                              ),
                              titleText: Text("Sign Up Failed",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                              messageText: Text(
                                (state as UserLoadingFailed).message,
                                style: GoogleFonts.poppins(color: Colors.white),
                              ));
                          setState(() {
                            isLoading = false;
                          });
                        }
                      },
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: mainColor,
                      child: Text(
                        "Sign Up Now",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      )))
        ],
      ),
    );
  }
}
