// ignore_for_file: non_constant_identifier_names, prefer_final_fields, override_on_non_overriding_member

import 'dart:async';

import 'package:rxdart/subjects.dart';
import 'package:store_management_app/Presentations/Base/baseviewmodel.dart';
import 'package:store_management_app/Presentations/Model/model.dart';
import 'package:store_management_app/Presentations/Resources/assets_manager.dart';
import 'package:store_management_app/Presentations/Resources/string_manager.dart';

class OnboardingViewModel extends BaseViewModel
    with BaseviewModelInpur, BaseviewModelOutput {
  StreamController _streamController = BehaviorSubject<SliderViewObject>();
  late final List<SliderObject> _list;
  int pagenumber = 0;
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _Onboardingdata();
    _posttoUpdate();
  }

  int goNext() {
    int nextindex = pagenumber++;
    if (nextindex >=
        _list.length) //Infinite loop to go the first item in slider list
    {
      pagenumber = 0;
    }
    return pagenumber;
  }

  //User click on Right Arrow Button

  int goPrevious() {
    int previousindex = pagenumber--;
    if (previousindex == -1) {
      pagenumber = _list.length - 1;
    }
    return pagenumber;
  }

  //User Click on Left Arrow Button

  void onPageChanged(int Index) {
    pagenumber = Index;
    _posttoUpdate();
  } //Display a page on index base

  @override
  Sink get Inputsliderobject => _streamController.sink;

  @override
  Stream<SliderViewObject> get OutputSliderObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  List<SliderObject> _Onboardingdata() => [
        SliderObject(
            imagepath: ImageManager.onboardingLogo1,
            title: AppString.onBoardingtitle1,
            subtitle: AppString.onBoardingsubtitle1),
        SliderObject(
            imagepath: ImageManager.onboardingLogo2,
            title: AppString.onBoardingtitle2,
            subtitle: AppString.onBoardingsubtitle2),
        SliderObject(
            imagepath: ImageManager.onboardingLogo3,
            title: AppString.onBoardingtitle3,
            subtitle: AppString.onBoardingsubtitle3),
        SliderObject(
            imagepath: ImageManager.onboardingLogo4,
            title: AppString.onBoardingtitle4,
            subtitle: AppString.onBoardingsubtitle4),
      ];

  _posttoUpdate() {
    _streamController.add(SliderViewObject(
        sliderObject: _list[pagenumber],
        numberofindex: pagenumber,
        numberofslides: _list.length));
  }
}

abstract class OnboardingViewModelInput {
  Sink get Inputsliderobject; //By this we add data in Stream

}

abstract class OnboardingViewModelOutput {
  Stream<SliderViewObject> get OutputSliderObject;
}

class SliderViewObject {
  SliderObject? sliderObject;
  int numberofslides;
  int? numberofindex;

  SliderViewObject(
      {this.sliderObject, required this.numberofslides, this.numberofindex});
}
