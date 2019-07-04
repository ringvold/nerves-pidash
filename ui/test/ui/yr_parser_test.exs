defmodule Ui.YrParserTest do
  use ExUnit.Case

  setup do
    {:ok, xmldoc} = File.read(Path.expand("./test/ui/yr_sample_data.xml"))
    {:ok, xmldoc: xmldoc}
  end

  test "Get location name", state do
    assert Ui.YrParser.get_location_name(state.xmldoc) == "Storo"
  end

  test "Get forcasts", state do
    assert Ui.YrParser.get_forecast(state.xmldoc, 2) ==
             [
               %{
                 symbol: %{number: "4", name: "Skyet", var: "04"},
                 temperature: %{unit: "celsius", value: -4},
                 from: "2018-02-23T19:00:00",
                 to: "2018-02-24T00:00:00",
                 period: 3
               },
               %{
                 symbol: %{number: "49", name: "Lett snø", var: "49"},
                 temperature: %{unit: "celsius", value: -3},
                 from: "2018-02-24T00:00:00",
                 to: "2018-02-24T06:00:00",
                 period: 0
               }
             ]
  end
end
