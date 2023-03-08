import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OutlinedTextField extends StatefulWidget {
  OutlinedTextField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.sufixIcon,
    this.isPassword = false,
    this.textInputType = TextInputType.text,
    this.isLastOne = false,
    //this.isMultiLine = false,
    this.howManyStartLines,
    this.maxLines,
    this.onChanged,
    this.prefixIcon,
    this.enabled,
    this.onEditingComplete,
    this.onSubmitted,
    this.focusNode,
  });

  final TextEditingController textEditingController;
  final String hintText;
  final IconData? sufixIcon;
  final IconData? prefixIcon;
  final bool isPassword;
  final TextInputType textInputType;
  final bool isLastOne;
  // bool isMultiLine;
  final int? howManyStartLines;
  final int? maxLines;
  ValueChanged<String>? onChanged;
  final bool? enabled;
  final Function()? onEditingComplete;
  final Function(String)? onSubmitted;
  final FocusNode? focusNode;

  @override
  State<OutlinedTextField> createState() => _OutlinedTextFieldState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<TextEditingController>(
          'textEditingController',
          textEditingController,
        ),
      )
      ..add(StringProperty('hintText', hintText))
      ..add(DiagnosticsProperty<IconData?>('sufixIcon', sufixIcon))
      ..add(DiagnosticsProperty<IconData?>('prefixIcon', prefixIcon))
      ..add(DiagnosticsProperty<bool>('isPassword', isPassword))
      ..add(DiagnosticsProperty<TextInputType>('textInputType', textInputType))
      ..add(DiagnosticsProperty<bool>('isLastOne', isLastOne))
      ..add(IntProperty('howManyStartLines', howManyStartLines))
      ..add(IntProperty('maxLines', maxLines))
      ..add(
        ObjectFlagProperty<ValueChanged<String>?>.has('onChanged', onChanged),
      )
      ..add(DiagnosticsProperty<bool?>('enabled', enabled))
      ..add(
        ObjectFlagProperty<Function()?>.has(
          'onEditingComplete',
          onEditingComplete,
        ),
      )
      ..add(
        ObjectFlagProperty<Function(String p1)?>.has(
          'onSubmitted',
          onSubmitted,
        ),
      );
  }
}

class _OutlinedTextFieldState extends State<OutlinedTextField> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(10.w),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: TextField(
        focusNode: widget.focusNode,
        onSubmitted: widget.onSubmitted,
        onEditingComplete: widget.onEditingComplete,
        enabled: widget.enabled,
        onChanged: widget.onChanged,
        minLines: widget.howManyStartLines,
        maxLines: (widget.isPassword || widget.maxLines == null)
            ? 1
            : widget.maxLines,
        style: Theme.of(context).textTheme.bodyMedium,
        textInputAction:
            widget.isLastOne ? TextInputAction.done : TextInputAction.next,
        textAlignVertical: widget.prefixIcon != null || widget.sufixIcon != null
            ? TextAlignVertical.center
            : null,
        controller: widget.textEditingController,
        keyboardType:
            (widget.howManyStartLines != null || widget.maxLines != null)
                ? TextInputType.multiline
                : widget.textInputType,
        decoration: InputDecoration(
          contentPadding:
              (widget.howManyStartLines == null && widget.maxLines == null)
                  ? const EdgeInsets.symmetric(horizontal: 20)
                  : const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          suffixIcon: widget.sufixIcon != null ? Icon(widget.sufixIcon) : null,
          prefixIcon:
              widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          hintText: widget.hintText,
        ).copyWith(
          border: InputBorder.none,
          hintStyle: Theme.of(context).textTheme.bodyLarge,
        ),
        obscureText: widget.isPassword,
      ),
    );
  }
}
