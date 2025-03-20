
1. a user with a spirit animal <Butterfly> must have the following three attributes
    - butterflyId - int
    - name - String
    - description - String
    - breed - String
    - age - double
    - activeDate - Date
2. The API must have endpoints to achieve
    - [ ]  get all butterfly spirit animal users
    - [ ]  get a butterfly spirit animal user by its ID
    - [ ]  add a new butterfly spirit animal
    - [ ]  update and existing butterfly spirit animal
    - [ ]  delete an existing butterfly spirit animal
    - [ ]  get all butterfly spirit animals of a given category (ex breed: monarch)
    - [ ]  get all butterfly spirit animals whose names contains a string
  
API ENDPOINTS

Base URL: http://localhost:8081/butterfly

### `/all` (GET) 
Get a list of all Butterflys in the database
#### Response- A JSON array of Butterfly objects.
```
[
    {
        "butterflyId": 8888,
        "name": "pixa",
        "description": "whimsical outlook on life",
        "breed": "monarch",
        "age": 20,
        "activeDate": "2025-03-01T17:15:40.000+00:00"
    },
    {
        "butterflyId": 8890,
        "name": "jugg",
        "description": "looking toward evolution",
        "breed": "leafwing",
        "age": 19,
        "activeDate": "2025-03-07T17:15:49.000+00:00"
    },
    {
        "butterflyId": 8893,
        "name": "moni",
        "description": "looking for resources",
        "breed": "monarch",
        "age": 22,
        "activeDate": "2025-03-20T16:11:22.000+00:00"
    },
    {
        "butterflyId": 8899,
        "name": "zoi",
        "description": "love to create and socializing",
        "breed": "Queen",
        "age": 29,
        "activeDate": "2025-02-01T17:11:22.000+00:00"
    }
]
```

### `/{butterflyId}` (GET) 
Get a Butterfly in the database system by ID
#### Parameters
- Path Variable: butterflyId <int> - REQUIRED
#### Response - the Butterfly with that id.
```
{
    "butterflyId": 8890,
    "name": "jugg",
    "description": "looking toward evolution",
    "breed": "leafwing",
    "age": 19,
    "activeDate": "2025-03-07T17:15:49.000+00:00"
}
```

### `/name` (GET)
Get a list of Butterflys whose name contains the search name
#### Parameters
- Request Parameter: search; String - REQUIRED
#### Response - A JSON array of Butterfly objects.
```
[
    {
        "butterflyId": 8893,
        "name": "moni",
        "description": "looking for resources",
        "breed": "monarch",
        "age": 22,
        "activeDate": "2025-03-20T16:11:22.000+00:00"
    },
    {
        "butterflyId": 8899,
        "name": "zoi",
        "description": "love to create and socializing",
        "breed": "Queen",
        "age": 29,
        "activeDate": "2025-02-01T17:11:22.000+00:00"
    }
]
```

### `/breed/{breed}` (GET)
Get a list of Butterflys of a specific breed
#### Parameters
- Path Variable: breed <String> - REQUIRED
#### Response - A JSON array of Butterfly objects.
```
[
    {
        "butterflyId": 8888,
        "name": "pixa",
        "description": "whimsical outlook on life",
        "breed": "monarch",
        "age": 20,
        "activeDate": "2025-03-01T17:15:40.000+00:00"
    },
    {
        "butterflyId": 8893,
        "name": "moni",
        "description": "looking for resources",
        "breed": "monarch",
        "age": 22,
        "activeDate": "2025-03-20T16:11:22.000+00:00"
    }
]
```

### `/new` (POST)
Create a new Butterfly entry
#### Request Body
A butterfly object. 
```
[
    {
        "butterflyId": 8888,
        "name": "pixa",
        "description": "whimsical outlook on life",
        "breed": "monarch",
        "age": 20,
        "activeDate": "2025-03-01T17:15:40.000+00:00"
    },
    {
        "butterflyId": 8890,
        "name": "jugg",
        "description": "looking toward evolution",
        "breed": "leafwing",
        "age": 19,
        "activeDate": "2025-03-07T17:15:49.000+00:00"
    },
    {
        "butterflyId": 8893,
        "name": "moni",
        "description": "looking for resources",
        "breed": "monarch",
        "age": 22,
        "activeDate": "2025-03-20T16:11:22.000+00:00"
    },
    {
        "butterflyId": 8899,
        "name": "zoi",
        "description": "love to create and socializing",
        "breed": "Queen",
        "age": 29,
        "activeDate": "2025-02-01T17:11:22.000+00:00"
    },
    {
        "butterflyId": 8900,
        "name": "ale",
        "description": "no bio needed",
        "breed": "unknown",
        "age": 20,
        "activeDate": "2025-03-20T00:00:00.000+00:00"
    }
]
```

### `/update/{butterflyId}` (PUT)
Update an existing Butterfly object
#### Parameters
- Path Variable: butterflyId <int> - REQUIRED
#### Response - the updated Buttefly object. 
```
{
    "butterflyId": 8900,
    "name": "ale",
    "description": "inactive user",
    "breed": "unknown",
    "age": 30,
    "activeDate": "2025-03-20T00:00:00.000+00:00"
}
```

### `/delete/{butterflyId}`
Delete an existing Butterfly object
#### Response - the updated list of Butterfly objects. 
```
[
    {
        "butterflyId": 8888,
        "name": "pixa",
        "description": "whimsical outlook on life",
        "breed": "monarch",
        "age": 20,
        "activeDate": "2025-03-01T17:15:40.000+00:00"
    },
    {
        "butterflyId": 8890,
        "name": "jugg",
        "description": "looking toward evolution",
        "breed": "leafwing",
        "age": 19,
        "activeDate": "2025-03-07T17:15:49.000+00:00"
    },
    {
        "butterflyId": 8893,
        "name": "moni",
        "description": "looking for resources",
        "breed": "monarch",
        "age": 22,
        "activeDate": "2025-03-20T16:11:22.000+00:00"
    },
    {
        "butterflyId": 8899,
        "name": "zoi",
        "description": "love to create and socializing",
        "breed": "Queen",
        "age": 29,
        "activeDate": "2025-02-01T17:11:22.000+00:00"
    }
]
```
