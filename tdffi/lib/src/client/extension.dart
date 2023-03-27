extension StreamExt on Stream {
  Stream<T> whereType<T>() {
    return where((event) => event is T).map((event) => event as T);
  }
}
