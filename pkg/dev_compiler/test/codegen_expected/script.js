define(['dart_sdk'], function(dart_sdk) {
  'use strict';
  let core = dart_sdk.core;
  let dart = dart_sdk.dart;
  let dartx = dart_sdk.dartx;
  let script = Object.create(null);
  let ListOfString = () => (ListOfString = dart.constFn(core.List$(core.String)))();
  let ListOfStringTovoid = () => (ListOfStringTovoid = dart.constFn(dart.definiteFunctionType(dart.void, [ListOfString()])))();
  script.main = function(args) {
    let name = args[dartx.join](' ');
    if (name == '') name = 'world';
    core.print(dart.str`hello ${name}`);
  };
  dart.fn(script.main, ListOfStringTovoid());
  // Exports:
  return {
    script: script
  };
});
