import 'package:flutter/material.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController surNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late String gender;

  @override
  void dispose() {
    nameController.dispose();
    phoneNumberController.dispose();
    surNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "worksans",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    width: 104,
                    height: 104,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://clipart-library.com/2023/606-6064920_manager-clipart-store-manager-cartoon-face-with-glasses.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Change photo",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "worksans",
                      color: AppColors.brand500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.greyscale600,
                            fontFamily: "worksans",
                          ),
                        ),
                        const SizedBox(height: 5),
                        TextFormField(
                          controller: nameController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelStyle: const TextStyle(color: Colors.grey),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.0,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Input Name";
                            }
                            if (value.length < 3) {
                              return "Name min 3";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Surname",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.greyscale600,
                            fontFamily: "worksans",
                          ),
                        ),
                        const SizedBox(height: 5),
                        TextFormField(
                          controller: surNameController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelStyle: const TextStyle(color: Colors.grey),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.0,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Input Surname";
                            }
                            if (value.length < 3) {
                              return "Surname min 3";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Eamail",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.greyscale600,
                            fontFamily: "worksans",
                          ),
                        ),
                        const SizedBox(height: 5),
                        TextFormField(
                          controller: emailController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelStyle: const TextStyle(color: Colors.grey),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.0,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Input Email";
                            }
                            if (value.contains("@") ||
                                value.contains(".") ||
                                value.length < 5) {
                              return "Invalid Email";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Phone Number",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.greyscale600,
                            fontFamily: "worksans",
                          ),
                        ),
                        const SizedBox(height: 5),
                        TextFormField(
                          controller: phoneNumberController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelStyle: const TextStyle(color: Colors.grey),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.0,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Input Phone Number";
                            }
                            if (value.length < 9) {
                              return "Phone Number count 9";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  ZoomTapAnimation(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // Form valid, process data
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Log in is correct'),
                          ),
                        );
                        Navigator.pop(context);
                      }
                    },
                    child: Container(
                      width: 328,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.brand500,
                      ),
                      child: const Center(
                        child: Text(
                          "Save details",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
