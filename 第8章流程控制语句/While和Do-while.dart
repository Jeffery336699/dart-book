void main() {
  //while循环示例
  // var _temp = 0;
  // while (_temp < 5) {
  //   print("这是一个循环: " + (_temp).toString());
  //   _temp++;
  // }

  //do-while循环示例
 // var _temp = 0;
 //
 // do {
 //   print("这是一个循环: " + (_temp).toString());
 //   _temp++;
 // } while (_temp < 5);

  //异常处理示例
  try {
// ···
    var l = [];
    l[3];
  } on RangeError catch(e) { /// 靶向指定的异常
    print('Exception details:\n $e');
  } catch (e, s) { /// 异常中会有两个有用的参数
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  } finally {
    print('Do some thing:\n');
  }
}
