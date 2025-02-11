import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:groceryapp/screens/Payment-Method/shipping_Address_Screen.dart';

class Add_Credit_Card extends StatelessWidget {
  const Add_Credit_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Add_Credit_Card_Design());
  }
}

class Add_Credit_Card_Design extends StatefulWidget {
  const Add_Credit_Card_Design({super.key});

  @override
  State<Add_Credit_Card_Design> createState() => _Add_Credit_Card_DesignState();
}

class _Add_Credit_Card_DesignState extends State<Add_Credit_Card_Design> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = true;
  bool isHolderNameVisible = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              height: 200,
              width: MediaQuery.of(context).size.width,
              animationDuration: Duration(milliseconds: 1000),
              onCreditCardWidgetChange: (CreditCardBrand) {},

            ),
            new OutlinedButton(
              onPressed: null,
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Proceed to Pay',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: CreditCardForm(
                  onCreditCardModelChange: onModelChange,
                   cardHolderName: this.cardHolderName,
                   cardNumber: this.cardNumber,
                   cvvCode: this.cvvCode,
                   expiryDate: this.expiryDate,
                   formKey: GlobalKey(),
                  //  themeColor: Colors.white,
                  //  cardHolderDecoration: const InputDecoration(
                  //   labelText: 'Card Holder',
                  //
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onModelChange(CreditCardModel model) {
    setState(() {
      cardNumber = model.cardNumber;
      expiryDate = model.expiryDate;
      cardHolderName = model.cardHolderName;
      cvvCode = model.cvvCode;
      isCvvFocused = model.isCvvFocused;

      print('Card Holder Name: $cardHolderName');
    });
  }
}
