//library_part_util.dart文件
//库命名为util todo 方便其他库eg(calculator.dart,logger.dart),定义属于某个库的一部分part of util;
library util;
//导入math库
import 'dart:math';

//日志工具为util库的一部分 todo 结合part of, 这里也需要引入part 'xxx'
part 'logger.dart';
//计算工具为util库的一部分
part 'calculator.dart';