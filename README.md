# Active Resource 102

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
feel like (see [AccountType](https://github.com/schepedw/active_resource/blob/json_api/app/models/account_type.rb)). However, when someone else wants to use our API, it would be
nice if they could expect some structure. This is where [JSON
API](jsonapi.org) comes in.

JSON API, as you may have guessed, is a standard for building APIs
in JSON. Like many standards, it's really boring to read through.
Thankfully, there are gems have done most of the heavy lifting for
us, and we don't have to read or do much to get our API up to snuff. One
of these gems is [Active
Serializer](https://github.com/rails-api/active_model_serializers),
which I recommend for this exercise.

## Requirements
Run the tests, watch them fail, make some pass, repeat. I highly recommend perusing [Active Model
Serializers](https://github.com/rails-api/active_model_serializers) first.

## Resources

* [JSON API](http://jsonapi.org/format/)
* [JSON API + ActiveSerializer Rails
Cast](http://railscasts.com/episodes/409-active-model-serializers?view=asciicast)
* [Active Model
Serializers](https://github.com/rails-api/active_model_serializers)
* [Rails Routing](http://guides.rubyonrails.org/routing.html)
