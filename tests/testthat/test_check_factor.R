context("Checking whether the input is factor or not")

test_that("expectation for TRUE", {
  a <- factor(c("apple","apple","cat","dog"))
  b <- factor(c("apple","banana","cat", "dog", "cat"))

  expect_identical(check_factor(a), TRUE)
  expect_identical(check_factor(b), TRUE)
})

test_that("expectation for FALSE", {
  c <- factor(c("apple","a","cat","dog"))
  d <- factor(c("apple","banana","cat", "dog"))

  expect_identical(check_factor(c), FALSE)
  expect_identical(check_factor(d), FALSE)
})

test_that("ERROR ERROR", {
  e <- 100
  f <- c("Canada UBC")
  expect_error(check_factor(e))
  expect_error(check_factor(f))
})
