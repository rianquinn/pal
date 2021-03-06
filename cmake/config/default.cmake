# ------------------------------------------------------------------------------
# Constants
# ------------------------------------------------------------------------------

set(PAL_SOURCE_ROOT_DIR ${CMAKE_CURRENT_LIST_DIR}/../..
    CACHE INTERNAL
    "PAL source root directory"
)

set(PAL_SOURCE_CMAKE_DIR ${PAL_SOURCE_ROOT_DIR}/cmake
    CACHE INTERNAL
    "PAL cmake scripts directory"
)

set(PAL_SOURCE_CONFIG_DIR ${CMAKE_CURRENT_LIST_DIR}
    CACHE INTERNAL
    "PAL cmake configuration directory"
)


set(CMAKE_BUILD_TYPE "Release"
    CACHE INTERNAL
    "Defines the build type"
)

set(CMAKE_VERBOSE_MAKEFILE OFF
    CACHE INTERNAL
    "Enables verbose output"
)

# ------------------------------------------------------------------------------
# Configs
# ------------------------------------------------------------------------------

include(${PAL_SOURCE_CMAKE_DIR}/macros/pal_add_config.cmake)

pal_add_config(
    CONFIG_NAME PAL_TARGET_ARCH
    CONFIG_TYPE STRING
    DEFAULT_VAL intel_x64
    DESCRIPTION "The target architecture"
    OPTIONS armv8-a intel_x64
)

pal_add_config(
    CONFIG_NAME PAL_TARGET_LANGUAGE
    CONFIG_TYPE STRING
    DEFAULT_VAL c++11
    DESCRIPTION "The target programming language"
    OPTIONS c c++11 yaml none
)

pal_add_config(
    CONFIG_NAME PAL_ACCESS_MECHANISM
    CONFIG_TYPE STRING
    DEFAULT_VAL gas_att
    DESCRIPTION "The target access mechnism type"
    OPTIONS gas_att gas_intel gas_aarch64 gas_aarch32 test yaml none
)

pal_add_config(
    CONFIG_NAME PAL_PRINT_MECHANISM
    CONFIG_TYPE STRING
    DEFAULT_VAL printf_utf8
    DESCRIPTION "The target function printing style"
    OPTIONS printf_utf8 none
)

pal_add_config(
    CONFIG_NAME PAL_FILE_FORMAT
    CONFIG_TYPE STRING
    DEFAULT_VAL unix
    DESCRIPTION "The target file format"
    OPTIONS unix windows yaml none
)

pal_add_config(
    CONFIG_NAME PAL_GENERATOR
    CONFIG_TYPE STRING
    DEFAULT_VAL c++_header
    DESCRIPTION "The target code generator"
    OPTIONS c_header c++_header
)

pal_add_config(
    CONFIG_NAME PAL_REGISTER_READ_FUNCTION
    CONFIG_TYPE STRING
    DEFAULT_VAL get
    DESCRIPTION "Name of generated functions for reading registers"
)

pal_add_config(
    CONFIG_NAME PAL_REGISTER_WRITE_FUNCTION
    CONFIG_TYPE STRING
    DEFAULT_VAL set
    DESCRIPTION "Name of generated functions for writing registers"
)

pal_add_config(
    CONFIG_NAME PAL_FIELD_READ_FUNCTION
    CONFIG_TYPE STRING
    DEFAULT_VAL get
    DESCRIPTION "Name of generated functions for reading a register field"
)

pal_add_config(
    CONFIG_NAME PAL_FIELD_WRITE_FUNCTION
    CONFIG_TYPE STRING
    DEFAULT_VAL set
    DESCRIPTION "Name of generated functions for writing a register field"
)

pal_add_config(
    CONFIG_NAME PAL_BIT_SET_FUNCTION
    CONFIG_TYPE STRING
    DEFAULT_VAL enable
    DESCRIPTION "Name of generated functions for setting a bit to the value 1"
)

pal_add_config(
    CONFIG_NAME PAL_BIT_CLEAR_FUNCTION
    CONFIG_TYPE STRING
    DEFAULT_VAL disable
    DESCRIPTION "Name of generated functions for setting a bit to the value 0"
)

pal_add_config(
    CONFIG_NAME PAL_BIT_IS_SET_FUNCTION
    CONFIG_TYPE STRING
    DEFAULT_VAL is_enabled
    DESCRIPTION "Name of generated functions for checking if a bit is set to 1"
)

pal_add_config(
    CONFIG_NAME PAL_BIT_IS_CLEAR_FUNCTION
    CONFIG_TYPE STRING
    DEFAULT_VAL is_disabled
    DESCRIPTION "Name of generated functions for checking if a bit is set to 0"
)

pal_add_config(
    CONFIG_NAME PAL_PRINT_FUNCTION
    CONFIG_TYPE STRING
    DEFAULT_VAL dump
    DESCRIPTION "Name of generated functions for printing information"
)

pal_add_config(
    CONFIG_NAME PAL_ENABLE_TEST
    CONFIG_TYPE BOOL
    DEFAULT_VAL OFF
    DESCRIPTION "Set to ON to enable the project's tests"
)

pal_add_config(
    CONFIG_NAME PAL_OUTPUT_DIR
    CONFIG_TYPE STRING
    DEFAULT_VAL ${CMAKE_BINARY_DIR}/pal/include
    DESCRIPTION "Directory for PAL to generated output"
)

pal_add_config(
    CONFIG_NAME PAL_QUIET_CMAKE
    CONFIG_TYPE BOOL
    DEFAULT_VAL OFF
    DESCRIPTION "Set to ON to supress build output from CMake"
)

pal_add_config(
    CONFIG_NAME PAL_ENABLE_ACPI
    CONFIG_TYPE BOOL
    DEFAULT_VAL OFF
    DESCRIPTION "EXPERIMENTAL: Set to ON to include ACPI in the generated PAL output"
)
