// Copyright 15-Jul-2021 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

import dm.Ui.Q;

import dm.LineChart as Lc;
import dm.LineChart;

class LineChart {
  static public function main (): Void {
    final ch1 = Lc.mk();
    ch1.data.setLines.push(
      new LineChartSetLine(0, LineChartLine.mk())
    );
    ch1.exArea.width = 600;
    ch1.xAxis.fontSize = 10;
    ch1.yAxis.fontSize = 10;
    ch1.lang = "en";

    Q("@body")
      .style("background-color:#f0f1f2")
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("p").text("a"))
      .add(Q("table").att("align", "center")
        .add(Q("tr")
          .add(Q("td")
            .add(ch1.mkWg()))))
    ;
  }
}
