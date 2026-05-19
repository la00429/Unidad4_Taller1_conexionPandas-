// El entrypoint corre este script autenticado como root en la DB indicada
// por MONGO_INITDB_DATABASE. Cambiamos al contexto de PersonDB explícitamente.
db = db.getSiblingDB('PersonDB');

db.createCollection('personTab');

db.personTab.insertMany([
  { name: "John Doe",        age: 35, eyeColor: "blue",  gender: "male",   favoriteFruit: "banana" },
  { name: "Jane Smith",      age: 38, eyeColor: "brown", gender: "female", favoriteFruit: "apple"  },
  { name: "Emily Johnson",   age: 29, eyeColor: "brown", gender: "female", favoriteFruit: "apple"  },
  { name: "Michael Brown",   age: 40, eyeColor: "green", gender: "male",   favoriteFruit: "orange" },
  { name: "Sarah Davis",     age: 35, eyeColor: "brown", gender: "female", favoriteFruit: "banana" },
  { name: "David Wilson",    age: 30, eyeColor: "blue",  gender: "male",   favoriteFruit: "apple"  },
  { name: "Sophia Martinez", age: 45, eyeColor: "brown", gender: "female", favoriteFruit: "apple"  }
]);

print("PersonDB inicializada: " + db.personTab.countDocuments() + " documentos insertados.");
