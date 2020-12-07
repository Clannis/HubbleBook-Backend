# HubbleBook-Backend

The frontend of this app can be found at [HubbleBook-Frontend](https://github.com/Clannis/HubbleBook-Frontend)

This project was created as an API for frontend usage.

## Description
---
This web application is a facebook-like cloane focusing around Hubble and James Webb space telescopes news articles. Each article allows for commented discussion.


## Dependencies
---
Use bundle install to install all dependencies

```
bundle install
```

This application was produced using:
* Ruby version 2.6.1
* Rails version 6.0.3
* Postgresql version 1.2
* JWT version 2.2

## Available Scripts
---
In the project directory, you can run:

### `rails s`

Run `rails s` to load the API for this repo before initializing the frontend. This is crutial to allow to the two sides to communicate through CORS.


## Testing
---
To test this application, please install all dependencies as instructed above and run `rails s` to launch the local server. The launch the frontend of the application and navigate to http://localhost:3001 to load the app and begin exploration/testing of the application.

## Contributing
---
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
---
Available as open source under the terms of the [MIT License](https://github.com/Clannis/Dog-Training-App/blob/master/LICENSE).