
import 'package:flutter/material.dart';


void main() {
  runApp(OrderDetail());
}

class OrderDetail extends StatefulWidget {
  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Text('Checkout'),
    
  );

}