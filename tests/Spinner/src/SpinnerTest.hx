// Copyright 17-Jun-2020 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

import dm.Ui.Q;
import dm.Spinner;

class SpinnerTest {
  static public function main (): Void {
    Q("@body")
      .add(new Spinner(-100, 100, -100, TINY).wg)
      .add(new Spinner(-100, 100, -100, SMALL).wg)
      .add(new Spinner(-100, 100, -100, NORMAL).wg)
      .add(new Spinner(-100, 100, -100, BIG).wg)
      .add(new Spinner(-100, 100, -100, LARGE).wg)
    ;
  }
}
