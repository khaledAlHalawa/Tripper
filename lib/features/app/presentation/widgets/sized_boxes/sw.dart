part of "sizedbox.dart";


class Sw extends StatelessWidget {

  Sw.size4({Key? key, this.child})
      : _sw = ksw4,
        super(key: key);

  Sw.size8({Key? key, this.child})
      : _sw = ksw8,
        super(key: key);

  Sw.size12({Key? key, this.child})
      : _sw = ksw12,
        super(key: key);

  Sw.size16({Key? key, this.child})
      : _sw = ksw16,
        super(key: key);

  Sw.size24({Key? key, this.child})
      : _sw = ksw24,
        super(key: key);

  Sw.size32({Key? key, this.child})
      : _sw = ksw32,
        super(key: key);

  Sw.size40({Key? key, this.child})
      : _sw = ksw40,
        super(key: key);

  Sw.size48({Key? key, this.child})
      : _sw = ksw48,
        super(key: key);

  Sw.size64({Key? key, this.child})
      : _sw = ksw64,
        super(key: key);

  Sw.size80({Key? key, this.child})
      : _sw = ksw80,
        super(key: key);

  Sw.size96({Key? key, this.child})
      : _sw = ksw96,
        super(key: key);

  Sw.size112({Key? key, this.child})
      : _sw = ksw112,
        super(key: key);

  Sw.size144({Key? key, this.child})
      : _sw = ksw144,
        super(key: key);

  Sw.size176({Key? key, this.child})
      : _sw = ksw176,
        super(key: key);

  Sw.size208({Key? key, this.child})
      : _sw = ksw208,
        super(key: key);

  Sw.size240({Key? key, this.child})
      : _sw = ksw240,
        super(key: key);

  final Widget? child;
  late final double _sw;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: _sw, child: child);
  }
}
