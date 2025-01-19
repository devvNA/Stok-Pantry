import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  const UserModel({
    required this.id,
    required this.email,
    required this.namaLengkap,
  });

  final int id;
  static const String idKey = "id";

  final String email;
  static const String emailKey = "email";

  final String namaLengkap;
  static const String namaLengkapKey = "nama_lengkap";

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"] ?? 0,
      email: json["email"] ?? "",
      namaLengkap: json["nama_lengkap"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "nama_lengkap": namaLengkap,
      };

  @override
  String toString() {
    return "$id, $email, $namaLengkap, ";
  }

  @override
  List<Object?> get props => [
        id,
        email,
        namaLengkap,
      ];
}
