for item in apple banana cherry; do
    echo "Fruit: $item"
done


for i in {1..5}; do
    echo "Number: $i"
done


for ((i=1; i<=5; i++)); do
    echo "Counter: $i"
done



for i in {1..5}; do
    if [ $i -eq 3 ]; then
        echo "Skipping 3"
        continue  # skip this iteration
    fi

    if [ $i -eq 5 ]; then
        echo "Stopping at 5"
        break  # exit the loop
    fi

    echo "Number: $i"
done
