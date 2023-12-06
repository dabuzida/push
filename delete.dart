import 'package:flutter/material.dart';
import 'package:frontend_module/model/translation_language_model.dart';
import 'package:frontend_module/widget/button/plain_button.dart';
import 'package:frontend_module/widget/custom_blank.dart';
import 'package:frontend_module/widget/text/plain_text.dart';

import '../diagnosis_util/diagnosis_enum.dart';
import '../enum/enum_test_custom_form_type.dart';
import '../media_query/media_query_layout.dart';
import '../network/request.dart';
import '../network_packet/packet_bogunso.dart';
import '../network_packet/packet_common.dart';
import '../style/app_theme_button.dart';
import '../style/app_theme_text.dart';
import '../ui/custom_web_dialog.dart';
import 'form_multi_select_selects_edit_view.dart';
import 'form_text_edit_view.dart';

class AlzwinTestCustomFormUpdateDialog extends StatefulWidget {
  const AlzwinTestCustomFormUpdateDialog({required this.testCustom, super.key});

  final COMMONBogunsoTestCustomValue? testCustom;

  @override
  State<AlzwinTestCustomFormUpdateDialog> createState() => _AlzwinTestCustomFormUpdateDialogState();
}

class _AlzwinTestCustomFormUpdateDialogState extends State<AlzwinTestCustomFormUpdateDialog> {
  final List<COMMONBogunsoTestCustomFormText> _listText = <COMMONBogunsoTestCustomFormText>[];
  final List<COMMONBogunsoTestCustomFormMultiSelect> _listMultiSelect = <COMMONBogunsoTestCustomFormMultiSelect>[];

  //
  final double _widthMobile = 605;
  final double _childWidthMobile = double.infinity;
  final double _width = 705;
  final double _childWidth = 500.0;

  int get totalCount {
    return _listText.length + _listMultiSelect.length;
  }

  @override
  void initState() {
    super.initState();

    if (widget.testCustom?.customForm != null) {
      for (int i = 0; i < widget.testCustom!.customForm!.length; i++) {
        final COMMONBogunsoTestCustomFormText? testCustomFormText = TestCustomFormType.castToFormText(widget.testCustom!.customForm![i]);
        if (testCustomFormText != null) {
          _listText.add(
            testCustomFormText,
          );
        }

        final COMMONBogunsoTestCustomFormMultiSelect? testCustomFormMultiSelect = TestCustomFormType.castToFormMultiSelect(widget.testCustom!.customForm![i]);
        if (testCustomFormMultiSelect != null) {
          _listMultiSelect.add(
            testCustomFormMultiSelect,
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MediaQueryLayout(
      screenMobile: () => _buildUIScriptUpdateDialog(width: _widthMobile, childWidth: _childWidthMobile),
      screenLimit: () => _buildUIScriptUpdateDialog(width: _width, childWidth: _childWidth),
    );
  }

  Widget _buildUIScriptUpdateDialog({required double width, required double childWidth}) {
    final String totalCountTestCustomForm = TranslationLanguageModel().translate(
      'TotalCount',
      formats: <String, String>{
        '{count}': totalCount.toString(),
      },
    );

    return CustomDialogFrame(
      titleTranslationKey: 'TestCustomForm',
      width: 1000,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              PlainText(
                text: totalCountTestCustomForm,
                style: AppThemeText().styleBasic,
                color: AppThemeText().colorBasic,
              ),
              Row(
                children: <Widget>[
                  PlainButton(
                    text: '+${TranslationLanguageModel().translate('TestCustomFormText')}',
                    style: _listText.isNotEmpty ? AppThemeButton().rectangleOutlineBlack() : AppThemeButton().primaryRectangleOutlined(),
                    onTap: _listText.isNotEmpty
                        ? null
                        : () {
                            setState(() {
                              _listText.add(
                                COMMONBogunsoTestCustomFormText(
                                  key: TestCustomKey.partnerCode.serverValue,
                                  type: TestCustomFormType.text.serverValue,
                                  title: '',
                                  skippable: false,
                                  saveToLocal: false,
                                ),
                              );
                            });
                          },
                  ),
                  const BlankRowS(),
                  PlainButton(
                    text: '+${TranslationLanguageModel().translate('TestCustomFormMultiSelect')}',
                    style: _listMultiSelect.isNotEmpty ? AppThemeButton().rectangleOutlineBlack() : AppThemeButton().primaryRectangleOutlined(),
                    onTap: _listMultiSelect.isNotEmpty
                        ? null
                        : () {
                            setState(() {
                              _listMultiSelect.add(
                                COMMONBogunsoTestCustomFormMultiSelect(
                                  key: TestCustomKey.address.serverValue,
                                  type: TestCustomFormType.multiSelect.serverValue,
                                  title: '',
                                  skippable: false,
                                  saveToLocal: false,
                                  selects: <COMMONBogunsoTestCustomFormMultiSelectSelects>[],
                                ),
                              );
                            });
                          },
                  ),
                ],
              ),
            ],
          ),
          const BlankColM(),
          _buildUIBody(),
        ],
      ),
      bottom: _buildUIBottomButton(),
    );
  }

  Widget _buildUIBody() {
    final List<Widget> widgets = <Widget>[];

    for (int i = 0; i < _listText.length; i++) {
      widgets.add(
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey, width: 1.01),
            ),
          ),
          child: FormTextEditView(
            index: i,
            formData: _listText[i],
            onChanged: (int index, COMMONBogunsoTestCustomFormText value) {
              _listText[index] = value;
            },
            onDelete: (int index) {
              setState(() {
                _listText.removeAt(index);
              });
            },
          ),
        ),
      );
    }

    for (int i = 0; i < _listMultiSelect.length; i++) {
      widgets.add(
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey, width: 1.01),
            ),
          ),
          child: FormMultiSelectSelectsEditView(
            index: i,
            formData: _listMultiSelect[i],
            onChanged: (int index, COMMONBogunsoTestCustomFormMultiSelect value) {
              _listMultiSelect[index] = value;
            },
            onDelete: (int index) {
              setState(() {
                _listMultiSelect.removeAt(index);
              });
            },
          ),
        ),
      );
    }

    return Column(
      key: UniqueKey(),
      children: widgets,
    );
  }

  Widget _buildUIBottomButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        PlainButton(
          translationKey: 'Cancel',
          style: AppThemeButton().roundedGrey,
          onTap: () {
            Navigator.of(context).pop(CommonDialogResult.close);
          },
        ),
        const BlankRowSM(),
        PlainButton(
          translationKey: 'Edit',
          style: AppThemeButton().primaryBasic(),
          onTap: () async {
            await _trySetting();
          },
        ),
      ],
    );
  }

  Future<void> _trySetting() async {
    final bool isAnswerYes = await showCustomYesNoDialog(
      context: context,
      body: PlainText(
        translationKey: 'TestConfigScriptEditConfirm',
        style: AppThemeText().styleBasic,
        color: AppThemeText().colorBasic,
      ),
    );

    if (!mounted) {
      return;
    }

    if (!isAnswerYes) {
      return;
    }

    final COMMONBogunsoTestCustomValue testCustom = widget.testCustom!;

    final List<dynamic> testCustomFormList = <dynamic>[];

    for (final COMMONBogunsoTestCustomFormText testCustomFormText in _listText) {
      testCustomFormList.add(
        COMMONBogunsoTestCustomFormText(
          key: TestCustomKey.partnerCode.serverValue, // TODO: 안정화 후 testCustomFormText.key로 수정
          proceed: testCustomFormText.proceed,
          type: TestCustomFormType.text.serverValue,
          title: testCustomFormText.title,
          skippable: testCustomFormText.skippable,
          saveToLocal: testCustomFormText.saveToLocal,
          desc: testCustomFormText.desc,
        ),
      );
    }

    for (final COMMONBogunsoTestCustomFormMultiSelect testCustomFormMultiSelect in _listMultiSelect) {
      testCustomFormList.add(
        COMMONBogunsoTestCustomFormMultiSelect(
          key: TestCustomKey.address.serverValue, // TODO: 안정화 후 testCustomFormMultiSelect.key로 수정
          type: TestCustomFormType.multiSelect.serverValue,
          title: testCustomFormMultiSelect.title,
          skippable: testCustomFormMultiSelect.skippable,
          saveToLocal: testCustomFormMultiSelect.saveToLocal,
          desc: testCustomFormMultiSelect.desc,
          selects: testCustomFormMultiSelect.selects,
        ),
      );
    }

    testCustom.customForm = testCustomFormList;

    final bool isUpdateDone = await executeTaskDialog(
      context: context,
      task: () async {
        bool result = false;
        await bogunsoBogunsoUpdateOnlyTestCustom(
          // targetBogunsoId: widget.bogunso.id,
          testCustom: testCustom,
          onSuccess: (BOGUNSOAckBogunsoUpdate ack) {
            result = true;
          },
        );

        return result;
      },
    ) as bool;

    if (!mounted) {
      return;
    }

    if (isUpdateDone) {
      await showCustomOKDialog(
        context: context,
        body: Center(
          child: PlainText(
            translationKey: 'TestConfigScriptEditDone',
            style: AppThemeText().styleBasic,
            color: AppThemeText().colorBasic,
          ),
        ),
      );

      WidgetsBinding.instance.addPostFrameCallback(
        (Duration timeStamp) async {
          Navigator.of(context).pop(CommonDialogResult.succeeded);
        },
      );
    } else {
      await showCustomOKDialog(
        context: context,
        body: PlainText(
          translationKey: 'TestConfigScriptEditFail',
          style: AppThemeText().styleBasic,
          color: AppThemeText().colorBasicError,
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
