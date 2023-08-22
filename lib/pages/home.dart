import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String newwork='';
  List toDo=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    toDo.addAll(['Сходити до лікаря','Купити поїсти','Позайматися Flutter\'ом','Поспати','Поспілкуватися'],);
  }

  void menuOpen(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Menu'),
            
          ),
          body: Row(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              }, child: Text('На головну')),
              SizedBox(width: 30,),
              Text('Моє меню'),
          ]),
        );
      })
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFAF5) ,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Список справ'),
        actions: [
          IconButton(onPressed: menuOpen,
          icon: Icon(Icons.menu))
        ],
      ),
      body: ListView.builder(
        itemCount:toDo.length ,
        itemBuilder: (BuildContext context, int index) {
          return  Dismissible(
            key: Key(toDo[index]), 
            child: Card(
              child: ListTile(
                title: Text(toDo[index], style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
                trailing: IconButton(onPressed:() {
                  showDialog(context: context, builder: (BuildContext context) {
                  String initialValue = toDo[index];
                  return AlertDialog(
                    
                    title: Center(child: Text('Що хочеш змінити?')),
                    content: TextField(
                      
                      decoration: InputDecoration(labelText:'$initialValue'),
                      controller: TextEditingController(text: initialValue),
                      onChanged: (String value) {
                        newwork=value;
                      }),                      
                    actions: [ 
                      ElevatedButton(onPressed: () {  
                        if (newwork.isNotEmpty&&newwork!=initialValue) {                    
                        setState(() {
                          toDo[index]=newwork;
                        });   
                        }                  
                        Navigator.of(context).pop();
                      },
                      child: Text('Редагувати')),
                    ],
                    );
                },
                );

                }, 
                icon: Icon(
                  Icons.edit, 
                  color: Colors.black,),),

              ),
            ),
            onDismissed: (direction) {           
              setState(() {
                toDo.removeAt(index);
              });             
            },
          );
        }
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Center(child: Text('Додай нову справу')),
            content: TextField(
              onChanged: (String value) {
                 newwork=value;
              },
            ),
            actions: [
              ElevatedButton(onPressed: () {
                setState(() {
                  toDo.add(newwork);
                });
                Navigator.of(context).pop();
              },
              child: Text('Додати')),
            ]
          );
        },
        );
      },
      child: Icon(
          Icons.add, 
          color: Color(0xFFEAFF01),
          size: 30,
        ),
      ),
    );
  }
}

