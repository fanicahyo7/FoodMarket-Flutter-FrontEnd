part of 'pages.dart';

class FoodDetailPage extends StatefulWidget {
  final Transaction transaction;
  final Function onBackButtonPressed;

  FoodDetailPage({this.transaction, this.onBackButtonPressed});
  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          //image food
          SafeArea(
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.transaction.food.picturePath),
                      fit: BoxFit.cover)),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    //Back
                    Container(
                      height: 100,
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            if (widget.onBackButtonPressed != null) {
                              widget.onBackButtonPressed();
                            }
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset("assets/back_arrow.png"),
                          ),
                        ),
                      ),
                    ),
                    //body
                    Container(
                      margin: EdgeInsets.only(top: 180),
                      padding:
                          EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(38.2),
                              topRight: Radius.circular(38.2)),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width -
                                        52 * 2 -
                                        35,
                                    child: Text(
                                      widget.transaction.food.name,
                                      style: blackFontStyle2,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  RatingStars(widget.transaction.food.rate)
                                ],
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (quantity > 1) {
                                          quantity -= 1;
                                          print(quantity);
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 26,
                                      width: 26,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border:
                                              Border.all(color: Colors.black),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/btn_min.png"))),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 35,
                                    child: Center(
                                        child: Text(
                                      quantity.toString(),
                                      style: blackFontStyle2,
                                    )),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        quantity += 1;
                                      });
                                    },
                                    child: Container(
                                      height: 26,
                                      width: 26,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border:
                                              Border.all(color: Colors.black),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/btn_add.png"))),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            margin:
                                EdgeInsets.fromLTRB(0, 12, defaultMargin, 16),
                            child: Text(
                              widget.transaction.food.description,
                              style: greyFontStyle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, defaultMargin, 4),
                            child: Text("Ingredients:", style: blackFontStyle3),
                          ),
                          Container(
                            margin:
                                EdgeInsets.fromLTRB(0, 0, defaultMargin, 40),
                            child: Text(
                              widget.transaction.food.ingredients,
                              style: greyFontStyle,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Total Price:", style: greyFontStyle),
                                  Text(
                                    NumberFormat.currency(
                                            symbol: "Rp. ",
                                            decimalDigits: 0,
                                            locale: "id-ID")
                                        .format(widget.transaction.food.price *
                                            quantity),
                                    style:
                                        blackFontStyle2.copyWith(fontSize: 18),
                                  )
                                ],
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Get.to(PaymentPage(
                                    transaction: widget.transaction.copyWith(
                                        quantity: quantity,
                                        total: quantity *
                                            widget.transaction.food.price),
                                  ));
                                },
                                elevation: 0,
                                color: mainColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  "Order Now",
                                  style: blackFontStyle3.copyWith(
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
