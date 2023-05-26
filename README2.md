
```shell
docker exec mongo1 mongosh --eval "db.properties.insertMany([{name:'BTC', description: 'BTC as an asset'}, {name:'ETH', description: 'ETH as an asset'}, {name: 'Porsche', description: 'Cherry Macan'}])"

docker exec mongo1 mongosh --eval "db.properties.find()"


docker exec mongo1 mongosh --eval "db.relations.insertMany([{name: 'Calling', description: 'calling with mobile'}, {name: 'friendship', description: 'being of friend of'}, {name: 'romantic', description: 'having affair?'}, {name: 'Co-working', description: 'working together'}])"


docker exec mongo1 mongosh --eval "db.objects.insertMany([{name: 'Person1', description: 'A male person', properties: [{propertyId: ObjectId('646a3ba97f83e0d5d056fcc2'), quantity: 3}, {propertyId: ObjectId('646a3ba97f83e0d5d056fcc4'), quantity: 1}]}, {name: 'Person2', description: 'A female person', properties: [{propertyId: ObjectId('646a3ba97f83e0d5d056fcc2'), quantity: 2}, {propertyId: ObjectId('646a3ba97f83e0d5d056fcc3'), quantity: 1}]}, {name: 'Person3', description: 'A foreign person', properties: [{propertyId: ObjectId('646a3ba97f83e0d5d056fcc3'), quantity: 4}]}])"



docker exec mongo1 mongosh --eval "db.objects.insertOne({name: 'Person3', description: 'A foreign person', properties: [{propertyId: ObjectId('646a3ba97f83e0d5d056fcc3'), quantity: 4}]})"



docker exec mongo1 mongosh --eval "db.objects.updateOne({ name: 'Person1'},{\$set:{
    relations: [{relationId: ObjectId('646a452ac3a8cda5e51e71c8'), quality: 'Strong', relationedObjectId: ObjectId('646a52b71c7ff529c71ccb57')}, {relationId: ObjectId('646a452ac3a8cda5e51e71c9'), quality: 'Weak', relationedObjectId: ObjectId('646a547c28d2fab5631ac813')}]}})"



### Insert After forNeo4j with Objects.
docker exec mongo1 mongosh --eval "db.objects.insertOne({name: 'Person6', description: 'A foreign person6', properties: [{propertyId: ObjectId(' insert string id here '), quantity: 250}]})"
