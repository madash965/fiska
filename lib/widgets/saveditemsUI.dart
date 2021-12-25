import 'package:flutter/material.dart';

class SavedItemsUI extends StatelessWidget {
  const SavedItemsUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    List status = [
      "Move to Cart",
      "Delete",
      "View Similar items",
    ];
    //String _choice = status[0];
    return SafeArea(
      child: Container(
        color: Colors.black12,
        child: ListView(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
          children: [
            ListView.separated(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 0.20,
                              width: height * 0.20,
                              child: Image.network(
                                "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/csm_E1l198iXEAk0SAy_0708aac98d.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: height * 0.05,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  "Price",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: -1,
                        right: -1,
                        child: PopupMenuButton(
                          padding: EdgeInsets.all(8),
                          icon: Icon(Icons.more_horiz),
                          itemBuilder: (context) {
                            return status
                                .map(
                                  (value) => PopupMenuItem(
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList();
                          },
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => Container(
                      height: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.transparent,
                    ),
                itemCount: 5),
          ],
        ),
      ),
    );
  }
}
