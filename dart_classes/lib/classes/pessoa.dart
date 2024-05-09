class Pessoa {
  String nome = "Padrão nome";
  int idade = 18;
  String endereco = "Padrão endereço";
  Pessoa(String nome, String endereco) {
    nome = nome;
    endereco = endereco;
  }
  void setNome(String nome) {
    this.nome = nome;
  }

  void setEndereco(String endereco) {
    this.endereco = endereco;
  }

  void setIdade(int idade) {
    this.idade = idade;
  }

  String getNome() {
    return nome;
  }

  String getEndereco() {
    return endereco;
  }

  int getIdade() {
    return idade;
  }

  @override
  String toString() {
    return {"Nome": nome, "Endereço": endereco, "Idade": idade}.toString();
  }
}
