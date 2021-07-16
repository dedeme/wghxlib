// Copyright 15-Jul-2021 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

import dm.Ui.Q;

class Speedometer {
  static public function main (): Void {
    final s1 = new dm.Speedometer(
      0.1587, 0.8, "#6e8296", "white"
    );
    final s2 = new dm.Speedometer(0.21, 0.15);
    Q("@body")
      .style("background-color:#f0f1f2")
      .add(Q("table").att("align", "center")
        .add(Q("tr")
          .add(Q("td")
            .add(s1.wg)
          .add(Q("td")
            .add(s2.wg)))))
    ;
  }
}
