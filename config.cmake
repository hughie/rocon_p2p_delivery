###############################################################################
# Family : generic
# Platform : vanilla
###############################################################################
#
# This is a special platform configuration in as much as its not special, just
# represents empty defaults.
#
# Some useful custom variables that uniquely define this platform module
set(PLATFORM_FAMILY "generic" CACHE STRING "Platform family, usually referring to intel/arm etc.")
set(PLATFORM_NAME "vanilla" CACHE STRING "Platform name, usually referring to the cpu architecture.")

# Flags
set(PLATFORM_CXX_FLAGS "" CACHE STRING "Compile flags specific to this platform.")
set(PLATFORM_LINK_FLAGS "" CACHE STRING "Link flags specific to this platform.")

###############################################################################
# Build Configuration
###############################################################################

###########################
# Parameterised Variables
###########################
set(UNDERLAY_ROOTS "/opt/ros/indigo" CACHE PATH "Semi-colon separated list of underlay roots.")
set(YUJIN_DOC_PREFIX "/home/yujin/rocon_p2p_delivery/doc" CACHE PATH "Document root location")

###########################
# CMake
###########################
set(CMAKE_VERBOSE_MAKEFILE ON CACHE BOOL "Verbosity in the makefile compilations.")
set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "Build mode type.")
set(CMAKE_INSTALL_PREFIX "/home/yujin/rocon_p2p_delivery/install" CACHE PATH "Install root location.")
set(CMAKE_PREFIX_PATH "${UNDERLAY_ROOTS}" CACHE PATH "semi-colon separated software/ros workspace paths.")
# We use CMAKE_USER_MAKE_RULES_OVERRIDE to configure CMAKE_CXX_FLAGS_INIT ()
set(YUJIN_CXX_FLAGS_INIT "${PLATFORM_CXX_FLAGS}" CACHE STRING "Initial flags that get passed to CMAKE_CXX_FLAGS via the cmake override file.")
set(CMAKE_USER_MAKE_RULES_OVERRIDE "/usr/local/lib/python2.7/dist-packages/yujin_tools/cmake/overrides.cmake" CACHE PATH "User override file for setting global compiler flags.")

###########################
# Catkin
###########################
# Excluding or including packages
#set(CATKIN_BLACKLIST_PACKAGES "" CACHE STRING "List of ';' separated packages to exclude")
#set(CATKIN_WHITELIST_PACKAGES "" CACHE STRING "List of ';' separated packages to build (must be a complete list)")
set(CATKIN_DEVEL_PREFIX "/home/yujin/rocon_p2p_delivery/devel" CACHE PATH "Relative location of the devel space [devel]")

###########################
# Boost
###########################
set(Boost_DEBUG FALSE CACHE BOOL "Debug boost.")
set(Boost_DETAILED_FAILURE_MSG FALSE CACHE BOOL "Detailed failure reports from boost.")
