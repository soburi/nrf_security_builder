# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.13.1)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(hello_world)

target_sources(app PRIVATE src/main.c)
#zephyr_link_libraries(mbedcrypto_common_glue)
#zephyr_link_libraries(mbedcrypto_cc3xx)
#zephyr_link_libraries(mbedcrypto_glue_cc3xx)
#zephyr_link_libraries(mbedcrypto_glue_vanilla)
zephyr_link_libraries(mbedcrypto_shared)
zephyr_link_libraries(mbedtls)
zephyr_link_libraries(mbedx509)
zephyr_link_libraries(mbedcrypto)
