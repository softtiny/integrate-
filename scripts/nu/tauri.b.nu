
def tarui_endpoints {
    echo "list urls"
    echo "response :  header:  content-type :application/json; "
    echo "response : content"
    {
        # required
        "version": "v0.1.1",
        "notes": "Test version",
        "pub_date": "2020-06-22T19:25:57Z",
        "platforms": {
            "windows-x86_64": {
                # required
            "signature": "dW50cnVzdGVkIGNvbW1lbnQ6IHNpZ25hdHVyZSBmcm9tIHRhdXJpIHNlY3JldCBrZXkKUlVUMHdvTitoaWRXZ3dRUXNvWVhzT0FMRGMwSUZXYkpzOE9TN2h0a0FKcEJVdnpFTGNHMHZhZ254SEtUYTVFVGEvRjdyQUVDMGl2Z04yUVVHd1JNSUZiYnY4cDQ2UWJiN1E0PQp0cnVzdGVkIGNvbW1lbnQ6IHRpbWVzdGFtcDoxNzE4NzY1NTc3CWZpbGU6YWEuemlwCnMvNDZ5US8vY3BGTStLUHowWU5iaWNvMEFIY3orOHZVT0hnY2RTdzNpYVFhL2FsNFZoY3RtaGttWXM1aU1nYm5Rd1FrK2k0bTJXbmNpNEVlbyt6akNBPT0K",
            # required 
            #https needed
            "url": "https://xxx.xxx/aa/aa.zip"
            }
        }
    }
}

def main [] {
    echo "todos"
    echo "endpoints list..."
}