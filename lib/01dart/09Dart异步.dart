import 'dart:io';

main() {
  testFuture3();
}

// ============================== Future ==============================
// Dart是单线程的通过事件循环处理异步
// ------------------------------- Future的基本使用 -------------------------------
// Future对象加入到事件循环中, 当Future处理完毕后通过.then执行后续成功的请求,通过.catchError获取处理异常的情况
testFuture() {
  print('start');
  f1().then((value) {
    print(value);
  }).catchError((err) {
    print(err);
  });
  print('end');
}

Future<String> f1() {
  return Future(() {
    sleep(const Duration(seconds: 3));
    throw Exception('err');
    return 'res';
  });
}

// ------------------------------- Future的API -------------------------------
testFuture2() {
  print('start');
  Future.value("success").then((value) => print('立即被执行了'));
  Future.error(Exception("err")).catchError((value) => print('发生错误了'));
  Future.delayed(const Duration(seconds: 2), () {
    print('2s后延迟调用了');
  }).then((value) => null);
  print('end');
}

// ============================== async/await ==============================
// async 必须返回一个Future
Future<String> testFuture3() async {
  print('start');
  var future = await Future<String>.delayed(const Duration(seconds: 2), () {
    print('2s后延迟调用了');
    return 'res';
  });
  print('end');
  return future;
}