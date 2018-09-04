@// dart class fields and getter

class Rectangle {
  // this are the fields of Rectangle class
  final num left, top, right, bottom;

  // fields needs to be initiate by constructor
  Rectangle(this.left, this.top, this.right, this.bottom);

  
//CONSIDER using => for simple members.

//In addition to using => for function expressions, 
//Dart also lets you define members with it. That style is a good fit 
//for simple members that just calculate and return a value.

double get area => (right - left) * (bottom - top);
  
// but if people needs to write multiple lines and needs to use cascade avoid it, instead use block 
  
double  area(){
. . . .
  . . .  
}
  
  
  
}// class ends




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

