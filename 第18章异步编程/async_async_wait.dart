//async_async_wait.dart文件
import 'dart:io';

//模拟耗时操作,调用sleep方法睡眠2秒
doTask() async{
  //等待其执行完成,耗时2秒
  /// todo 直接把当前线程给阻塞了,牛
  sleep(const Duration(seconds:2));
  print('sleep 之后.....');
  return "执行了耗时操作";
}

//定义一个方法用于包装
test() async {
  //添加await关键字,等待异步处理
  var r = await doTask();
  //必需等待await关键字后面的方法doTask执行完成,才执行下一行代码
  print(r);
}

String _data = '0';
void getData2() async {
  print('1-开始data=$_data');

  // 1.后面的操作必须是异步才能用await
  // 2。当前函数必须是异步函数
  await Future(() {
    for (int i = 0; i < 100000000; i++) {
      _data = '网络数据';
    }
    print('2-结束data=$_data');
  });

  print('3-结束data=$_data');
}

void main(){
  print("main start");
  getData2();
  // test();
  print("main end");
}
