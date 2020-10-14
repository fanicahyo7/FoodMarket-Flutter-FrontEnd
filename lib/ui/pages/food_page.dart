part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //Header
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 108,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FoodMarket",
                        style: blackFontStyle1,
                      ),
                      Text(
                        "Let’s get some foods",
                        style: greyFontStyle,
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/2c/99/a6/2c99a6aa944687c09ce6922727a16ef2.jpg"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            //food
            Container(
                height: 258,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                        children: mockFoods.map((e) => Padding(
                          padding: EdgeInsets.only(
                            left: (e == mockFoods.first) ? defaultMargin : 0,
                            right: defaultMargin
                          ),
                          child: FoodCard(e),
                        )).toList())
                  ],
                ))
            //food tab
          ],
        )
      ],
    );
  }
}
