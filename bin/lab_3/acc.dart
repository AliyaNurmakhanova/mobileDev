// 4.	Напишите класс для “Account”, содержащий элементы данных ‘accountNumber’, ‘holderName’, ‘balance’ и добавьте
// конструкторы и необходимые функции доступа/модификатора для этих элементов данных. Теперь создайте класс “CurrentAccount”,
// наследующих от класса Account. CurrentAccount будет иметь переменную ‘InterestRate’ и функцию ‘calculateYearlyInterest’.
// Создайте несколько аккаунтов и для InterestRate укажите процент, в CalculateYearlyInterest передайте количество лет, чтобы вывести
// полученные проценты от вложения.
class Account {
  int? accountNumber;
  String? holderName;
  double? balance;

  Account(this.accountNumber, this.holderName, this.balance);

  void setAccountNumber(int accountNumber) {
    this.accountNumber = accountNumber;
  }

  int? getAccountNumber() {
    return this.accountNumber;
  }

  void setHolderName(String holderName) {
    this.holderName = holderName;
  }

  String? getHolderName() {
    return this.holderName;
  }

  void addBalance(double balance) {
    if (this.balance == 0) {
      this.balance = balance;
    } else {
      this.balance = (this.balance! + balance);
    }
  }

  double? showBalance() {
    return this.balance;
  }

  void show() {
    print('$accountNumber $holderName $balance');
  }
}

class CurrentAccount extends Account {
  double? interstRate;
  CurrentAccount(
      super.accountNumber, super.holderName, super.balance, this.interstRate);

  double? calculateYearlyInterest(int year) {
    return year * interstRate!;
  }

  @override
  void show() {
    super.show();
  }
}

void main(List<String> args) {
  CurrentAccount account = CurrentAccount(1, 'Aliya', 500, 20);
  account.show();

  print(account.calculateYearlyInterest(2));
}
