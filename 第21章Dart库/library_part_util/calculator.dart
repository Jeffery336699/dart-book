//library_part_calculator.dart文件
//计算工具为util库的一部分
part of util;

//加法
int add(int firstNumber, int secondNumber) {
  print("Calculator库里的add方法") ;
  return firstNumber + secondNumber;
}

//减法
int sub(int firstNumber, int secondNumber) {
  print("Calculator库里的sub方法") ;
  return firstNumber - secondNumber;
}

//生成随机数
int random(int no) {
  print("Calculator库里的random方法") ;
  /// todo 因为calculator.dart被标记为utils库的一部分,utils库又引入了math库,所以它直接可以使用math库
  return Random().nextInt(no);
}
