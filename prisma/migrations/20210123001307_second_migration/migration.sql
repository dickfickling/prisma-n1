/*
  Warnings:

  - You are about to drop the column `pollEndsAt` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `pollDurationDays` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `visibility` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `isPoll` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `content` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `profileImage` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `cred` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `bio` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `User` table. All the data in the column will be lost.
  - You are about to drop the `_UserBlocks` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_UserFollows` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropIndex
DROP INDEX `IDX_f0e1b4ecdca13b177e2e3a0613` ON `User`;

-- DropIndex
DROP INDEX `user-username-idx-fulltext` ON `User`;

-- DropIndex
DROP INDEX `IDX_e12875dfb3b1d92d7d7c5377e2` ON `User`;

-- DropIndex
DROP INDEX `IDX_58e4dbff0e1a32a9bdc861bb29` ON `User`;

-- DropForeignKey
ALTER TABLE `_UserBlocks` DROP FOREIGN KEY `_UserBlocks_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_UserBlocks` DROP FOREIGN KEY `_UserBlocks_ibfk_2`;

-- DropForeignKey
ALTER TABLE `_UserFollows` DROP FOREIGN KEY `_UserFollows_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_UserFollows` DROP FOREIGN KEY `_UserFollows_ibfk_2`;

-- AlterTable
ALTER TABLE `Post` DROP COLUMN `pollEndsAt`,
    DROP COLUMN `pollDurationDays`,
    DROP COLUMN `visibility`,
    DROP COLUMN `isPoll`,
    DROP COLUMN `content`;

-- AlterTable
ALTER TABLE `User` DROP COLUMN `profileImage`,
    DROP COLUMN `cred`,
    DROP COLUMN `bio`,
    DROP COLUMN `phoneNumber`;

-- DropTable
DROP TABLE `_UserBlocks`;

-- DropTable
DROP TABLE `_UserFollows`;
