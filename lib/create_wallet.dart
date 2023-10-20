import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web3_wallet/main.dart';
import 'package:web3_wallet/wallet.dart';
import 'package:provider/provider.dart';
import '';
class createWallet extends StatelessWidget {
  const createWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/b2.jpg'),
          fit:BoxFit.cover
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          SizedBox(height:350,width:300,child: Image.asset('assets/wallet.jpg')),
          ElevatedButton(
            onPressed: (){
              final provider = Provider.of<wallet>(context,listen: false);
              provider.createWallet();
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>MyHomePage(title: "Web3 Wallet",)));
            },
            style: ElevatedButton.styleFrom(
              elevation: 12,
              textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22)
            ),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text("Create Wallet"),
            )
          ),
        ],
      ),
    );
  }
}
