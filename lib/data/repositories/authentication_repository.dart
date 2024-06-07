import 'package:flutter/material.dart';
import 'package:practice_work/data/models/appointment.dart';

class AuthenticationRepository {
  Future<bool> login(String emailOrPhone, String password) async {
    await Future.delayed(Duration(seconds: 2));

    if ((emailOrPhone == 'doctor@gmail.com' && password == '12345678') ||
        (emailOrPhone == 'patient@gmail.com' && password == '12345678')) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> signUp(
      String emailOrPhone, String password, String confirmPassword) async {
    await Future.delayed(Duration(seconds: 2));

    if (password == confirmPassword) {
      return true;
    } else {
      throw Exception('Passwords do not match');
    }
  }

  Future<List<Appointment>> getAppointments() async {
    await Future.delayed(Duration(seconds: 2));

    List<Appointment> appointments = [
      Appointment(
        time: '10:00 AM',
        patientName: 'John Doe',
        status: 'Pending',
        clockColor: Colors.orange,
      ),
      Appointment(
        time: '11:00 AM',
        patientName: 'Jane Smith',
        status: 'Completed',
        clockColor: Colors.green,
      ),
    ];

    return appointments;
  }
}
