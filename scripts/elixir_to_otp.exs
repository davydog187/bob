#!/usr/bin/env elixir

[elixir] = System.argv

case elixir do
  "v0"   <> _ -> ["17.3"]
  "v1.0.4"    -> ["17.5"]
  "v1.0.5"    -> ["17.5", "18.3"]
  "v1.0"      -> ["17.5", "18.3"]
  "v1.0" <> _ -> ["17.3"]
  "v1.1" <> _ -> ["17.5", "18.3"]
  "v1.2.6"    -> ["18.3", "19.3"]
  "v1.2"      -> ["18.3", "19.3"]
  "v1.2" <> _ -> ["18.3"]
  "v1.3" <> _ -> ["18.3", "19.3"]
  "v1.4.5"    -> ["18.3", "19.3", "20.3"]
  "v1.4"      -> ["18.3", "19.3", "20.3"]
  "v1.4" <> _ -> ["18.3", "19.3"]
  "v1.5" <> _ -> ["18.3", "19.3", "20.3"]
  "v1.6" <> _ -> ["19.3", "19.3", "20.3"]
  # Assume all other branches support the same versions as master
  _           -> ["19.3", "20.3"]
end
|> Enum.join(" ")
|> IO.puts()
