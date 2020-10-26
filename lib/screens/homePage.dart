import 'package:flutter/material.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';

import '../constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.blueAccent,
              onPressed: () async {
                PaymentResult result =
                    await MercadoPagoMobileCheckout.startCheckout(publicKeyTest,
                        "20637514-c5b80985-23af-4447-907f-c2481fa5e7d3");

                print(result.toString());
              },
              child: Text('Pagar com MercadoPago'),
            ),
          ],
        ),
      ),
    );
  }
}
