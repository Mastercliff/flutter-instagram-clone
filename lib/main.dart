import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Insta App",
    home: InstaHome(),
  ));
}

class InstaHome extends StatefulWidget {
  @override
  _InstaHomeState createState() => _InstaHomeState();
}

Widget textBoxModel(String hint, {passIcon}) {
  return Padding(
    padding: EdgeInsets.only(top: 10, left: 20, right: 20),
    child: TextFormField(
      decoration: InputDecoration(
        suffixIcon: passIcon == null
            ? null
            : IconButton(icon: passIcon, onPressed: () {}),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        filled: true,
        fillColor: Colors.grey[900],
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white38),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 1, color: Colors.black26),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 1, color: Colors.black26),
        ),
      ),
    ),
  );
}

class _InstaHomeState extends State<InstaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          elevation: 0,
          title: Text(
            "português (Brasil)",
            style: TextStyle(color: Colors.white38, fontSize: 14),
          ),
        ),
        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: 110, right: 110, bottom: 20, top: 70),
                        child: Image.asset(
                          "assets/logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      textBoxModel(
                          "Número de telefone, email ou nome de usuário"),
                      textBoxModel("Senha",
                          passIcon: Icon(Icons.remove_red_eye)),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.symmetric(vertical: 18),
                            child: Text(
                              "Entrar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            color: Colors.blue[800],
                            onPressed: () {}),
                      ),
                      GestureDetector(
                        child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white38,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Esqueceu seus dados de login?'),
                                  TextSpan(
                                      text: ' Obtenha ajuda para entrar.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                        onTap: () {},
                      ),
                      Expanded(
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  GestureDetector(
                                    child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                top: BorderSide(
                                                    color: Colors.white10))),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 15),
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white38,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Não tem uma conta?'),
                                              TextSpan(
                                                  text: ' Cadastra-se.',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        )),
                                    onTap: () {},
                                  )
                                ],
                              )))
                    ],
                  ),
                )),
          );
        }));
  }
}
