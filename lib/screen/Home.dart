import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:cobamvvm/provider/home_provider.dart';
import 'package:cobamvvm/Model/dataModel.dart';

class MyHomePage extends StatelessWidget{
  MyHomePage(String s);

  
  
  @override
  Widget build(BuildContext context) {   
    return ViewModelBuilder<HomeProvider>.reactive(
      onModelReady: (model) => model.inisial(),
      viewModelBuilder: () => HomeProvider(),
      builder : (_,model,__)=> Scaffold(
        appBar: AppBar(      
          title: Text("Belajar MVVM"),
        ),
        body: model.isBusy ? Center(child: Text('Data belum ditemukan'),) : Center(     
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network('${model.data.data.avatar}'),
              Text(
                '${model.data.data.first_name}',
              ),             
              Text(
                '${model.data.data.email}',
              )
             
            ],
          ),
        ),
        
      ),
    );
  }
}
