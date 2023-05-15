import 'dart:convert';

class UserModel {
  final int accountNo;
  final String fname;
  final String lname;
  final String address;
  final String phone;
  final String password;
   double balance;

  UserModel({
    required this.accountNo,
    required this.fname,
    required this.lname,
    required this.address,
    required this.phone,
    required this.password,
    required this.balance,
  });

  UserModel copyWith({
    int? accountNo,
    String? fname,
    String? lname,
    String? address,
    String? phone,
    String? password,
    double? balance,
  }) {
    return UserModel(
      accountNo: accountNo ?? this.accountNo,
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      balance: balance ?? this.balance,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNo': accountNo,
      'fname': fname,
      'lname': lname,
      'address': address,
      'phone': phone,
      'password': password,
      'balance': balance,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      accountNo: map['accountNo'] as int,
      fname: map['fname'] as String,
      lname: map['lname'] as String,
      address: map['address'] as String,
      phone: map['phone'] as String,
      password: map['password'] as String,
      balance: map['balance'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(accountNo: $accountNo, fname: $fname, lname: $lname, address: $address, phone: $phone, password: $password, balance: $balance)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.accountNo == accountNo &&
        other.fname == fname &&
        other.lname == lname &&
        other.address == address &&
        other.phone == phone &&
        other.password == password &&
        other.balance == balance;
  }

  @override
  int get hashCode {
    return accountNo.hashCode ^
        fname.hashCode ^
        lname.hashCode ^
        address.hashCode ^
        phone.hashCode ^
        password.hashCode ^
        balance.hashCode;
  }
}