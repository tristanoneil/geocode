defmodule GeocodeTest do
  use ExUnit.Case

  test "fetch" do
    Geocode.start()
    coords = Geocode.fetch("Fairfax, Vermont")

    assert 44.6654963 == coords[:lat]
    assert -73.01032  == coords[:lng]
  end
end
