# -*- coding: utf-8 -*-
class Triangle
  def self.check(a, b, c)
    s, m, l = [a, b, c].sort
    case
    when  l >= s + m
      return "三角形じゃないです＞＜"
    when s == m && m == l
      return "正三角形ですね！"
    when s == m || m == l
      return "二等辺三角形ですね！"
    else
      return "不等辺三角形ですね！"
    end
  end
end

if __FILE__ == $0
  if ARGV.size != 3
    puts "引数は3つにしましょうね"
    exit 64
  end

  sides = ARGV.map(&:to_i)

  if sides.find{|side| side <= 0}
    puts "辺の長さは正数でお願いします"
    exit 65
  end

  puts Triangle.check(*sides)
end
