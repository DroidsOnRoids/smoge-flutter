import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:smoge/domain/provider/provider_model.dart';

class ProviderWidget<T extends ProviderModel> extends StatelessWidget {
  ProviderWidget(this._child, this._create);

  final Widget _child;
  final Create<T> _create;

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<T>(
        lazy: true,
        child: Builder(builder: (BuildContext context) => _child),
        create: _create,
      );
}
