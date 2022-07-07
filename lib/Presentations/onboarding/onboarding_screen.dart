// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_management_app/Presentations/Model/model.dart';
import 'package:store_management_app/Presentations/Resources/assets_manager.dart';
import 'package:store_management_app/Presentations/Resources/color_manager.dart';
import 'package:store_management_app/Presentations/Resources/route_manager.dart';
import 'package:store_management_app/Presentations/Resources/string_manager.dart';
import 'package:store_management_app/Presentations/Resources/values_manager.dart';
import 'package:store_management_app/Presentations/onboarding/onboarding_viewmodel.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController(initialPage: 0);

  OnboardingViewModel _onboardingViewModel = OnboardingViewModel();

  _bind() {
    _onboardingViewModel.start();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SliderViewObject>(
        stream: _onboardingViewModel.OutputSliderObject,
        builder: (context, snapshot) {
          return _getcontentwidget(snapshot.data);
        });
  }

  Widget _getcontentwidget(SliderViewObject? sliderViewObject) {
    if (sliderViewObject == null) {
      return Container();
    } else {
      return Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          backgroundColor: ColorManager.white,
          elevation: Appsize.s0,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.white,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark),
        ),
        body: PageView.builder(
            controller: _pageController,
            itemCount: sliderViewObject.numberofslides,
            onPageChanged: (value) {
              _onboardingViewModel.onPageChanged(value);
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  OnBoardingPage(sliderObject: sliderViewObject.sliderObject)
                ],
              );
            }),
        bottomSheet: Container(
          color: ColorManager.white,
          height: Appsize.s100,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacementNamed(
                          context, RouteManager.homeRoute);
                    });
                  },
                  child: Text(
                    AppString.skip,
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              SliderBottomButton(sliderViewObject),
            ],
          ),
        ),
      );
    }
  }

  Widget getpropercircle(int index, int? pagenumber) {
    if (index == pagenumber) {
      return SvgPicture.asset(ImageManager.hollowcircleicon);
    } else {
      return SvgPicture.asset(ImageManager.solidcircleicon);
    }
  }

  Widget SliderBottomButton(SliderViewObject sliderViewObject) {
    return Container(
      color: ColorManager.primarycolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _pageController.animateToPage(_onboardingViewModel.goNext(),
                      duration: const Duration(
                        milliseconds: Durationconst.d300,
                      ),
                      curve: Curves.bounceInOut);
                });
              },
              child: SizedBox(
                height: Appsize.s20,
                width: Appsize.s20,
                child: SvgPicture.asset(ImageManager.leftarrow), // left arrow
              ),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < sliderViewObject.numberofslides; i++)
                Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: getpropercircle(i, sliderViewObject.numberofindex)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _pageController.animateToPage(
                      _onboardingViewModel.goPrevious(),
                      duration: const Duration(
                        milliseconds: Durationconst.d300,
                      ),
                      curve: Curves.bounceInOut);
                });
              },
              child: SizedBox(
                height: Appsize.s20,
                width: Appsize.s20,
                child: SvgPicture.asset(ImageManager.rightarrow),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _onboardingViewModel.dispose();
    super.dispose();
  }
}

class OnBoardingPage extends StatelessWidget {
  SliderObject? sliderObject;
  OnBoardingPage({Key? key, required this.sliderObject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: Appsize.s16,
        ),
        Text(
          sliderObject!.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
        ),
        Padding(
          padding: const EdgeInsets.all(Appsize.s16),
          child: Text(
            sliderObject!.subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const SizedBox(
          height: Appsize.s80,
        ),
        SvgPicture.asset(sliderObject!.imagepath),
      ],
    );
  }
}
