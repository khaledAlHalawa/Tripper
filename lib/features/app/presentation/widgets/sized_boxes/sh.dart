part of "sizedbox.dart";

@immutable
class Sh extends StatelessWidget {

  Sh.size4({Key? key, this.child})
      : _sh = ksh4,
        super(key: key);

  Sh.size8({Key? key, this.child})
      : _sh = ksh8,
        super(key: key);

  Sh.size12({Key? key, this.child})
      : _sh = ksh12,
        super(key: key);

  Sh.size16({Key? key, this.child})
      : _sh = ksh16,
        super(key: key);

  Sh.size24({Key? key, this.child})
      : _sh = ksh24,
        super(key: key);

  Sh.size32({Key? key, this.child})
      : _sh = ksh32,
        super(key: key);

  Sh.size40({Key? key, this.child})
      : _sh = ksh40,
        super(key: key);

  Sh.size48({Key? key, this.child})
      : _sh = ksh48,
        super(key: key);

  Sh.size64({Key? key, this.child})
      : _sh = ksh64,
        super(key: key);

  Sh.size80({Key? key, this.child})
      : _sh = ksh80,
        super(key: key);

  Sh.size96({Key? key, this.child})
      : _sh = ksh96,
        super(key: key);

  Sh.size112({Key? key, this.child})
      : _sh = ksh112,
        super(key: key);

  Sh.size144({Key? key, this.child})
      : _sh = ksh144,
        super(key: key);

  Sh.size176({Key? key, this.child})
      : _sh = ksh176,
        super(key: key);

  Sh.size208({Key? key, this.child})
      : _sh = ksh208,
        super(key: key);

  Sh.size240({Key? key, this.child})
      : _sh = ksh240,
        super(key: key);

  final Widget? child;
  late final double _sh;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: _sh, child: child);
  }
}
