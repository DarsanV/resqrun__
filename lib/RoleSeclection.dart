import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatefulWidget {
  @override
  _RoleSelectionScreenState createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  bool _isRoleSelected = false;
  String _selectedRole = '';

  void _selectRole(String role) {
    setState(() {
      _isRoleSelected = true;
      _selectedRole = role;
    });
  }

  void _navigateToNextScreen() {
    if (_selectedRole == 'Service Provider') {
      Navigator.pushNamed(context, '/driver-signup');
    } else if (_selectedRole == 'User') {
      Navigator.pushNamed(context, '/user-signup');
    } else {
      Navigator.pushReplacementNamed(context, '/home',
          arguments: _selectedRole);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/rqr bg.jpg'), // Ensure you have this asset
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/White Medical Health Care Logo (3).gif',
                  width: 200, height: 200), // Ensure you have this asset
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedRole == 'Service Provider'
                          ? const Color.fromARGB(255, 49, 228, 55)
                          : Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      textStyle: TextStyle(fontSize: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      _selectRole('Service Provider');
                    },
                    child: Column(
                      children: [
                        SizedBox(height: 7),
                        SizedBox(width: 100),
                        Text('Service Provider',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedRole == 'User'
                          ? Color.fromARGB(255, 46, 232, 62)
                          : Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      textStyle: TextStyle(fontSize: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      _selectRole('User');
                    },
                    child: Column(
                      children: [
                        SizedBox(height: 7),
                        SizedBox(width: 100),
                        Text('User', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              if (_isRoleSelected)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    textStyle: TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: _navigateToNextScreen,
                  child: Text('Get started',
                      style: TextStyle(color: Colors.white)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
