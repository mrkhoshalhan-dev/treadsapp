import "package:trez/data/data.dart";
import "package:trez/data/theard.dart";

abstract class Ithread {
  List<theard> getThread();
}

class threadRemotDataSource extends Ithread {
  @override
  List<theard> getThread() {
    // TODO: implement getThread
    return listThread()
        .map((jsonObject) => theard.formJson(jsonObject))
        .toList();
  }
}
