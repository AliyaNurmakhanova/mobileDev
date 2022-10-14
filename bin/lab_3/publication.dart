// 3.	Создайте абстрактный класс “ Publication ” с переменными  “Title”,"amountOfPages’, ‘price’, ‘PublisherName’ и т. Д.
// с их функциями доступа/модификатора. Теперь создайте два подкласса “Book” и “ Journal ”. Напишите функцию main() и создайте
// три книги и два журнала, добавьте их в библиотеку и распечатайте детали всех публикаций.
abstract class Publication {
  String? title;
  int? amountOfPages;
  int? price;
  String? publisherName;

  Publication(this.title, this.amountOfPages, this.price, this.publisherName);

  String? getTitle() {
    return this.title;
  }

  void setTitle(String? title) {
    this.title = title;
  }

  int? getamountOfPages() {
    return this.amountOfPages;
  }

  void setAmountOfPages(int? amountOfPages) {
    this.amountOfPages = amountOfPages;
  }

  int? getPrice() {
    return this.price;
  }

  void setPrice(int? price) {
    this.price = price;
  }

  String? getPublisherName() {
    return this.publisherName;
  }

  void setPublisherName(String? publisherName) {
    this.publisherName = publisherName;
  }

  void show() {
    print(
        "Title is $title, amount of pages is $amountOfPages, price is $price, publisher name is $publisherName");
  }
}

class Book extends Publication {
  Book(super.title, super.amountOfPages, super.price, super.publisherName);

  @override
  void show() {
    super.show();
  }
}

class Journal extends Publication {
  Journal(super.title, super.amountOfPages, super.price, super.publisherName);

  @override
  void show() {
    super.show();
  }
}

void main(List<String> args) {
  Publication publication = Book('AOT', 500, 1200, 'Jin');
  Publication publication2 = Book('BTS', 777, 5000, 'RM');
  Publication journal = Journal('Vogue', 200, 7654, 'Me');
  publication.show();
}
