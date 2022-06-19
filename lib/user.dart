class Data {
  String NamaLengkap;
  int NomerHP;
  String Email;
  String Password;
  String ID;

  Data(
      {this.ID = '',
      required this.NamaLengkap,
      required this.NomerHP,
      required this.Email,
      required this.Password});

  Map<String, dynamic> toJson() => {
        "ID": ID,
        "NamaLengkap": NamaLengkap,
        "NomerHP": NomerHP,
        "Email": Email,
        "Password": Password
      };

  static Data fromJson(Map<dynamic, dynamic> json) => Data(
      ID: json['ID'],
      NamaLengkap: json['NamaLengkap'],
      NomerHP: json['NomerHP'],
      Email: json['Email'],
      Password: json["Password"]);
}
