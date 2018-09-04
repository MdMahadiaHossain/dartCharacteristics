

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




@// Cases where async is useful include:

//     You are using await. (This is the obvious one.)

//     You are returning an error asynchronously. async and then throw is shorter than return Future.error(...).

//     You are returning a value and you want it implicitly wrapped in a future. async is shorter than Future.value(...).




