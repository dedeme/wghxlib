// Copyright 17-Jun-2020 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

import dm.Ui.Q;
import dm.ModalBox;

class ModalBoxTest {
  static public function main (): Void {
    final bt = Q("button").html("Close");
    final box = new ModalBox(Q("div")
      .add(Q("div").html("A message"))
      .add(Q("hr"))
      .add(bt)
    );
    bt.on(CLICK, _ -> box.show(false));
    Q("@body")
      .add(box.wg)
      .add(Q("button")
        .text("show")
        .on(CLICK, _ -> {
          box.show(true);
          bt.e.focus();
        }))
    ;
  }
}
