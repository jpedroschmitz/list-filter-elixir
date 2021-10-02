defmodule ListFilter do
  require Integer

  def odd([]), do: 0

  def odd(list) do
    Enum.count(list, fn value ->
      case is_integer(value) do
        true ->
          rem(value, 2) == 1

        false ->
          case Integer.parse(value) do
            {int, _} -> Integer.is_odd(int)
            :error -> false
          end
      end
    end)
  end
end
