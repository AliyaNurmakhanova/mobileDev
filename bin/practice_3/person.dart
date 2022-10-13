// 4.	Реализуйте класс для “Человека”. Человек имеет элементы данных “имя”, "возраст", ’вес’, ‘рост’,
// ‘Дата рождения’, ‘адрес’ с соответствующими методами чтения/записи и т.д. Теперь создайте два подкласса
// “Сотрудник” и “Студент”. Сотрудник будет иметь дополнительные данные переменной "зарплата’, ‘Дата соединения’,
// ‘опыт работы" и т.д. Студент имеет данные переменной "roll’, ‘listOfSubjects’, их оценки и методы" calculateGrade’.
// Снова создайте два подкласса “Техник” и “Профессор” из Сотрудника. Профессор имеет данные переменной "курсы",
// "listOfAdvisee" и их методы добавления/удаления. Напишите функцию main (), чтобы продемонстрировать создание объектов
// разных классов и вызовы их методов.
class Person {
  String? name;
  int? age;
  double? weight;
  double? height;
  String birthday;
  String? address;

  Person(this.name, this.age, this.weight, this.height, this.birthday,
      this.address);

  String? getName() {
    return name;
  }

  void setName(String? name) {
    this.name = name;
  }

  int? getAge() {
    return age;
  }

  void setAge(int? age) {
    this.age = age;
  }

  double? getWeight() {
    return weight;
  }

  void setWeight(double? weight) {
    this.weight = weight;
  }

  double? getHeight() {
    return height;
  }

  void setheight(double? height) {
    this.height = height;
  }

  String getBirthday() {
    return birthday;
  }

  void setBirthday(String birthday) {
    this.birthday = birthday;
  }

  String? getAddress() {
    return address;
  }

  void setAddress(String? address) {
    this.address = address;
  }

  void show() {
    print(
        '$name :\t age is $age \n\t weight is $weight \n\t height is $height \n\t date of birth is $birthday \n\t address is $address');
  }
}

class Employee extends Person {
  double? salary;
  String? hireDate;
  int? experience;

  Employee(super.name, super.age, super.weight, super.height, super.birthday,
      super.address, this.salary, this.hireDate, this.experience);

  double? getSalary() {
    return salary;
  }

  void setSalary(double? salary) {
    this.salary = salary;
  }

  String? getHireDate() {
    return hireDate;
  }

  void setHireDate(String? hireDate) {
    this.hireDate = hireDate;
  }

  int? getExperience() {
    return experience;
  }

  void setExperience(int? experience) {
    this.experience = experience;
  }

  @override
  void show() {
    super.show();
    print(
        '\t salary is $salary \n\t hire date is $hireDate \n\t experience $experience');
  }
}

class Student extends Person {
  List<String> listOfSubjects;
  List<double> grade;

  Student(super.name, super.age, super.weight, super.height, super.birthday,
      super.address, this.listOfSubjects, this.grade);

  List<String> getListOfSubject() {
    return this.listOfSubjects;
  }

  void setListOfSubjects(List<String> listOfSubjects) {
    this.listOfSubjects = listOfSubjects;
  }

  List<double?> getGrade() {
    return this.grade;
  }

  void setGrade(List<double> grade) {
    this.grade = grade;
  }

  double calculateGrade() {
    var sum = 0.0;
    for (int i = 0; i < grade.length; i++) {
      sum += grade[i];
    }
    return sum / grade.length;
  }

  @override
  void show() {
    super.show();
    print('\t subjects: $listOfSubjects \n\t grades: $grade');
  }
}

class Technician extends Employee {
  Technician(super.name, super.age, super.weight, super.height, super.birthday,
      super.address, super.salary, super.hireDate, super.experience);

  // @override
  // void show() {
  //   super.show();
  // }
}

class Proffessor extends Employee {
  List<String>? courses;
  List<String>? listOfAdvises;

  Proffessor(
      super.name,
      super.age,
      super.weight,
      super.height,
      super.birthday,
      super.address,
      super.salary,
      super.hireDate,
      super.experience,
      this.courses,
      this.listOfAdvises);

  List<String>? getListOfAdvise() {
    return listOfAdvises;
  }

  void setListOfAdvises(List<String> listOfAdvises) {
    this.listOfAdvises = listOfAdvises;
  }

  List<String>? getCourses() {
    return courses;
  }

  void setCourses(List<String> courses) {
    this.courses = courses;
  }
}

void main(List<String> args) {
  Person person = Person('Aliya', 20, 47, 168, '2002-01-08', 'Almaty');
  Employee Aliya = Employee(
      'Aliya', 20, 47, 168, '2002-01-08', 'Almaty', 1000, '2020-02-01', 3);
  Aliya.show();
}
