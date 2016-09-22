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

# update

curl --include --request PATCH http://localhost:3000/ingredients/1 \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "toxicity": 0
    }
  }'

# delete
curl --include --request DELETE http://localhost:3000/ingredients/3 \
  --header "Content-Type: application/json" \
