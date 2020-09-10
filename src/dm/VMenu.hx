// Copyright 17-Jun-2020 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

package dm;

import dm.Opt;
import dm.Domo;
import dm.Ui.Q;
import dm.Ui;

/// Vertical menu.
class VMenu {
  var opts: Array<VMenuEntry>;
  /// Menu widget.
  public var wg(default, null): Domo;
  /// Constructor
  ///   opts: Menu options.
  ///   selected: Identifier of selected menu option or "".
  public function new (opts: Array<VMenuEntry>, selected: String) {
    function setId (o: VMenuEntry) {
      switch (o.id) {
        case Some(id):
          if (id == selected) {
            o.wg.setStyle("font-style", "italic");
            o.wg.setStyle("color", "#803010");
          }
        case None:
      }
    }
    for (o in opts) setId(o));

    this.opts = opts;
    wg = Q("div");
    view();
  }

  // View ----------------------------------------------------------------------

  function view () {
    function td () {
      return Q("td").style("white-space:nowrap");
    }
    wg
      .add(Q("table")
        .klass("frame")
        .adds(opts.map(e -> Q("tr").add(td().add(e.wg)))))
    ;
  }

  // Static --------------------------------------------------------------------

  /// Returns a separator.
  public static function separator (): VMenuEntry {
    return new VMenuEntry(None, Q("hr"));
  }

  /// Returns a title.
  ///   tx: Text of title in html.
  public static function title (tx: String): VMenuEntry {
    return new VMenuEntry(None, Q("span").html("<b>" + tx + "</b>"));
  }

  /// Returns a menu option
  ///   id: Identifier.
  ///   tx: Plain text to show.
  ///   f : Function to run when the option is clicked.
  public  static function option (
    id: String, tx: String, f: () -> Void
  ) VMenuEntry {
    return new VMenuEntry(Some(id), Ui.link(e -> f()).klass("link").text(tx));
  }
}

/// Vertical menu entry.
class VMenuEntry {
  /// Identifier.
  public var id(default, null): Opt<String>;
  /// Entry widget.
  public var wg(default, null): Domo;

  /// Constructor.
  ///   id: Entry identifier.
  ///   wg: Entry widget.
  public function new(id: Opt<String>, wg: Domo) {
    this.id = id;
    this.wg = wg;
  }
}
