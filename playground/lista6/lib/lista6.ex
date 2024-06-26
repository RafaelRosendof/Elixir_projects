defmodule Lista6 do
use Timex
#import List


  def calcular(lista) when is_list(lista) do
    {tamanho , soma} = calcular_tamanho_e_soma(lista)

    media = calcular_media(tamanho , soma)
    [tamanho , soma , media]
  end

  defp calcular_tamanho_e_soma([]) , do: {0,0} #caso receba lista vazia
  defp calcular_tamanho_e_soma([head | tail]) do
    {tamanho , soma} = calcular_tamanho_e_soma(tail) #recursão
    {tamanho + 1 , soma + head} #volta com a lista menor
  end

  defp calcular_media(0,_), do: 0 #caso seja vazio retorne 0
  defp calcular_media(tamanho , soma), do: soma/tamanho #soma / tamanho, básico















  def ler_codigo_banco() do
    IO.puts("Digite o código  banco: ")
     codigo_banco = IO.gets("")
     |> String.trim()
     |> String.split("" , trim: true)
     |> Enum.map(&String.to_integer/1)

     case length(codigo_banco) do
       3 -> {:ok , codigo_banco} #
       _ -> {:error , "Número incorreto "}
     end
    # TODO retornar lista
     # TODO remove this, just a STUB
  end



  #digito 4

  def ler_moedaaa() do
  #IO.puts("Digite o código da moeda: ")
  moeda = IO.gets("Digite o código da moeda: ")
  |> String.trim()
  |> String.to_integer()
  case moeda do
    9 -> {:ok, moeda}
    _ -> {:error, "Moeda inválida"}
  end
end



  #Função funcionando e testada
  defp ler_defi do
    data =
      IO.gets("Digite a data de vencimento no formato DD-MM-AAAA: ")
      |> String.trim()
      |> String.split("-")

    case data do
      [day_str, month_str, year_str] when length(data) == 3 ->
        dia = String.to_integer(day_str)
        month = String.to_integer(month_str)
        year = String.to_integer(year_str)

        data_atual = Timex.Date.new!(year, month, dia)
       # IO.puts(data_atual)
        #{:ok, data_atual}

        data_fixa = ~D[2000-07-03]
        figas = Timex.diff(data_atual,data_fixa, :days)
        #IO.puts("Diferença: #{figas}")
        fator = figas + 1000
        {:ok , fator}
      _ ->
        {:error, "Formato de data inválido"}
    end
  end

  def fator_de_vencimento() do
    fator = ler_defi()
    case fator do
      _ -> fator
    end
  end


def ler_valor() do
  valor = IO.gets("Digite o valor do boleto: ")
  |> String.trim()
  |>String.split("", trim: true)
  |>Enum.map(&String.to_integer/1)
  |> Enum.pad_leading(10, 0)

  case valor do
    10 -> {:ok , valor}
    _ -> {:error , "Valor não esperado"}
  end
end

def ler_val() do
  valor = IO.gets("Digite o valor do boleto: ")
  |> String.trim()
  |> String.replace(" ", "") # remove spaces
  |> String.pad_leading(10, "0")

  case String.length(valor) do
    10 -> {:ok, valor}
    _ -> {:error, "Valor não esperado"}
  end
end


  ############################# questão 2
  def transforma(lista) when is_list(lista) do
   #recebe uma lista de numeros em faren
   #devolve essa lista em celcius

    #Perguntar ao professor como que tira essas casa decimais

   converte_f_c(lista)


  end
  defp converte_f_c([]) , do: [] #tratando caso receba nulo
  defp converte_f_c([head | tail]) do
  #recebe a lista e passa para a função que converte c para f
    [conversor(head) | converte_f_c(tail)]
  end

  defp conversor(farenheint) do
    celcius = (farenheint - 32) * 5 / 9
    celcius
  end

  ###Questão 3 ######################

  def function_zip(listas) when is_list(listas) do
   #função zip (recebe uma lista de listas e cria uma lista de listas contendo cada elemento de cada posição )

   #Pode fazer uma abordagem preguiçosa?

   zip(listas , 0)
  end

  defp zip(listas , index) do
    #Fazer o map dessa lista pegando o primeiro indice
    Enum.map(listas , &extrair(&1 , index))
  end

  defp extrair(lista , index) do
    Enum.at(lista , index)
  end



  '''
defmodule MinhasFuncoes do
  def take(0, _sequence), do: []
  def take(_, []), do: []
  def take(n, [head | tail]) when n > 0 do
    [head | take(n - 1, tail)]
  end

  def take(n, sequence) when is_integer(sequence) do
    take(n, 1..sequence)
  end
end

'''

  #quest
end
