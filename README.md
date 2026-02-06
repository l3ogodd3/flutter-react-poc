# flutter-react-poc

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Deploy para GitHub Pages

### Build do projeto
```bash
flutter build web --release --base-href "/flutter-react-poc/"
```

### Deploy manual
```bash
# Após o build, publique com gh-pages
cd build/web
gh-pages -d . -b gh-pages
```

### Deploy automático (Recomendado)
Crie o arquivo `.github/workflows/deploy.yml` na raiz do repositório com a configuração de GitHub Actions.

### Acessar
Após o deploy, o app estará disponível em:
https://leogodde.github.io/flutter-react-poc/

**Nota:** Os arquivos `404.html` e o script no `index.html` garantem que o roteamento do Flutter funcione corretamente no GitHub Pages.

Publicar no GitHub Pages:
flutter build web --release --base-href "/flutter-react-poc/"
