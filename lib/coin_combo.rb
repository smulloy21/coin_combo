class Float
  define_method(:coin_combo) do
    q = 0
    d = 0
    n = 0
    c = 0
    num_q = 5
    num_d = 10
    num_n = 20
    change = self * 100
    amount = "Your change is: "
    until change == 0
      if change >= 25 && num_q >= 1
        change -= 25
        q += 1
        num_q -= 1
      elsif change >= 10 && num_d >= 1
        change -= 10
        d += 1
        num_d -= 1
      elsif change >= 5 && num_n >= 1
        change -= 5
        n += 1
        num_n -= 1
      else
        change -= 1
        c += 1
      end
    end
    if q > 0
      if q > 1
        q = q.to_s()
        amount += q + " quarters"
      else
        q = q.to_s()
        amount += q + " quarter"
      end
      if d>0 || n>0 || c>0
        amount += ", "
      end
    end
    if d > 0
      if d > 1
        d = d.to_s()
        amount += d + " dimes"
      else
        d = d.to_s()
        amount += d + " dime"
      end
      if n>0 || c>0
        amount += ", "
      end
    end
    if n > 0
      if n  > 1
        n = n.to_s()
        amount += n + " nickels"
      else
        n = n.to_s()
        amount += n + " nickel"
      end
      if c>0
        amount += ", "
      end
    end
    if c > 0
      if c > 1
        c = c.to_s()
        amount += c + " pennies"
      else
        c = c.to_s()
        amount += c + " penny"
      end
    end
    amount
  end
end
