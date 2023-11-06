import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient()

async function main() {
    const result = await prisma.client.deleteMany({
        where: {
            cpf: "000.000.000-00"
        }
    })
    console.log(result)
}

main()