import { PrismaClient } from "@prisma/client"
const prisma = new PrismaClient()

async function main() {
    const result = await prisma.client.update({
        where: {
            cpf: "000.000.000-00"
        },
        data: {
            last_name: "Wascholtz"
        }
    })

    console.log(result)
}

main()