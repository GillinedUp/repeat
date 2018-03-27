defmodule HOFTest do
  use ExUnit.Case

  test "identity function test" do
    # given
    a = [1]
    # when
    output = HOF.repeat(a, fn n -> n end, 1)
    # then
    assert output == a
  end

  test "fibonacci sequence 14th number" do
    # given
    fib_14 = 377
    # when
    output = Mu.fibonacci(14)
    # then
    assert fib_14 === output
  end

end
