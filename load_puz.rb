#! /usr/bin/env ruby

require 'pp'

require './puzloader'
require './crosswordgrid'

def debug( name, value )
  printf "%-10s: %d %04x\n", name, value, value
end

filename = ARGV[0] || '2014-4-22-LosAngelesTimes.puz'
puz = PuzzleLoader.new( filename )

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

cgrid = CrosswordGrid.new( puz.rows, puz.clues )

cgrid.height.times do |row|
  puts
  cgrid.width.times do |col|
    print cgrid.cell_at( row, col ).letter
  end
end

puts