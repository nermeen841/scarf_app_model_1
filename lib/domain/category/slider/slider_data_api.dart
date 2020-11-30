import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/state_store/slider_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("=================");
    return Scaffold(
      body: WhenRebuilderOr<SliderStore>(
        initState: (context, rm) => rm.setState((s) => s.getSlider()),
        observe: () => RM.get<SliderStore>(),
        builder: (context, model) => SliderScreen(),
        onWaiting: () => Loading(),
        onError: (error) => IN.get<SliderStore>().getSlider()== null
            ? Text('$error')
            : SliderScreen(),
      ),
    );
  }
}


class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  final sliderModel = IN.get<SliderStore>().sliderModel;


  @override
  Widget build(BuildContext context) {
    return Container(
        width: 343,
        height: 139,
          child: Swiper(
            scrollDirection: Axis.horizontal,
            autoplay: true,
            itemCount: sliderModel.data.image.length,
            itemBuilder: (BuildContext context , int index){
              return  Image.network(sliderModel.data.image[index]);
            },
          ),
    );
  }
}
