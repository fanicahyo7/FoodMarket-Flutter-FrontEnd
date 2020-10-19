part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "You’ve Made Order",
        subtitle: "Just stay at home while we are \npreparing your best foods",
        picturePath: "assets/bike.png",
        buttonTab1: () {},
        buttonTitle1: "Order Other Foods",
        buttonTab2: () {},
        buttonTitle2: "View My Order",
      ),
    );
  }
}
