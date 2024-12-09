# Blogging Platform with Tags

## Overview

This is a foundational Rails application designed to demonstrate the implementation of `has_many` and `belongs_to` relationships within a database. The project simulates a blogging platform where each blog post can be associated with multiple tags, and each tag can apply to multiple blog posts. This project highlights my ability to design and test relational databases, ensuring proper associations between models.

---

## Features

- **Blog Post Creation**:

  - Users can create blog posts, which serve as the primary model in this project.

- **Tagging System**:

  - Each blog post can be assigned multiple tags to categorize or organize the content.
  - Tags are reusable and can be associated with multiple blog posts.

- **Database Relationships**:

  - Implemented `has_many :through` relationships using a join table to connect `BlogPost` and `Tag` models.

- **Basic Testing**:
  - Verified the relationships between `BlogPost` and `Tag` using the Rails console to ensure that the database schema and associations function correctly.

---

## Database Schema

- **`blog_posts`**: Stores information about blog posts (e.g., `title`, `content`).
- **`tags`**: Stores information about tags (e.g., `name`).
- **`taggings`**: A join table that connects `blog_posts` and `tags`.

### Example Schema

```ruby
create_table "blog_posts", force: :cascade do |t|
  t.string "title"
  t.string "text"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

create_table "tags", force: :cascade do |t|
  t.string "name"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

create_table "post_tags", force: :cascade do |t|
  t.integer "post_id"
  t.integer "tag_id"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
```
