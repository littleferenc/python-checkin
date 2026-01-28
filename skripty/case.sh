case $variable in
    pattern1)
        # commands
        ;;
    pattern2)
        # commands
        ;;
    *)
        # default case
        ;;
esac



#dropdown with checking


var="orange banana apple"

case $var in
    *orange*)
        echo "Matched orange"
        ;;&
    *banana*)
        echo "Matched banana"
        ;;&
    *pepper*)
        echo "Matched pepper"
        ;;
esac



#dropdown without checking - ZSH only, not officialy supported in bash (but works)

var=one

case $var in
    one)
        echo "Matched one"
        ;&
    two)
        echo "Matched two as well"
        ;;
esac

