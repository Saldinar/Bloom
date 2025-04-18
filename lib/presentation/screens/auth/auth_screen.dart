// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Authentication',
//       theme: ThemeData(
//         colorScheme: ColorScheme.light(
//           primary: const Color(0xFF407BFF),
//           secondary: const Color(0xFF407BFF),
//         ),
//         scaffoldBackgroundColor: Colors.white,
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Color(0xFF407BFF),
//           foregroundColor: Colors.white,
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: const Color(0xFF407BFF),
//           ),
//         ),
//       ),
//       home: const AuthScreen(),
//     );
//   }
// }

// class AuthScreen extends StatefulWidget {
//   const AuthScreen({super.key});

//   @override
//   _AuthScreenState createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _isEmailFocused = false;
//   bool _isPasswordFocused = false;

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   void _handleSubmit() {
//     if (_formKey.currentState!.validate()) {
//       print(
//         'Auth attempt: { email: ${_emailController.text}, password: ${_passwordController.text} }',
//       );

//       showDialog(
//         context: context,
//         barrierColor: Colors.black.withOpacity(0.5),
//         builder: (context) => Dialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Container(
//             padding: const EdgeInsets.all(24),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                   width: 64,
//                   height: 64,
//                   decoration: BoxDecoration(
//                     color: Colors.green[100],
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Icon(
//                     Icons.check,
//                     color: Colors.green,
//                     size: 32,
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 const Text(
//                   'Welcome to Bloom!',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   "You've successfully signed up.",
//                   style: TextStyle(color: Colors.grey[500]),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 24),
//                 ElevatedButton(
//                   onPressed: () => Navigator.of(context).pop(),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF6B9AC4),
//                     foregroundColor: Colors.white,
//                     minimumSize: const Size(double.infinity, 48),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   child: const Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
//           child: ConstrainedBox(
//             constraints: const BoxConstraints(maxWidth: 400),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/images/medium_bloom_logo.png',
//                   width: 150,
//                   height: 150,
//                   fit: BoxFit.contain,
//                 ),
//                 const SizedBox(height: 32),

//                 // Auth Form
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(16),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.1),
//                         blurRadius: 10,
//                         offset: const Offset(0, 4),
//                       ),
//                     ],
//                   ),
//                   padding: const EdgeInsets.all(32),
//                   child: Form(
//                     key: _formKey,
//                     child: Column(
//                       children: [
//                         const Text(
//                           "Sign up",
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xFF1F2937),
//                           ),
//                         ),
//                         const SizedBox(height: 32),

//                         // Email Input
//                         Focus(
//                           onFocusChange: (hasFocus) {
//                             setState(() {
//                               _isEmailFocused = hasFocus;
//                             });
//                           },
//                           child: TextFormField(
//                             controller: _emailController,
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(
//                                 Icons.email,
//                                 color: _isEmailFocused
//                                     ? const Color(0xFF407BFF)
//                                     : Colors.grey[400],
//                               ),
//                               hintText: 'bloomapp@gmail.com',
//                               filled: true,
//                               fillColor: Colors.grey[50],
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: BorderSide(
//                                   color: Colors.grey[200]!,
//                                 ),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: BorderSide(
//                                   color: Colors.grey[200]!,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: const BorderSide(
//                                   color: Color(0xFF407BFF),
//                                 ),
//                               ),
//                             ),
//                             keyboardType: TextInputType.emailAddress,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your email';
//                               }
//                               if (!RegExp(
//                                 r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
//                               ).hasMatch(value)) {
//                                 return 'Please enter a valid email';
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                         const SizedBox(height: 24),

//                         // Password Input
//                         Focus(
//                           onFocusChange: (hasFocus) {
//                             setState(() {
//                               _isPasswordFocused = hasFocus;
//                             });
//                           },
//                           child: TextFormField(
//                             controller: _passwordController,
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(
//                                 Icons.lock,
//                                 color: _isPasswordFocused
//                                     ? const Color(0xFF407BFF)
//                                     : Colors.grey[400],
//                               ),
//                               hintText: 'Password',
//                               filled: true,
//                               fillColor: Colors.grey[50],
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: BorderSide(
//                                   color: Colors.grey[200]!,
//                                 ),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: BorderSide(
//                                   color: Colors.grey[200]!,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: const BorderSide(
//                                   color: Color(0xFF6B9AC4),
//                                 ),
//                               ),
//                             ),
//                             obscureText: true,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your password';
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                         const SizedBox(height: 32),

//                         // Auth Button
//                         ElevatedButton(
//                           onPressed: _handleSubmit,
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xFF407BFF),
//                             foregroundColor: Colors.white,
//                             minimumSize: const Size(double.infinity, 56),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             elevation: 0,
//                             shadowColor: const Color(
//                               0xFF6B9AC4,
//                             ).withOpacity(0.3),
//                           ),
//                           child: const Text(
//                             'Continue',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 // Toggle Link
//                 const SizedBox(height: 32),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       "Already have an account? ",
//                       style: TextStyle(color: Color(0xFF4B5563)),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         // TODO: Toggle to login mode or navigate
//                       },
//                       child: const Text(
//                         'Sign in',
//                         style: TextStyle(
//                           color: Color(0xFF407BFF),
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 // Social Login Options
//                 const SizedBox(height: 40),
//                 Row(
//                   children: [
//                     Expanded(child: Divider(color: Colors.grey[200])),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16),
//                       child: Text(
//                         'or continue with',
//                         style: TextStyle(color: Colors.grey[400], fontSize: 14),
//                       ),
//                     ),
//                     Expanded(child: Divider(color: Colors.grey[200])),
//                   ],
//                 ),
//                 const SizedBox(height: 24),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     _buildSocialButton(Icons.g_mobiledata, () {
//                       // TODO: Implement Google login
//                     }),
//                     const SizedBox(width: 16),
//                     _buildSocialButton(Icons.apple, () {
//                       // TODO: Implement Apple login
//                     }),
//                     const SizedBox(width: 16),
//                     _buildSocialButton(Icons.facebook, () {
//                       // TODO: Implement Facebook login
//                     }),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSocialButton(IconData icon, VoidCallback onPressed) {
//     return InkWell(
//       onTap: onPressed,
//       borderRadius: BorderRadius.circular(999),
//       child: Container(
//         width: 56,
//         height: 56,
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey[200]!),
//           borderRadius: BorderRadius.circular(999),
//         ),
//         child: Icon(icon, color: Colors.grey[600], size: 24),
//       ),
//     );
//   }
// }

// import 'package:bloom/domain/entity/auth/register_request_entity.dart';
// import 'package:bloom/domain/repository/auth_repository.dart';
// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart'; // Для использования GetIt
// // import 'lib/data/repository/auth_repository_impl.dart'; // Импортируем репозиторий
// // import 'lib/domain/entity/auth/register_response_entity.dart'; // Импортируем сущности, если нужно

// void main() {
//   runApp(const AuthScreen());
// }

// class AuthScreen extends StatefulWidget {
//   const AuthScreen({super.key});

//   @override
//   _AuthScreenState createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _isEmailFocused = false;
//   bool _isPasswordFocused = false;

//   final _authRepository =
//       GetIt.I<AuthRepository>(); // Инициализируем репозиторий

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   // Метод отправки данных на сервер
//   void _handleSubmit() async {
//     if (_formKey.currentState!.validate()) {
//       final request = AuthRequestEntity(
//         email: _emailController.text.trim(),
//         password: _passwordController.text.trim(),
//         userName: '', // Можно добавить, если нужноS
//         isGuest: false, // Если есть гость, добавь флаг
//       );

//       // Показать лоадер
//       showDialog(
//         context: context,
//         barrierColor: Colors.black.withOpacity(0.5),
//         builder: (context) => Dialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: const Center(child: CircularProgressIndicator()),
//         ),
//       );

//       final result = await _authRepository.authCustomer(request);

//       Navigator.of(context).pop(); // Закрываем лоадер

//       result.fold(
//         (failure) {
//           // Если ошибка
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text(failure.message ?? 'Ошибка регистрации')),
//           );
//         },
//         (authEntity) {
//           // Если успех
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Регистрация успешна!')),
//           );
//           // Переход на главный экран
//           Navigator.of(context).pushReplacementNamed('/home');
//         },
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
//           child: ConstrainedBox(
//             constraints: const BoxConstraints(maxWidth: 400),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Image.asset(
//                 //   'assets/images/medium_bloom_logo.png',
//                 //   width: 150,
//                 //   height: 150,
//                 //   fit: BoxFit.contain,
//                 // ),
//                 const SizedBox(height: 32),

//                 // Auth Form
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(16),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.1),
//                         blurRadius: 10,
//                         offset: const Offset(0, 4),
//                       ),
//                     ],
//                   ),
//                   padding: const EdgeInsets.all(32),
//                   child: Form(
//                     key: _formKey,
//                     child: Column(
//                       children: [
//                         const Text(
//                           "Sign up",
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xFF1F2937),
//                           ),
//                         ),
//                         const SizedBox(height: 32),

//                         // Email Input
//                         Focus(
//                           onFocusChange: (hasFocus) {
//                             setState(() {
//                               _isEmailFocused = hasFocus;
//                             });
//                           },
//                           child: TextFormField(
//                             controller: _emailController,
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(
//                                 Icons.email,
//                                 color: _isEmailFocused
//                                     ? const Color(0xFF407BFF)
//                                     : Colors.grey[400],
//                               ),
//                               hintText: 'bloomapp@gmail.com',
//                               filled: true,
//                               fillColor: Colors.grey[50],
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: BorderSide(
//                                   color: Colors.grey[200]!,
//                                 ),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: BorderSide(
//                                   color: Colors.grey[200]!,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: const BorderSide(
//                                   color: Color(0xFF407BFF),
//                                 ),
//                               ),
//                             ),
//                             keyboardType: TextInputType.emailAddress,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your email';
//                               }
//                               if (!RegExp(
//                                 r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
//                               ).hasMatch(value)) {
//                                 return 'Please enter a valid email';
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                         const SizedBox(height: 24),

//                         // Password Input
//                         Focus(
//                           onFocusChange: (hasFocus) {
//                             setState(() {
//                               _isPasswordFocused = hasFocus;
//                             });
//                           },
//                           child: TextFormField(
//                             controller: _passwordController,
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(
//                                 Icons.lock,
//                                 color: _isPasswordFocused
//                                     ? const Color(0xFF407BFF)
//                                     : Colors.grey[400],
//                               ),
//                               hintText: 'Password',
//                               filled: true,
//                               fillColor: Colors.grey[50],
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: BorderSide(
//                                   color: Colors.grey[200]!,
//                                 ),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: BorderSide(
//                                   color: Colors.grey[200]!,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: const BorderSide(
//                                   color: Color(0xFF6B9AC4),
//                                 ),
//                               ),
//                             ),
//                             obscureText: true,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your password';
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                         const SizedBox(height: 32),

//                         // Auth Button
//                         ElevatedButton(
//                           onPressed: _handleSubmit,
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xFF407BFF),
//                             foregroundColor: Colors.white,
//                             minimumSize: const Size(double.infinity, 56),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             elevation: 0,
//                             shadowColor: const Color(
//                               0xFF6B9AC4,
//                             ).withOpacity(0.3),
//                           ),
//                           child: const Text(
//                             'Continue',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:app_ui_kit/ui_kit.dart';
import 'package:bloom/domain/entity/register/register_request_entity.dart';
import 'package:bloom/presentation/bloc/register/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isEmailFocused = false;
  bool _isPasswordFocused = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Метод отправки данных на сервер
  // void _handleSubmit() async {
  //   if (_formKey.currentState!.validate()) {
  //     final request = RegisterRequestEntity(
  //       email: _emailController.text.trim(),
  //       password: _passwordController.text.trim(),
  //     );
  //
  //     // Показать лоадер
  //     showDialog(
  //       context: context,
  //       barrierColor: Colors.black.withOpacity(0.5),
  //       builder: (context) => Dialog(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(20),
  //         ),
  //         child: const Center(child: CircularProgressIndicator()),
  //       ),
  //     );
  //
  //     final result = await _authRepository.register(request);
  //
  //     Navigator.of(context).pop(); // Закрываем лоадер
  //
  //     result.fold(
  //       (failure) {
  //         // Если ошибка
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(content: Text(failure.message ?? 'Ошибка регистрации')),
  //         );
  //       },
  //       (authEntity) {
  //         // Если успех
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(content: Text('Регистрация успешна!')),
  //         );
  //         // Переход на главный экран
  //         Navigator.of(context).pushReplacementNamed('/home');
  //       },
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {
          if (state is RegisterInProgress) {
            showDialog(
              context: context,
              barrierColor: Colors.black.withOpacity(0.5),
              builder: (context) => Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.white,
                ),
                child: const OrdinaryProgressIndicator(),
              ),
            );
          }
          if (state is RegisterFailure) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }

          if (state is RegisterSuccess) {
            Navigator.pop(context);
            // todo navigate to next page
          }
        },
        builder: (context, state) {
          return Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 32),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(32),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            const Text(
                              "Sign up",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1F2937),
                              ),
                            ),
                            const SizedBox(height: 32),

                            // Email Input
                            Focus(
                              onFocusChange: (hasFocus) {
                                setState(() {
                                  _isEmailFocused = hasFocus;
                                });
                              },
                              child: TextFormField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: _isEmailFocused ? const Color(0xFF407BFF) : Colors.grey[400],
                                  ),
                                  hintText: 'bloomapp@gmail.com',
                                  filled: true,
                                  fillColor: Colors.grey[50],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey[200]!,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey[200]!,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF407BFF),
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  if (!RegExp(
                                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                  ).hasMatch(value)) {
                                    return 'Please enter a valid email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(height: 24),

                            // Password Input
                            Focus(
                              onFocusChange: (hasFocus) {
                                setState(() {
                                  _isPasswordFocused = hasFocus;
                                });
                              },
                              child: TextFormField(
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: _isPasswordFocused ? const Color(0xFF407BFF) : Colors.grey[400],
                                  ),
                                  hintText: 'Password',
                                  filled: true,
                                  fillColor: Colors.grey[50],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey[200]!,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey[200]!,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF6B9AC4),
                                    ),
                                  ),
                                ),
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(height: 32),

                            ElevatedButton(
                              onPressed: () {
                                if (_emailController.text.isEmpty && _passwordController.text.isEmpty) {
                                  return;
                                }

                                final request = RegisterRequestEntity(
                                  email: _emailController.text.trim(),
                                  password: _passwordController.text.trim(),
                                );

                                context.read<RegisterBloc>().add(RegisterUserEvent(request: request));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF407BFF),
                                foregroundColor: Colors.white,
                                minimumSize: const Size(double.infinity, 56),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 0,
                                shadowColor: const Color(
                                  0xFF6B9AC4,
                                ).withOpacity(0.3),
                              ),
                              child: const Text(
                                'Continue',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
