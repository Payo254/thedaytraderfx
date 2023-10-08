import 'package:flutter/material.dart';

Widget testimonialSlider() {
  final List<TestimonialCard> testimonials = [
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/201f345f-87a9-45a9-a846-fd28f9dd5b30',
      name: 'Abraham Lelei',
      testimonialText:
          "Thanks to their expert guidance, my investments have skyrocketed. Highly recommended!",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/87cd86c6-699f-4080-9099-65662459fb93', // Unique image link
      name: 'Adisu Dawit', // Unique name
      testimonialText:
          "I can't believe the returns I've received with The Day Trader Ltd. Their strategies are truly remarkable. Thank you for changing my financial future!",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/09f6a647-5c91-484d-bcd5-d13766997fb0', // Unique image link
      name: 'Milka Cherotich', // Unique name
      testimonialText:
          "Kudos! Your team's dedication and expertise have helped me achieve incredible profits. I'm grateful beyond words.",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/b327b0e1-02ee-44ab-9da4-0dc47c5af38', // Unique image link
      name: 'Rebecca Atieno', // Unique name
      testimonialText:
          "I've never seen such consistent profits until I joined The Day Trader Ltd. Thank you for making my dreams come true.",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/4e6c7f08-7726-4b7b-8260-3c152fb60ff1', // Unique image link
      name: 'Geofrey Mokua', // Unique name
      testimonialText:
          "I'm so thankful for making my money work for me. Their investment plans are nothing short of amazing!",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/cd2614a7-61e5-49e5-820e-a83a511b1b86', // Unique image link
      name: 'Consolata Jepkoech', // Unique name
      testimonialText:
          "The Day Trader Ltd. is the real deal! Their financial insights have transformed my life. Thanks for being the best in the business",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/36a94ae1-a4e4-4bbd-a1a6-c7a474372aef', // Unique image link
      name: 'Agnes Sunguti', // Unique name
      testimonialText:
          "Big shoutout to The Day Trader Ltd.! I'm thrilled with the incredible returns on my investments. You guys are rock stars!",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/41500baf-0266-488e-9eec-e9171c19d975', // Unique image link
      name: 'Zaitun Mohammad', // Unique name
      testimonialText:
          "I've been a part of The Day Trader Ltd. for years, and I'm blown away by their consistent results. Thank you for your exceptional service!",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/4d66473c-e06d-4e44-b144-9221d8fa9c0b', // Unique image link
      name: 'John Cheruiyot', // Unique name
      testimonialText:
          "I'm incredibly impressed performance. They've turned my investments into a goldmine. Thank you!",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/73901f75-983f-4fbb-a613-eadf3433eab3', // Unique image link
      name: 'Evelyne Emmah', // Unique name
      testimonialText:
          "You is my go-to choice for investments. They've helped me achieve financial freedom. Hats off to your team!",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/ac5c828b-26a7-47d3-ab80-9bd0a177312a', // Unique image link
      name: 'Mustaf Hassan', // Unique name
      testimonialText:
          "I owe my financial success to The Day Trader Ltd. Their strategies are pure magic. Thank you for making my dreams a reality.",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/28fb4d1d-b699-4e74-90b5-a298966b0c45', // Unique image link
      name: 'Aimani Maya', // Unique name
      testimonialText:
          "I can't thank them enough for the incredible profits I've earned.",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/57e86b46-e255-4f59-b310-4b1a895d002b', // Unique image link
      name: 'Stanslaus Mutsotso', // Unique name
      testimonialText:
          "I'm a proud. Their investment plans are unmatched, and I'm reaping the rewards. Thank you!",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/9cf87295-f001-45d1-be4e-bb7b034b62e3', // Unique image link
      name: 'James Makokha', // Unique name
      testimonialText:
          "Their expertise has been a game-changer for my finances. Much gratitude!",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/992daea7-d023-4cfc-87c5-0ba93e46a50b', // Unique image link
      name: 'Jackson Surupai', // Unique name
      testimonialText:
          "I'm living my dream life. Their investment opportunities are a gift that keeps on giving.",
    ),
    TestimonialCard(
      imageLink:
          'https://github.com/GotJimmy/accordion/assets/146856581/b65385fd-3cd7-435b-9073-46f35ef614b2', // Unique image link
      name: 'Changkuoth Tut Chuaidok', // Unique name
      testimonialText:
          "Huge thanks! Your investment plans have made a significant difference in my life. I'm truly appreciative.",
    ),
    // Add more testimonials with unique data
  ];

  int currentTestimonialIndex = 0;
  final PageController _controller = PageController();

  void _startAutoScroll() {
    Future.delayed(Duration(seconds: 3), () {
      if (currentTestimonialIndex < testimonials.length - 1) {
        _controller.animateToPage(
          currentTestimonialIndex + 1,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
        _startAutoScroll();
      }
    });
  }

  _startAutoScroll();

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Testimonials',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          "Don't take our word for it, here's what some of our clients have to say about us",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.0),
        Container(
          height: 300.0, // Adjust the height as needed
          child: PageView.builder(
            controller: _controller,
            itemCount: testimonials.length,
            onPageChanged: (index) {
              currentTestimonialIndex = index;
            },
            itemBuilder: (context, index) {
              return TestimonialCard(
                imageLink: testimonials[index].imageLink,
                name: testimonials[index].name,
                testimonialText: testimonials[index].testimonialText,
              );
            },
          ),
        ),
      ],
    ),
  );
}

class TestimonialCard extends StatelessWidget {
  final String imageLink;
  final String name;
  final String testimonialText;

  TestimonialCard({
    required this.imageLink,
    required this.name,
    required this.testimonialText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 4.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageLink),
              radius: 60.0,
            ),
            SizedBox(height: 16.0),
            Text(
              name,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                testimonialText,
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
