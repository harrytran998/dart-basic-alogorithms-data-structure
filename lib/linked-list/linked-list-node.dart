class LinkedListNode<T> {
  T? value;
  LinkedListNode<T>? next;

  LinkedListNode(T? _value, LinkedListNode<T>? _next) {
    value = _value;
    next = _next;
  }

  @override
  String toString() {
    return '$value';
  }
}
