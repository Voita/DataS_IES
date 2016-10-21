# First home assignment from JEM181 Data Science with R
# The assignment will be graded based on correctness and clarity of the results
# The code should be clear and easy to read


# We have the following matrix:
set.seed(123)
M <- matrix(
  c(
    1:50 + rnorm(50, 0, 2),
    seq(1, 100, 2) + rnorm(50, 0, 5),
    50:1 + runif(50, -50, 50),
    rnorm(50, 0, 100),
    log(1:50) + rpois(50, 4)
  ),
  50,
  5
)
pairs(M)

# ------------------------------------------------------------------- #
# -------------------- Exercise ------------------------------------- #
# ------------------------------------------------------------------- #

# a) Name the columns of matrix M as follows: a, B, C, d, E
# b) Choose only columns a, C, d and E and convert them to data frame called "M.f". Use 3 different methods of indexing to get the same result.
#    (hint: positive integers, negative integers, characters)
# c) Make a subset of this data frame such that only rows where observations in column "a" are smaller than 35 remain. We do not want to change the name of the data frame, i.e. M.f name holds.
# d) Add new variable to the data frame. It should be factor variable named "fctrs" with 3 levels such that:
##   Whenever observation in column "d" of M.f is smaller than observation in previous row, the new variable takes value "fall". (hint: for)
##   If the previous does not hold, the new variable takes value "smallbeg" for first x observations for which variable "d" from M.f is not bigger than 190. (hint: while/repeat)
##   All other possibilities will result in the value of "inconclusive".
##   !NOTE! You may perform d) in several steps - it will be easier to write as well as read.
# e) Recall the simple linear regression formula for estimating coefficients: B = ((X'X)^-1)X'y.
#    Build a function with 2 inputs: y  and X.
#    The function's output are Beta coefficients. They should be properly named, i.e. B1, B2, ... (don't forget intercept!)
#    Use this function to calculate beta coefficients for the case where variable "a" from M.f is dependent 
#    and the rest are independent variables (except the new factor variable which is left out).
# f) OPTIONAL: Check the counts of and different average values of "a" for different factor levels (hint: table)

