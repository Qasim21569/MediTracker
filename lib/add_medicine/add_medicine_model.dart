import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_medicine_widget.dart' show AddMedicineWidget;
import 'package:flutter/material.dart';

class AddMedicineModel extends FlutterFlowModel<AddMedicineWidget> {
  ///  Local state fields for this page.

  int? quantity = 1;

  int? totalCount = 1;

  DateTime? startDate;

  DateTime? endDate;

  int? singleDose = 1;

  bool selectStartdate = false;

  bool selectEnddate = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Breakfastoption widget.
  FormFieldController<String>? breakfastoptionValueController;
  // State field(s) for lunchOption widget.
  FormFieldController<String>? lunchOptionValueController;
  // State field(s) for dinnerOption widget.
  FormFieldController<String>? dinnerOptionValueController;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  String? get breakfastoptionValue => breakfastoptionValueController?.value;
  String? get lunchOptionValue => lunchOptionValueController?.value;
  String? get dinnerOptionValue => dinnerOptionValueController?.value;
}
