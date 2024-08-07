//dio_sample/lib/model/good_list_model.dart文件
//商品列表数据模型
import 'package:flutter/cupertino.dart';

class GoodListModel{
  //状态码
  late String code;
  //状态信息
  late String message;
  //商品列表数据
  late List<GoodModel> data;

  //构造方法 初始化时可传入空数组[]即可
  GoodListModel(this.data);

  //通过传入Json数据转换成数据模型
  GoodListModel.fromJson(Map<String,dynamic> json){
    code = json['code'];
    message = json['message'];
    if(json['data'] != null){
      data = <GoodModel>[];
      //循环迭代Json数据并将其每一项数据转换成GoodModel
      json['data'].forEach((v){
        data.add(GoodModel.fromJson(v));
      });
    }
  }

  //将数据模型转换成Json
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = Map<String,dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['data'] = this.data.map((v) => v.toJson()).toList();
    return data;
  }

}

//商品信息模型
class GoodModel{
  //商品图片
  late String image;
  //原价
  late int oriPrice;
  //现有价格
  late int presentPrice;
  //商品名称
  late String name;
  //商品Id
  late String goodsId;

  //构造方法
  GoodModel({required this.image,required this.oriPrice,required this.presentPrice,required this.name,required this.goodsId});

  //通过传入Json数据转换成数据模型
  GoodModel.fromJson(Map<String,dynamic> json){
    image = json['image'];
    oriPrice = json['oriPrice'];
    presentPrice = json['presentPrice'];
    name = json['name'];
    goodsId = json['goodsId'];

  }

  //将数据模型转换成Json
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['image'] = this.image;
    data['oriPrice'] = this.oriPrice;
    data['presentPrice'] = this.presentPrice;
    data['name'] = this.name;
    data['goodsId'] = this.goodsId;
    return data;
  }

}