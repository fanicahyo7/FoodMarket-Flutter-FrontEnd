part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // warna atas hp
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          // header judul dan tombol back
          SafeArea(
              child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 232,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Column(
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          margin: EdgeInsets.only(top: 26, bottom: 16),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/photo_border.png"))),
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage((context
                                            .bloc<UserCubit>()
                                            .state as UserLoaded)
                                        .user
                                        .picturePath),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Text(
                          (context.bloc<UserCubit>().state as UserLoaded)
                              .user
                              .name,
                          style: blackFontStyle2.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          (context.bloc<UserCubit>().state as UserLoaded)
                              .user
                              .email,
                          style: greyFontStyle.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  // garis abu
                  Container(
                    color: "FAFAFC".toColor(),
                    height: defaultMargin,
                    width: double.infinity,
                  ),
                  // body
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    width: double.infinity,
                    child: CustomTabbar(
                      titles: ["Account", "FoodMarket"],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Column(
                      children: (selectedIndex == 0)
                          ? [
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Edit Profile",
                                      style: blackFontStyle3.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/right_arrow.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Home Address",
                                      style: blackFontStyle3.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/right_arrow.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Security",
                                      style: blackFontStyle3.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/right_arrow.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Payments",
                                      style: blackFontStyle3.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/right_arrow.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]
                          : [
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Rate App",
                                      style: blackFontStyle3.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/right_arrow.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Help Center",
                                      style: blackFontStyle3.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/right_arrow.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Privacy & Policy",
                                      style: blackFontStyle3.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/right_arrow.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Terms & Conditions",
                                      style: blackFontStyle3.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/right_arrow.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                    ),
                  )
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
