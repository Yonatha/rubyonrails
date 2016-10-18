require 'csv'

dados = [
	["Fulano", "Sobrenome", "18/10/2016", "A", true],
	["Cricrano", "Sobrenome 2", "17/10/2016", "B",false],
	["Beutrano", "Sobrenome 3", "16/10/2016", "C",false]
]


csv_file = File.new("pessoas.csv", "w")

CSV.open(csv_file, 'w', { :col_sep => ';' }) do |csv|
	csv	 << ['NOME','SOBRENOME','DATA','ENDERECO','STATUS']
	dados.each do |linha|
    	csv << linha
 	end
end