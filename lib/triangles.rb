class Triangle
  define_method(:initialize) do |a_side, b_side, c_side|
    @a_side = a_side.to_i()
    @b_side = b_side.to_i()
    @c_side = c_side.to_i()
  end

  define_method(:sides?) do
    if @a_side + @b_side > @c_side && @a_side + @c_side > @b_side && @b_side + @c_side > @a_side
      true
    else
      false
    end
  end

  define_method(:equalateral?) do
    if @a_side == @b_side && @b_side == @c_side
      true
    else
      false
    end
  end

  define_method(:isosceles?) do
    if @a_side == @b_side || @b_side == @c_side || @a_side == @c_side
      true
    else
      false
    end
  end

  define_method(:scalene?) do
    if @a_side != @b_side && @b_side != @c_side
      true
    else
      false
    end
  end
end
