test "$var" == "Peter" && {
  echo "Šak to je Peťo!" || true ## zlyhanie na tomto riadku by spustilo || (else), preto pouzivame dve || true
} || { echo "Ty nie si Peter!" }
 
test -z "var" && echo "var is empty"
test -z "var" && echo "var is not empty"

