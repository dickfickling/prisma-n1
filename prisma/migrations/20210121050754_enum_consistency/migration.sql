/*
  Warnings:

  - You are about to alter the column `visibility` on the `Post` table. The data in that column could be lost. The data in that column will be cast from `Enum("Post_visibility")` to `Enum("Post_visibility")`.
  - You are about to alter the column `reportReason` on the `PostCommentReport` table. The data in that column could be lost. The data in that column will be cast from `Enum("PostCommentReport_reportReason")` to `Enum("PostCommentReport_reportReason")`.
  - You are about to alter the column `reportReason` on the `PostReport` table. The data in that column could be lost. The data in that column will be cast from `Enum("PostReport_reportReason")` to `Enum("PostReport_reportReason")`.
  - The migration will remove the values [Post,PostComment,Review] on the enum `Upvote_entityType`. If these variants are still used in the database, the migration will fail.

*/
-- AlterTable
ALTER TABLE `Post` MODIFY `visibility` ENUM('PUBLIC', 'FOLLOWERS', 'LINK') NOT NULL DEFAULT 'PUBLIC';

-- AlterTable
ALTER TABLE `PostCommentReport` MODIFY `reportReason` ENUM('VIOLENCE', 'LANGUAGE', 'OTHER') NOT NULL DEFAULT 'OTHER';

-- AlterTable
ALTER TABLE `PostReport` MODIFY `reportReason` ENUM('VIOLENCE', 'LANGUAGE', 'OTHER') NOT NULL DEFAULT 'OTHER';

-- AlterTable
ALTER TABLE `Upvote` MODIFY `entityType` ENUM('POST', 'POST_COMMENT', 'REVIEW') NOT NULL;
