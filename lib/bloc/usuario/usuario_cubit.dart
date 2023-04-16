import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_master/models/usuario.dart';
import 'package:meta/meta.dart';
part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  void seleccionarUsuario(Usuario usuario) {
    emit(UsuarioActivo(usuario));
  }

  void cambiarEdad(int edad) {
    final stateActual = state;
    if (stateActual is UsuarioActivo) {
      // imprime el id de la instancia de usuario
      print(stateActual.usuario.hashCode);
      final nuevoUsuario = stateActual.usuario.copyWith(edad: edad);
      print(nuevoUsuario.hashCode);
      emit(UsuarioActivo(nuevoUsuario));
    }
  }

  void agregarProfesion(String profesion) {
    final stateActual = state;
    if (stateActual is UsuarioActivo) {
      final nuevoUsuario = stateActual.usuario.copyWith(
          profesiones: [...stateActual.usuario.profesiones, profesion]);
      emit(UsuarioActivo(nuevoUsuario));
    }
  }

  void borrarUsuario() {
    emit(UsuarioInitial());
  }
}
