A = magic(1000)

b = randi(10, 1000, 1)

tic
Ainv = inv(A)
x =  Ainv*b
time = toc


