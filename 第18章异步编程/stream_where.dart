//stream_where.dart文件
import 'dart:async';

import 'package:term_glyph/src/generated/top_level.dart';

void main(){
  //创建Stream,并按指定条件筛选出数据
  testWhere();
}

void testWhere() async {
  //时间间隔为1秒
  Duration interval = Duration(seconds: 1);
  //每隔1秒发送1次的事件流
  Stream<int> stream = Stream.periodic(interval, (data) => data);
  //筛选条件为返回值大于2的所有数据
  stream = stream.where((data)=>data>2);
  //筛选条件为返回值小于6的所有数据
  stream = stream.where((data)=> data<6);
  //最后取上面两件条件都满足的数据
  await for(int i in stream){
    print(i);
  }
  /// todo 就算筛选的值是[3,5]此时的流也没有结束,没有结束!!! 注意: 多个where是&& 连接;
  ///       如果输入条件改为 where<2 && where>6 ,此时永远都不会输出任何值
  print('那我走?!');
}