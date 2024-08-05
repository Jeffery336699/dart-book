//mixin_animal.dart文件
void main(){
  //实例化Cat类
  Cat cat = Cat();
  cat.printInfo();
  //具有走路功能
  cat.walk();

  //实例化Dove类
  Dove dove = Dove();
  dove.printInfo();
  //具有走路功能
  dove.walk();
  //具有飞的功能
  dove.fly();
}

///  mixin: 定义了功能模块。
///  on： 限定了功能模块的使用类型。https://juejin.cn/post/6844904134362005511
///  with: 负责功能模块的组合。

//猫类 继承Mammal类 混入Walker类
class Cat extends Mammal with Walker {

  //输出信息方法
  void printInfo(){
    print('我是一只小猫');
  }
}


//蝙蝠类 继承Bird类 混入Walker及Flyer类
class Dove extends Bird with Walker, Flyer {

  //输出信息方法
  void printInfo(){
    print('我是一只蝙蝠');
  }
}

//动物类
abstract class Animal {

}

//哺乳动物类
abstract class Mammal extends Animal {

}

//鸟类
abstract class Bird extends Animal {

}

//鱼类
abstract class Fish extends Animal {

}

/// 新版的with混入这样写 mixin class
mixin class Walker {

  //工厂构造方法 仿止实例化
  factory Walker._() => null as Walker;

  void walk() {
    print("我会走路");
  }
}


//抽象类 游泳类
 class Swimmer {

  //工厂构造方法 仿止实例化
  factory Swimmer._() => null as Swimmer;

  //游泳方法
  void swim() {
    print("我会游泳");
  }

}

//抽象类 飞类
mixin  class Flyer{

  //工厂构造方法 仿止实例化
  factory Flyer._() => null as Flyer;

  //飞方法
  void fly() {
    print("我会飞");
  }

}



////行走类
//class Walker {
//
//  //行走方法
//  void walk() {
//    print("我会走路");
//  }
//
//}
//
////游泳类
//class Swimmer {
//
//  //游泳方法
//  void swim() {
//    print("我会游泳");
//  }
//
//}
//
////飞类
//class Flyer{
//
//  //飞方法
//  void fly() {
//    print("我会飞");
//  }
//
//}
