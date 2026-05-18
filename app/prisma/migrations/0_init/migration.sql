-- CreateEnum
CREATE TYPE "question_category" AS ENUM ('admission', 'financial', 'life', 'other');

-- CreateTable
CREATE TABLE "colleges" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "domain" TEXT NOT NULL,
    "city" TEXT,
    "state" TEXT,
    "hidden" BOOLEAN DEFAULT false,

    CONSTRAINT "colleges_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "emailaddresses" (
    "emailaddress" TEXT NOT NULL,
    "collegeid" INTEGER NOT NULL,

    CONSTRAINT "email_addresses_pkey" PRIMARY KEY ("emailaddress")
);

-- CreateTable
CREATE TABLE "questions" (
    "id" SERIAL NOT NULL,
    "question" TEXT NOT NULL,
    "category" TEXT NOT NULL,

    CONSTRAINT "questions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "responses" (
    "id" SERIAL NOT NULL,
    "collegeid" INTEGER NOT NULL,
    "response" TEXT NOT NULL,
    "questionid" INTEGER NOT NULL,

    CONSTRAINT "questionresponses_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Suggestions" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "content" JSON NOT NULL,
    "college_domain" TEXT NOT NULL,
    "status" TEXT NOT NULL DEFAULT 'pending',
    "reviewed_at" TIMESTAMPTZ(6),
    "submitter_email" TEXT,
    "remarks" TEXT,

    CONSTRAINT "Suggestions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "email_outreach_queue" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "college_id" INTEGER NOT NULL,
    "email_address" TEXT NOT NULL,
    "email_type" TEXT NOT NULL,
    "status" TEXT NOT NULL DEFAULT 'pending',
    "scheduled_for" TIMESTAMPTZ(6),
    "sent_at" TIMESTAMPTZ(6),
    "error_message" TEXT,

    CONSTRAINT "email_outreach_queue_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "email_outreach_log" (
    "id" BIGSERIAL NOT NULL,
    "run_started_at" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "run_completed_at" TIMESTAMPTZ(6),
    "total_queued" INTEGER NOT NULL DEFAULT 0,
    "total_sent" INTEGER NOT NULL DEFAULT 0,
    "total_failed" INTEGER NOT NULL DEFAULT 0,
    "total_bounced" INTEGER NOT NULL DEFAULT 0,
    "details" JSON,
    "status" TEXT NOT NULL DEFAULT 'running',

    CONSTRAINT "email_outreach_log_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "colleges_name_key" ON "colleges"("name");

-- CreateIndex
CREATE UNIQUE INDEX "colleges_domain_key" ON "colleges"("domain");

-- CreateIndex
CREATE UNIQUE INDEX "questions_question_key" ON "questions"("question");

-- CreateIndex
CREATE INDEX "responses_collegeid_questionid_idx" ON "responses"("collegeid", "questionid");

-- CreateIndex
CREATE INDEX "email_outreach_queue_status_scheduled_for_idx" ON "email_outreach_queue"("status", "scheduled_for");

-- CreateIndex
CREATE INDEX "email_outreach_queue_college_id_idx" ON "email_outreach_queue"("college_id");

-- AddForeignKey
ALTER TABLE "emailaddresses" ADD CONSTRAINT "emailaddresses_collegeid_fkey" FOREIGN KEY ("collegeid") REFERENCES "colleges"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "responses" ADD CONSTRAINT "questionresponses_collegeid_fkey" FOREIGN KEY ("collegeid") REFERENCES "colleges"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "responses" ADD CONSTRAINT "responses_questionid_fkey" FOREIGN KEY ("questionid") REFERENCES "questions"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "Suggestions" ADD CONSTRAINT "Suggestions_college_domain_fkey" FOREIGN KEY ("college_domain") REFERENCES "colleges"("domain") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "email_outreach_queue" ADD CONSTRAINT "email_outreach_queue_college_id_fkey" FOREIGN KEY ("college_id") REFERENCES "colleges"("id") ON DELETE CASCADE ON UPDATE CASCADE;

