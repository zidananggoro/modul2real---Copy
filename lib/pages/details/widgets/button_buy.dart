import 'package:cinemovie_app/pages/details/widgets/provider.dart';
import 'package:flutter/material.dart';
import '/constants.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      margin: const EdgeInsets.only(top: kDefaultPadding),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: Colors.black.withOpacity(0.23),
          )
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue.shade300,
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Provider()));
        },
        child: Text(
          'Next',
          style: textStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
