import 'package:Tera/pages/pagamento.dart';
import 'package:flutter/material.dart';

class CatalogoPage extends StatelessWidget {
  const CatalogoPage({Key key}) : super(key: key);

  Widget _listaCatalogo(
      context, String nomeProduto, String categoria, String descricao) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(
              'assets/tera_laranja.png',
              width: 30,
              height: 30,
            ),
            title: Text(nomeProduto),
            subtitle: Text(
              categoria,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Image.asset(
            'assets/tera_laranja.png',
            height: 125,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              descricao,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.remove), onPressed: null),
                  Text("0"),
                  IconButton(icon: Icon(Icons.add), onPressed: null),
                ],
              ),
              SizedBox(
                width: 1,
              ),
              FlatButton(
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  // Perform some action
                },
                child: const Text('Adicionar ao carrinho'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _drawerCatalogo() {
    return ListView(
      children: const <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Pedro Jardim"),
          accountEmail: Text("pedro.jardim@yahoo.com"),
          currentAccountPicture: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://cdn3.iconfinder.com/data/icons/user-avatar-7/512/397_Avatar_User_Basic-512.png'),
            backgroundColor: Colors.transparent,
          ),
        ),
        ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text('Carrinho'),
        ),
        ListTile(
          leading: Icon(Icons.credit_card),
          title: Text('Formas de pagamento'),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('Quem somos'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: _drawerCatalogo(),
      ),
      appBar: AppBar(
        title: Text("Catalogo de produtos"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_alt,
            ),
            onPressed: () {
              // TODO: adicionar funcao de filtrar produtos
            },
          )
        ],
      ),
      body: Container(
          child: ListView(
        children: [
          _listaCatalogo(context, "Batata doce", "Legume",
              "A batata-doce, também chamada batata-da-terra, batata-da-ilha, jatica e jetica, é uma planta da família das convolvuláceas, da ordem das Solanales. Originária dos Andes, se espalhou pelos trópicos e subtrópicos de todo o mundo"),
          _listaCatalogo(context, "Banana", "Fruta",
              "Rica em vitamina D, é uma fruta essencial para aqueles que praticam exercicio fisico"),
          _listaCatalogo(context, "Abacate", "Fruta",
              "Ja diria a vovo jujuba, abacate faz muito bem para voce :)"),
          _listaCatalogo(context, "Melancia", "Fruta",
              "Originária da África, a melancia é rica em água, o que a torna muito refrescante. Possui açúcar, cálcio, fósforo e ferro e apresenta capacidade antioxidante e anti-inflamatória."),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        tooltip: "Ir para carrinho",
        child: Icon(Icons.shopping_cart),
        onPressed: () {
          print("ir para pagina de carrinho");
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PagamentoPage()));
        },
        backgroundColor: Theme.of(context).primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
