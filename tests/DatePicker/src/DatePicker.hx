// Copyright 16-Jun-2020 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

import dm.Dt;
import dm.Ui;
import dm.Ui.Q;

class DatePicker {
  static public function main (): Void {
    function datePicker1() {
      final d = Dt.add(Date.now(), 2);
      final dp = new dm.DatePicker();
      dp.date = d;
      dp.lang = "es";
      dp.action = d -> Ui.alert("Picked date is '" + d + "'");

      return Q("div")
        .add(Q("h2")
          .html("DatePicker 1"))
        .add(dp.mk());
    }

    function datePicker2() {
      final bt = Q("button")
        .html("Date Picker")
      ;

      final d = Dt.add(Date.now(), 2);
      final dp = new dm.DatePicker();
      dp.date = d;
      dp.lang = "en";
      dp.action = d -> Ui.alert("Picked date is '" + d + "'");

      return Q("div")
        .add(Q("h2")
          .html("DatePicker 2"))
        .add(Q("p")
          .add(dp.mkButton(bt))
          .add(Q("span")
            .html("Next Text")))
        .add(Q("h3")
          .html("Some text"));
    }

    function datePicker3() {
      final tx = Q("input")
        .att("type", "text")
      ;

      final d = Dt.add(Date.now(), 2);
      final dp = new dm.DatePicker();
      dp.date = d;
      dp.action = d -> Ui.alert("Picked date is '" + d + "'");

      return Q("div")
        .add(Q("h2")
          .html("DatePicker 3"))
        .add(Q("p")
          .add(dp.mkText(tx))
          .add(Q("span")
            .html("Next Text")))
        .add(Q("h3")
          .html("Some text"));
    }

    Q("@body")
      .add(datePicker1())
      .add(datePicker2())
      .add(datePicker3())
    ;
  }
}
