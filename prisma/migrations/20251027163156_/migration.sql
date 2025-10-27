/*
  Warnings:

  - You are about to drop the `Bruxo` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "public"."Bruxo";

-- CreateTable
CREATE TABLE " bruxos " (
    "id" SERIAL NOT NULL,
    "nomeMagico" TEXT NOT NULL,
    "casa" TEXT,
    "patrono" TEXT,
    "varinha" TEXT,
    "anoMatricula" INTEGER NOT NULL,
    "ativo" BOOLEAN NOT NULL DEFAULT true,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT " bruxos _pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX " bruxos _nomeMagico_key" ON " bruxos "("nomeMagico");
