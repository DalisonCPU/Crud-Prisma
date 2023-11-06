/*
  Warnings:

  - Added the required column `cep` to the `address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `logradouro` to the `address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `numero` to the `address` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "address" ADD COLUMN     "cep" TEXT NOT NULL,
ADD COLUMN     "logradouro" TEXT NOT NULL,
ADD COLUMN     "numero" INTEGER NOT NULL;
