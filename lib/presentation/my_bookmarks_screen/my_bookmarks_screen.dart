import '../my_bookmarks_screen/widgets/mybookmarks_item_widget.dart';import 'bloc/my_bookmarks_bloc.dart';import 'models/my_bookmarks_model.dart';import 'models/mybookmarks_item_model.dart';import 'package:flutter/material.dart';import 'package:test/core/app_export.dart';import 'package:test/widgets/app_bar/appbar_leading_image.dart';import 'package:test/widgets/app_bar/appbar_title.dart';import 'package:test/widgets/app_bar/appbar_trailing_image.dart';import 'package:test/widgets/app_bar/custom_app_bar.dart';class MyBookmarksScreen extends StatelessWidget {const MyBookmarksScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<MyBookmarksBloc>(create: (context) => MyBookmarksBloc(MyBookmarksState(myBookmarksModelObj: MyBookmarksModel()))..add(MyBookmarksInitialEvent()), child: MyBookmarksScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 24.v, right: 24.h), child: BlocSelector<MyBookmarksBloc, MyBookmarksState, MyBookmarksModel?>(selector: (state) => state.myBookmarksModelObj, builder: (context, myBookmarksModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 281.v, crossAxisCount: 2, mainAxisSpacing: 24.h, crossAxisSpacing: 24.h), physics: BouncingScrollPhysics(), itemCount: myBookmarksModelObj?.mybookmarksItemList.length ?? 0, itemBuilder: (context, index) {MybookmarksItemModel model = myBookmarksModelObj?.mybookmarksItemList[index] ?? MybookmarksItemModel(); return MybookmarksItemWidget(model, onTapImgImage: () {onTapImgImage(context);});});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_my_bookmarks".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgMenuWhiteA700, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 16.h)), AppbarTrailingImage(imagePath: ImageConstant.imgGrid, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 40.h))]); } 
onTapImgImage(BuildContext context) {  } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
