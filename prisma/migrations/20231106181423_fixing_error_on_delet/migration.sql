-- DropForeignKey
ALTER TABLE "address" DROP CONSTRAINT "address_fk_id_client_fkey";

-- AddForeignKey
ALTER TABLE "address" ADD CONSTRAINT "address_fk_id_client_fkey" FOREIGN KEY ("fk_id_client") REFERENCES "client"("id") ON DELETE CASCADE ON UPDATE CASCADE;
