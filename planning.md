class Game

  starts a game
  assignes 3 lives to Player 1 and Player 2
  starts a turn if no player has 0 lives
    turns alternate between player 1 and player 2
  tallys the score after each turn
  game over if a player has 0 lives

  Methods:
    new_game  - public method
    turn

    tallyscore
    game_over

  variables:
    current_player - stores whos turn it is

    
class players
  lives
  methods to check if alive


class Question
  generates a math question and answer (x + y) where x,y are int between 1 and 20
  ask question, get user input, determine if correct
  returns true if they got it right
    generate_question
    check if correct

