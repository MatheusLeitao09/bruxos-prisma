import { PrismaClient } from "@prisma/client";
const prima = new PrismaClient();


export const findAll = async () => {
    //SELECT * FROM bruxos = findMany
    return await prisma.bruxo.findMany({
        orderBy: { nome: 'asc'}
    });

}

// Crio a variavel findById e já exporto

export const findById = async(id) => {
    // SELECT * FROM buxos WHERE id =1;
    return await prisma.bruxo.findUnique({
        where: { id: Number(id) }
    });
}
