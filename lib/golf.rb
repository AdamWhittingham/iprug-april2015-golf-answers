class Golf
  def hole_1 l
    n=0
    a=l[/[A-Z]/]?'A':'a'
    (a..l)
      .to_a
      .map{|a|a*(n+=1)}
      .join"\n"
  end

  def hole_2 s
    s.split
     .each_with_object({}){|w,h|h[w]=[w.gsub(/[aeiou]/i,'').length,w.gsub(/[^(aeiou)]/i,'').length]}
     .sort_by{|k,(v,w)|[v,w,k.upcase]}
     .flat_map{|a|a.first}
     .join' '
  end

  def hole_3
  end

  def hole_4
  end

  def hole_5
  end

  def hole_6
  end

  def hole_7
  end

  def hole_8
  end

  def hole_9
  end
end
