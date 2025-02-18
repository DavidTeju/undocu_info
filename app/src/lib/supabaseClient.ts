import { env } from '$env/dynamic/private';
import { createClient } from '@supabase/supabase-js';

export const supabase = createClient('http://127.0.0.1:54321', env.SUPABASE_ANON_KEY || '');
