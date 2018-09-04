@// dart class fields and properties

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

@// dart json decoder

//Be sure to use double quotes ("),
// not single quotes ('), inside the JSON string.
exe:
[
    {"score": 40},
    {"score": 80}
]


// the "array" of json will be converted into "List" in dart

var jsonString = '''
  [
    {"score": 40},
    {"score": 80}
  ]
''';

var scores = jsonDecode(jsonString);
assert(scores is List);


// the object of json will be converted into "Map" in dart

var firstScore = scores[0];
assert(firstScore is Map);
assert(firstScore['score'] == 40);

