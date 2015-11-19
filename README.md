# ttafu_attribute

Update the updated_at field when the specified fields has changed

## Installation

Add this line to your application's Gemfile:

```
gem 'ttafu_attribute'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install ttafu_attribute
```

## Usage

If you want to update updated_at field when User updating name and email field, then you should write like this:

```
class User < ActiveRecord::Base
  include TtafuAttribute
  ttafu_attribute :name, :email
end
```
