part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;

  PaymentPage({this.transaction});
  @override
  build(BuildContext context) {
    return GeneralPage(
      title: "Payment",
      subtitle: "You deserve better meal",
      onBackButtonPressed: () {},
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 16,
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Ordered',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      transaction.food.picturePath))),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2 -
                                  defaultMargin -
                                  60,
                              child: Text(
                                transaction.food.name,
                                style: blackFontStyle2,
                                maxLines: 2,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2 -
                                  defaultMargin -
                                  60,
                              child: Text(
                                NumberFormat.currency(
                                        symbol: "Rp. ",
                                        decimalDigits: 0,
                                        locale: "id-ID")
                                    .format(transaction.food.price),
                                style: greyFontStyle,
                                maxLines: 1,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          30,
                      child: Text(
                        transaction.quantity.toString() + " Items",
                        style: greyFontStyle,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Text(
                    "Details Transaction",
                    style: blackFontStyle3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction.food.name,
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                symbol: "Rp. ",
                                locale: "id=ID",
                                decimalDigits: 0)
                            .format(
                                transaction.food.price * transaction.quantity),
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Driver",
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                symbol: "Rp. ",
                                locale: "id=ID",
                                decimalDigits: 0)
                            .format(25000),
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Tax 10%",
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                symbol: "Rp. ",
                                locale: "id=ID",
                                decimalDigits: 0)
                            .format(transaction.food.price *
                                transaction.quantity *
                                0.1),
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Total Price",
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                symbol: "Rp. ",
                                locale: "id=ID",
                                decimalDigits: 0)
                            .format((transaction.food.price *
                                    transaction.quantity) +
                                (transaction.food.price *
                                    transaction.quantity *
                                    0.1) +
                                25000),
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Name",
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction.user.name,
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Phone No.",
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction.user.phoneNumber,
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Address",
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction.user.address,
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "House No.",
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction.user.houseNumber,
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "City",
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction.user.city,
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin, vertical: 26),
                  height: 45,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {},
                    elevation: 0,
                    color: mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "Checkout Now",
                      style:
                          blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
