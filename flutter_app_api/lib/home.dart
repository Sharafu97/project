import 'package:flutter/material.dart';
import 'package:flutter_app_api/services/api_sevices.dart';

import 'model/user_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String errorMessage = '';
  bool hasErrorOccoured = false;
  bool loading = false;
  final passlog = TextEditingController();
  final userlog = TextEditingController();

  Future<void> loginUser() async {
    loading = true;
    setState(() {});
    try {
      final user = await ApiServices().login(
        userName: '9846525716',
        password: '52625262',
      );
      hasErrorOccoured = false;
      UserData().user = user;
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DashboardScreen(),
        ),
      );
    } catch (e) {
      hasErrorOccoured = true;
      errorMessage = e.toString();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(errorMessage)));
    }
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loginUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (hasErrorOccoured) Text(errorMessage),
            loading
                ? CircularProgressIndicator()
                : TextButton(
                    onPressed: () async => loginUser(),
                    child: Text('Login'),
                  ),
          ],
        ),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(UserData().user.stName),
          ],
        ),
      ),
    );
  }
}
