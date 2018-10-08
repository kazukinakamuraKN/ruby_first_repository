#メソッドの外で定数として保持したほうが実行速度がよくなる
UNITS = {m: 1.0, ft: 3.28, inc: 39.37}

def convert_length(length, from, to)
#  units = {'m' => 1.0, 'ft' => 3.28, 'in' => 39.37}
#  in:はsyntax error =>inc:
#  units = {m: 1.0, ft: 3.28, inc: 39.37}
    (length / UNITS[from] * UNITS[to]).round(2)
end

#Test
#puts convert_length(15,'in','m')