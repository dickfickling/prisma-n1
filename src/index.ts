import "reflect-metadata";
import { ApolloServer } from "apollo-server-express";
import express from "express";
import * as TypeGraphQL from "type-graphql";
import { Post, User } from "@generated/type-graphql";
import { FieldResolver, Query, Resolver, Root } from "type-graphql";
import { PrismaClient } from "@prisma/client";

export const prisma = new PrismaClient({
  log: ["query", "info", "warn", "error"],
});

@Resolver()
export class FeedResolver {
  @Query(() => [Post])
  async getFeed(): Promise<Post[]> {
    return prisma.post.findMany() as Promise<Post[]>;
  }
}

@Resolver(() => Post)
export class PostResolver {
  @FieldResolver(() => User)
  async user(@Root() post: Post): Promise<User> {
    return prisma.post
      .findUnique({ where: { id: post.id } })
      .user() as Promise<User>;
  }
}

export const app = express();

export const schema = TypeGraphQL.buildSchemaSync({
  resolvers: [FeedResolver, PostResolver],
});

export const server = new ApolloServer({ schema });
server.applyMiddleware({ app });
