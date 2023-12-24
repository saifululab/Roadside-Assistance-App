import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) =>  HomeScreen(),
        '/register': (context) => RegisterPage(),
        '/register1': (context) => Register1Page(),
        '/chooseVehicle': (context) => ChooseYourVehiclePage(),
        '/chooseVehicle1': (context) => ChooseYourVehicle1Page(),
        '/vehicleDetails': (context) => VehicleDetailsPage(),
        '/serviceRequest': (context) => ServiceRequestPage(),
        '/locationconfirm': (context) => LocationConfirmationPage (),
        '/addDetails': (context) =>  AddDetailsPage (),
        '/FeedbackPage ': (context) =>  FeedbackPage  (),
        '/NearbyServiceProviderDetails': (context) =>  NearbyServiceProviderDetails(),
        '/UpdateProfilePage': (context) =>  UpdateProfilePage(),
        '/NotificationPage': (context) =>  NotificationPage(),
        '/ServiceRequestListPage': (context) =>  ServiceRequeListPage(),
        '/ClientIssueDetailsPage': (context) =>  ClientIssueDetailsPage(),
        '/ConfirmPage ': (context) =>  ConfirmPage  (),
        '/FeedbackPage1 ': (context) =>  FeedbackPage1 (),
        '/UpdateProfilePage1': (context) =>  UpdateProfilePage1(),

        '/login': (context) => LoginPage(),
        '/login1': (context) => Login1Page(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://static.vecteezy.com/system/resources/previews/000/641/189/original/vector-hand-holding-smartphone-online-roadside-assistance-car-towing-service-mobile-app-concept.jpg",
              height: 150.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Roadside Assistance App',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // User button pressed
                print('User button pressed');
                // Navigate to RegisterPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text('User'),
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                // Service Provider button pressed
                print('Service Provider button pressed');
                // Navigate to Register1Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register1Page()),
                );
              },
              child: Text('Service Provider'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Image.network(
                "https://cdn.create.vista.com/api/media/small/52700607/stock-vector-mechanic-with-tire-wrench-rosette-cartoon",
                fit: BoxFit.contain,
              ),
            ),
            Text('Register', style: TextStyle(fontSize: 24)),
            Text('Let’s Get Started'),
            Text('Create an account'),
            SizedBox(width: double.infinity), // Spacer to push text to the left
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Full Name'),
            ),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Mobile'),
            ),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Password'),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chooseVehicle');
              },
              child: Text('Register'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Sign In'),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.network(
                "https://c8.alamy.com/comp/2KACKWN/auto-mechanic-coloring-page-for-kids-2KACKWN.jpg",
                fit: BoxFit.contain,
              ),
            ),
            Text('Login', style: TextStyle(fontSize: 24)),
            Text('Let’s Get Started'),
            Text('Mobile'),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            Text('Password'),
            TextField(
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            ElevatedButton(
              onPressed: () {
                // Add logic to handle login
                Navigator.pushNamed(context, '/chooseVehicle');
              },
              child: Text('Log In'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text("Don't have an account? Sign Up"),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}


class Register1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Image.network(
                "https://cdn.create.vista.com/api/media/small/52700607/stock-vector-mechanic-with-tire-wrench-rosette-cartoon",
                fit: BoxFit.contain,
              ),
            ),
            Text('Register', style: TextStyle(fontSize: 24)),
            Text('Let’s Get Started'),
            Text('Create an account'),
            SizedBox(width: double.infinity), // Spacer to push text to the left
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Name of  the Service Center'),
            ),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Mobile'),
            ),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Password'),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chooseVehicle1');
              },
              child: Text('Register'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login1');
                  },
                  child: Text('Sign In'),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class Login1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.network(
                "https://c8.alamy.com/comp/2KACKWN/auto-mechanic-coloring-page-for-kids-2KACKWN.jpg",
                fit: BoxFit.contain,
              ),
            ),
            Text('Login', style: TextStyle(fontSize: 24)),
            Text('Let’s Get Started'),
            Text('Mobile'),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            Text('Password'),
            TextField(
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            ElevatedButton(
              onPressed: () {
                // Add logic to handle login
                Navigator.pushNamed(context, '/chooseVehicle1');
              },
              child: Text('Log In'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text("Don't have an account? Sign Up"),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}


class ChooseYourVehiclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
              "https://as1.ftcdn.net/v2/jpg/00/51/59/32/1000_F_51593220_vZKLa2bfEyfJ1YnNH13ut0js7Ue9j0dV.jpg",
              // Replace with your image path
              fit: BoxFit.cover, // Ensure the image covers the available space
            ),
          ),
          Text('Choose your vehicle?'),
          Text('Please select the machine. It will help us to find your service faster'),
          ElevatedButton(
            onPressed: () {
              // Handle logic for selecting car
              Navigator.pushNamed(context, '/vehicleDetails');
            },
            child: Row(
              children: [
                Icon(Icons.directions_car),
                Text('Car'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle logic for selecting bike
              Navigator.pushNamed(context, '/vehicleDetails');
            },
            child: Row(
              children: [
                Icon(Icons.motorcycle),
                Text('Bike'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle logic for selecting truck
              Navigator.pushNamed(context, '/vehicleDetails');
            },
            child: Row(
              children: [
                Icon(Icons.local_shipping),
                Text('Truck'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle logic for selecting bus
              Navigator.pushNamed(context, '/vehicleDetails');
            },
            child: Row(
              children: [
                Icon(Icons.directions_bus),
                Text('Bus'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChooseYourVehicle1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
              "https://as1.ftcdn.net/v2/jpg/00/51/59/32/1000_F_51593220_vZKLa2bfEyfJ1YnNH13ut0js7Ue9j0dV.jpg",
              // Replace with your image path
              fit: BoxFit.cover, // Ensure the image covers the available space
            ),
          ),
          Text('Choose vehicle service you provide for?'),
          Text('Please select the machine. It will help us to find your service faster'),
          ElevatedButton(
            onPressed: () {
              // Handle logic for selecting car
              Navigator.pushNamed(context, '/NotificationPage');
            },
            child: Row(
              children: [
                Icon(Icons.directions_car),
                Text('Car'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle logic for selecting bike
              Navigator.pushNamed(context, '/NotificationPage');
            },
            child: Row(
              children: [
                Icon(Icons.motorcycle),
                Text('Bike'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle logic for selecting truck
              Navigator.pushNamed(context, '/NotificationPage');
            },
            child: Row(
              children: [
                Icon(Icons.local_shipping),
                Text('Truck'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle logic for selecting bus
              Navigator.pushNamed(context, '/NotificationPage');
            },
            child: Row(
              children: [
                Icon(Icons.directions_bus),
                Text('Bus'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class VehicleDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('See your vehicle', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Vehicle Company'),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            SizedBox(height: 10),
            Text('Vehicle Model'),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            SizedBox(height: 10),
            Text('Vehicle Number'),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle logic for forward button
                    Navigator.pushNamed(context, '/serviceRequest'); // Navigate to the ServiceRequestPage
                  },
                  icon: Icon(Icons.arrow_forward),
                  label: Text(''),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}


class ServiceRequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request a Service'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: services.length,
              itemBuilder: (context, index) {
                return ServiceCard(service: services[index]);
              },
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationConfirmationPage(),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_forward),
                label: Text(''),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final Service service;

  ServiceCard({required this.service});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (service.title != 'Battery Service') {
          // Navigate to the LocationConfirmationPage only if the service is not 'Battery Service'
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LocationConfirmationPage(),
            ),
          );
        } else {
          // Handle special case for 'Battery Service'
          print('Selected service: ${service.title}');
        }
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(service.icon, size: 50),
            SizedBox(height: 10),
            Text(service.title),
            if (service.title == 'Battery Service')
              SizedBox(height: 5),
            if (service.title == 'Battery Service')
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.battery_full, size: 20, color: Colors.green),
                  SizedBox(width: 5),
                  Text('Battery', style: TextStyle(fontSize: 12)),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class Service {
  final String title;
  final IconData icon;

  Service({required this.title, required this.icon});
}

List<Service> services = [
  Service(title: 'Flat Tire', icon: Icons.warning),
  Service(title: 'Tow Truck', icon: Icons.local_shipping),
  Service(title: 'Engine Heat', icon: Icons.whatshot),
  Service(title: 'Key Lock', icon: Icons.lock),
  Service(title: 'Battery Service', icon: Icons.battery_full),
  Service(title: 'Other Service', icon: Icons.more_horiz),
];

class LocationConfirmationPage extends StatelessWidget {
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Confirmation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Location',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: cityController,
              decoration: InputDecoration(labelText: 'City'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the AddDetailsPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddDetailsPage(),
                  ),
                );
              },
              child: Text('Confirm Location'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class AddDetailsPage extends StatelessWidget {
  TextEditingController detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Are there any further details you’d like to pass on to your service provider?',
            ),
            SizedBox(height: 10),
            TextField(
              controller: detailsController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Write something here...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Get the details entered by the user
                String details = detailsController.text;
                print('Details: $details');

                // Navigate to the FeedbackPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NearbyServiceProviderDetails(),
                  ),
                );
              },
              child: Text('Confirm Issue'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class NearbyServiceProviderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Provider Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Nearby Service Provider Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Service Provider Name: ABC Services',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Service Type: Flat Tire',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Address: Mohammadpur, Dhaka',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the FeedbackPage when Confirm and Request is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackPage()),
                );
              },
              child: Text('Confirm and Request'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Add your logic for the Message button here
                print('Message Button Pressed');
              },
              child: Text('Message'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Add your logic for the Call button here
                print('Call Button Pressed');
              },
              child: Text('Call'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Add your logic for the Cancel Request button here
                print('Cancel Request Button Pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChooseYourVehiclePage()),
                );
              },
              child: Text('Cancel Request'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}



class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How is your experience?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Your feedback will help improve service experience.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Additional Comments',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement the navigation to UpdateProfilePage here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpdateProfilePage()),
                );
              },
              child: Text('Submit Review'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class UpdateProfilePage extends StatelessWidget {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'My Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Full Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: fullNameController,
              decoration: InputDecoration(
                hintText: 'Enter your full name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Phone Number',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement the logic to update the profile
                String fullName = fullNameController.text;
                String email = emailController.text;
                String phoneNumber = phoneNumberController.text;

                // Print or use the updated profile information
                print('Full Name: $fullName');
                print('Email: $email');
                print('Phone Number: $phoneNumber');
              },
              child: Text('Update Profile'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              _showNotificationDialog(context);
            },
            child: Text('Show Notification'),
          ),
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }

  void _showNotificationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.notifications,
                size: 60,
                color: Colors.blue,
              ),
              SizedBox(height: 16),
              Text(
                'You have a request to repair.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Navigate to ServiceRequestListPage when Details button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ServiceRequeListPage ()),
                  );
                },
                child: Text('Details'),
              ),
            ],
          ),
        );
      },
    );
  }
}


class ServiceRequeListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Request List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ServiceRequestBox(
              clientName: 'John Doe',
              vehicleName: 'Toyota Camry',
              onTap: () {
                // Navigate to ClientIssueDetailsPage when the box is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClientIssueDetailsPage()),
                );
              },
            ),
            SizedBox(height: 16),
            ServiceRequestBox(
              clientName: 'Alice Johnson',
              vehicleName: 'Honda Accord',
              onTap: () {
                // Navigate to ClientIssueDetailsPage when the box is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClientIssueDetailsPage()),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class ServiceRequestBox extends StatelessWidget {
  final String clientName;
  final String vehicleName;
  final VoidCallback onTap;

  ServiceRequestBox({
    required this.clientName,
    required this.vehicleName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Client Name: $clientName',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Vehicle Name: $vehicleName',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}



class ClientIssueDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client Issue Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Client Details',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ClientDetailBox(
              vehicleOwner: 'John Doe',
              vehicleType: 'Car',
              vehicleCompany: 'Toyota',
              vehicleName: 'Allion A15 G',
              fuelType: 'Petrol',
              vehicleNumber: 'Dhaka Metro GA-5500',
            ),
            SizedBox(height: 10),
            Text(
              'Client Service Request',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ServiceRequestDetailBox(
              issueType: 'Flat Tire',
              location: 'Mohammadpur',
              address: 'Beribad',
            ),
            SizedBox(height: 10),
            Text(
              'Client added text below',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            TextBox(
              description: 'Additional description goes here...',
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the ConfirmPage when Accept is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ConfirmPage()),
                    );
                  },
                  child: Text('Accept'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement the logic for Reject button
                    print('Reject Button Pressed');
                  },
                  child: Text('Reject'),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class ClientDetailBox extends StatelessWidget {
  final String vehicleOwner;
  final String vehicleType;
  final String vehicleCompany;
  final String vehicleName;
  final String fuelType;
  final String vehicleNumber;

  ClientDetailBox({
    required this.vehicleOwner,
    required this.vehicleType,
    required this.vehicleCompany,
    required this.vehicleName,
    required this.fuelType,
    required this.vehicleNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vehicle Owner: $vehicleOwner',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 8),
          Text(
            'Vehicle Type: $vehicleType',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 8),
          Text(
            'Vehicle Company: $vehicleCompany',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 8),
          Text(
            'Vehicle Name: $vehicleName',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 8),
          Text(
            'Fuel Type: $fuelType',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 8),
          Text(
            'Vehicle Number: $vehicleNumber',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class ServiceRequestDetailBox extends StatelessWidget {
  final String issueType;
  final String location;
  final String address;

  ServiceRequestDetailBox({
    required this.issueType,
    required this.location,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Issue Type: $issueType',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 8),
          Text(
            'Client Location: $location',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 8),
          Text(
            'Client Address: $address',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  final String description;

  TextBox({
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        description,
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}


class ConfirmPage extends StatelessWidget {
  final String clientName = "John Doe";
  final String vehicleType = "Toyota";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Client Name: $clientName',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Vehicle Type: $vehicleType',
                    style: TextStyle(fontSize: 24.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle message button click
                    // Add your logic here
                  },
                  child: Text('Message'),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle call button click
                    // Add your logic here
                  },
                  child: Text('Call'),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  // Navigate to feedback page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedbackPage1()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}





class FeedbackPage1 extends StatelessWidget {
  final String initialFeedback = "Thank you for your service. Everything was great.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Feedback from Customer:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    initialFeedback,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.0),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  // Navigate to update profile page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateProfilePage1()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

class UpdateProfilePage1 extends StatelessWidget {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'My Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Full Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: fullNameController,
              decoration: InputDecoration(
                hintText: 'Name of the Service Center',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Phone Number',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement the logic to update the profile
                String fullName = fullNameController.text;
                String email = emailController.text;
                String phoneNumber = phoneNumberController.text;

                // Print or use the updated profile information
                print('Full Name: $fullName');
                print('Email: $email');
                print('Phone Number: $phoneNumber');
              },
              child: Text('Update Profile'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo[200],
    );
  }
}

