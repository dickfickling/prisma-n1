/*
  Warnings:

  - You are about to drop the `PostComment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PostCommentReport` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PostPollOption` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PostReport` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PostVote` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Product` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ProductImage` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Review` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ReviewImage` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Tag` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Upvote` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_PostToTag` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_ProductToTag` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_ProductToUser` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_TagToUser` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `PostComment` DROP FOREIGN KEY `PostComment_ibfk_1`;

-- DropForeignKey
ALTER TABLE `PostComment` DROP FOREIGN KEY `PostComment_ibfk_2`;

-- DropForeignKey
ALTER TABLE `PostCommentReport` DROP FOREIGN KEY `PostCommentReport_ibfk_1`;

-- DropForeignKey
ALTER TABLE `PostCommentReport` DROP FOREIGN KEY `PostCommentReport_ibfk_2`;

-- DropForeignKey
ALTER TABLE `PostPollOption` DROP FOREIGN KEY `PostPollOption_ibfk_1`;

-- DropForeignKey
ALTER TABLE `PostReport` DROP FOREIGN KEY `PostReport_ibfk_1`;

-- DropForeignKey
ALTER TABLE `PostReport` DROP FOREIGN KEY `PostReport_ibfk_2`;

-- DropForeignKey
ALTER TABLE `PostVote` DROP FOREIGN KEY `PostVote_ibfk_1`;

-- DropForeignKey
ALTER TABLE `PostVote` DROP FOREIGN KEY `PostVote_ibfk_2`;

-- DropForeignKey
ALTER TABLE `ProductImage` DROP FOREIGN KEY `ProductImage_ibfk_1`;

-- DropForeignKey
ALTER TABLE `Review` DROP FOREIGN KEY `Review_ibfk_1`;

-- DropForeignKey
ALTER TABLE `ReviewImage` DROP FOREIGN KEY `ReviewImage_ibfk_1`;

-- DropForeignKey
ALTER TABLE `Upvote` DROP FOREIGN KEY `Upvote_ibfk_1`;

-- DropForeignKey
ALTER TABLE `Upvote` DROP FOREIGN KEY `Upvote_ibfk_2`;

-- DropForeignKey
ALTER TABLE `_PostToTag` DROP FOREIGN KEY `_PostToTag_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_PostToTag` DROP FOREIGN KEY `_PostToTag_ibfk_2`;

-- DropForeignKey
ALTER TABLE `_ProductToTag` DROP FOREIGN KEY `_ProductToTag_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_ProductToTag` DROP FOREIGN KEY `_ProductToTag_ibfk_2`;

-- DropForeignKey
ALTER TABLE `_ProductToUser` DROP FOREIGN KEY `_ProductToUser_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_ProductToUser` DROP FOREIGN KEY `_ProductToUser_ibfk_2`;

-- DropForeignKey
ALTER TABLE `_TagToUser` DROP FOREIGN KEY `_TagToUser_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_TagToUser` DROP FOREIGN KEY `_TagToUser_ibfk_2`;

-- DropTable
DROP TABLE `PostComment`;

-- DropTable
DROP TABLE `PostCommentReport`;

-- DropTable
DROP TABLE `PostPollOption`;

-- DropTable
DROP TABLE `PostReport`;

-- DropTable
DROP TABLE `PostVote`;

-- DropTable
DROP TABLE `Product`;

-- DropTable
DROP TABLE `ProductImage`;

-- DropTable
DROP TABLE `Review`;

-- DropTable
DROP TABLE `ReviewImage`;

-- DropTable
DROP TABLE `Tag`;

-- DropTable
DROP TABLE `Upvote`;

-- DropTable
DROP TABLE `_PostToTag`;

-- DropTable
DROP TABLE `_ProductToTag`;

-- DropTable
DROP TABLE `_ProductToUser`;

-- DropTable
DROP TABLE `_TagToUser`;
