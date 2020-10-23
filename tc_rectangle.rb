require_relative 'rectangle'
require 'test/unit'

# Testuojama rectangle klase. Kiekvienas klases metodas turi 4 testus.
# Teste yra sukuriamas naujas Rectangle objectas su ivairias parametrais
# ir iskvieciamas testuojamas metodas. Metodui suskaiciavus pvz. plota
# yra lyginamas su teste parasytu skaiciu pvz. 48.
class TestRectangle < Test::Unit::TestCase
    # Testuojamas 'plotas' metodas.
    def test_plotas
        assert_equal(48, Rectangle.new(6, 8, 20, 10).plotas)
        assert_equal(100, Rectangle.new(10, 10, 40, 15).plotas)
        assert_equal(4, Rectangle.new(1, 4, 66, 66).plotas)
        assert_equal(9801, Rectangle.new(99, 99, 99, 99).plotas)
    end

    # Testuojamas 'perimetras' metodas
    def test_perimetras
        assert_equal(28, Rectangle.new(6, 8, 20, 10).perimetras)
        assert_equal(40, Rectangle.new(10, 10, 40, 15).perimetras)
        assert_equal(10, Rectangle.new(1, 4, 66, 66).perimetras)
        assert_equal(396, Rectangle.new(99, 99, 99, 99).perimetras)
    end

    # Testuojamas 'istrazaine' metodas
    def test_istrizaine
        assert_equal(10, Rectangle.new(6, 8, 20, 10).istrizaine)
        assert_equal(14.142135623730951, Rectangle.new(10, 10, 40, 15).istrizaine)
        assert_equal(4.123105625617661, Rectangle.new(1, 4, 66, 66).istrizaine)
        assert_equal(140.0071426749364, Rectangle.new(99, 99, 99, 99).istrizaine)
    end

    # Testuojamas 1 istrizaines susikirtimo tasko metodas
    def test_x_koordinate
        assert_equal(16, Rectangle.new(6, 8, 20, 10).koordinate1)
        assert_equal(35, Rectangle.new(10, 10, 40, 15).koordinate1)
        assert_equal(64, Rectangle.new(1, 4, 66, 66).koordinate1)
        assert_equal(49.5, Rectangle.new(99, 99, 99, 99).koordinate1)
    end

    # Testuojamas 2 istrizaines susikirtimo tasko metodas
    def test_y_koordinate
        assert_equal(7, Rectangle.new(6, 8, 20, 10).koordinate2)
        assert_equal(10, Rectangle.new(10, 10, 40, 15).koordinate2)
        assert_equal(65.5, Rectangle.new(1, 4, 66, 66).koordinate2)
        assert_equal(49.5, Rectangle.new(99, 99, 99, 99).koordinate2)
    end
end
