defmodule FizzBuzz do
  @moduledoc """
  Ler lista em arquivo,
  trocar multiplos de 3 por 'Fizz'
  torcar multiplos de 5 por 'Buzz'
  trocar todos multiplos de 3 e 5 por 'FizzBuzz'
  """
  def build(file_name) do
    file = File.read(file_name)
    handle_file_read(file)
  end

  def handle_file_read({:ok, result}), do: result
  def handle_file_read({:error, reason}), do: reason
end
