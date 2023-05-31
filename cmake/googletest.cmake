include_guard()

# include(FetchContent)
# FetchContent_Declare(
# googletest
# GIT_REPOSITORY https://github.com/google/googletest.git
# GIT_TAG        58d77fa8070e8cec2dc1ed015d66b454c8d78850 # release-1.12.1
# )
# # For Windows: Prevent overriding the parent project's compiler/linker settings
# set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
# FetchContent_MakeAvailable(googletest)
# set_property(TARGET
# gtest
# gtest_main
# gmock
# gmock_main
# PROPERTY FOLDER third_party/GoogleTest)

CPMAddPackage(
	NAME googletest
	GITHUB_REPOSITORY google/googletest
	GIT_TAG release-1.12.1
	VERSION 1.12.1
	OPTIONS
	"INSTALL_GTEST OFF"
	"gtest_force_shared_crt ON"
)

set_property(TARGET
	gtest
	gtest_main
	gmock
	gmock_main
	PROPERTY FOLDER third_party/GoogleTest)