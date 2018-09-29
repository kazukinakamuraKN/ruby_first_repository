def to_hex r,g,b
  [r,g,b].inject('#') do |hex,n|
    hex + n.to_s(16).rjust(2,'0')
  end
#  hex
# injectは戻り値を返す。
end

#puts to_hex(13,14,15)

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  ints = []
    [r,g,b].each do |s|
      ints << s.hex
    end
  ints
end