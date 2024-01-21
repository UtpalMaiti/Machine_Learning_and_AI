x <- c(141, 134, 178, 156, 108, 116, 119, 143, 162, 130)
y <- c(62, 85, 56, 21, 47, 17, 76, 92, 62, 58)

# ' lm' is used to fit linear models, including multivariate ones.
# It can be used to carry out regression, single stratum analysis of
# variance and analysis of covariance (although 'aov' may provide a
# more convenient interface for these).
#lm() method is performs linear regression.
relationship_model <- lm(y~x)

# Print Values
print(relationship_model)

# Description:
# ' summary' is a generic function used to produce result summaries
# of the results of various model fitting functions. The function
# invokes particular 'methods' which depend on the •class' of the
# first argument.
print(summary(relationship_model))

# The function 'data . frame()' creates data frames, tightly coupled
# collections of variables which share many of the properties of
# matrices and of lists, used as the fundamental data structure by
# most of R's modeling software.
z <- data.frame(x = 160)
z
# Compactly display the internal *str*ucture of an R object, a
# diagnostic function and an alternative to • summary' (and to some
# Ideally, only one line for each 'basic '
# extent, 'dput').
# structure is displayed. It is especially well suited to compactly
# display the (abbreviated) contents of (possibly nested) lists.
# The idea is to give reasonable output for *any* R object. It
# calls 'args' for (non-primitive) function objects.
str(z)

# ' predict' is a generic function for predictions from the results
# of various model fitting functions. The function invokes
# particular _ methods which depend on the ' class' of the first
# argument.
predict_result <- predict(relationship_model, z)

print(predict_result)