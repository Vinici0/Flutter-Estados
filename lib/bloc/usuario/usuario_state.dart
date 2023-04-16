part of 'usuario_cubit.dart';

//No pueden cambiar los estados de la clase UsuarioState
@immutable
abstract class UsuarioState {}

class UsuarioInitial extends UsuarioState {
  final existeUsuario = false;
}

//Al extender de UsuarioState, se heredan los atributos de la clase UsuarioState
class UsuarioActivo extends UsuarioState {
  final existeUsuario = true;
  late final Usuario usuario;
  final String nombre = "Fernando";
  UsuarioActivo(this.usuario);
}
