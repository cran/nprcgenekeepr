#' Copyright(c) 2017-2020 R. Mark Sharp
#' This file is part of nprcgenekeepr
context("getDemographics")

test_that("getDemographics throws an error with no LabKey session connection", {
  expect_error(
    expect_warning(getDemographics(),
                   "The file should be named: ~/.nprcgenekeepr_config."))
})
