## Prisma n+1 repro ###

ensure you have docker and docker compose running for mysql, or update the .env.test file to point to an existing mysql db
to start docker, run `npm run test-infra-up`
`npm install` to get the deps
`npm run test-migrate` to set up the db
`npm run test` to run the test. it'll pass, but will also show that the query to get the feed causes at least 100 sql queries.