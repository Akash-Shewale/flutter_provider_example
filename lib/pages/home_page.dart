import 'package:flutter/material.dart';
import 'package:flutter_provider_example/user_provider/user_provider.dart';
import 'package:flutter_provider_example/widgets/textfield_with_border.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    ageController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    UserProvider userProvider = Provider.of<UserProvider>(context, listen: false);

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Add User'),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               TextFieldWithBorder(
                labelText: 'User Name',
                controller: nameController,
               ),
              const SizedBox(height: 10,),
              TextFieldWithBorder(
                labelText: 'Age',
                controller: ageController,
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () async {
                  await userProvider.addUser(name: nameController.text, age: int.parse(ageController.text));
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('User Added Successfully.'),
                  ));
                },
                child: const Text('+ ADD'),
              ),
            ],
          ),
        ));
  }
}
