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
            height: 200,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              descricao,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  // Perform some action
                },
                child: const Text('botao 1 '),
              ),
              FlatButton(
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  // Perform some action
                },
                child: const Text('botao 2'),
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
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
          child: Text(
            'Dados do usuario',
            style: TextStyle(
              color: Colors.green,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          title: Text('Carrinho'),
        ),
        ListTile(
          title: Text('Formas de pagamento'),
        ),
        ListTile(
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
        ],
      )),
      floatingActionButton: FloatingActionButton(
        tooltip: "Ir para carrinho",
        child: Icon(Icons.shopping_cart),
        onPressed: () {
          print("ir para pagina de carrinho");
        },
        backgroundColor: Theme.of(context).primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
