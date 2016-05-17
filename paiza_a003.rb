class ReversiBoard
  N=8
  SYM2VIEW={blank:'.', white:'o', black:'x'}
  CHAR2SYM={"B"=>:black, "W"=>:white}
  def initialize
    @board=[:blank]*(N+1)*(N+1) #0行目、0列目は余白
    set_cell(:white,N/2,N/2)
    set_cell(:white,N/2+1,N/2+1)
    set_cell(:black,N/2+1,N/2)
    set_cell(:black,N/2,N/2+1)
  end

  def view
    @board[N+1,(N+1)*N].each_slice(N+1){|row|
      row[1,N].each{|cell| print SYM2VIEW[cell]}
      print "\n"
    }
  end

  def set_cell(sym,x,y)
    @board[(N+1)*y+x]=sym
  end

  def move(sym,x,y)
    
  end
end

game = ReversiBoard.new
game.view
