// @dart=2.9
import 'package:dart/linked-list/linked-list.dart';
import 'package:test/test.dart';

void main() {
  test('Should append node to linked list', () {
    final linkedList = LinkedList();
    expect(linkedList.head, null);
    expect(linkedList.tail, null);

    linkedList.prepend(1);
    linkedList.prepend(2);
    expect(linkedList.head?.value, 2);
    expect(linkedList.head?.next?.value, 1);
    expect(linkedList.tail?.value, 1);
    expect(linkedList.tail?.next.toString(), 'null');
  });

  test('', () {});
}
