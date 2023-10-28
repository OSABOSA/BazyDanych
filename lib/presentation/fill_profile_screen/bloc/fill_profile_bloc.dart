import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:test/presentation/fill_profile_screen/models/fill_profile_model.dart';part 'fill_profile_event.dart';part 'fill_profile_state.dart';/// A bloc that manages the state of a FillProfile according to the event that is dispatched to it.
class FillProfileBloc extends Bloc<FillProfileEvent, FillProfileState> {FillProfileBloc(FillProfileState initialState) : super(initialState) { on<FillProfileInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<FillProfileState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(FillProfileInitialEvent event, Emitter<FillProfileState> emit, ) async  { emit(state.copyWith(fullNameEditTextController: TextEditingController(), nameEditTextController: TextEditingController(), dateOfBirthEditTextController: TextEditingController(), emailEditTextController: TextEditingController(), phoneNumberEditTextController: TextEditingController())); emit(state.copyWith(fillProfileModelObj: state.fillProfileModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
