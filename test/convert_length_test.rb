#メートル、フィート、インチの単位を相互に変換するプログラム
#第１引数は変換もとの長さ、第２引数は変換もとの単位、第３引数は変換後の単位
#メソッドの戻り値は変換後の長さ。
#１．テストを書いて実行しエラーが出るのを確認する。
#２．単純な戻り値を書いたプログラムを書いて
###３．１．テストに実装コードをrequireする。
#３．２．エラーが出ないことを確認する。
#４．正規のコードを実装する。
#５．テストが通ればOK

require 'minitest/autorun'
require './lib/convert_length'


class ConvertLengthTest < Minitest::Test
  def test_convert_length
#    assert_equal     39.37, convert_length(    1, 'm','in')
##    下記はエラーとなります。ハッシュを使っているので、'm'は' m'では見つけられない。という点をりかいできた。
##    assert_equal 39.37, convert_length( 1,' m','in')
#    assert_equal      0.38, convert_length(   15,'in', 'm')
#    assert_equal  10670.73, convert_length(35000,'ft', 'm')

    assert_equal     39.37, convert_length(    1,   :m, :inc)
    assert_equal      0.38, convert_length(   15, :inc,   :m)
    assert_equal  10670.73, convert_length(35000,  :ft,   :m)
  end
end