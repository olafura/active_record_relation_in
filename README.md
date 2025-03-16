## Index
- [Description and history](#description-and-history)
- [Compatibility](#compatibility)
- [Installation](#installation)
- [Usage](#usage)
  - [Scope Modifiers](#scope-modifiers)
    - [Combine With IN](#combine-with-in)

## Description and History

Active Record Relation In grew out of the frustration that certain combining of scopes would make them not function.

By default ActiveRecord combines different where statements with an AND statement. This makes it hard to write scopes that can be combined without doing a lot of trickery.

Active Record Relation In is the continuation of maintaining and improving the work done by **George Protacio-Karaszi**, the original author of [active_record_extended](https://github.com/GeorgeKaraszi/ActiveRecordExtended).

Since it's a great start of how to make sure combines correctly with Active Record and this feature was a bit to specific for them to want in their gem.

## Compatibility

This package is designed align and work with any officially supported Ruby and Rails versions.
 - Minimum Ruby Version: 3.1.x **(EOL warning!)**
 - Minimum Rails Version: 6.1.x **(EOL warning!)**
 - Minimum Postgres Version: 12.x **(EOL warning!)**
 - Latest Ruby supported: 3.3.x
 - Latest Rails supported: 7.1.x
 - Postgres: 11-current(16) (probably works with most older versions to a certain point)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'active_record_relation_in'
```

And then execute:

    $ bundle

## Usage

#### Scope Modifiers

#### Combine With IN

When you want to combine with statement with an IN statement instead of the usual AND statement

`.combine_with_in/0`

```ruby
class User < ApplicationRecord
end


class Tag < ApplicationRecord
  belongs_to :user
  scope :for_users, ->(user_ids) { where(user_id: user_ids).combine_with_in }
end

Tag.where(id: 1).for_users([1, 2]).for_users(3)
```

Query Output
```sql
SELECT "tags".*
FROM "tags"
WHERE
"tags"."id" = 1 AND
"tags"."user_id" IN (1, 2, 3)
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
