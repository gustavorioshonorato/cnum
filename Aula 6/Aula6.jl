using LinearAlgebra

A = [5 1 1;
     -1 3 -1;
     1 2 10]

B = [50; 10; -30]

C = [4 0 1;
     1 10 3;
     2 1 4]

D = [6; 27; 12]

E = [-1.01 0.5 0 0;
     0.5 -1.01 0.5 0; 
    0 0.5 -1.01 0.5;
    0 0 0.5 -0.52]

F = [-63; 0; 0; 0]

G = [-1.02 0.5 0 0;
     0.5 -1.01 0.5 0; 
    0 0.5 -1.01 0.5;
    0 0 0.5 -0.51]

H = [-63; 0; 0; 0]
  
println("EX1")
X = A \ B
println(X)

erro = 10^-3

function jacobi(A, B, k)
  n = size(B, 1)
  X = zeros(n)
  K = zeros(n)
  for l = 1:k
    for i = 1:n
      count = 0
      for j = 1:n
        if i != j
        count += A[i, j]*X[j]
      end
    end
    K[i] = (B[i]-count)/A[i, i]
  end

  if norm(X-K) < erro
    break
  end
  X = copy(K)
end
return X
end

X = jacobi(A, B, 10)
println(X)

println()
println("EX2")
X = C \ D
println(X)

X = jacobi(C, D, 10)
println(X)

println()

println("EX3")
X = E \ F
println(X)

X = jacobi(E, F, 100)
println(X)

println("EX3.2")
X = G \ H
println(X)

X = jacobi(G, H, 100)
println(X)