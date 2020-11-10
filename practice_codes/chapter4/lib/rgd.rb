def to_hex(arg1, arg2, arg3)
  [arg1, arg2, arg3].inject('#') do |hex, n| # injectは畳み込み演算を行うメソッド。
    hex += n.to_s(16).rjust(2, '0') # rjuxtは足りない文字列を右寄せするメソッド
    # rjust(width, padding = '')
    # width = 返り値の文字列の最小の長さ
    # padding = 長さがwidthになるまでselfの左側に詰める文字
    p hex
  end
end

def to_ints(arg)
  str = arg.scan(/\w\w/).map(&:hex)
end