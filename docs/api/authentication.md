# Authentication

In order to be able to make requests to the Arkis API, you should first
obtain a JSON Web Token for your account.

## REST API

The Arkis REST API is reachable through the following hostname:

    https://api.arkis.io

All requests to our REST API should be sent to this endpoint with the
following `Authorization` header:

    Authorization: JWT JSON_WEB_TOKEN_STRING

HTTP responses are given in JSON format, so the following `Accept` header
is required for every API call:

    Accept: application/json

### Get a JSON Web Token

### HTTP Request

`POST /api/v1/login`

### JSON Parameters

Parameter | Description
--------- | -----------
email | Your account email
password | Your account password
