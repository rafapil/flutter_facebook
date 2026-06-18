<div align="center">

# Rafabook

Clone de interface do Facebook construído com Flutter, com layout responsivo, stories, feed de posts, salas (rooms) e barra de navegação personalizada.

![Flutter](https://img.shields.io/badge/Flutter-3.44%2B-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.3%2B-0175C2?logo=dart&logoColor=white)
![Platforms](https://img.shields.io/badge/Platforms-Android%20%7C%20iOS%20%7C%20Web-4CAF50)
![Version](https://img.shields.io/badge/version-1.0.0%2B1-blue)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

</div>

## Sobre o projeto

O **Rafabook** é um estudo de UI mobile inspirado no feed do Facebook. O objetivo é reproduzir os principais blocos visuais da timeline — stories, criação de posts, salas com usuários online e lista de postagens com reações — em uma aplicação Flutter leve, totalmente client-side e com dados mockados em memória.

> [!NOTE]
> Este projeto é apenas um protótipo de interface. Não há backend, autenticação real, envio de posts ou persistência de dados. Todas as informações (usuários, stories e posts) são carregadas de listas estáticas definidas em [lib/data/data.dart](lib/data/data.dart).

## Funcionalidades

- **App bar** com branding "Rafabook", busca e atalho para mensagens
- **Criação de post** com avatar do usuário, campo de texto e atalhos para Live, Foto e Sala
- **Salas (Rooms)** com lista horizontal de usuários online e gradiente da marca
- **Stories** com card "Adicionar história" e cards de amigos com avatar sobreposto
- **Feed de posts** com cabeçalho, legenda, imagem em cache, contadores e ações (Like, Comentar, Share)
- **Bottom navigation bar customizada** com indicador superior azul no item ativo
- **Responsividade** via `VisualDensity.adaptivePlatformDensity` e componentes adaptáveis

## Tecnologias e versões

| Categoria | Pacote | Versão | Uso |
|---|---|---|---|
| Framework | [Flutter](https://flutter.dev) | `>= 3.44.0` | SDK base |
| Linguagem | [Dart](https://dart.dev) | `>= 3.3.0 < 4.0.0` | SDK Dart |
| UI | `cupertino_icons` | `^1.0.8` | Ícones no estilo iOS |
| Imagens | [`cached_network_image`](https://pub.dev/packages/cached_network_image) | `^3.4.1` | Cache de imagens remotas |
| Lint (dev) | `flutter_lints` | `^5.0.0` | Regras de análise estática |
| Teste (dev) | `flutter_test` | sdk | Testes de widget |

> [!TIP]
> Para checar versões resolvidas no seu ambiente, rode `flutter pub outdated` ou abra [pubspec.lock](pubspec.lock).

## Estrutura do projeto

```
lib/
├── main.dart                     # Ponto de entrada + MaterialApp
├── config/
│   └── palette.dart              # Cores e gradientes da marca
├── data/
│   └── data.dart                 # Usuários, stories e posts (mock)
├── models/
│   ├── models.dart               # Barrel export
│   ├── post_model.dart           # Modelo Post
│   ├── story_model.dart          # Modelo Story
│   └── user_model.dart           # Modelo User
├── screens/
│   ├── screens.dart              # Barrel export
│   ├── home_screen.dart          # Tela principal (CustomScrollView)
│   └── nav_screen.dart           # Navegação inferior + TabBarView
└── widgets/
    ├── widgets.dart              # Barrel export
    ├── circle_button.dart        # Botão circular do app bar
    ├── create_post_container.dart# Bloco de criação de post
    ├── custom_tab_bar.dart       # Bottom tab bar customizada
    ├── post_container.dart       # Cartão de post completo
    ├── profile_avatar.dart       # Avatar com borda
    ├── rooms.dart                # Lista de salas online
    └── stories.dart              # Lista horizontal de stories
```

## Pré-requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) `3.44.0` ou superior
- [Dart](https://dart.dev/get-started) `3.3.0` ou superior
- Xcode (para iOS) ou Android Studio + SDK (para Android)
- Navegador moderno (para web)

Verifique seu ambiente com:

```bash
flutter doctor
```

## Como executar

```bash
# 1. Clone o repositório
git clone https://github.com/rafapil/flutter_facebook_responsive_ui.git
cd flutter_facebook_responsive_ui

# 2. Instale as dependências
flutter pub get

# 3. Rode no emulador/dispositivo conectado
flutter run

# Ou escolha uma plataforma específica
flutter run -d chrome        # Web
flutter run -d <device-id>   # Android/iOS
```

## Como testar

```bash
flutter test
```

## Build de produção

```bash
flutter build apk --release      # Android
flutter build ipa --release      # iOS
flutter build web --release      # Web
```

## Paleta de cores

As cores da marca ficam centralizadas em [lib/config/palette.dart](lib/config/palette.dart):

| Token | Hex | Onde é usado |
|---|---|---|
| `Palette.scaffold` | `#F0F2F5` | Fundo geral do app |
| `Palette.facebookBlue` | `#1777F2` | Logo, indicador e ações ativas |
| `Palette.online` | `#4BCB1F` | Status online nas salas |
| `Palette.createRoomGradient` | `#496AE1 → #CE48B1` | Botão "Criar sala" |
| `Palette.storyGradient` | transparente → preto 26% | Sombra sobre os cards de story |

## Roadmap

- [ ] Implementar layout responsivo real (mobile, tablet, desktop)
- [ ] Adicionar internacionalização (PT-BR / EN)
- [ ] Trocar dados mock por repositório com `provider` ou `riverpod`
- [ ] Integrar com API REST/GraphQL
- [ ] Testes unitários para models e widgets

## Inspiração

UI baseada no feed do Facebook. Projeto de estudo para praticar:
- `CustomScrollView` com `Slivers`
- `CachedNetworkImage` para otimização de rede
- Composição de widgets em arquivos barrel (`*.dart` exportando filhos)
- Theming centralizado em uma `Palette`

# Imagens

![](https://raw.githubusercontent.com/rafapil/Imagens/master/rafabook_001.png)
![](https://raw.githubusercontent.com/rafapil/Imagens/master/rafabook_002.png)
![](https://raw.githubusercontent.com/rafapil/Imagens/master/rafabook_003.png)

---

