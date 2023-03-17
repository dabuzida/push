class Tree {
  int branch = 5;
  int _fruit = 3;
  int get doubleBranch {
    return branch * 2;
  }

  void set someBranch(int n) {
    _fruit = n * 2;
  }

  int get doubleFruit {
    return _fruit * 2;
  }

// 겟터는 함수형이 아니다. 메개변수가 없어 '변수'처럼 쓴다
// getter, setter는 함수형의 로직이 가능하며 변수처럼 쓴다
// parameter가 없음
  int xBranch() {
    return branch;
  }

  int xFruit() {
    return _fruit;
  }

  void sFruit() {
    _fruit *= 2;
  }
}

void main() {
  Tree x = Tree();
  print(x.branch);
  print(x.doubleBranch);
  print(x.xBranch());

  x.someBranch = 33;
  print(x.branch);
}
