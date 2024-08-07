//stream_create_from_futures.dart文件
import  'dart:io';

void main(){
  //从多个Future创建Stream
  createStreamFromFutures();
}

createStreamFromFutures() async{
  print("开始测试");

  Future<String> future1 = Future((){
    //模拟耗时5秒
    sleep(Duration(seconds:5));
    return "异步任务1";
  });

  Future<String> future2 = Future((){
    return "异步任务2";
  });

  Future<String> future3 = Future((){
    return "异步任务3";
  });

  //将多个Future放入一个列表中,将该列表传入; 2,3同样是被1阻塞了
  Stream<String> stream = Stream<String>.fromFutures([future1,future2,future3]);
  //读取Stream,同时await相当于join,后面的得等await执行完才能得到执行
  await for(var s in stream){
    print(s);
  }
  
  print("结束测试");
}
