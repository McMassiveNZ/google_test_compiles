include(${CMAKE_SCRIPTS_DIR}/googletest.cmake)

add_executable(
  gtest-compiles-test
  test_main.cpp
)

target_link_libraries(
  gtest-compiles-test
  gtest_main
)

include(GoogleTest)
gtest_discover_tests(gtest-compiles-test)
