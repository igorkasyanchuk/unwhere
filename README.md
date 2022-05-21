# Unwhere

Clear all `where` conditions from AR relation. Could be useful if you are doing filtering and you need to use original scope.

## Usage

Samples of usage:

```ruby
User.where(first_name: 'John').order(:id).unwhere 
#  => User.order(:id)


User.where(first_name: 'John').order(:id).unwhere.where(first_name: 'Bob') 
#  => User.order(:id).where(first_name: 'Bob')

# for example we have scope:
# scope :admins, -> { where(role: 'admin') } 
User.admins.order(:id).unwhere
#  => User.order(:id)

```

It works with AR relations, scopes, etc, it's just removes where conditions. It returns relation too and you can add new `where` relations after it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'unwhere'
```

And then execute:
```bash
$ bundle
```

## Contributing

You are welcome to contribute.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[<img src="https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/more_gems.png?raw=true"
/>](https://www.railsjazz.com/?utm_source=github&utm_medium=bottom&utm_campaign=unwhere)
