defmodule Geocode do
  use HTTPotion.Base

  def fetch(address) do
    result = HTTPotion.get "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode(address)}&sensor=false"

    {[{"results", [json | _]}, _]} = :jiffy.decode result.body

    [lat: lat, lng: lng] = [ lat: :ej.get({"geometry", "location", "lat"}, json),
      lng: :ej.get({"geometry", "location", "lng"}, json) ]
  end
end
