// Copyright 16-Jun-2020 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

import dm.Ui.Q;
import dm.Captcha;

class Captcha {
  static public function main (): Void {
    final captcha = new dm.Captcha("CatchaTest");
    Q("@body")
      .add(Q("table").att("align", "center")
        .add(Q("tr")
          .add(Q("td")
            .add(captcha.wg))))
    ;
  }
}
