import 'package:flutter/material.dart';

class PagamentoPage extends StatelessWidget {
  const PagamentoPage({Key key}) : super(key: key);

  Widget _categorias() {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 5, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            child: Text("Produto"),
          ),
          Container(
            width: 120,
            child: Text("Quantidade"),
          ),
          Container(
            width: 100,
            child: Text("Preco"),
          ),
        ],
      ),
    );
  }

  Widget _colunaProduto(String nome, int quantidade, int preco) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 5, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100, //TODO: colocar isso em funcao da tela do celular
            child: Text(
              nome,
              softWrap: true,
            ),
          ),
          SizedBox(width: 30),
          Container(
            width: 100,
            child: Text(quantidade.toString()),
          ),
          Container(
            width: 100,
            child: Text(preco.toString()),
          ),
          Container(child: IconButton(icon: Icon(Icons.edit), onPressed: null))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text("Finalize seu pedido")),
        body: Column(
          children: [
            _categorias(),
            Expanded(
              child: ListView(
                children: [
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Banana", 2, 5),
                  _colunaProduto("Batata doce", 10, 30),
                  _colunaProduto("Abacaxi", 2, 10),
                  _colunaProduto("Acerola", 20, 30),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  _colunaProduto("Abacate", 3, 15),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 20, bottom: 30),
                    child: Text(
                      "TOTAL: R\$85,50",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card_rounded), label: "Pagamento"),
            BottomNavigationBarItem(icon: Icon(Icons.map), label: "Entrega"),
            BottomNavigationBarItem(
                icon: Icon(Icons.check), label: "Finalizar pedido"),
          ],
        ),
      ),
    );
  }
}
