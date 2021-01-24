class CheckboxWidget {
  String title;
  String subtitle;
  int index;
  CheckboxWidget({this.title, this.index, this.subtitle});

  static Map address = {
    "name": "Muhammad Murtala Abdullahi",
    "address": "darmanawa Gabas",
    "number": "08101178951",
  };
  static List<CheckboxWidget> checkList = [
    CheckboxWidget(),
  ];
  static Map<String, CheckboxWidget> stuff2 = {
    "delivery": CheckboxWidget(
      title: 'Door Delivery',
      subtitle: 'Delivered between this and that for #1500',
      index: 1,
    ),
    "payment": CheckboxWidget(
      title: 'Pay With Credit Card',
      subtitle: 'Choose to Pay With VISA,MASTER CARD or VERVE',
      index: 1,
    ),
  };
}
