enum Subtype {
  resident, landlord, mgmtCo, facultyMgmt, commercial
}

enum ClientType {
  individual, corporate
}

enum PhoneType {
  mobile, home, work
}

class Customer {
  String firstName;
  String lastName;
  String? companyName;

  String email;
  String phone;

  Subtype subtype;
  ClientType clientType;

  PhoneType phoneType;

  Customer({
    required this.firstName,
    required this.lastName,
    this.companyName,
    required this.subtype,
    this.phoneType = PhoneType.mobile,
    required this.clientType,
    this.email = "",
    this.phone = ""
  });
}