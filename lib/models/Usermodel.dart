// GET : http://www.techfoon.com/api.php?apikey=peeyush123&email=jane@example.com

class LoginModel {
  String? status;
  String? message;

  DataModel? userData;

  LoginModel({this.status, this.message, this.userData});

  factory LoginModel.fromJson(Map<String, dynamic> JSON) {
    return LoginModel(
        status: JSON['status'],
        message: JSON['message'],
        userData: DataModel.FromJson(JSON['data']));
  }
}

class DataModel {
  String? email;

  String? Name;
  String? Pass;

  DataModel({this.Name, this.email , this.Pass});

  factory DataModel.FromJson(Map<String, dynamic> JSON) {
    return DataModel(
      email: JSON['email'],
      Name: JSON['Name'],
      Pass: JSON['Pass']
    );
  }
}
