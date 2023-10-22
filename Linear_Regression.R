data("mtcars")

model = lm(mpg ~ hp, data=mtcars)

summary(model)

plot(mpg ~ hp, data=mtcars, main='Linear Regression', xlab='HP', ylab='MPG')
abline(model, col='red')

new_data = data.frame(hp=c(150, 200, 250))
predictions = predict(model, new_data)
print(predictions)