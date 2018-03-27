defmodule HOF do
  def repeat(a, f, 1) do
    result = Kernel.apply(f, a)
    cond do
      is_list(result) -> result
      true -> [result]
    end
  end

  def repeat(a, f, t) do
    result = Kernel.apply(f, a)
    repeat(result, f, t - 1)
  end
end
