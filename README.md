Allow cross origin requests in the IPFS daemon:

    {
      "API": {
        "HTTPHeaders": {
          "Access-Control-Allow-Credentials": [
            "true"
          ],
          "Access-Control-Allow-Methods": [
            "PUT",
            "GET",
            "POST"
          ],
          "Access-Control-Allow-Origin": [
            "localhost",
            "localhost:8000",
            "http://localhost:8000"
          ]
        }
      },

