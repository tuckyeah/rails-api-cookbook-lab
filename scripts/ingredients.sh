# index

# show

# create
curl --include --request POST http://localhost:3000/ingredients \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "name": "Salt",
      "std_measure": "gal",
      "color": "white",
      "toxicity": 80
    }
  }'
