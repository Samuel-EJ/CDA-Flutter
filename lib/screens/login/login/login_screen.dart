import 'package:centro_de_actividades/utils/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // tamaño de pantalla
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Inicio de sesion',
                  style: TextStyle(fontSize: 22.0),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.02),
                _crearEmail(),
                SizedBox(height: size.height * 0.02),
                _crearPassword(),
                SizedBox(height: size.height * 0.02),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, 'assignatures'),
                  child: Text('Ingresar'),
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, 'register'),
                  child: Text('Registrate'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _crearEmail extends StatefulWidget {
  _crearEmail({Key? key}) : super(key: key);

  @override
  __crearEmailState createState() => __crearEmailState();
}

class __crearEmailState extends State<_crearEmail> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          icon: Icon(Icons.alternate_email),
          labelText: 'Email',
          hintText: 'example@mail.com'),
    );
  }
}

class _crearPassword extends StatefulWidget {
  _crearPassword({Key? key}) : super(key: key);

  @override
  __crearPasswordState createState() => __crearPasswordState();
}

class __crearPasswordState extends State<_crearPassword> {
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      maxLength: 4,
      obscureText: _obscuretext,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        hintText: '****',
        icon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(_obscuretext ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            setState(() {
              _obscuretext = !_obscuretext;
            });
          },
        ),
      ),
    );
  }
}
