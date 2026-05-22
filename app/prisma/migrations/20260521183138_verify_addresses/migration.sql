-- AlterTable
ALTER TABLE "emailaddresses"
    ADD COLUMN "verification_status" TEXT,
    ADD COLUMN "verification_score" INTEGER,
    ADD COLUMN "verified_at" TIMESTAMPTZ(6);

-- CreateIndex
CREATE INDEX "emailaddresses_verification_status_idx"
    ON "emailaddresses"("verification_status");
