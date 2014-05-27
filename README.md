# Ankh PuzzleLoader

Player for .puz files, used for crosswords from newspapers such as the L.A. 
Times.

At the moment it loads and displays the LA Times from 2014-04-22. Give it a 
different filename on the command line to load that instead.

## Keys and Mouse

    A-Z         Fill in letter

    Bksp        Delete content and move to the previous cell. If the current cell
                was already empty then the previous cell will be cleared instead.

    Spacebar    Swap between across and down

    Tab         Move to the next clue
    Shift-Tab   Move to the previous clue

    F1          Swap help mode on and off, then incorrect letters are highlighted

    Escape      Exit when complete

Click on a cell to highlight it. Clicking on the currently highlighted cell
will swap between highlighting the current across or down word.

Click on a clue to select the word.

When the grid is filled, but there are wrong entries, help mode is turned on
automatically.

## Coming Events!

- [x] Highlight an across word
- [x] Highlight a down word
- [x] Highlight the current cell
- [x] Swap between Across and Down Highlight
- [x] Allow for letter entry
- [x] Highlight the next cell after entering a letter
- [x] Highlight the next word after ending the current one
- [ ] Add some tests for the loader
- [ ] Handle scrambled puzzles

