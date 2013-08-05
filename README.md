# Geocode

Not much to see here yet, currently only returns a keyword list with a latitude and longitude for a given address. This is more experimental than anything right now and is still very much a work in progress, you have been warned.


## Usage

```elixir
Geocode.start()
coords = Geocode.fetch("Fairfax, Vermont")
IO.puts coords[:lat]
```
