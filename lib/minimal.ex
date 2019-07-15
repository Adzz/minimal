defmodule Minimal do
  def string_from_config do
    string = Application.get_env(:minimal, :string)
    string |> IO.inspect(label: "STRING: ")
    String.printable?(string) |> IO.inspect(label: "printable?")
    String.valid?(string) |> IO.inspect(label: "valid?")
    valid_utf8?(string) |> IO.inspect(label: "VALID UTF8 String?")
    string
  end

  def valid_utf8?(<<_::utf8, rest::binary>>), do: valid_utf8?(rest)
  def valid_utf8?(<<>>), do: true
  def valid_utf8?(_), do: false
end
