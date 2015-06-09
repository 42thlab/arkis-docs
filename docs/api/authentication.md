# Authentication

In order to be able to make requests to the Arkis API, you should first
obtain a JSON Web Token for your account.

## REST API

The Arkis REST API is reachable through the following hostname:

    https://api.arkis.io

All requests to our REST API should be sent to this endpoint with the
following `Authorization` header:

    Authorization: JWT JSON_WEB_TOKEN_STRING

>N.B. Authentication endpoints (starting with `/auth`) are available without this
header.

HTTP responses are given in JSON format, so the following `Accept` header
is required for every API call:

    Accept: application/json

### Sign up / Sign in

Create an account and returns the JSON Web Token of this account.
If the account already exist and the credentials are corrects,
returns the JSON Web Token of the existing account.

### HTTP Request

`POST /api/v1/auth/login`

### JSON Parameters

Parameter | Description
--------- | -----------
email | Your account email
password | Your account password
