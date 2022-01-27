class AnimalCatalog
  def sound(type)
    if type == :dog
      "woof"
    elsif type == :cat
      "meow"
    elsif type == :bird
      "chirp"
    elsif type == :cow
      "moo"
    else
      fail "Unrecognised animal"
    end
  end

  def number_of_legs(type)
    if type == :dog || type == :cat || type == :cow
      4
    elsif type == :bird
      2
    else
      fail "Unrecognised animal"
    end
  end

  def number_of_wings(type)
    if type == :dog || type == :cat || type == :cow
      0
    elsif type == :bird
      2
    else
      fail "Unrecognised animal"
    end
  end

  def demeanour(type)
    if type == :bird || type == :cat || type == :cow
      "Placid"
    elsif type == :dog
      "Lary"
    else
      fail "Unrecognised animal"
    end
  end

  def can_fly(type)
    if type == :dog || type == :cat || type == :cow
      false
    elsif type == :bird
      true
    else
      fail "Unrecognised animal"
    end
  end
end
