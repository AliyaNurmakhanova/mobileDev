// 2.	Напишите программу для реализации класса “студент” со следующими полями:
// имя студента, оценки студента полученные по трем предметам. Конструктор для присвоения
// начальных значений. Метод для вычисления общего среднего значения. Метод отображения имени
// студента и сумму баллов. Напишите соответствующую функцию main (), чтобы продемонстрировать
// функционирование вышеперечисленного.
class Student {
  String? name;
  int kazakh = 0;
  int english = 0;
  int korean = 0;

  Student(String? name, int kazakh, int english, int korean) {
    this.name = name;
    this.kazakh = kazakh;
    this.english = english;
    this.korean = korean;
  }

  String? getName() {
    return name;
  }

  void setName(String? name) {
    this.name = name;
  }

  int? getKazakh() {
    return kazakh;
  }

  void setKazakh(int kazakh) {
    this.kazakh = kazakh;
  }

  int? getEnglish() {
    return english;
  }

  void setEnglish(int english) {
    this.english = english;
  }

  int? getKorean() {
    return korean;
  }

  void setKorean(int korean) {
    this.korean = korean;
  }

  void average() {
    double total = (kazakh + english + korean) / 3;
    print("$name's total point is $total");
  }
}

void main(List<String> args) {
  Student Aliya = Student('Aliya', 90, 85, 80);
  Aliya.average();
}
