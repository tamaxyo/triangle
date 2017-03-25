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

