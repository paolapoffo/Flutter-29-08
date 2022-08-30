class Model
 {
  int id;
  String nome;
  String email;
  String senha;

  Model({
    required this.id,
    required this.nome,
    required this.email,
    required this.senha,
  });

  factory Model.fromMap(Map<String, dynamic> map) {
    return Model(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      email: map['email'] ?? '',
      senha: map['senha'] ?? '',
    );
  }
}
