# Gacha Waifu - Com Login

Jogo de gacha de waifus com sistema de login via Supabase, modo guest, inventário, coleção e muito mais!

## 🎮 Como Jogar

1. Abra o arquivo `Gacha Final.html` no seu navegador
2. Faça login ou crie uma conta (ou jogue como Guest)
3. Crie seu perfil com um nickname
4. Role o dado para coletar waifus!
5. Venda personagens para ganhar mais gemas
6. Complete sua coleção!

## 🗄️ Setup do Banco de Dados (Supabase)

### Passo 1: Configurar as Tabelas

1. Acesse o [Supabase Dashboard](https://supabase.com/dashboard)
2. Abra o projeto: `atageuggfgeyvdfcqckp`
3. No menu lateral, clique em **SQL Editor**
4. Clique em **New Query**
5. Copie todo o conteúdo do arquivo `database_setup.sql`
6. Cole no editor e clique em **Run** (ou pressione `Ctrl+Enter`)

### Passo 2: Verificar Configuração de Email

Certifique-se de que o Supabase Auth está configurado:

1. Vá em **Authentication** > **Providers**
2. Verifique se **Email** está habilitado
3. Em **Authentication** > **URL Configuration**, configure:
   - **Site URL**: `http://localhost` (ou a URL onde você vai hospedar)
   - **Redirect URLs**: adicione suas URLs de redirecionamento

## 📁 Estrutura do Projeto

- `Gacha Final.html` - Jogo completo (HTML + CSS + JavaScript)
- `database_setup.sql` - Script SQL para criar as tabelas no Supabase
- `README.md` - Este arquivo

## 🎯 Funcionalidades

- ✅ Sistema de login/cadastro com email e senha
- ✅ Modo Guest (salva progresso localmente)
- ✅ Sincronização em nuvem via Supabase
- ✅ Sistema de gacha com raridades (F até SECRET)
- ✅ Inventário com venda de personagens
- ✅ Coleção completa com progresso
- ✅ Avatares personalizáveis
- ✅ Troca de imagens de personagens
- ✅ Personagens personalizados
- ✅ Cheat code secreto (digite "cheat" no jogo)
- ✅ Sistema de gemas com regeneração automática

## 🔐 Segurança

O banco usa **Row Level Security (RLS)** do PostgreSQL, garantindo que cada usuário só possa acessar seus próprios dados.

## 🛠️ Tecnologias

- HTML5 / CSS3 / JavaScript (Vanilla)
- Supabase (PostgreSQL + Auth)
- AniList API (busca de imagens)
- Jikan API (MyAnimeList - busca de imagens)

## 📝 Licença

Projeto pessoal. Sinta-se livre para usar e modificar!

---

**Divirta-se colecionando waifus! 🎲✨**