extension ListExtensions<T> on List<T> {
  List<R> mapIndexed<R>(R Function(int index, T item) f) {
    final List<R> result = [];
    for (int i = 0; i < length; i++) {
      result.add(f(i, this[i]));
    }
    return result;
  }
}
