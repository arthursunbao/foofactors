context("Sort the factor in descending order")

test_that("SUCCESS", {

  test1 <- c("apple","boy","cat","dog")
  test2 <- c("100","200","300","400")
  test3 <- c("Jason","KKB","ZBC")

  reorder1 <- sort_factor(factor(test1))
  reorder2 <- sort_factor(factor(test2))
  reorder3 <- sort_factor(factor(test3))

  a2 <- c("dog","cat","boy","apple")
  b2 <- c("400","300","200","100")
  c2 <- c("ZBC","KKB","Jason")

  expect_equal(levels(reorder1),a2)
  expect_equal(levels(reorder2),b2)
  expect_equal(levels(reorder3),c2)
})

test_that("ERROR", {

  err <- 123
  expect_error(sort_factor(err))

})
