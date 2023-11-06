/*
  Warnings:

  - A unique constraint covering the columns `[cpf]` on the table `client` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "client_cpf_key" ON "client"("cpf");
