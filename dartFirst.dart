// dart class fields and properties

class Rectangle {
  // this are the fields of Rectangle class
  final num left, top, width, height;

  // fields needs to be initiate by constructor
  Rectangle(this.left, this.top, this.width, this.height);

  

  // it is the property of Rectangle class
  // properties have getter and setter
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}
