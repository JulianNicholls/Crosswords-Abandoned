require 'pp'

require './puzloader'
require './crosswordgrid'

def debug( name, value )
  printf "%-10s: %d %04x\n", name, value, value
end

puz = PuzzleLoader.new( '2014-4-22-LosAngelesTimes.puz' )

debug 'Width', puz.width
debug 'Height', puz.height
debug 'Clues', puz.num_clues
debug 'Scrambled', puz.scrambled? ? 1 : 0

puts %(
Title:      #{puz.title}
Author:     #{puz.author}
Copyright:  #{puz.copyright}

)

puz.clues.each_slice( 2 ) { |clue| puts clue.join ' :: ' }

cgrid = CrosswordGrid.new( puz.rows )

pp cgrid.grid
