part of "sizedbox.dart";


// ignore: must_be_immutable
class Sp extends StatelessWidget {

  Sp.size(this._size,{Key? key, this.child})
      : super(key: key);

  Sp.h4({Key? key, this.child})
      : _sph = ksp4,
        super(key: key);

  Sp.h8({Key? key, this.child})
      : _sph = ksp8,
        super(key: key);

  Sp.h12({Key? key, this.child})
      : _sph = ksp12,
        super(key: key);

  Sp.h16({Key? key, this.child})
      : _sph = ksp16,
        super(key: key);

  Sp.h24({Key? key, this.child})
      : _sph = ksp24,
        super(key: key);

  Sp.h32({Key? key, this.child})
      : _sph = ksp32,
        super(key: key);

  Sp.h40({Key? key, this.child})
      : _sph = ksp40,
        super(key: key);

  Sp.h48({Key? key, this.child})
      : _sph = ksp48,
        super(key: key);

  Sp.h64({Key? key, this.child})
      : _sph = ksp64,
        super(key: key);

  Sp.h80({Key? key, this.child})
      : _sph = ksp80,
        super(key: key);

  Sp.h96({Key? key, this.child})
      : _sph = ksp96,
        super(key: key);

  Sp.h112({Key? key, this.child})
      : _sph = ksp112,
        super(key: key);

  Sp.h144({Key? key, this.child})
      : _sph = ksp144,
        super(key: key);

  Sp.h176({Key? key, this.child})
      : _sph = ksp176,
        super(key: key);

  Sp.h208({Key? key, this.child})
      : _sph = ksp208,
        super(key: key);

  Sp.h240({Key? key, this.child})
      : _sph = ksp240,
        super(key: key);

  Sp.w4({Key? key, this.child})
      : _spw = ksp4,
        super(key: key);

  Sp.w8({Key? key, this.child})
      : _spw = ksp8,
        super(key: key);

  Sp.w12({Key? key, this.child})
      : _spw = ksp12,
        super(key: key);

  Sp.w16({Key? key, this.child})
      : _spw = ksp16,
        super(key: key);

  Sp.w24({Key? key, this.child})
      : _spw = ksp24,
        super(key: key);

  Sp.w32({Key? key, this.child})
      : _spw = ksp32,
        super(key: key);

  Sp.w40({Key? key, this.child})
      : _spw = ksp40,
        super(key: key);

  Sp.w48({Key? key, this.child})
      : _spw = ksp48,
        super(key: key);

  Sp.w64({Key? key, this.child})
      : _spw = ksp64,
        super(key: key);

  Sp.w80({Key? key, this.child})
      : _spw = ksp80,
        super(key: key);

  Sp.w96({Key? key, this.child})
      : _spw = ksp96,
        super(key: key);

  Sp.w112({Key? key, this.child})
      : _spw = ksp112,
        super(key: key);

  Sp.w144({Key? key, this.child})
      : _spw = ksp144,
        super(key: key);

  Sp.w176({Key? key, this.child})
      : _spw = ksp176,
        super(key: key);

  Sp.w208({Key? key, this.child})
      : _spw = ksp208,
        super(key: key);

  Sp.w240({Key? key, this.child})
      : _spw = ksp240,
        super(key: key);

  final Widget? child;
  Size? _size;
  double _sph = 0.0;
  double _spw = 0.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _size?.height ?? _sph,
      width: _size?.width ?? _spw,
      child: child,
    );
  }
}
