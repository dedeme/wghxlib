// Copyright 26-Aug-2020 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

import dm.Ui;
import dm.Ui.Q;
import dm.Tp;
import dm.ListSorter as LS;

class ListSorter {
  static var listA = [1, 2, 3];
  static var listB = [new Tp(1, "one"), new Tp(2, "two"), new Tp(3, "three")];

  static final listADiv = Q("div");
  static final listBDiv = Q("div");

  static public function main (): Void {
    Q("@body")
      .add(listADiv)
      .add(listBDiv)
    ;
    update();
  }

  static function updateA () {
    final ls = new LS<Int>(
      () -> Ui.img("blank"),
      () -> Ui.img("go-previous"),
      () -> Ui.img("go-next"),
      listA,
      l -> {
        listA = l;
        updateA();
      }
    );
    listADiv.removeAll().add(
      Q("table")
        .add(Q("tr")
          .adds(ls.ups.map(e -> Q("td").add(e))))
        .add(Q("tr")
          .adds(listA.map(e -> Q("td").html(Std.string(e)))))
        .add(Q("tr")
          .adds(ls.downs.map(e -> Q("td").add(e))))
    );
  }

  static function updateB () {
    final ls = new LS<Tp<Int, String>>(
      () -> Ui.img("blank"),
      () -> Ui.img("go-up"),
      () -> Ui.img("go-down"),
      listB,
      l -> {
        listB = l;
        updateB();
      }
    );
    var i = 0;
    listBDiv.removeAll().add(
      Q("table")
        .adds(listB.map(e -> {
          final r = Q("tr")
            .add(Q("td").add(ls.ups[i]))
            .add(Q("td").add(ls.downs[i]))
            .add(Q("td").html(Std.string(e.e1)))
            .add(Q("td").html(e.e2));
          i++;
          return r;
        }))
    );
  }

  static function update () {
    updateA();
    updateB();
  }
}
