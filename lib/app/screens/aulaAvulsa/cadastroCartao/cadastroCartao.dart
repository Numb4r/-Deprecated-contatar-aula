import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:aula_online/app/shared/components/SubmitButton.dart';
import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:provider/provider.dart';

class CadastroCartao extends StatefulWidget {
  @override
  _CadastroCartaoState createState() => _CadastroCartaoState();
}

class _CadastroCartaoState extends State<CadastroCartao> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    final avulsa = Provider.of<CompraAvulsaBloc>(context);
    return Scaffold(
      appBar: title(),
      body: Column(
        children: <Widget>[
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  CreditCardForm(
                    themeColor: Colors.orange,
                    onCreditCardModelChange: onCreditCardModelChange,
                  ),
                  SubmitButton(
                    label: "Enviar",
                    onPressed: () {
                      Map creditCardInfo = {
                        "cardNumber": cardNumber,
                        "expiryDate": expiryDate,
                        "cardHolderName": cardHolderName,
                        "cvvCode": cvvCode,
                      };
                      avulsa.creditCardInfo = creditCardInfo;
                      avulsa.creditCardPayment = true;
                      Navigator.pushNamed(
                          context, Routes.ResumoAvulsa.toString());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
