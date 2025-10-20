-- CreateTable
CREATE TABLE "Bruxo" (
    "id" SERIAL NOT NULL,
    "nomeMagico" TEXT NOT NULL,
    "casa" TEXT,
    "nivelPoder" INTEGER NOT NULL DEFAULT 1,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Bruxo_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Bruxo_nomeMagico_key" ON "Bruxo"("nomeMagico");
