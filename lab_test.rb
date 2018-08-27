require "minitest/autorun"
require_relative "lab"

class LabTest < MiniTest::Test
  def setup
    @lab = Lab.new
  end

  def test_initialize_with_defaults_sets__default_name
    # arrange

    # act
    expected = "Devo's Lab"
    actual = @lab.name

    # assert
    assert_equal(expected, actual)
  end

  def test_initialize_with_defaults_sets_default_width
    expected = 10
    actual = @lab.width
    assert_equal(expected, actual)

  end

  def test_initialize_with_defaults_sets_default_height
    expected = 20
    actual = @lab.height
    assert_equal(expected, actual)

  end

  def test_initialize_with_name_sets_name
    @lab = Lab.new(name: "Dexter's Lab")
    expected = "Dexter's Lab"
    actual = @lab.name
    assert_equal(expected, actual)
  end

  def test_initialize_with_width_sets_width
    @lab = Lab.new(width: 5)
    expected = 5
    actual = @lab.width
    assert_equal(expected, actual)
  end

  def test_initialize_with_height_sets_height
    @lab = Lab.new(height: 5)
    expected = 5
    actual = @lab.height
    assert_equal(expected, actual)
  end

  def test_less_than_zero_returns_true_when_less_than
    expected = true
    actual = @lab.less_than_zero?(-1)
    assert_equal(expected, actual)

    # assert_actual
  end


  def test_less_than_zero_returns_false_when_greater_than
    expected = false
    actual = @lab.less_than_zero?(1)
    assert_equal(expected, actual)

    # refute actual #opposite of assert_equal
  end

  def test_less_than_zero_returns_false_when_zero
    expected = false
    actual = @lab.less_than_zero?(0)
    assert_equal(expected, actual)

    # either testing return value or you are testing the way it manipulates data
  end

  def test_is_zero_when_zero
    expected = true
    actual = @lab.is_zero?(0)
    assert_equal(expected, actual)
  end

  def test_is_zero_when_positive
    expected = false
    actual = @lab.is_zero?(1)
    assert_equal(expected, actual)
  end

  def test_is_zero_when_negative
    expected = false
    actual = @lab.is_zero?(-1)
    assert_equal(expected, actual)
  end

  def test_change_name_updates_name
    expected = "Dexter's Lab"
    @lab.change_name("Dexter's Lab")
    actual = @lab.name
    assert_equal(expected, actual)
  end

  def test_area_calculates_area
    expected = 200
    actual = @lab.area
    assert_equal(expected, actual)
  end

end
