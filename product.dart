// To parse this JSON data, do
//
//     final menuModel = menuModelFromJson(jsonString);

import 'dart:convert';

List<MenuModel> menuModelFromJson(String str) => List<MenuModel>.from(json.decode(str).map((x) => MenuModel.fromJson(x)));

String menuModelToJson(List<MenuModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MenuModel {
    int id;
    String name;
    String price;
    String deskripsi;
    String image;

    MenuModel({
        required this.id,
        required this.name,
        required this.price,
        required this.deskripsi,
        required this.image,
    });

    factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        deskripsi: json["deskripsi"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "deskripsi": deskripsi,
        "image": image,
    };
}
