# Active Resource 101

This is the API to be used by [Active Resource Client]
(https://github.com/schepedw/active_resource_client.git)


## Setup

1. Clone / fork this repo
2. `bundle install`
3. `be rake db:setup`
4. `be rails s`
5. In a browser, navigate to wherever your server is listening -
   `localhost:3000` by default
6. You should see

```
{
"application": "ar_host",
"status": "running"
}
```

## Requirements

I intend to use this for several different exercises: look at the
exercise readme for details

## Testing

If you really feel the need, you can test this project using `be rspec`.
Make sure your test db is set up first.

At the time of writing, these tests did not provide complete code
coverage.

## Resources

[Rails Routing](http://guides.rubyonrails.org/routing.html)
