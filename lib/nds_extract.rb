$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  dir_index = 0
  dir_hash = {}

  while dir_index < nds.length do
    dir_nombre = ndsdir_hash[directors_database][directors_database[row_index][:name]] = 0
    column_index = 0
    while column_index < directors_database[row_index][:movies].length do
      dir_hash[directors_database][directors_database[row_index][:name]] += directors_database[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    row_index += 1
  end
  p dir_hash[nds]
end
