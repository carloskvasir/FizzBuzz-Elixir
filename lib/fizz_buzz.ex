defmodule FizzBuzz do
  @moduledoc """
  Ler lista em arquivo,
  trocar multiplos de 3 por 'Fizz'
  torcar multiplos de 5 por 'Buzz'
  trocar todos multiplos de 3 e 5 por 'FizzBuzz'
  """
  def build(file_name) do
    case File.read(file_name) do
      {:ok, result} -> result
      {:error, reason} -> reason
    end
  end
end
