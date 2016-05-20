class ReversiBoard
  N=8 #ボードの大きさ
  CELL2VIEW = {blank:'.', white:'o', black:'x'}
  DIR = [
    [-1,-1],
    [ 0,-1],
    [+1,-1],
    [-1, 0],
    [+1, 0],
    [-1,+1],
    [ 0,+1],
    [+1,+1]
  ]
  def initialize
    @board=[:blank]*(N+1)*(N+1) #0行目or0列目は余白
    set_cell(:white,N/2,N/2)
    set_cell(:white,N/2+1,N/2+1)
    set_cell(:black,N/2+1,N/2)
    set_cell(:black,N/2,N/2+1)
  end

  def view
    print " 012345678\n"
    i=0
    @board[0,(N+1)*(N+1)].each_slice(N+1){|row|
      print "%d" % i
      row[0,N+1].each{|cell| print CELL2VIEW[cell]}
      print "\n"
      i+=1
    }
    print "\n"
  end

  def set_cell(sym,x,y)
    @board[((N+1)*y+x)%((N+1)*(N+1))]=sym
  end

  def cell(x,y)
    @board[((N+1)*y+x)%((N+1)*(N+1))]
  end

  def move(turn,x,y)
    set_cell(turn,x,y)
    DIR.each{|d|
      reverse_cell(turn,x,y,d)
    }
  end

  def reverse_cell(turn,x,y,d)
    i,j=x+d[0],y+d[1]
    while(cell(i,j)!=turn && cell(i,j)!=:blank)
      i+=d[0]
      j+=d[1]
    end
    if cell(i,j)!=:blank
      i,j=x+d[0],y+d[1]
      while(cell(i,j)!=turn)
        set_cell(turn,i,j)
        i+=d[0]
        j+=d[1]
      end
    end
  end

  def judge
    result={black:0, white:0, blank:0}
    @board.each{|cell|
      result[cell]+=1
    }
    case result[:black]<=>result[:white]
    when 1
      printf("%02d-%02d The black won!", result[:black], result[:white])
    when -1
      printf("%02d-%02d The white won!", result[:black], result[:white])
    when 0
      printf("%02d-%02d Draw!", result[:black], result[:white])
    end
  end
end

CHAR2SYM = {"B"=>:black, "W"=>:white}
N=gets.to_i
move_list=[]
while(s=gets)
  m=s.chomp.split
  move_list << [CHAR2SYM[m[0]],m[1].to_i,m[2].to_i]
end

game = ReversiBoard.new
move_list.each{|m|
  game.move(m[0],m[1],m[2])
  game.view
}
game.judge
