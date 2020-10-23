# frozen_string_literal: true

# Staciakampio objektas su ivariais jo skaiciavimo metodais
class Rectangle
  attr_accessor :aukstis, :plotis, :xkoordinate, :ykoordinate
  def initialize(aukstis, plotis, xkoordinate, ykoordinate)
    @aukstis = aukstis
    @plotis = plotis
    @xkoordinate = xkoordinate
    @ykoordinate = ykoordinate
  end

  def plotas
    aukstis.to_i * plotis.to_i
  end

  def perimetras
    (aukstis.to_i * 2) + (plotis.to_i * 2)
  end

  def istrizaine
    Math.sqrt((aukstis.to_i * aukstis.to_i) + (plotis.to_i * plotis.to_i))
  end

  def koordinate1
    xkoordinate.to_f - (plotis.to_f / 2)
  end

  def koordinate2
    ykoordinate.to_f - (aukstis.to_f / 2)
  end
end
