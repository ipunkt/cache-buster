# cache-buster

This is a docker image used to refresh nginx cache

## Environment
- BUST_URL: The Url to call
- TIME_BETWEEN_BUST: The time to wait before issuing the next call
- BUST_HEADER: Optional HTTP Header to send along. Format: "Headername: Value"
