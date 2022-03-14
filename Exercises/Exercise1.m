################################################################################
################################## EXERCISE 1 ##################################
################################################################################

# A circular cylinder of height h and radius r is given by V = pi * r^2 * h
# A cylinder has h=15m with r=8m.
# What is the radius of another cylinder with the same height but with a volume 20% greater?

# First we calculate the first cylinder´s volume.
h1 = 15
r1 = 8

V1 = pi * r1^2 * h1

# Second we calculate the second cylinder´s volume.
V2 = V1 * 1.2

# At last we get the second cylinder´s radius
h2 = 15
r2 = sqrt( V2 / ( pi * h2 ) )


################################################################################
################################## EXERCISE 2 ##################################
################################################################################

# Given x = -5 + 9i and y = 6 - 2i,
# show that x + y = 1 + 7i, xy = -12 + 64i and x/y = -1.2 + 1.1i
# Compute the magnitude M of (x+y) and the angle theta.

x = -5 + 9i
y = 6 - 2i

x+y
x*y
x/y

z = x + y
abs(z)


sqrt(50)
angle(z)
sqrt(3)/2

7 / (abs(z))
1 / (abs(z))


################################################################################
################################## EXERCISE 3 ##################################
################################################################################

# Type in the sequence of operations solving the quadratic equation
# Auto way

p = [ 2 -3 -10 ]
roots(p)

# Computed way
a = 2
b = -3
c = -10

delta = sqrt( -b )


################################################################################
################################## EXERCISE 4 ##################################
################################################################################

# The equation describing the loading a capacitor C through a resistor R is given by:
# Vc(t) =  Vc_final (1 - ( e ^ (  ) )
# Vc_final = 10
# R = 10 K Ohm
# C = 10 micro Farad

Vc_final = 10
R = 10e3
C = 10e-6

################################################################################
################################## EXERCISE 5 ##################################
################################################################################

# P(x) = x^3 - 2x^2 + 1
# Q(x) x^4 + x^2 - 3x + 5

P = [1 -1 0 1]
Q = [1 0 1 -3 5]

#PsumQ = P + Q
PmultQ = conv(P,Q)

################################################################################
################################## EXERCISE 5 ##################################
################################################################################

# X a list of pair numbers from 55 to 121.
Xlist=[55:2:121]

# Replace the 11th element by a 0
Xlist(11) = 0
.
# Show the elements from the 7th to the 15th.
Xlist()

