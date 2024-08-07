//library_same_name_main.dart文件
//导入person1.dart
import 'Person1.dart';
//导入person2.dart重命名为lib todo 后续需要使用补充前缀lib来调用Person
import 'Person2.dart' as lib;

void main(List<String> args) {

  //直接使用Person类
  Person p1 = Person('张三', 20);
  p1.printInfo();

  //使用lib.Person类
  lib.Person p2 = lib.Person('李四', 20);
  p2.printInfo();

}
