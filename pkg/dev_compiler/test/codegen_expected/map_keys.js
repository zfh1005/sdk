define(['dart_sdk'], function(dart_sdk) {
  'use strict';
  let core = dart_sdk.core;
  let math = dart_sdk.math;
  let dart = dart_sdk.dart;
  let dartx = dart_sdk.dartx;
  let map_keys = Object.create(null);
  let VoidTodynamic = () => (VoidTodynamic = dart.constFn(dart.definiteFunctionType(dart.dynamic, [])))();
  map_keys.main = function() {
    core.print(dart.map({'1': 2, '3': 4, '5': 6}, core.String, core.int));
    core.print(dart.map([1, 2, 3, 4, 5, 6], core.int, core.int));
    core.print(dart.map({'1': 2, [dart.str`${dart.notNull(math.Random.new().nextInt(2)) + 2}`]: 4, '5': 6}, core.String, core.int));
    let x = '3';
    core.print(dart.map(['1', 2, x, 4, '5', 6], core.String, core.int));
    core.print(dart.map(['1', 2, null, 4, '5', 6], core.String, core.int));
  };
  dart.fn(map_keys.main, VoidTodynamic());
  // Exports:
  return {
    map_keys: map_keys
  };
});

//# sourceMappingURL=map_keys.js.map
