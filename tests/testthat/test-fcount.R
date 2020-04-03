context("test-fcount")

test_that("output is tibble",{
    expect_identical(class(fcount(iris$Species))[[1]], "tbl_df")
})
