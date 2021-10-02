defmodule ListFilterTest do
  use ExUnit.Case

  describe "odd/1" do
    test "should return the total number of odd elements" do
      list1 = ["1", "3", "6", "43", "apple", "6", "abc"]
      list2 = ["1", "3", "5", 7, 9, "6", "apple"]
      list3 = ["2", "4", "6"]

      assert ListFilter.odd(list1) == 3
      assert ListFilter.odd(list2) == 5
      assert ListFilter.odd(list3) == 0
    end

    test "should return 0 if given an empty list" do
      assert ListFilter.odd([]) == 0
    end
  end
end
