class Golf
  def hole_1 l
    n=0
    a=l[/[A-Z]/]?'A':'a'
    (a..l)
      .to_a
      .map{|b|b*(n+=1)}
      .join"\n"
  end

  def hole_2 s
    h={}
    a='aeiouAEIOU'
    s.split
     .map{|w|
      h[w]=[
        w.tr(a,'').size,
        w.tr('^'+a,'').size
      ]}
    h.sort_by{|k,(v,w)|[v,w,k.upcase]}
     .map{|b|b.first}
     .join' '
  end

  def hole_3 i
    (1..i).select{|a|i%a==0}
  end

  def hole_4 x,y
    a="+"+("-"*x)+"+"
    a+"\n"+(("|"+(" "*x)+"|\n")*y)+a
  end

  def hole_5 w,v
    [w,v].map{|a|a.upcase.gsub(/[^A-Z]/,'').chars.sort}.inject(:==)
  end

  def hole_6 n
    a='Happy birthday '
    b=a+'to you'
    [b,b,a+'dear '+n,b].join("\n")
  end

  def hole_7
  end

  def hole_8
  end

  def hole_9
  end
end
