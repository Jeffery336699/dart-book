void main() {
  /// 2.3333333333333335
  // print('${7/3}');
  /// 2
  // print('${7~/3}');

  // dynamic name = 1;
  // name ??= "default";
  // print('${name}');

  // String name = "hello";
  // var l = name..toUpperCase()..substring(3)..length;
  // print('$l'); // hello

  /// 返回的还是原来的变量，你有对它进行真正的修改才是OK的
  var ls=[];
  var list = ls..add(1)..add(2)..remove(1)..addAll([5,6,7])..isEmpty;
  print('$list');
}