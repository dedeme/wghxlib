// Copyright 17-Jun-2020 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

import dm.Ui.Q;

class Clock {
  static public function main (): Void {
    final clock = new dm.Clock();
    Q("@body")
      .add(Q("table").att("align", "center")
        .add(Q("tr")
          .add(Q("td")
            .add(clock.wg
              .att(
                "style",
                "background:radial-gradient(#000333,#e6f6f6);" +
                "border: 1px solid rgb(110,130,150);" +
                "border-radius: 4px;"
              )))))
    ;
  }
}
