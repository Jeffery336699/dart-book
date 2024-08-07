//stream_take_while.dart文件
import 'dart:async';

void main(){
  //创建Stream
  createStream();
}

void createStream() async {
  //时间间隔为1秒
  Duration interval = Duration(seconds: 1);
  //每隔1秒发送1次的事件流
  Stream<int> stream = Stream.periodic(interval, (data) => data);
  //根据返回结果做返回值的限制
  stream = stream.takeWhile((data) {
    //返回值的限制条件 todo 后面的data>12并不会生效,输出0~7后就结束了
    return data < 8 /*|| data>12*/;
  });
  /**
   *   void _handleData(T inputEvent, _EventSink<T> sink) {
          bool satisfies;
          try {
            satisfies = _test(inputEvent);
          } catch (e, s) {
            _addErrorWithReplacement(sink, e, s);
            // The test didn't say true. Didn't say false either, but we stop anyway.
            sink._close();
            return;
          }
          if (satisfies) {
            sink._add(inputEvent);
          } else {
            sink._close(); /// 根源所在,takeWhile没有满足直接给你关闭了
          }
      }
   */
  //输出Stream
  await for (int i in stream) {
    print(i);
  }
}