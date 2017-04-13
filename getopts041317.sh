#!/bin/bash 
:<<!
1、
1)如果a前面没有:(冒号),执行./test.sh -a,会报:
./test.sh: option requires an argument -- a(miss option argument)
Invalid option: -(invalid option)
2)如果a前面有:(冒号),并且选项?是(\?)这样写，执行./test.sh -a,
什么都没有显示
如果a前面有:(冒号),并且选项?是(?)这样写，执行./test.sh -a,会报:
Invalid option: -a
2、如果a后面有:(冒号),执行./test.sh -a,会报:
Invalid option: -a
如果a后面没有:(冒号),执行./test.sh -a,会报:
this is -a the arg is !
综上所述,建议getopts ":a"开头使用冒号,无效选项使用?
!

while getopts ":a:" opt; do  
  case $opt in  
    a)
      echo "this is -a the arg is ! $OPTARG"   
      ;;  
    ?)
      echo "Invalid option: -$OPTARG"   
      ;;
  esac
done
