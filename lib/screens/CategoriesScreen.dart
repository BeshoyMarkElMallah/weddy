import 'package:flutter/material.dart';
import 'package:weddy/screens/GroupBuyingScreen.dart';
import 'package:weddy/screens/WeddingPlannerSScreen.dart';
import 'package:weddy/widgets/CustomCategory.dart';

class CategoriesScreen extends StatefulWidget {
  static const routeName = "/CategoriesScreen";
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
void navigateToWeddingPlanner(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(WeddingPlannerScreen.routeName);
  }
  void navigateToGroupBuying(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(GroupBuyingScreen.routeName);
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.deepPurple[300]])),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Categories",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top * 1,
              ),
              CustomCategory(
                picture:
                    "https://worldscholarshipforum.com/wealth/wp-content/uploads/sites/4/2021/07/photo-1556103255-4443dbae8e5a.jpg",
                categoryName: "Photographers",
                onTap: () {},
              ),
              SizedBox(
                height: 1,
              ),
              CustomCategory(
                picture:
                    "https://media.istockphoto.com/photos/auto-business-car-sale-transportation-people-and-ownership-co-picture-id1053485236?k=20&m=1053485236&s=612x612&w=0&h=Ruh_r3iWpHnrVJb5RfJO2Jw2IzvvYQaHIZG6pME84xc=",
                categoryName: "Car Rental",
                onTap: () {},
              ),
              SizedBox(
                height: 1,
              ),
              CustomCategory(
                picture:
                    "https://media.istockphoto.com/photos/beautiful-wedding-dresses-picture-id866011040?k=20&m=866011040&s=612x612&w=0&h=6twwNgRxMZScpp9XS8_wINv4kHWijebBCWWcsVg9UZE=",
                categoryName: "Wedding Dresses Store",
                onTap: () {},
              ),
              SizedBox(
                height: 1,
              ),
              CustomCategory(
                picture:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk66_uYvGTJdzOoctLyrsrH1agY5YyhGWL1w&usqp=CAU",
                categoryName: "Groom Suits Store",
                onTap: () {},
              ),
              SizedBox(
                height: 1,
              ),
              CustomCategory(
                picture:
                    "https://st.depositphotos.com/1005730/2542/i/950/depositphotos_25423319-stock-photo-makeup-artist-applying-makeup.jpg",
                categoryName: "Make-up Artists",
                onTap: () {},
              ),
              SizedBox(
                height: 1,
              ),
              CustomCategory(
                picture:
                    "https://www.arabiaweddings.com/sites/default/files/listing//2019/12/12/sri_lanka_.png",
                categoryName: "Tourism Offices For Honeymoon",
                onTap: () {},
              ),
              SizedBox(
                height: 1,
              ),
              CustomCategory(
                picture:
                    "https://i.pinimg.com/originals/7c/44/a7/7c44a7de8b8928473f27185cc479ad6e.jpg",
                categoryName: "Restaurants",
                onTap: () {},
              ),
              SizedBox(
                height: 1,
              ),
              CustomCategory(
                picture:
                    "https://images.adsttc.com/media/images/5f2c/8545/b357/65db/c000/008c/large_jpg/FEAT_ID.jpg?1596753213",
                categoryName: "Interior Designers",
                onTap: () {},
              ),
              SizedBox(
                height: 1,
              ),
              CustomCategory(
                picture:
                    "https://media.istockphoto.com/photos/set-of-contemporary-house-appliances-isolated-on-white-picture-id1174598609?k=20&m=1174598609&s=612x612&w=0&h=c5rP2tqv0Uck6zm21hBYhEyVy9EBAA7C5VGI4sgfmzo=",
                categoryName: "Group Buying",
                onTap: () =>navigateToGroupBuying(context),
              ),
              SizedBox(
                height: 1,
              ),
              CustomCategory(
                picture:
                    "https://imagesawe.s3.amazonaws.com/listing/2019/03/02/dina_iskander_event_wedding_planner.png",
                categoryName: "Wedding Planners",
                onTap: ()=>navigateToWeddingPlanner(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
