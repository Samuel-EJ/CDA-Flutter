import 'package:centro_de_actividades/utils/constant.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // tamaño de pantalla
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
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
                  'Registro estudiantes',
                  style: TextStyle(fontSize: 22.0),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.02),
                _createName(),
                SizedBox(height: size.height * 0.02),
                _createEmail(),
                SizedBox(height: size.height * 0.02),
                _createPassword(),
                SizedBox(height: size.height * 0.02),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, 'login'),
                  child: Text(
                    'Registrarse',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _createName extends StatefulWidget {
  _createName({Key? key}) : super(key: key);

  @override
  __createNameState createState() => __createNameState();
}

class __createNameState extends State<_createName> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          icon: Icon(Icons.badge_outlined),
          labelText: 'Nombre Completo',
          hintText: 'Alex Martin Gross'),
    );
  }
}

class _createEmail extends StatefulWidget {
  _createEmail({Key? key}) : super(key: key);

  @override
  _createEmailState createState() => _createEmailState();
}

class _createEmailState extends State<_createEmail> {
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

class _createPassword extends StatefulWidget {
  _createPassword({Key? key}) : super(key: key);

  @override
  _createPasswordState createState() => _createPasswordState();
}

class _createPasswordState extends State<_createPassword> {
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
