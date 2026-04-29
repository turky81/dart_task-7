//2.Write a dart program to create a class Camera with private properties [id, brand, color, price].
// Create a getter and setter to get and set values.
// Also, create 3 objects of it and print all details.

class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

// Constructor
  Camera(this._id, this._brand, this._color, this._price);

// Getters
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

// Setters مع validation
  set id(int id) {
    if (id > 0) {
      _id = id;
    } else {
      print("Invalid ID: must be greater than 0");
    }
  }

  set brand(String brand) {
    if (brand.isNotEmpty) {
      _brand = brand;
    } else {
      print("Invalid Brand: cannot be empty");
    }
  }

  set color(String color) {
    if (color.isNotEmpty) {
      _color = color;
    } else {
      print("Invalid Color: cannot be empty");
    }
  }

  set price(double price) {
    if (price >= 0) {
      _price = price;
    } else {
      print("Invalid Price: cannot be negative");
    }
  }

// Method to display details
  void display() {
    print("ID: $_id");
    print("Brand: $_brand");
    print("Color: $_color");
    print("Price: $_price \$");
    print("-------------------");
  }
}

void main() {
  Camera cam1 = Camera(1, "Canon", "Black", 5000);
  Camera cam2 = Camera(2, "Nikon", "Red", 4500);
  Camera cam3 = Camera(3, "Sony", "White", 6000);

  cam1.display();
  cam2.display();
  cam3.display();

// تجربة validation
  cam1.price = -200; // خطأ
  cam1.brand = "";   // خطأ
  cam1.id = 0;       // خطأ

  print("After محاولة التعديل:");
  cam1.display();
}
