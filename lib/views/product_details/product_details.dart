import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_watch_shop/global_widgets/custom_appbar.dart';
import 'package:flutter_watch_shop/models/product.dart';
import 'package:flutter_watch_shop/utils/colors.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;

  const ProductDetailsPage({Key key, @required this.product}) : super(key: key);

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {

    ScreenUtil.instance = ScreenUtil(
      width: 388,
      height: 1600,
      allowFontScaling: true,
    )..init(context);

    //final multiplier = screenHeight / screenWidth;

    final spacer = SizedBox(height: 10.0);

    final divider = Divider(color: Colors.black,);

    /*
    final image = Hero(
      tag: widget.product.id,
      child: Image.asset(
        widget.product.photos[_selectedColorIndex],
        height: ScreenUtil().setHeight(400) * multiplier,
      ),
    );*/

    final name = Text(
      widget.product.name.toUpperCase(),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 35.0,
        fontWeight: FontWeight.w500,
      ),
    );

    final description = Text(
      widget.product.description,
      style: TextStyle(fontSize: 18.0, color: Colors.black),
    );

    final rules = Text("RULES:\n" +
      widget.product.rules,
      style: TextStyle(fontSize: 14.0, color: Colors.black54),
    );

    final info = RichText(
      textAlign: TextAlign.left,
      text: new TextSpan(
        style: new TextStyle(
          fontSize: 14.0,
          color: Colors.black
        ),
        children: <TextSpan>[
          new TextSpan(text: 'Coordinator:\t', style: new TextStyle(fontWeight: FontWeight.bold)),
          new TextSpan(text: widget.product.contact + "\n"),
          new TextSpan(text: 'Coontact no.:\t', style: new TextStyle(fontWeight: FontWeight.bold)),
          new TextSpan(text: widget.product.contactno + "\n"),
          new TextSpan(text: 'Reg Fee:\t', style: new TextStyle(fontWeight: FontWeight.bold)),
          new TextSpan(text: widget.product.fee + "₹\n"),
          new TextSpan(text: 'First Prize:\t', style: new TextStyle(fontWeight: FontWeight.bold)),
          new TextSpan(text: widget.product.oneprize + "₹\n"),
          new TextSpan(text: 'Second Prize:\t', style: new TextStyle(fontWeight: FontWeight.bold)),
          new TextSpan(text: widget.product.twoprize + "₹\n"),
          new TextSpan(text: 'Date and Time:\t', style: new TextStyle(fontWeight: FontWeight.bold)),
          new TextSpan(text: widget.product.datestring + "\n"),
          new TextSpan(text: 'Venue:\t', style: new TextStyle(fontWeight: FontWeight.bold)),
          new TextSpan(text: widget.product.venue + "\n"),
        ],
      ),
    );


    final top = SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.scaffoldColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            name,
            spacer,
            divider,
            description,
            spacer,
            divider,
            rules,
            spacer,
            divider,
            info,
            //image,
          ],
        ),
      ),
    );
/*
    final bottom = Container(
      height: MediaQuery.of(context).size.height * 0.12, // 95.0
      color: Colors.white,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        )),
        onPressed: () {
          AlertService().showAlert(
            context: context,
            message: "${widget.product.name} has been added to cart.",
            type: AlertType.success,
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Add To Cart - ",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            Text(
              "\$${widget.product.price.toString()}",
              style: TextStyle(fontSize: 22.0, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
*/
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: CustomAppBar(isHome: false),
      body: top,
    );
  }
}
