import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'data_table_model.dart';
export 'data_table_model.dart';

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({super.key});

  @override
  State<DataTableWidget> createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  late DataTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataTableModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final data = List.generate(random_data.randomInteger(3, 10),
                (index) => random_data.randomName(true, false))
            .toList()
            .take(10)
            .toList();

        return FlutterFlowDataTable<String>(
          controller: _model.paginatedDataTableController,
          data: data,
          columnsBuilder: (onSortChanged) => [
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Tag ID',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'CustomInter',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'TID',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'CustomInter',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Barcode',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'CustomInter',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ),
          ],
          dataRowBuilder: (dataItem, dataIndex, selected, onSelectChanged) =>
              DataRow(
            color: MaterialStateProperty.all(
                FlutterFlowTheme.of(context).secondaryBackground),
            cells: [
              Text(
                '34161FA820327FA402D82960',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'CustomInter',
                      color: FlutterFlowTheme.of(context).primary,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              Text(
                'F4161FA820327FA402D82960',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'CustomInter',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              Text(
                '606162-001-0442699',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'CustomInter',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ].map((c) => DataCell(c)).toList(),
          ),
          paginated: false,
          selectable: false,
          headingRowHeight: 56.0,
          dataRowHeight: 48.0,
          columnSpacing: 20.0,
          headingRowColor: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          addHorizontalDivider: true,
          addTopAndBottomDivider: false,
          hideDefaultHorizontalDivider: true,
          horizontalDividerColor:
              FlutterFlowTheme.of(context).secondaryBackground,
          horizontalDividerThickness: 1.0,
          addVerticalDivider: false,
        );
      },
    );
  }
}
