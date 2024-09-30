abstract class Conta<T> {
  String nomeConta;
  T saldo;

  Conta(this.nomeConta, this.saldo);

  void depositar(T valor) {
    saldo = _adicionar(saldo, valor);
  }

  void sacar(T valor) {
    saldo = _subtrair(saldo, valor);
  }

  T _adicionar(T a, T b);
  T _subtrair(T a, T b);
}

class ContaCorrente extends Conta<double> {
  ContaCorrente(String nomeConta, double saldo) : super(nomeConta, saldo);

  @override
  double _adicionar(double a, double b) => a + b;

  @override
  double _subtrair(double a, double b) => a - b;
}

class ContaPoupanca extends Conta<int> {
  ContaPoupanca(String nomeConta, int saldo) : super(nomeConta, saldo);

  @override
  int _adicionar(int a, int b) => a + b;

  @override
  int _subtrair(int a, int b) => a - b;
}
