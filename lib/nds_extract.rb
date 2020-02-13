$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  dir_index = 0
  dir_hash = {}

  while dir_index < nds.length do
    dir_nombre = nds[dir_index][:name]
    dir_hash[dir_nombre] = 0
    pic_index = 0
    while pic_index < nds[dir_index][:movies].length do
      dir_hash[dir_nombre] += nds[dir_index][:movies][pic_index][:worldwide_gross]
      pic_index += 1
    end
    dir_index += 1
  end
  dir_hash
end
