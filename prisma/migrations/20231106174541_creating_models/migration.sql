-- CreateTable
CREATE TABLE "cliente" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,

    CONSTRAINT "cliente_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Address" (
    "id" TEXT NOT NULL,
    "fk_id_client" TEXT NOT NULL,

    CONSTRAINT "Address_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Address_fk_id_client_key" ON "Address"("fk_id_client");

-- AddForeignKey
ALTER TABLE "Address" ADD CONSTRAINT "Address_fk_id_client_fkey" FOREIGN KEY ("fk_id_client") REFERENCES "cliente"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
