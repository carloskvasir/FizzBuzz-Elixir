defmodule FizzBuzz do
  @moduledoc """
  Ler lista em arquivo,
  trocar multiplos de 3 por 'Fizz'
  torcar multiplos de 5 por 'Buzz'
  trocar todos multiplos de 3 e 5 por 'FizzBuzz'
  """
  def build(file_naame) do
    file = File.read(file_naame)
    IO.inspect(file)
  end
end
