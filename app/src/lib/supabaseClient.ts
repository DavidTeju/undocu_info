import { env } from '$env/dynamic/private';
import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = env.SUPABASE_URL || 'http://127.0.0.1:54321';
export const supabase = createClient(SUPABASE_URL, env.SUPABASE_ANON_KEY || '');
