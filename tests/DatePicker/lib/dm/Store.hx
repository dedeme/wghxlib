// Copyright 15-Jun-2020 ºDeme
// GNU General Public License - V3 <http://www.gnu.org/licenses/>

package dm;

import dm.It;
import dm.Dt;

/// Static functions to manipulate the web local store.
class Store {

  /// Removes every key which starts with 'prefix'.
  public static function clear (prefix: String): Void {
    for(k in keys().to())
      if (StringTools.startsWith(k, prefix)) del(k);
  }

  /// Removes the key [key]
  public static function del (key: String): Void {
    untyped js.Syntax.code("localStorage.removeItem(key)");
  }

  /// Removes some [keys] past the time [time] since it was called itself.<p>
  /// If it has not called ever delete keys too.
  ///   name: Storage key for saving the time
  ///   keys: Array with the keys to remove
  ///   time: Time in hours
  public static function expires (
    name: String, keys: Array<String>, time: Float
  ): Void {
    final dt: Float = Date.now().getTime();
    final ks: String = get(name);
    if (ks == null || dt > Std.parseFloat(ks))
      It.from(keys).each(k -> del(k));
    put(name, Std.string (dt + time * 3600000.));
  }

  /// Returns the value of key [key] or <b>null</b> if it does not exists.
  public static function get (key: String): Null<String> {
    return untyped js.Syntax.code("localStorage.getItem(key)");
  }

  /// Returns the key in position [ix].
  public static function key (ix: Int): String {
    return untyped js.Syntax.code("localStorage.key(ix)");
  }

  /// Returns a It with all keys
  public static function keys (): It<String> {
    final sz = size();
    var c = 0;
    return new It (
      function () { return c < sz; }
    , function () { return key(c++); }
    );
  }

  /// Puts a new value.
  public static function put (key: String, value: String): Void {
    untyped js.Syntax.code("localStorage.setItem(key, value)");
  }

  /// Returns the number of elements
  public static function size (): Int {
    return untyped js.Syntax.code("localStorage.length");
  }

  /// Returns a It with all values
  public static function values (): It<String> {
    return keys().map(e -> get(e));
  }

}
