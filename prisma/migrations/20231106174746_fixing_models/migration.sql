/*
  Warnings:

  - You are about to drop the `Address` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `cliente` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Address" DROP CONSTRAINT "Address_fk_id_client_fkey";

-- DropTable
DROP TABLE "Address";

-- DropTable
DROP TABLE "cliente";

-- CreateTable
CREATE TABLE "client" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,

    CONSTRAINT "client_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "address" (
    "id" TEXT NOT NULL,
    "fk_id_client" TEXT NOT NULL,

    CONSTRAINT "address_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "address_fk_id_client_key" ON "address"("fk_id_client");

-- AddForeignKey
ALTER TABLE "address" ADD CONSTRAINT "address_fk_id_client_fkey" FOREIGN KEY ("fk_id_client") REFERENCES "client"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
