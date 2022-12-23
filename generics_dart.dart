void main(List<String> args) {
  //sayHi();

//   var list = [for (var i = 0; i < 10; i++) i];
//   print('${list.length}');
//   final double doubleLeValue = eitherIntOrDoubles();

//   final int intLeValue = eitherIntOrDoubles();

//   // final String intLeValues = eitherIntOrDoubles();

//   print(doubleLeValue);
//     print(intLeValue);

  // print(Li st.generate(10, (index) => index));
  
  // Example:2 =====================

  //print(doTypesMatch('Foo','Bar'));

//   print(doTypesMatchTYPE(1, 1));

  // Example:3  =================
//   const momAndDad = {
//     'mom': Person(),
//     'dad': Person(),
//   };

//   const broatherAndSisterAndMyFish = {
//     'Brother': Person(),
//     'Sister': Person(),
//     'Fishy': Fish(),
//   };

//   final allValues = [
//     momAndDad,
//     broatherAndSisterAndMyFish,
//   ];
  
//   describe(allValues);
  
  // Example:4 =====================
  
// const one = KeyValue(1, 2);
//   print(one);
  
//   const two = KeyValue(1, 2.2);
//   print(two);
  
//   const three = KeyValue(1, ' Foo');
//   print(three);
//   const KeyValue<int, int> four = KeyValue(1, 2);
//   print(four);
  
  // Example:4 =====================
  
  
  
}

// Example:5 =====================


// Example:4 =====================
typedef KeyValue<K,V> = MapEntry<K,V>;



// Example:3  =================

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      print('Will call breathe() on ${keyAndValue.key}');
      keyAndValue.value.brathe();
    }
  }
}

typedef BreathingThings = Map<String, CanBreathe>;

mixin CanBreathe {
  void brathe();
}

class Person with CanBreathe {
  const Person();

  @override
  void brathe() {
    print('Person is breathing...');
  }
}

class Fish with CanBreathe {
  const Fish();

  @override
  void brathe() {
    print('Fish is breathing ...');
  }
}

// Example:2 =====================
bool doTypesMatchTYPE<L, R>(L a, R b) => L == R;

bool doTypesMatch(Object a, Object b) {
  return a.runtimeType == b.runtimeType;
}

enum WhatRoReturn { int, double }

// Example:1  ========================
T eitherIntOrDoubles<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 2.0 as T;
    default:
      throw Exception('Not Supported');
  }
}

num eitherIntOrDouble(WhatRoReturn whatToReturn) {
  switch (whatToReturn) {
    case WhatRoReturn.int:
      return 1;

    case WhatRoReturn.double:
      return 2.0;
  }
}


//Test case
void sayHi() {
  print("Hi");
  sayHi();
}
