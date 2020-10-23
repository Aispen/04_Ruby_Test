# frozen_string_literal: true

require_relative 'rectangle'

rectang = Rectangle.new(6, 8, 20, 10)

puts 'Plotas: ' + rectang.plotas.to_s

puts 'Perimetras: ' + rectang.perimetras.to_s

puts 'Istrizaine: ' + rectang.istrizaine.to_s

puts 'x koordinate: ' + rectang.koordinate1.to_s

puts 'y koordinate: ' + rectang.koordinate2.to_s
