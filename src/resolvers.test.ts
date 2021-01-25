import Chance from "chance";
import request from "supertest";
import { app, prisma } from "../src";

const chance = new Chance();

const deepQueryString = `
  query GetFeed {
    getFeed {
      id
      title
      createdAt
      user {
        id
        firstName
        lastName
        username
        __typename
      }
      __typename
    }
  }
`;

async function createRandomUser() {
  return prisma.user.create({
    data: {
      firstName: chance.name(),
      lastName: chance.name(),
      username: chance.string({ alpha: true, length: 10 }),
      email: chance.email(),
      password: chance.string({ length: 20 }),
    },
  });
}

describe("Feed Resolver Tests", () => {
  afterAll(async () => {
    await prisma.$disconnect();
  });
  it("should be somewhat performant and not n+1", async () => {
    await prisma.post.deleteMany();
    for (let i = 0; i < 10; i++) {
      const poster = await createRandomUser();
      for (let j = 0; j < 10; j++) {
        await prisma.post.create({
          data: {
            user: { connect: { id: poster.id } },
            title: chance.sentence(),
          },
        });
      }
    }

    const start = new Date();
    console.log("starting query");
    const { body: result } = await request(app)
      .post("/graphql")
      .send({ query: deepQueryString });
    console.log("query took: ", new Date().getTime() - start.getTime());
    expect(Array.isArray(result.data.getFeed)).toBeTruthy();
    expect(result.data.getFeed.length).toEqual(100);
  }, 4000);
});
