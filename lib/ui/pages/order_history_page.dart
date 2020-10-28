part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(builder: (_, state) {
      if (state is TransactionLoaded) {
        if (state.transactions.length == 0) {
          return Scaffold(
            body: IllustrationPage(
                title: "Ouch! Hungry",
                subtitle: "Seems like you have not\nordered any food yet",
                picturePath: "assets/love_burger.png",
                buttonTab1: () {},
                buttonTitle1: "Find Foods"),
          );
        } else {
          double listItemWidth =
              MediaQuery.of(context).size.width - 2 * defaultMargin;
          return GeneralPage(
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
                Builder(builder: (_) {
                  List<Transaction> transactions = (selectedIndex == 0)
                      ? state.transactions
                          .where((element) =>
                              element.status == TransactionStatus.on_delivery ||
                              element.status == TransactionStatus.pending)
                          .toList()
                      : state.transactions
                          .where((element) =>
                              element.status == TransactionStatus.cancelled ||
                              element.status == TransactionStatus.delivered)
                          .toList();
                  return Column(
                    children: transactions
                        .map((e) => Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  defaultMargin, 0, defaultMargin, 16),
                              child: OrderListItem(
                                itemWidth: listItemWidth,
                                transaction: e,
                              ),
                            ))
                        .toList(),
                  );
                })
              ],
            ),
          );
        }
      } else {
        return Center(
          child: loadingIndicator,
        );
      }
    });
  }
}
