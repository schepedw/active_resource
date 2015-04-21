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

## The lesson

We can write our API to have all sorts of endpoints and responses,
especially if we write the client as well. We
previously looked at a way to [structure our endpoints using active
model](https://github.com/schepedw/active_resource_client#active-resource-101),
but what about our responses?

In a similar way to our endpoints, we _can_ make our responses whatever we
feel like (see (AccountType)[#TODO]). However, when someone else wants to use our API, it would be
nice if they could expect some structure. This is where (JSON
API)[jsonapi.org] comes in.

JSON API, as you may have guessed, is a standard for building APIs
in JSON. Like many standards, it's really boring to read through.
Thankfully, there are gems have done most of the heavy lifting for
us, and we don't have to read or do much to get our API up to snuff. One
of these gems is (Active
Serializer)[https://github.com/rails-api/active_model_serializers],
which I recommend for this exercise.

## Requirements
Make stuff gooder. Make sure to not break the tests in the client

 #TODO - where is the correct place to put the tests?

## Testing

If you really feel the need, you can test this project using `be rspec`.
Make sure your test db is set up first.

At the time of writing, these tests did not provide complete code
coverage.

## Resources

[Rails Routing](http://guides.rubyonrails.org/routing.html)
