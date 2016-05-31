# API
* [Todo](#todo)
 * [POST /api/todos](#post-apitodos)
 * [GET /api/todos/:id](#get-apitodosid)
 * [GET /api/todos](#get-apitodos)
 * [PUT /api/todos/:id](#put-apitodosid)
 * [DELETE /api/todos/:id](#delete-apitodosid)

## Todo
todo api

### Properties
* id
 * unique identifier of todo
 * Example: `10001`
 * Type: string
 * ReadOnly: true
* title
 * title of todo
 * Example: `"task"`
 * Type: string
* completed
 * state of todo
 * Example: `false`
 * Type: boolean
* created_at
 * when todo was created
 * Example: `"2016-05-31T14:30:44.064Z"`
 * Type: string
 * Format: date-time
* updated_at
 * when todo was updated
 * Example: `"2016-05-31T14:30:44.064Z"`
 * Type: string
 * Format: date-time

### POST /api/todos
Create a new todo.

* title
 * title of todo
 * Example: `"task"`
 * Type: string
* completed
 * state of todo
 * Example: `false`
 * Type: boolean

```
POST /api/todos HTTP/1.1
Content-Type: application/json
Host: api.example.com

{
  "title": "task",
  "completed": false
}
```

```
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": 10001,
  "title": "task",
  "completed": false,
  "created_at": "2016-05-31T14:30:44.064Z",
  "updated_at": "2016-05-31T14:30:44.064Z"
}
```

### GET /api/todos/:id
Info for existing todo.

```
GET /api/todos/10001 HTTP/1.1
Host: api.example.com
```

```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": 10001,
  "title": "task",
  "completed": false,
  "created_at": "2016-05-31T14:30:44.064Z",
  "updated_at": "2016-05-31T14:30:44.064Z"
}
```

### GET /api/todos
List existing todos.

```
GET /api/todos HTTP/1.1
Host: api.example.com
```

```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "todos": [
    {
      "id": 10001,
      "title": "task",
      "completed": false,
      "created_at": "2016-05-31T14:30:44.064Z",
      "updated_at": "2016-05-31T14:30:44.064Z"
    }
  ]
}
```

### PUT /api/todos/:id
Update an existing todo.

* title
 * title of todo
 * Example: `"task"`
 * Type: string
* completed
 * state of todo
 * Example: `false`
 * Type: boolean

```
PUT /api/todos/10001 HTTP/1.1
Content-Type: application/json
Host: api.example.com

{
  "title": "task",
  "completed": false
}
```

```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": 10001,
  "title": "task",
  "completed": false,
  "created_at": "2016-05-31T14:30:44.064Z",
  "updated_at": "2016-05-31T14:30:44.064Z"
}
```

### DELETE /api/todos/:id
Delete an existing todo.

```
DELETE /api/todos/10001 HTTP/1.1
Host: api.example.com
```

```
HTTP/1.1 204 No Content
```

