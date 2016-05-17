require "matrix"
class Vector
  def quadrant
    case [self[0]>=0,self[1]>=0]
    when [true,true]
      return 1
    when [false,true]
      return 2
    when [false,false]
      return 3
    when [true,false]
      return 4
    end
  end
end

class Array
  def sort_vec_by_phase
    return self.sort_by{|v|v[1].to_f/v[0]}.sort_by.with_index{|v,i|[v.quadrant,i]}
  end

  #collect all pair that satisfy equation
  def caterpillar_method
    result=[]
    i=0
    while(i<self.size/2)
      j=i+1
      while (self[j] && (yield self[i],self[j]))
        result<<[self[i],self[j]]
        j+=1
      end
      i+=1
    end
    return result
  end
end


N=STDIN.gets.to_i
node=[]
while(s=STDIN.gets)
 node<<Vector.elements(s.split.map(&:to_i))
end

n_obtuse=0
n_orthogonal=0

node.each{|orgin|
  path=node.reject{|vertex|vertex==orgin}.map{|vertex|(vertex-orgin)}.sort_vec_by_phase
  pair_acute=(path*2).caterpillar_method{|x,y|x.inner_product(y)>=0 && Matrix[x,y].det>0}
  n_obtuse+=(N-1)*(N-2)/2-pair_acute.size
  n_orthogonal+=pair_acute.map{|v|v[0].inner_product(v[1])}.count(&:zero?)
}

n_acute=N*(N-1)*(N-2)/6 - n_obtuse - n_orthogonal

printf "%d %d %d\n",n_acute,n_orthogonal,n_obtuse
