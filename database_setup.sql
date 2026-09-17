-- ================================================================
-- SETUP DO BANCO DE DADOS PARA GACHA WAIFU
-- Execute este SQL no Supabase Dashboard > SQL Editor
-- ================================================================

-- 1. TABELA DE PERFIS DE USUÁRIO
CREATE TABLE IF NOT EXISTS user_profiles (
    user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    nickname TEXT NOT NULL,
    avatar_url TEXT,
    avatar_char_name TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. TABELA DE SAVES DO JOGO
CREATE TABLE IF NOT EXISTS waifu_saves (
    user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    save_data JSONB NOT NULL DEFAULT '{}',
    atualizado_em TIMESTAMPTZ DEFAULT NOW()
);

-- 3. HABILITAR ROW LEVEL SECURITY (RLS)
ALTER TABLE user_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE waifu_saves ENABLE ROW LEVEL SECURITY;

-- 4. POLÍTICAS DE SEGURANÇA PARA user_profiles

-- Usuário pode ver seu próprio perfil
CREATE POLICY "Users can view own profile"
ON user_profiles FOR SELECT
USING (auth.uid() = user_id);

-- Usuário pode inserir seu próprio perfil
CREATE POLICY "Users can insert own profile"
ON user_profiles FOR INSERT
WITH CHECK (auth.uid() = user_id);

-- Usuário pode atualizar seu próprio perfil
CREATE POLICY "Users can update own profile"
ON user_profiles FOR UPDATE
USING (auth.uid() = user_id)
WITH CHECK (auth.uid() = user_id);

-- Usuário pode deletar seu próprio perfil
CREATE POLICY "Users can delete own profile"
ON user_profiles FOR DELETE
USING (auth.uid() = user_id);

-- 5. POLÍTICAS DE SEGURANÇA PARA waifu_saves

-- Usuário pode ver seus próprios saves
CREATE POLICY "Users can view own saves"
ON waifu_saves FOR SELECT
USING (auth.uid() = user_id);

-- Usuário pode inserir seus próprios saves
CREATE POLICY "Users can insert own saves"
ON waifu_saves FOR INSERT
WITH CHECK (auth.uid() = user_id);

-- Usuário pode atualizar seus próprios saves
CREATE POLICY "Users can update own saves"
ON waifu_saves FOR UPDATE
USING (auth.uid() = user_id)
WITH CHECK (auth.uid() = user_id);

-- Usuário pode deletar seus próprios saves
CREATE POLICY "Users can delete own saves"
ON waifu_saves FOR DELETE
USING (auth.uid() = user_id);

-- ================================================================
-- INSTRUÇÕES:
-- ================================================================
-- 1. Copie todo este SQL
-- 2. Vá para o Supabase Dashboard do projeto: https://atageuggfgeyvdfcqckp.supabase.co
-- 3. Clique em "SQL Editor" no menu lateral
-- 4. Clique em "New Query"
-- 5. Cole o SQL e clique em "Run" (ou pressione Ctrl+Enter)
-- 6. Pronto! O banco está configurado
-- ================================================================