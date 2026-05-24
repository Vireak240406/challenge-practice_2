// //challenge1
// class Point {
//   int x = 0;
//   int y = 0;

//   Point({required this.x, required this.y}){}

//   void translate(int deltaX,int deltaY){
//     x+=deltaX;
//     y+=deltaY;
//     print("Result of delta is (${x},${y})");
//   }
//   String toString(){
//     return"Result:${x},${y}";
//   }
// }
// void main() {
//   Point p1 = Point(x: 10, y: 20);
//   print(p1);

//   p1.translate(1,2);
//   print(p1);

// }

// //challenge2
// class Retangle {
//   Point topLeft = Point(x: 0, y: 0);
//   Point bottomRight = Point(x: 0, y: 0);
//   int get getHeight => bottomRight.y - topLeft.y;
//   int get getWidth => bottomRight.x - topLeft.x;
//   int get getArea => getHeight * getWidth;

//   Retangle({required this.bottomRight, required this.topLeft}){}

//   String toString(){
//     return "Width:$getWidth,Height:$getHeight,Area:$getArea";
//   }
// }

// class Point {
//   int x = 0;
//   int y = 0;
//   Point({required this.x, required this.y}){}

// }

// void main() {
//   Retangle r1=Retangle(bottomRight: Point(x: 7, y: 9),topLeft: Point(x: 2, y: 3));
//   print(r1);
// }

// //challenge3
// class Person{
//   String firstName;
//   String lastName;

//   Person({required this.firstName, required this.lastName,}){}

//   String toString(){
//     return"FullName:$firstName$lastName";
//   }
// }

// void main(){
//   Person p1=Person(firstName:'Oun', lastName: 'Vireak');
//   print(p1);
// }

// //challenge4
// class Point {
//   final int x;
//   final int y;

//   Point({required this.x, required this.y}){}

//   Point translate(int deltaX,int deltaY){
//     return Point(x: deltaX+x, y: deltaY+y);
//   }
//   String toString(){
//     return"Result:${x},${y}";
//   }
// }
// void main() {
//   Point p1 = Point(x: 10, y: 20);
//   print(p1);

//   p1=p1.translate(1,2);
//   print(p1);

// }

// //challenge5
// class TravelTicket {
//   final String passenger;
//   final String destination;
//   final TravelClass travelClass;
//   final String? discount;

//   TravelTicket({
//     required this.passenger,
//     required this.destination,
//     required this.travelClass,
//     this.discount,
//   }) {}

//   String toString() {
//     if (discount != null) {
//       return "Ticket:$passenger -> $destination ,$travelClass,$discount";
//     } else {
//       return "Ticket:$passenger -> $destination ,$travelClass";
//     }
//   }
// }

// enum TravelClass { economy, business, first }

// void main() {
//   TravelTicket t1 = TravelTicket(
//     passenger: "Vireak",
//     destination: "Cambodai",
//     travelClass: TravelClass.business,
//     discount: "save20%",
//   );
//   print(t1);

//   TravelTicket t2 = TravelTicket(
//     passenger: "Vireak",
//     destination: "Cambodai",
//     travelClass: TravelClass.business,
//     discount: "",
//   );
//   print(t2);
// }

// //challenge6
// class Distance{
//     final double x;

//     Distance({required this.x}){}

//     String toString(){
//         while (x<=100) {
//             return"m=x*100";

//         }if(x>=100&&x<=100){
//             return"m=*x";

//         }else{
//          print(x=x);
//         }
//         }

//     }

// }

// Practice1

enum Skill { FLUTTER, DART, OTHER }

class Employee {
  String name;
  double baseSalary;
  String address;
  String yearsOfExperience;
  List<String> skill;

  Employee(
    this.name,
    this.baseSalary,
    this.address,
    this.yearsOfExperience,
    this.skill,
  );

  void printDetails() {
    print('Employee: $name, Base Salary: \$${baseSalary}');
  }
}

class Address{
    String street;
    String city;
    String zipCode;
    
}

void main() {
  var emp1 = Employee('Sokea', 40000);
  emp1.printDetails();

  var emp2 = Employee('Ronan', 45000);
  emp2.printDetails();
}
