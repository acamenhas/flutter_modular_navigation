import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_navigation/slider_page.dart';

class SliderModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            transition: TransitionType.rightToLeft,
            child: (_, args) => SliderPage(),
            children: [
              ChildRoute('/rota1', child: (context, args) {
                print("====rota1===");
                return Container(
                  color: Colors.amber,
                );
              }),
              ChildRoute('/rota2', child: (context, args) {
                print("====rota2===");
                return Container(
                  color: Colors.blueAccent,
                );
              })
            ]),
      ];
}
