-- Rename email_outreach_queue → email_outreach_sends.
-- The table is no longer a "queue" — rows are inserted at send time only.
-- Drop scheduled_for: it was never written to.

-- DropIndex
DROP INDEX "email_outreach_queue_college_id_email_address_idx";
DROP INDEX "email_outreach_queue_college_id_idx";
DROP INDEX "email_outreach_queue_status_scheduled_for_idx";
DROP INDEX "email_outreach_queue_resend_email_id_key";

-- RenameTable
ALTER TABLE "email_outreach_queue" RENAME TO "email_outreach_sends";
ALTER TABLE "email_outreach_sends" RENAME CONSTRAINT "email_outreach_queue_pkey" TO "email_outreach_sends_pkey";
ALTER TABLE "email_outreach_sends" RENAME CONSTRAINT "email_outreach_queue_college_id_fkey" TO "email_outreach_sends_college_id_fkey";

-- AlterTable
ALTER TABLE "email_outreach_sends" DROP COLUMN "scheduled_for";

-- CreateIndex
CREATE UNIQUE INDEX "email_outreach_sends_resend_email_id_key" ON "email_outreach_sends"("resend_email_id");
CREATE INDEX "email_outreach_sends_college_id_idx" ON "email_outreach_sends"("college_id");
CREATE INDEX "email_outreach_sends_college_id_email_address_idx" ON "email_outreach_sends"("college_id", "email_address");
CREATE INDEX "email_outreach_sends_status_idx" ON "email_outreach_sends"("status");
CREATE INDEX "email_outreach_sends_sent_at_idx" ON "email_outreach_sends"("sent_at");
