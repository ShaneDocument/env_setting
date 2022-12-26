#!/bin/bash
# Program:
#   This program will build the cscope DataBase in specify folder.
#   Input: Root folder of C Project
#   Output: None


PROJECT_ROOT=$1
CSCOPE_FLAGS=$2

# Check PROJECT_ROOT is folder or not
if [ -d "${PROJECT_ROOT}" ] ; then
    :
else
    if [ -f "${PROJECT_ROOT}" ] ; then
        echo "**** [Error 1]${PROJECT_ROOT} is a file. Need a directory. ****"
        exit 1
    else
        echo "**** [Error 2]${PROJECT_ROOT} is not valid. ****"
        exit 2
    fi
fi

# Rewrite the Path to absolute
PROJECT_ROOT="$(cd "$(dirname "${PROJECT_ROOT}")" && pwd)/$(basename "${PROJECT_ROOT}")"

# Check cscope.files size (means the C and headers are exist or not)
find ${PROJECT_ROOT} -name "*.c" -o -name "*.h" > ./tmp

# Check size of cscope.files
file_num=$(wc -l < ./tmp)
if [ ${file_num} -eq 0 ]; then
    echo "**** [Error 3] No C or header files in ${PROJECT_ROOT} ****"
    rm ./tmp
    exit 3
fi

# Generate cscope.files
$(cat ./tmp > ${PROJECT_ROOT}/cscope.files)
rm ./tmp
if [ -f "${PROJECT_ROOT}/cscope.files" ]; then
    :
else
    echo "**** [Error 4] Create cscope.files failed. ****"
    exit 4
fi
echo "***** ${file_num} files in this project. \(C and headers\) *****"

# Generate cscope databases and check them
$(cd ${PROJECT_ROOT} && cscope -Rbqk -i ${PROJECT_ROOT}/cscope.files)
if [ -f "${PROJECT_ROOT}/cscope.out" ]; then
    :
else
    echo "**** [Error 5] Create cscope database failed. ****"
    exit 5
fi
exit 0
