# FRED API
First, create an account.
Secont, in your profile, check API Keys. Then click Request Key.

```
https://fredaccount.stlouisfed.org/apikeys
```

Got a key. Created an environment variable with name %FRED_KEY%.

Okay, so the root URL is:
```
https://api.stlouisfed.org/
```

I want a JSON file. This URL just gives me a description of the series:
```
https://api.stlouisfed.org/fred/series?series_id=UNRATE&api_key=abc123&file_type=json
```

This URL gives me the actual observations:
```
https://api.stlouisfed.org/fred/series/observations?series_id=UNRATE&api_key=abc123&file_type=json

```

So the endpoint is "/fred/series/observations".
As described here: https://fred.stlouisfed.org/docs/api/fred/#General_Documentation

Starting at 2020-01:
```
https://api.stlouisfed.org/fred/series/observations?series_id=UNRATE&realtime_start=2020-01-01&api_key=abc123&file_type=json
```

