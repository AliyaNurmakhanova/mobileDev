// 2.	Напишите класс “BankAccount” со следующими переменными экземпляра: AccountID (целое число),
// balance (число с плавающей запятой) и “OwnerName” (строка). Напишите правильный конструктор для этого класса.
// Также напишите методы showBalance(для вывода суммы), add (для внесения суммы) и subtract (для вычета) и реализуйте их.
// Теперь создайте еще один класс “AccountManager”, содержащий массив BankAccount. Напишите методы create (создать учетную запись),
// delete(удалить учетную запись), deposit (внести сумму на счет) и withdraw (снять сумму со счета). Добавьте 5 учетных записей.
// Теперь распечатайте реквизиты всех счетов в этом банке.
import 'dart:ffi';

class BankAccount {
  int? accountID;
  double? balance;
  String? ownerName;

  BankAccount(this.accountID, this.balance, this.ownerName);

  double? showBalance() {
    return balance;
  }

  void addBalance(double balance) {
    if (this.balance == 0) {
      this.balance = balance;
    } else {
      this.balance = (this.balance! + balance);
    }
  }

  void substract(double balance) {
    this.balance = (this.balance! - balance);
  }

  void show() {
    print('id: $accountID \n balance: $balance \n owner is $ownerName');
  }
}

class AccountManager {
  List<BankAccount> accounts = [];

  void createAccount(BankAccount accounts) {
    this.accounts.add(accounts);
  }

  void deleteAccount(BankAccount accounts) {
    this.accounts.remove(accounts);
  }

  void deposit(BankAccount accounts, double sum) {
    accounts.addBalance(sum);
  }

  void withdraw(BankAccount accounts, double sum) {
    accounts.substract(sum);
  }

  void showAccount() {
    for (int i = 0; i < accounts.length; i++) {
      print(
          '${accounts[i].accountID}: ${accounts[i].balance} ${accounts[i].ownerName}');
    }
  }
}

void main(List<String> args) {
  BankAccount Aliya = BankAccount(1, 100.0, 'Aliya');
  BankAccount JK = BankAccount(2, 200.0, 'Jeongkook');
  BankAccount Chris = BankAccount(3, 300.0, 'Christopher');

  List<BankAccount> accounts = [Aliya, JK, Chris];

  AccountManager bank = AccountManager();
  bank.createAccount(Aliya);
  bank.createAccount(JK);
  bank.createAccount(Chris);
  bank.showAccount();
  print(Aliya.showBalance());
}
