import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/display_med/display_med_widget.dart';
import 'sanple_page_widget.dart' show SanplePageWidget;
import 'package:flutter/material.dart';

class SanplePageModel extends FlutterFlowModel<SanplePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for displayMed component.
  late DisplayMedModel displayMedModel;

  @override
  void initState(BuildContext context) {
    displayMedModel = createModel(context, () => DisplayMedModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    displayMedModel.dispose();
  }
}
