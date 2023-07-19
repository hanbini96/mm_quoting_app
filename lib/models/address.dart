class Address {
  String addr1;
  String addr2;
  String addr3;

  String city;
  String state;
  String zip;
  // String subtype; default Apartment?
  // String sameAsService; should be defined on the service form TODO: (Check Server)

  Address({
    required this.addr1,
    this.addr2 = "",
    this.addr3 = "",
    required this.city,
    required this.state,
    required this.zip,
  });
}