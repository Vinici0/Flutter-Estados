class Usuario {
  String nombre;
  int edad;
  List<String> profesiones;

  Usuario(
      {required this.nombre, required this.edad, required this.profesiones});

  set setEdad(int edad) {
    this.edad = edad;
  }

  copyWith({String? nombre, int? edad, List<String>? profesiones}) {
    return Usuario(
        nombre: nombre ?? this.nombre,
        edad: edad ?? this.edad,
        profesiones: profesiones ?? this.profesiones);
  }
}
