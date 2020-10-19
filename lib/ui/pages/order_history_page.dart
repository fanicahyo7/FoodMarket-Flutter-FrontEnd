part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;
  List<Transaction> inProgress = moskTransactions
      .where((element) =>
          element.status == TransactionStatus.on_delivery ||
          element.status == TransactionStatus.pending)
      .toList();

  List<Transaction> inPost = moskTransactions
      .where((element) =>
          element.status == TransactionStatus.cancelled ||
          element.status == TransactionStatus.delivered)
      .toList();

  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return (inProgress.length == 0 && inPost.length == 0)
        ? Scaffold(
            body: IllustrationPage(
                title: "Ouch! Hungry",
                subtitle: "Seems like you have not\nordered any food yet",
                picturePath: "assets/love_burger.png",
                buttonTab1: () {},
                buttonTitle1: "Find Foods"),
          )
        : GeneralPage(
            title: "Your Orders",
            subtitle: "Wait for the best meal",
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 6),
                  width: double.infinity,
                  child: CustomTabbar(
                    titles: ["In Progress", "Past Orders"],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                ),
                SizedBox(height: 16),
                Column(
                  children: ((selectedIndex == 0) ? inProgress : inPost)
                      .map((e) => Padding(
                            padding: const EdgeInsets.fromLTRB(
                                defaultMargin, 0, defaultMargin, 16),
                            child: OrderListItem(
                              itemWidth: listItemWidth,
                              transaction: e,
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
          );
  }
}
