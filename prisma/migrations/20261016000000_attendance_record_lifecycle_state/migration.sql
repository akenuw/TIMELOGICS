-- AlterTable: Add lifecycleState and trust fields to attendance_records (non-destructive)
ALTER TABLE "attendance_records" ADD COLUMN IF NOT EXISTS "lifecycleState" TEXT NOT NULL DEFAULT 'FINALIZED';
ALTER TABLE "attendance_records" ADD COLUMN IF NOT EXISTS "recordHash" TEXT;
ALTER TABLE "attendance_records" ADD COLUMN IF NOT EXISTS "rulesSnapshot" JSONB;
ALTER TABLE "attendance_records" ADD COLUMN IF NOT EXISTS "evidencePackage" JSONB;
ALTER TABLE "attendance_records" ADD COLUMN IF NOT EXISTS "calculatedSummary" JSONB;
