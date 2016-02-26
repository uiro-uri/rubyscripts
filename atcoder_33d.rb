require "matrix"
N=STDIN.gets.to_i
node=[]
while(s=STDIN.gets)
  node<<Vector.elements(s.split.map(&:to_i))
end

discremenant=node.permutation(3).map{|arr|(arr[2]-arr[1]).inner_product(arr[2]-arr[0])}
n_obtuse=discremenant.count{|i|i<0}/2
n_orthogonal=discremenant.count{|i|i==0}/2
n_acute=N*(N-1)*(N-2)/6 - n_obtuse - n_orthogonal

printf "%d %d %d\n",n_acute,n_orthogonal,n_obtuse
