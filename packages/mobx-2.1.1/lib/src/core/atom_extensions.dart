import 'package:mobx/mobx.dart';

extension AtomSpyReporter on Atom {
  void reportRead() {
    context.enforceReadPolicy(this);
    reportObserved();
  }

  void reportWrite<T>(T newValue, T oldValue, void Function() setNewValue) {
    context.spyReport(ObservableValueSpyEvent(this,
        newValue: newValue, oldValue: oldValue, name: name));

    final actionName = context.isSpyEnabled ? '${name}_set' : name;

    // ignore: cascade_invocations
    context.conditionallyRunInAction(() {
      setNewValue();
      reportChanged();
    }, this, name: actionName);

    // ignore: cascade_invocations
    context.spyReport(EndedSpyEvent(type: 'observable', name: name));
  }
}
