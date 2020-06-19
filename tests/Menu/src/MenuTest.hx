// Copyright 17-Jun-2020 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

import dm.Ui.Q;
import dm.Ui;
import dm.Menu;

class MenuTest {
  static public function main (): Void {
    final lopts = [
      Menu.ioption("x", "favicon", () -> Ui.alert("Text A")),
      Menu.separator(),
      Menu.toption("ax", "Text A", () -> Ui.alert("Text A")),
      Menu.separator(),
      Menu.toption("b", "Text B", () -> Ui.alert("Text B"))
    ];
    final ropts = [
      Menu.tlink("a", "MySelf"),
      Menu.separator2(),
      Menu.ilink("c", "favicon", "a&b"),
      Menu.separator(),
      Menu.close(() -> Ui.alert("close"))
    ];
    final menu = new Menu(lopts, ropts, "ax");
    Q("@body")
      .add(Q("table").style("width: 100%")
        .add(Q("tr")
          .add(Q("td")
            .add(menu.wg))))
    ;
  }
}
