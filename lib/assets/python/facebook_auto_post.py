import facebook

token="EAAFagrk2FVkBAO5GZAmITwme3ror2uEFo4OoITkVU7SZCtUYKHBZCGxPsfgpvKOTW9JZC9nowAT85JhRa1NLgrZCVJr0AvO6N8ZCN2G7eT06nvZBnR8lJxxN4u07t69oZAgkRfDpAssZANCXkMuZCkLIJsLFxPD3w0LRSwIfphVYHZAzK1dVdbZC14HEhjOlUzYHfzDn2EtvIyWwtMwZCZA1doWDZACRK0J4ZBjf4KoZBFWgTtROHJQZDZD"

fb = facebook.GraphAPI(access_token=token)

fb.put_object(parent_object='me',connection_name='feed',message='Hello. This is my first test for fb page.')