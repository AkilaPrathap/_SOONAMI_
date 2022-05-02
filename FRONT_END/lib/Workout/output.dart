import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:sdgp_ui/Screens/select_user.dart';


class DisplayOutput extends StatefulWidget {

  @override
  State<DisplayOutput> createState() => _DisplayOutputState();
}

class _DisplayOutputState extends State<DisplayOutput> {


  Future checkFile() async {
    final path = 'Outputs/young-fitness-man-studio.jpg';

    final ref = FirebaseStorage.instance.ref().child(path).getDownloadURL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display The Output'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          height: 1000,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/back.jpg"),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.width / 1.2,
                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/posture-io.appspot.com/o/Outputs%2FImage.PNG?alt=media&token=c05449d6-6ce5-42e4-835a-757c298faf70"),
                ),
              SizedBox(height: 20.0,),
                RichText(
                    text: const TextSpan(
                      text: "Green colour lines show the correct movements\n Purple colour lines show the incorrect movements",
                      style: TextStyle(color: Colors.white, fontSize: 12,),
                    )
                ),
              SizedBox(height: 20.0,),
              FlatButton.icon(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Select()));
                },
                  icon: const Icon(
                      Icons.camera
                  ),
                  label: Text('Analyze Another Workout'),
                  color: Colors.white,
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}


