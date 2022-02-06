import 'dart:async';

import 'package:state_blocs/stream/transformer.dart';

StreamTransformer<T, T> startWithStreamTransformer<T>(T event) {
  return createTransformer(onListen: (controller) => controller.add(event));
}

extension StartWith on Stream {
  Stream<T> startWith<T>(T event) {
    return transform(startWithStreamTransformer(event));
  }
}
