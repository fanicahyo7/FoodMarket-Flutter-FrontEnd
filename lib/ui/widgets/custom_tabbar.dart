part of 'widgets.dart';

class CustomTabbar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CustomTabbar({@required this.titles, this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      child: Stack(
        children: [
          Container(
            color: "F2F2F2".toColor(),
            margin: EdgeInsets.only(top: 48),
            height: 1,
          ),
          Row(
            children: titles
                .map((e) => Padding(
                      padding: EdgeInsets.only(left: defaultMargin),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (onTap != null) {
                                onTap(titles.indexOf(e));
                              }
                            },
                            child: Text(
                              e,
                              style: (titles.indexOf(e) == selectedIndex)
                                  ? blackFontStyle3.copyWith(
                                      fontWeight: FontWeight.w500)
                                  : greyFontStyle,
                            ),
                          ),
                          Container(
                            height: 3,
                            width: 40,
                            margin: EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.5),
                                color: (titles.indexOf(e) == selectedIndex)
                                    ? "020202".toColor()
                                    : Colors.transparent),
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
