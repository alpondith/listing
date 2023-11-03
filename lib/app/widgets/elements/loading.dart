import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class Loading extends StatelessWidget {
  final double size;
  final double? height;
  const Loading({
    Key? key,
    this.size = 16.0,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Get.height,
      width: double.infinity,
      child: Center(
        key: const Key("loading"),
        child: SpinKitFadingCube(
          color: Colors.black,
          size: size,
        ),
      ),
    );
  }
}

class PaginateLoading extends StatelessWidget {
  final double size;

  const PaginateLoading({
    Key? key,
    this.size = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: Center(
        key: const Key("paginate-loading"),
        child: SpinKitFadingCube(
          color: Colors.black,
          size: size,
        ),
      ),
    );
  }
}
