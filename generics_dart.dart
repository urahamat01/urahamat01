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
  
  // Example:5 =====================
  
//   const JSON<String> json = {
    
//     'name' : 'John',
//     'address' : '123 Main St',
    
//   };
  
//   print(json);
  
  
  // Example:6 =====================
  
//   const person = Persons(height: 1.7);
//   const dog = Dog(height: 1);
  
//   print(person.height);
//   print(dog.height);
  
  
  // Example:7 =====================
  
//   const tuple = Tuple(1, 20.2);
  
//   print(tuple);
//   final swapped = tuple.swap();
//   print(swapped);
  
//   print(tuple.sum);
//   print(swapped.sum);

  
    // Example:8 =====================
  
  
}


 // Example:7 =====================

class Tuple <L, R>{
  final L left; 
  final R right;
  const Tuple(this.left, this.right);
  
  @override
  String toString() => 'Tople , left = $left, right = $right';
  
  
}

extension <L, R> on Tuple<L, R>{
Tuple<R, L> swap() => Tuple(right, left);  
}

extension<L extends num,R extends num>  on Tuple<L, R> {
  num get sum => left + right;
}

  // Example:6 =====================

// mixin HasHeight<H extends num>{
//   H get height;
// }

// typedef HasIntHeight = HasHeight<int>;

// typedef HasDoubleHeight = HasHeight<double>;

// class Persons with HasDoubleHeight{
  
//   @override
//   final double height;
//   const Persons({required this.height});
  
// }

// class Dog with HasIntHeight{
  
//   @override
//   final int height;
//   const Dog({required this.height});
  
// }





// Example:5 =====================

typedef JSON<T> = Map<String, T>;
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
