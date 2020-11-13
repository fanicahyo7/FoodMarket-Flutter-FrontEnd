part of 'pages.dart';

class PaymentMethodPage extends StatelessWidget {
  final String paymentURL;

  PaymentMethodPage({this.paymentURL});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Finish Your Payment",
        subtitle: "Please Select Your Favorite \nPayment Method",
        picturePath: "assets/Payment.png",
        buttonTab1: () async {
          await launch(paymentURL);
        },
        buttonTitle1: "Payment Method",
        buttonTab2: () {
          Get.offAll(SuccessOrderPage());
        },
        buttonTitle2: "Continue",
      ),
    );
  }
}
