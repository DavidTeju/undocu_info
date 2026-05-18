-- AlterTable
ALTER TABLE "email_outreach_queue" ADD COLUMN "resend_email_id" TEXT;

-- CreateTable
CREATE TABLE "email_outreach_suppression" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "college_id" INTEGER NOT NULL,
    "email_address" TEXT NOT NULL,
    "reason" TEXT NOT NULL,
    "source_event_type" TEXT NOT NULL,
    "resend_email_id" TEXT,
    "details" JSON,

    CONSTRAINT "email_outreach_suppression_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "email_outreach_queue_resend_email_id_key" ON "email_outreach_queue"("resend_email_id");

-- CreateIndex
CREATE INDEX "email_outreach_queue_college_id_email_address_idx" ON "email_outreach_queue"("college_id", "email_address");

-- CreateIndex
CREATE UNIQUE INDEX "email_outreach_suppression_college_id_email_address_key" ON "email_outreach_suppression"("college_id", "email_address");

-- CreateIndex
CREATE INDEX "email_outreach_suppression_email_address_idx" ON "email_outreach_suppression"("email_address");

-- CreateIndex
CREATE INDEX "email_outreach_suppression_resend_email_id_idx" ON "email_outreach_suppression"("resend_email_id");

-- AddForeignKey
ALTER TABLE "email_outreach_suppression" ADD CONSTRAINT "email_outreach_suppression_college_id_fkey" FOREIGN KEY ("college_id") REFERENCES "colleges"("id") ON DELETE CASCADE ON UPDATE CASCADE;
