### Tasks
SpaceX
- Test SpaceX C112
- Test Roadster

Kong Admin
- /services
  - verify that there are 3 services
- /routes
  - verify that there are 4 routes

- spacex/routes/route1
  - verify the following
    - tag
    - path
    - name
- app/routes/route2
- app/routes/route3
- ui/routes/route4

App
    - epl write few tests

UI
    - playwright


### Run UI tests
``` 
cd ui-tests
npx playwright test
```

### Run API tests
``` 
./gradlew clean test
```