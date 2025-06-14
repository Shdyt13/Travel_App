import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool _isLoading = false;

  void _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Login berhasil')));
          // Navigasi ke halaman utama '/'
          Navigator.pushReplacementNamed(context, '/');
        }
      } on FirebaseAuthException catch (e) {
        String message = 'Login gagal';
        if (e.code == 'user-not-found') {
          message = 'Akun tidak ditemukan';
        } else if (e.code == 'wrong-password') {
          message = 'Password salah';
        } else if (e.code == 'invalid-email') {
          message = 'Format email tidak valid';
        }
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(message)));
        }
      } finally {
        if (mounted) {
          setState(() => _isLoading = false);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 30),
              const Icon(
                Icons.lock_outline,
                size: 100,
                color: Colors.deepPurple,
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (val) => email = val,
                validator: (val) {
                  if (val == null || val.isEmpty) return 'Email wajib diisi';
                  if (!val.contains('@')) return 'Format email tidak valid';
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                onChanged: (val) => password = val,
                validator: (val) {
                  if (val == null || val.isEmpty) return 'Password wajib diisi';
                  if (val.length < 6) return 'Password minimal 6 karakter';
                  return null;
                },
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _isLoading ? null : _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: _isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : const Text('Login', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Belum punya akun?'),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/register'),
                    child: const Text('Daftar Sekarang'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
