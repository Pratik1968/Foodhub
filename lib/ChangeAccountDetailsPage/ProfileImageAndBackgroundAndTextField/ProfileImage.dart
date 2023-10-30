import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImage extends StatefulWidget{
  const ProfileImage({super.key, required this.imageUrl});
  final String imageUrl ; 

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File? image;
  
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
if(image == null) return;
final imageTemp = File(image.path);
setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }}
  @override
  Widget build(BuildContext context) {
return GestureDetector(
  onTap: (){
   print("ffddsfgh,jmhngb");
pickImage();
  

  },
  child:   SizedBox(
  width: 90,
  height: 90,
    child:   Stack(
      children: [
        Positioned.fill(child: ProfileImageContainer(imageUrl: widget.imageUrl,image: image,)),
        const Positioned(
          right: 5,
          bottom: 7,
          child: CameraContainer())
      ],
    ),
  ),
);
  }
}
class CameraContainer extends StatelessWidget{
  const CameraContainer({super.key});

  @override
  Widget build(BuildContext context) {
return Container(
  decoration: BoxDecoration(
  color: Colors.white,
borderRadius: BorderRadius.circular(100)
  ),
  width: 30,
  height: 30,
  alignment: Alignment.center,
  child: const Icon(Icons.camera_alt,
  size: 20,
  color: Color(0xFFB3B3B3),
  ),
);
  }
}
class ProfileImageContainer extends StatelessWidget{
  const ProfileImageContainer({super.key, required this.imageUrl, required this.image});
  final String imageUrl;
  final File? image;
  @override
  Widget build(BuildContext context) {
return CircleAvatar(
  backgroundColor: Colors.white,
  radius: 45,
  child:   CircleAvatar(
  backgroundImage: image==null ?AssetImage(imageUrl):FileImage(image!)as ImageProvider,
  radius: 40,
  ),
);
  }
}