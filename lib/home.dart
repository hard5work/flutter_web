import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // Cover Container
                  Container(
                    height: 400,
                    width: double.infinity,
                  ),

                  Positioned(
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.red, // Cover color
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(20)),
                      ),
                      child:Image.asset('assets/images/profile.png', fit: BoxFit.fitWidth,),
                    ),
                  ),
                  // Profile Container overlapping
                  Positioned(
                    top: 230, // Adjust this value for overlap
                    left: 30,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white, // Profile background color
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.blue,
                                width: 2), // Border for effect
                          ),
                          child: ClipOval(
                            child: Image.asset('assets/images/profile.png', fit: BoxFit.cover,)
                          ),
                        ),
                        const SizedBox(width: 100,),
                       
                      ],
                    ),
                  ),
                ],
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      const SizedBox(height: 10.0,),
                     const Text(
                       'Anish Maharjan',
                       style: TextStyle(
                           fontSize: 24, fontWeight: FontWeight.bold),
                     ),
                     const SizedBox(height: 8),
                     const Text(
                       'My expertise includes developing applications for different devices and screen sizes, working with third-party libraries and APIs, and integrating payment gateways and push notifications. Additionally, I have experience in creating scalable and secure backend services using Firebase, and Google Cloud Platform. I have worked with several clients in diverse industries, including finance and ride-sharing, to develop innovative and user-centric mobile applications. I have a proven track record of delivering high-quality work on time and within budget. I\'m passionate about creating meaningful and impactful mobile applications, and I\'m always looking for new challenges and opportunities to learn and grow. If you\'re interested in collaborating on a project or discussing how I can help you achieve your goals, please don\'t hesitate to connect with me.',
                       style:
                           TextStyle(fontSize: 16, color: Colors.grey),
                     ),

                      const SizedBox(height: 10.0,),
                      Divider(
                        thickness: 1,
                        color: Colors.red[100],
                      ),

                      const SizedBox(height: 10.0,),
                       const Text(
                       'My Projects',
                       style: TextStyle(
                           fontSize: 24, fontWeight: FontWeight.bold),
                     ),
                   ],
                 ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
