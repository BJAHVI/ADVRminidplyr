test_that("selectr() works with numeric vectors and returns a data frame", {
  df <- selectr(mtcars,c(2,4))
  expect_equal(dim(df), c(nrow(mtcars), 2))
  expect_s3_class(df,"data.frame")
  
  df2 <- selectr(mtcars,c(4))
  expect_equal(dim(df2), c(nrow(mtcars), 1))
  expect_s3_class(df2,"data.frame")
})

test_that("selectr() should return the same output as dplyr::select()", {
  df <- selectr(mtcars,c(2,4))
  dft <- dplyr::select(mtcars,c(2,4))
  expect_equal(df,dft)

  
  df2 <- selectr(mtcars,c(4))
  dft2 <- dplyr::select(mtcars,c(4))
  expect_equal(df2,dft2)
  
})
