# REST Client

This Neovim configuration includes a REST client for testing HTTP endpoints directly in Neovim.

## Creating a Request

Create a new file with `.http` or `.rest` extension:

```http
GET https://api.example.com/users
Content-Type: application/json
```

Or with a body:

```http
POST https://api.example.com/users
Content-Type: application/json

{
  "name": "John Doe",
  "email": "john@example.com"
}
```

## Request Examples

### GET Request
```http
GET https://jsonplaceholder.typicode.com/posts/1
```

### POST Request
```http
POST https://jsonplaceholder.typicode.com/posts
Content-Type: application/json

{
  "title": "My Post",
  "body": "Content here",
  "userId": 1
}
```

### PUT Request
```http
PUT https://jsonplaceholder.typicode.com/posts/1
Content-Type: application/json

{
  "id": 1,
  "title": "Updated Post",
  "body": "Updated content",
  "userId": 1
}
```

### DELETE Request
```http
DELETE https://jsonplaceholder.typicode.com/posts/1
```

### With Headers
```http
GET https://api.example.com/protected endpoint
Authorization: Bearer your-token-here
Accept: application/json
```

### Query Parameters
```http
GET https://api.example.com/users?page=1&limit=10
```

## Sending Requests

Open the file in Neovim and the REST client will display available requests. Execute them with the default keymaps (all prefixed by `<leader>R`):

| Keybinding | Action |
|-----------|--------|
| `<leader>Ra` | Send all requests in file |
| `<leader>Rr` | Send the current request |
| `<leader>Rp` | Re-run the last request |

You can also use inline keymaps by positioning the cursor on a request line and pressing a configured key.

## Responses

Responses are displayed in a float. You can:
- View the response body, headers, and status code
- Copy response content to clipboard
- Scroll through long responses
- Toggle between body and header view

## Environment Variables

Create a `.env` file in your project for environment-specific values:

```bash
API_URL=https://api.example.com
API_KEY=your-api-key
```

Reference in requests:

```http
GET {{API_URL}}/users
Authorization: Bearer {{API_KEY}}
```
