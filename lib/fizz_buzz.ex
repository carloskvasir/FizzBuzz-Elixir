defmodule FizzBuzz do
  @moduledoc """
  Ler lista em arquivo,
  trocar multiplos de 3 por 'Fizz'
  torcar multiplos de 5 por 'Buzz'
  trocar todos multiplos de 3 e 5 por 'FizzBuzz'
  """
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_numbers/1)
  end

  def handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  def convert_and_evaluate_numbers(elem) do
    number = String.to_integer(elem)
    evaluate_number(number)
  end

  def evaluate_number(number) when rem(number, 3 * 5) == 0, do: :fizzbuzz
  def evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  def evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  def evaluate_number(number), do: number
end
