defmodule Ui.YrParser do
  import SweetXml

  def get_location_name(xml) do
    xpath(xml, ~x"/weatherdata/location/name/text()"s)
  end

  def get_forecast(xml, amount) do
    xml
    |> xpath(
      ~x"//weatherdata/forecast/tabular/time[3<position()]"l,
      symbol: [
        ~x"./symbol",
        name: ~x"./@name"s,
        number: ~x"./@numberEx"s,
        var: ~x"./@var"s
      ],
      temperature: [
        ~x"./temperature",
        unit: ~x"./@unit"s,
        value: ~x"./@value"i
      ],
      from: ~x"./@from"s,
      to: ~x"./@to"s,
      period: ~x"./@period"i
    )
  end
end
