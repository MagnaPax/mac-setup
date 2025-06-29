Homebrew의 `brew bundle`과 GitHub를 사용해 집과 업무용 Mac의 환경을 동기화하는 방법을 단계별로 설명하겠습니다. 이 방법은 Homebrew로 설치된 패키지, cask, Mac App Store 앱 등을 `Brewfile`로 관리하고, GitHub 저장소에 저장해 두 Mac 간 일관된 환경을 유지하는 데 효과적입니다. 사용자의 M1 Max 64GB RAM 환경과 zsh 쉘을 고려해 최적화된 가이드를 제공합니다.

---

### 1. 전반적인 흐름
- **목표**: 집과 업무용 Mac에서 동일한 소프트웨어(예: Python, Git, VSCode 등)와 설정을 유지.
- **도구**:
  - **Homebrew**: macOS 패키지 관리자, `brew bundle`로 `Brewfile` 기반 설치/관리.
  - **GitHub**: `Brewfile`을 저장소에 저장해 동기화.
- **프로세스**:
  1. 집 Mac에서 현재 설치된 패키지를 `Brewfile`로 내보내기.
  2. GitHub 저장소에 `Brewfile` 업로드.
  3. 업무용 Mac에서 저장소 클론 후 `brew bundle`로 설치.
  4. 필요 시 설정 파일(예: `.zshrc`) 동기화.

---

### 2. 사전 준비
- **Homebrew 설치** (두 Mac 모두):
  - 터미널에서:
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
  - 설치 후 PATH 설정(zsh 사용 기준):
    ```bash
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
    source ~/.zshrc
    ```
- **Git 설치**:
  - Homebrew로 최신 Git 설치:
    ```bash
    brew install git
    ```
- **GitHub 설정**:
  - GitHub 계정과 SSH 키 설정:
    ```bash
    ssh-keygen -t ed25519 -C "your_email@example.com"
    cat ~/.ssh/id_ed25519.pub
    ```
    - 공개 키를 GitHub 계정(Settings → SSH and GPG keys)에 추가.
  - Git 설정:
    ```bash
    git config --global user.name "Your Name"
    git config --global user.email "your_email@example.com"
    ```

---

### 3. 집 Mac에서 Brewfile 생성
1. **현재 설치된 패키지 내보내기**:
   - 터미널에서:
     ```bash
     brew bundle dump --file=~/Brewfile --force
     ```
   - `~/Brewfile`에 설치된 패키지, cask, Mac App Store 앱 등이 기록됨. 예:
     ```ruby
     tap "homebrew/bundle"
     tap "homebrew/cask"
     brew "python"
     brew "git"
     cask "visual-studio-code"
     mas "Slack", id: 803453959
     ```
2. **Brewfile 검토**:
   - 불필요한 패키지 삭제하거나 주석 처리(예: `# brew "unused-package"`).
   - 특정 Mac에만 필요한 패키지는 별도 파일(예: `Brewfile.home`, `Brewfile.work`)로 분리 가능.

3. **GitHub 저장소 생성**:
   - GitHub에서 새 저장소 생성(예: `mac-setup`).
   - 로컬 디렉토리 초기화:
     ```bash
     mkdir ~/mac-setup
     cd ~/mac-setup
     git init
     mv ~/Brewfile .
     git add Brewfile
     git commit -m "Add initial Brewfile"
     git remote add origin git@github.com:your-username/mac-setup.git
     git push -u origin main
     ```

---

### 4. 업무용 Mac에서 환경 복제
1. **저장소 클론**:
   ```bash
   git clone git@github.com:your-username/mac-setup.git ~/mac-setup
   cd ~/mac-setup
   ```
2. **Brewfile로 패키지 설치**:
   ```bash
   brew bundle --file=Brewfile
   ```
   - Homebrew가 `Brewfile`에 명시된 패키지, cask, 앱을 자동 설치.
   - Mac App Store 앱 설치 시 Apple ID 로그인 필요.

3. **업데이트 비활성화**(선택):
   - 설치 중 자동 업그레이드 방지:
     ```bash
     export HOMEBREW_BUNDLE_NO_UPGRADE=1
     brew bundle --file=Brewfile
     ```

---

### 5. 추가 설정 동기화 (선택)
- **zsh 설정 동기화**:
  - `.zshrc`, `.zshenv` 등을 `mac-setup` 저장소에 추가:
    ```bash
    cp ~/.zshrc ~/mac-setup/
    git add .zshrc
    git commit -m "Add zsh config"
    git push
    ```
  - 업무용 Mac에서 복제 후 심볼릭 링크:
    ```bash
    ln -sf ~/mac-setup/.zshrc ~/.zshrc
    ```
- **Ollama 설정**:
  - 이전 대화에서 사용 중인 Ollama 모델(예: `qwen2.5vl:32b`)을 동일하게 설치:
    ```bash
    ollama pull qwen2.5vl:32b-q4_K_M
    ```
  - 모델 목록을 `Brewfile`에 기록 불가, 별도 스크립트로 관리 추천:
    ```bash
    echo "ollama pull qwen2.5vl:32b-q4_K_M" >> ~/mac-setup/setup.sh
    ```

---

### 6. 고급 팁
- **환경별 Brewfile**:
  - 집/업무용 Mac에 따라 다른 패키지 필요 시:
    ```bash
    # 집 Mac
    brew bundle --file=~/mac-setup/Brewfile.home
    # 업무용 Mac
    brew bundle --file=~/mac-setup/Brewfile.work
    ```
  - 공통 패키지는 `Brewfile`, 환경별 패키지는 `Brewfile.home`/`Brewfile.work`에 분리.
- **자동화 스크립트**:
  - `setup.sh`로 설치 자동화:
    ```bash
    #!/bin/bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    brew bundle --file=~/mac-setup/Brewfile
    ollama pull qwen2.5vl:32b-q4_K_M
    ln -sf ~/mac-setup/.zshrc ~/.zshrc
    ```
  - 실행:
    ```bash
    chmod +x ~/mac-setup/setup.sh
    ~/mac-setup/setup.sh
    ```
- **GitHub Actions**:
  - CI/CD로 자동화하려면 GitHub Actions 워크플로우 추가:
    ```yaml
    name: Sync Brewfile
    on: [push]
    jobs:
      check-brewfile:
        runs-on: macos-latest
        steps:
          - uses: actions/checkout@v3
          - name: Install Homebrew
            run: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
          - name: Run brew bundle
            run: brew bundle --file=Brewfile
    ```
  - 저장소에 푸시할 때마다 `Brewfile` 유효성 검사.

---

### 7. 문제 해결
- **GitHub 연결 문제**:
  - `curl` 오류 시:
    ```bash
    export HOMEBREW_BREW_GIT_REMOTE="https://github.com/Homebrew/brew.git"
    export HOMEBREW_CORE_GIT_REMOTE="https://github.com/Homebrew/homebrew-core.git"
    ```
- **Apple Silicon 경로**:
  - M1 Max에서 Homebrew는 `/opt/homebrew`에 설치됨. PATH 확인:
    ```bash
    echo $PATH | grep /opt/homebrew
    ```
- **Mac App Store 앱**:
  - `mas` 설치 후 Apple ID로 로그인:
    ```bash
    brew install mas
    mas signin your_apple_id@example.com
    ```

---

### 8. 참고 자료
- Homebrew Bundle 문서: `brew bundle`은 `Brewfile`로 패키지 설치/관리 자동화.[](https://docs.brew.sh/Brew-Bundle-and-Brewfile)
- GitHub 동기화: `Brewfile`을 GitHub 저장소에 저장해 여러 Mac 동기화.[](https://gist.github.com/jpawlowski/5248465)
- X 게시물: `brew bundle`은 Mac의 `package.json`과 유사, Mac App Store 앱도 관리 가능.

---

### 9. 결론
- **추천 프로세스**:
  1. 집 Mac: `brew bundle dump --file=~/Brewfile --force`
  2. GitHub 저장소 생성 및 `Brewfile` 푸시.
  3. 업무용 Mac: `git clone` 후 `brew bundle --file=Brewfile`.
- **폴더 이름**: 이전 대화에서 추천한 `KinzBot` 또는 `WebCrafter` 디렉토리 내에 `mac-setup` 하위 폴더로 관리 추천.
- **확장**: `.zshrc`, Ollama 모델 등 추가 설정 동기화.

추가 질문(예: 특정 패키지 관리, Ollama 모델 동기화 등)이 있으면 알려주세요! 😊