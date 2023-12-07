# Strapi for managing Library catalogues

This strapi project is aimed to provide an easy and modern way to manage a library
catalogue.

- REST API
- customisability
- Role-Based Access Control
- Single Sign On

## Strapi API Guide

[Strapi REST API docs](https://docs.strapi.io/dev-docs/api/rest)

| Τίτλος          | API Endpoint    | Περιγραφή |
| --------------- | --------------- | --------- |
| Βιβλιοθήκες     | `/libraries`    |
| Διαθεσιμότητες  | `/quantities`   | Ένα `quantity` περιέχει την εξής πληροφορία: n έντυπα από το X βιβλίο υπάρχουν στην Y βιβλιοθήκη, και από αυτά, τα m είναι διαθέσιμα
| Εκδότες         | `/publishers`   |
| Έντυπα          | `/books`        |
| Συγγραφείς      | `/authors`      |

### Books

|     Column     |              Type              | Collation | Nullable |              Default
|----------------|--------------------------------|-----------|----------|----------------------------------
| id             | integer                        |           | not null | nextval('books_id_seq'::regclass)
| title          | character varying(255)         |           |          |
| year_published | integer                        |           |          |
| description    | text                           |           |          |
| type           | character varying(255)         |           |          |
| isbn           | bigint                         |           |          |
| created_at     | timestamp(6) without time zone |           |          |
| updated_at     | timestamp(6) without time zone |           |          |
| created_by_id  | integer                        |           |          |
| updated_by_id  | integer                        |           |          |

```bash
curl https://library.gizmolab.net/strapi/api/books \
  -H "Authorization: Bearer $TOKEN"
```

```json
{
  "data": [
    {
      "id": 2,
      "attributes": {
        "title": "Book Title",
        "yearPublished": 2015,
        "description": null,
        "type": null,
        "isbn": "9789609123123",
        "createdAt": "2023-12-07T18:42:55.847Z",
        "updatedAt": "2023-12-07T18:42:55.847Z"
      }
    }
  ]
}
```

### Authors

### Publishers

### Quantities

### Libraries
