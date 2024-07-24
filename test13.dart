class MyNode {
  Map<String, MyNode?> children = <String, MyNode?>{};

  // MyNode() {
  //   children = <String, MyNode?>{};
  // }

  // MyNode.test({String prefix = ''}) {
  //   children = <String, MyNode?>{prefix: null};
  // }

  // MyNode.test2({required List<String> prefixList}) {
  //   final Map<String, MyNode?> ii = <String, MyNode?>{};
  //   for (String element in prefixList) {
  //     ii.addEntries(<String, MyNode?>{element: null}.entries);
  //   }

  //   children = ii;
  // }
}

void main() {
  // 1
  final MyNode _node = MyNode();
  print(_node.children);

  // 2
  final Map<String, MyNode?> _children = _node.children;
  // print(_children);

  _children['a'] = MyNode();
  print(_node.children);

  // 3
  final Map<String, MyNode?> _children2 = _node.children['a']!.children;

  _children2['aa'] = MyNode();
  print(_node.children['a']!.children);

  // _node.children['a'] = MyNode();
  // print(_node.children);
  // print(_node.children['a']!.children);
}
