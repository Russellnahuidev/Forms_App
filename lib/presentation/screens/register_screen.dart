import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/register/register_cubit.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nuevo Usuario')),
      body: BlocProvider(
        create: (context) => RegisterCubit(),
        child: _RegisterView(),
      ),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterLogo(size: 100),
              _RegisteraForm(),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisteraForm extends StatelessWidget {
  const _RegisteraForm();

  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final registerCubit = context.watch<RegisterCubit>();
    final username = registerCubit.state.username;
    final email = registerCubit.state.email;
    final password = registerCubit.state.password;

    return Form(
      //key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Nombre de usuario',
            onChanged: registerCubit.usernameChanged,
            errorMesage: username.errorMessage,
          ),
          SizedBox(height: 10),
          CustomTextFormField(
            label: 'Correo electrónico',
            onChanged: registerCubit.emailChanged,
            errorMesage: email.errorMessage,
          ),
          SizedBox(height: 10),
          CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
            onChanged: registerCubit.passwordChanged,
            errorMesage: password.errorMessage,
          ),
          SizedBox(height: 20),
          FilledButton.tonalIcon(
            onPressed: () {
              // final isValid = _formKey.currentState!.validate();
              // if (!isValid) return;

              registerCubit.onSubmit();
            },
            icon: Icon(Icons.save),
            label: Text('Crear ususario'),
          ),
        ],
      ),
    );
  }
}
