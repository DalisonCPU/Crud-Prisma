import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient()

async function main() {
    const result = await prisma.client.create({
        data: {
            name: "Robert",
            last_name: "Scholtz",
            cpf: "000.000.000-00",
            address: {
                create: {
                    cep: "88034-001",
                    logradouro: "Rod. Admar Gonzaga",
                    numero: 2765
                }
            }
        }
    })

    console.log(result)
}

main()