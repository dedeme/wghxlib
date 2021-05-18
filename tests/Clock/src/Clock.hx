// Copyright 17-Jun-2020 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

import dm.Ui.Q;

class Clock {
  static public function main (): Void {
    final clock = new dm.Clock();
    clock.width *= 2;
    clock.height *= 2;
    final clock2 = new dm.Clock(true);
    clock2.width *= 2;
    clock2.height *= 2;
    Q("@body")
      .style("background-color:#407080")
      .add(Q("table").att("align", "center")
        .add(Q("tr")
          .add(Q("td")
            .add(clock.wg
              .style(
                "opacity: 0.5"
              )))
          .add(Q("td")
            .add(clock2.wg
              .att(
                "style",
                "background:radial-gradient(#000333,#e6f6f6);" +
                "border: 1px solid rgb(110,130,150);" +
                "border-radius: 4px;"
              )))))
    ;
  }
}
