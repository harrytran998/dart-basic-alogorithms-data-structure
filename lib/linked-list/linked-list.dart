import 'package:dart/linked-list/linked-list-node.dart';

abstract class BaseLinkedList<T> {
  LinkedList prepend(T value);
  LinkedList append(T value);
  LinkedList reverse();
  LinkedList<List> fromArray(List values);
  LinkedListNode delete(T value);
  LinkedListNode deleteHead();
  LinkedListNode deleteTail();
  LinkedListNode<List> toArray();
}

class LinkedList<T> implements BaseLinkedList, Comparable {
  LinkedListNode tail;
  LinkedListNode head;

  LinkedList() {
    tail = null;
    head = null;
  }

  @override
  LinkedList append(value) {
    final newNode = LinkedListNode(value, head);
    head = newNode;
    tail ??= newNode; // equal to check tail == null
    return this;
  }

  @override
  LinkedListNode delete(value) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  LinkedListNode deleteHead() {
    // TODO: implement deleteHead
    throw UnimplementedError();
  }

  @override
  LinkedListNode deleteTail() {
    // TODO: implement deleteTail
    throw UnimplementedError();
  }

  @override
  LinkedList<List> fromArray(List values) {
    throw UnimplementedError();
  }

  @override
  LinkedList prepend(value) {
    // TODO: implement prepend
    throw UnimplementedError();
  }

  @override
  LinkedList reverse() {
    // TODO: implement reverse
    throw UnimplementedError();
  }

  @override
  LinkedListNode<List> toArray() {
    // TODO: implement toArray
    throw UnimplementedError();
  }

  @override
  int compareTo(other) {
    return 1;
  }
}
