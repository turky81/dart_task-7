//1.Write a dart program to create a class Animal with properties [id, name, color].
// Create another class called Cat and extends it from Animal.
// Add new properties sound in String. Create an object of a Cat and print all details.

class Animal {
  int id;
  String name;
  String color;

// Constructor
  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

// Constructor مع استدعاء Constructor الأب
  Cat(int id, String name, String color, this.sound)
      : super(id, name, color);

// Method لعرض البيانات
  void display() {
    print("ID: $id");
    print("Name: $name");
    print("Color: $color");
    print("Sound: $sound");
  }
}

void main() {
// إنشاء object من Cat
  Cat cat1 = Cat(1, "Kitty", "White", "Meow");

// طباعة كل التفاصيل
  cat1.display();
}
