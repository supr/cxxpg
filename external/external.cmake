if((NOT FMT_INCLUDE_DIR) OR (NOT EXISTS ${FMT_INCLUDE_DIR}))
	message(STATUS "Installing fmt via submodule")
	execute_process(COMMAND git submodule update --init -- external/fmt
		WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
	add_subdirectory(external/fmt ${CMAKE_CURRENT_BINARY_DIR}/fmt EXCLUDE_FROM_ALL)
	target_include_directories(fmt SYSTEM PUBLIC
		$<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/fmt>
		$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/external/fmt>)
endif()

if((NOT SPDLOG_INCLUDE_DIR) OR (NOT EXISTS ${SPDLOG_INCLUDE_DIR}))
	message(STATUS "Installing spdlog via submodule")
	execute_process(COMMAND git submodule update --init -- external/spdlog
		WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
	add_subdirectory(external/spdlog ${CMAKE_CURRENT_BINARY_DIR}/spdlog EXCLUDE_FROM_ALL)
	target_include_directories(spdlog SYSTEM INTERFACE 
		$<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/spdlog>
		$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/external/spdlog>)
endif()

if((NOT GFLAGS_INCLUDE_DIR) OR (NOT EXISTS ${GFLAGS_INCLUDE_DIR}))
	message(STATUS "Installing gflags via submodule")
	execute_process(COMMAND git submodule update --init -- external/gflags
		WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
	add_subdirectory(external/gflags ${CMAKE_CURRENT_BINARY_DIR}/gflags EXCLUDE_FROM_ALL)
	target_include_directories(spdlog SYSTEM INTERFACE 
		$<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/gflags>
		$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/external/gflags>)
endif()

#find_library(FMT fmt)
#find_library(SPDLOG spdlog)
#find_library(GFLAGS gflags)
