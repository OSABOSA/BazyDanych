import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/forgotpassword_item_model.dart';import 'package:test/presentation/forgot_password_screen/models/forgot_password_model.dart';part 'forgot_password_event.dart';part 'forgot_password_state.dart';/// A bloc that manages the state of a ForgotPassword according to the event that is dispatched to it.
class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {ForgotPasswordBloc(ForgotPasswordState initialState) : super(initialState) { on<ForgotPasswordInitialEvent>(_onInitialize); }

_onInitialize(ForgotPasswordInitialEvent event, Emitter<ForgotPasswordState> emit, ) async  { emit(state.copyWith(forgotPasswordModelObj: state.forgotPasswordModelObj?.copyWith(forgotpasswordItemList: fillForgotpasswordItemList()))); } 
List<ForgotpasswordItemModel> fillForgotpasswordItemList() { return [ForgotpasswordItemModel(viaSMS: ImageConstant.imgVolume, viaSMS1: "via SMS:", oneHundredElevenThousandOneHun: "+1 111 ******99"), ForgotpasswordItemModel(viaSMS: ImageConstant.imgCheckmarkPrimary, viaSMS1: "via Email:", oneHundredElevenThousandOneHun: "user@domain.com")]; } 
 }
