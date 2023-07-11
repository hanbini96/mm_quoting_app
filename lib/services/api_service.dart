import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<String> convertImageToBase64(XFile image) async {
    List<int> imageBytes = await image.readAsBytes();
    return base64Encode(imageBytes);
  }

  static Map<String, dynamic> createImageJson(XFile? image) {
    return {
      'imageData': image != null ? convertImageToBase64(image) : null,
      // Include any other relevant image information in the JSON object
    };
  }

  Future<void> uploadImage(XFile image) async {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('http://your-api-endpoint.com/upload'),
    );

    // Attach the image file to the request
    request.files.add(
      await http.MultipartFile.fromPath('image', image.path),
    );

    // Send the request and get the response
    var response = await request.send();

    // Check the response status code
    if (response.statusCode == 200) {
      // Image upload successful
      if (kDebugMode) {
        print('Image uploaded successfully');
      }
    } else {
      // Image upload failed
      if (kDebugMode) {
        print('Image upload failed with status code: ${response.statusCode}');
      }
    }
  }
}