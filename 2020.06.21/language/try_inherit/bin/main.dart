class Parent {
  int _value = 10;

  void printValue() {
    print("Value is: ${this._value}");
  }

  // Private method
  void _privatePrint() {
    print("In Private print");
  }
}

class Child extends Parent {
  int _value = 111;
}

void main(List<String> arguments) {
  var child = Child();

  child.printValue();
  child._privatePrint();
}
