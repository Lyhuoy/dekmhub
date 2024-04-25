import 'package:dek_mhob/components/my_button.dart';
import 'package:dek_mhob/pages/delivery_progress_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String cardNumber = '23987379876529';
  String expiryDate = '22/25';
  String cardHolderName = 'Lyhuoy In';
  String cvvCode = '345';
  bool showBackView = false;
  String bankName = 'ABA Bank';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      showBackView = creditCardModel.isCvvFocused;
    });
  }

  void onCreditCardWidgetChange(CreditCardModel creditCardModel) {
    cardNumber = creditCardModel.cardNumber;
    expiryDate = creditCardModel.expiryDate;
    cardHolderName = creditCardModel.cardHolderName;
    cvvCode = creditCardModel.cvvCode;
    showBackView = creditCardModel.isCvvFocused;
  }

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Confirm payment'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Card number: $cardNumber'),
                Text('Expiry date: $expiryDate'),
                Text('Card holder name: $cardHolderName'),
                Text('CVV code: $cvvCode'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeliveryProgressPage(),
                  ),
                );
              },
              child: const Text('Confirm'),
            ),
          ],
        ),
      );
    } else {
      print('Not Validated');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Page'),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(
        children: [
          CreditCardWidget(
            cardBgColor: Colors.black,
            bankName: bankName,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            onCreditCardWidgetChange: (p0) {},
          ),
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: onCreditCardModelChange,
            formKey: formKey,
          ),
          const Spacer(),
          MyButton(
            onPressed: userTappedPay,
            text: "Pay now",
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
