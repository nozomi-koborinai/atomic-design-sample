import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicIconButton extends StatelessWidget {
  const NeumorphicIconButton(
      {required this.backColor,
      required this.foreColor,
      required this.icon,
      required this.onPressed,
      super.key});
  final Color? backColor;
  final Color? foreColor;
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        color: backColor,
        depth: 10,
        lightSource: LightSource.top,
      ),
      child: IconButton(
        icon: Icon(icon, color: foreColor),
        onPressed: () => onPressed.call(),
      ),
    );
  }
}
