import 'dart:html';

class SliderObject {
  String imagepath;
  String title;
  String subtitle;
  SliderObject(
      {required this.imagepath, required this.subtitle, required this.title});
}

class Customer {
  String id;
  String name;
  int numofNotification;

  Customer(
      {required this.id, required this.name, required this.numofNotification});
}

class Contacts {
  int PhNumber;
  String link;
  String gmail;

  Contacts({required this.PhNumber, required this.link, required this.gmail});
}

class Authentication {
  String customer;
  String contact;

  Authentication({required this.customer, required this.contact});
}
