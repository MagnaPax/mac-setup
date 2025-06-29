{\rtf1\ansi\ansicpg949\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Homebrew\uc0\u51032  `brew bundle`\u44284  GitHub\u47484  \u49324 \u50857 \u54644  \u51665 \u44284  \u50629 \u47924 \u50857  Mac\u51032  \u54872 \u44221 \u51012  \u46041 \u44592 \u54868 \u54616 \u45716  \u48169 \u48277 \u51012  \u45800 \u44228 \u48324 \u47196  \u49444 \u47749 \u54616 \u44192 \u49845 \u45768 \u45796 . \u51060  \u48169 \u48277 \u51008  Homebrew\u47196  \u49444 \u52824 \u46108  \u54056 \u53412 \u51648 , cask, Mac App Store \u50545  \u46321 \u51012  `Brewfile`\u47196  \u44288 \u47532 \u54616 \u44256 , GitHub \u51200 \u51109 \u49548 \u50640  \u51200 \u51109 \u54644  \u46160  Mac \u44036  \u51068 \u44288 \u46108  \u54872 \u44221 \u51012  \u50976 \u51648 \u54616 \u45716  \u45936  \u54952 \u44284 \u51201 \u51077 \u45768 \u45796 . \u49324 \u50857 \u51088 \u51032  M1 Max 64GB RAM \u54872 \u44221 \u44284  zsh \u49752 \u51012  \u44256 \u47140 \u54644  \u52572 \u51201 \u54868 \u46108  \u44032 \u51060 \u46300 \u47484  \u51228 \u44277 \u54633 \u45768 \u45796 .\
\
---\
\
### 1. \uc0\u51204 \u48152 \u51201 \u51064  \u55120 \u47492 \
- **\uc0\u47785 \u54364 **: \u51665 \u44284  \u50629 \u47924 \u50857  Mac\u50640 \u49436  \u46041 \u51068 \u54620  \u49548 \u54532 \u53944 \u50920 \u50612 (\u50696 : Python, Git, VSCode \u46321 )\u50752  \u49444 \u51221 \u51012  \u50976 \u51648 .\
- **\uc0\u46020 \u44396 **:\
  - **Homebrew**: macOS \uc0\u54056 \u53412 \u51648  \u44288 \u47532 \u51088 , `brew bundle`\u47196  `Brewfile` \u44592 \u48152  \u49444 \u52824 /\u44288 \u47532 .\
  - **GitHub**: `Brewfile`\uc0\u51012  \u51200 \u51109 \u49548 \u50640  \u51200 \u51109 \u54644  \u46041 \u44592 \u54868 .\
- **\uc0\u54532 \u47196 \u49464 \u49828 **:\
  1. \uc0\u51665  Mac\u50640 \u49436  \u54788 \u51116  \u49444 \u52824 \u46108  \u54056 \u53412 \u51648 \u47484  `Brewfile`\u47196  \u45236 \u48372 \u45236 \u44592 .\
  2. GitHub \uc0\u51200 \u51109 \u49548 \u50640  `Brewfile` \u50629 \u47196 \u46300 .\
  3. \uc0\u50629 \u47924 \u50857  Mac\u50640 \u49436  \u51200 \u51109 \u49548  \u53364 \u47200  \u54980  `brew bundle`\u47196  \u49444 \u52824 .\
  4. \uc0\u54596 \u50836  \u49884  \u49444 \u51221  \u54028 \u51068 (\u50696 : `.zshrc`) \u46041 \u44592 \u54868 .\
\
---\
\
### 2. \uc0\u49324 \u51204  \u51456 \u48708 \
- **Homebrew \uc0\u49444 \u52824 ** (\u46160  Mac \u47784 \u46160 ):\
  - \uc0\u53552 \u48120 \u45328 \u50640 \u49436 :\
    ```bash\
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"\
    ```\
  - \uc0\u49444 \u52824  \u54980  PATH \u49444 \u51221 (zsh \u49324 \u50857  \u44592 \u51456 ):\
    ```bash\
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc\
    source ~/.zshrc\
    ```\
- **Git \uc0\u49444 \u52824 **:\
  - Homebrew\uc0\u47196  \u52572 \u49888  Git \u49444 \u52824 :\
    ```bash\
    brew install git\
    ```\
- **GitHub \uc0\u49444 \u51221 **:\
  - GitHub \uc0\u44228 \u51221 \u44284  SSH \u53412  \u49444 \u51221 :\
    ```bash\
    ssh-keygen -t ed25519 -C "your_email@example.com"\
    cat ~/.ssh/id_ed25519.pub\
    ```\
    - \uc0\u44277 \u44060  \u53412 \u47484  GitHub \u44228 \u51221 (Settings \u8594  SSH and GPG keys)\u50640  \u52628 \u44032 .\
  - Git \uc0\u49444 \u51221 :\
    ```bash\
    git config --global user.name "Your Name"\
    git config --global user.email "your_email@example.com"\
    ```\
\
---\
\
### 3. \uc0\u51665  Mac\u50640 \u49436  Brewfile \u49373 \u49457 \
1. **\uc0\u54788 \u51116  \u49444 \u52824 \u46108  \u54056 \u53412 \u51648  \u45236 \u48372 \u45236 \u44592 **:\
   - \uc0\u53552 \u48120 \u45328 \u50640 \u49436 :\
     ```bash\
     brew bundle dump --file=~/Brewfile --force\
     ```\
   - `~/Brewfile`\uc0\u50640  \u49444 \u52824 \u46108  \u54056 \u53412 \u51648 , cask, Mac App Store \u50545  \u46321 \u51060  \u44592 \u47197 \u46120 . \u50696 :\
     ```ruby\
     tap "homebrew/bundle"\
     tap "homebrew/cask"\
     brew "python"\
     brew "git"\
     cask "visual-studio-code"\
     mas "Slack", id: 803453959\
     ```\
2. **Brewfile \uc0\u44160 \u53664 **:\
   - \uc0\u48520 \u54596 \u50836 \u54620  \u54056 \u53412 \u51648  \u49325 \u51228 \u54616 \u44144 \u45208  \u51452 \u49437  \u52376 \u47532 (\u50696 : `# brew "unused-package"`).\
   - \uc0\u53945 \u51221  Mac\u50640 \u47564  \u54596 \u50836 \u54620  \u54056 \u53412 \u51648 \u45716  \u48324 \u46020  \u54028 \u51068 (\u50696 : `Brewfile.home`, `Brewfile.work`)\u47196  \u48516 \u47532  \u44032 \u45733 .\
\
3. **GitHub \uc0\u51200 \u51109 \u49548  \u49373 \u49457 **:\
   - GitHub\uc0\u50640 \u49436  \u49352  \u51200 \u51109 \u49548  \u49373 \u49457 (\u50696 : `mac-setup`).\
   - \uc0\u47196 \u52972  \u46356 \u47113 \u53664 \u47532  \u52488 \u44592 \u54868 :\
     ```bash\
     mkdir ~/mac-setup\
     cd ~/mac-setup\
     git init\
     mv ~/Brewfile .\
     git add Brewfile\
     git commit -m "Add initial Brewfile"\
     git remote add origin git@github.com:your-username/mac-setup.git\
     git push -u origin main\
     ```\
\
---\
\
### 4. \uc0\u50629 \u47924 \u50857  Mac\u50640 \u49436  \u54872 \u44221  \u48373 \u51228 \
1. **\uc0\u51200 \u51109 \u49548  \u53364 \u47200 **:\
   ```bash\
   git clone git@github.com:your-username/mac-setup.git ~/mac-setup\
   cd ~/mac-setup\
   ```\
2. **Brewfile\uc0\u47196  \u54056 \u53412 \u51648  \u49444 \u52824 **:\
   ```bash\
   brew bundle --file=Brewfile\
   ```\
   - Homebrew\uc0\u44032  `Brewfile`\u50640  \u47749 \u49884 \u46108  \u54056 \u53412 \u51648 , cask, \u50545 \u51012  \u51088 \u46041  \u49444 \u52824 .\
   - Mac App Store \uc0\u50545  \u49444 \u52824  \u49884  Apple ID \u47196 \u44536 \u51064  \u54596 \u50836 .\
\
3. **\uc0\u50629 \u45936 \u51060 \u53944  \u48708 \u54876 \u49457 \u54868 **(\u49440 \u53469 ):\
   - \uc0\u49444 \u52824  \u51473  \u51088 \u46041  \u50629 \u44536 \u47112 \u51060 \u46300  \u48169 \u51648 :\
     ```bash\
     export HOMEBREW_BUNDLE_NO_UPGRADE=1\
     brew bundle --file=Brewfile\
     ```\
\
---\
\
### 5. \uc0\u52628 \u44032  \u49444 \u51221  \u46041 \u44592 \u54868  (\u49440 \u53469 )\
- **zsh \uc0\u49444 \u51221  \u46041 \u44592 \u54868 **:\
  - `.zshrc`, `.zshenv` \uc0\u46321 \u51012  `mac-setup` \u51200 \u51109 \u49548 \u50640  \u52628 \u44032 :\
    ```bash\
    cp ~/.zshrc ~/mac-setup/\
    git add .zshrc\
    git commit -m "Add zsh config"\
    git push\
    ```\
  - \uc0\u50629 \u47924 \u50857  Mac\u50640 \u49436  \u48373 \u51228  \u54980  \u49900 \u48380 \u47533  \u47553 \u53356 :\
    ```bash\
    ln -sf ~/mac-setup/.zshrc ~/.zshrc\
    ```\
- **Ollama \uc0\u49444 \u51221 **:\
  - \uc0\u51060 \u51204  \u45824 \u54868 \u50640 \u49436  \u49324 \u50857  \u51473 \u51064  Ollama \u47784 \u45944 (\u50696 : `qwen2.5vl:32b`)\u51012  \u46041 \u51068 \u54616 \u44172  \u49444 \u52824 :\
    ```bash\
    ollama pull qwen2.5vl:32b-q4_K_M\
    ```\
  - \uc0\u47784 \u45944  \u47785 \u47197 \u51012  `Brewfile`\u50640  \u44592 \u47197  \u48520 \u44032 , \u48324 \u46020  \u49828 \u53356 \u47549 \u53944 \u47196  \u44288 \u47532  \u52628 \u52380 :\
    ```bash\
    echo "ollama pull qwen2.5vl:32b-q4_K_M" >> ~/mac-setup/setup.sh\
    ```\
\
---\
\
### 6. \uc0\u44256 \u44553  \u54017 \
- **\uc0\u54872 \u44221 \u48324  Brewfile**:\
  - \uc0\u51665 /\u50629 \u47924 \u50857  Mac\u50640  \u46384 \u46972  \u45796 \u47480  \u54056 \u53412 \u51648  \u54596 \u50836  \u49884 :\
    ```bash\
    # \uc0\u51665  Mac\
    brew bundle --file=~/mac-setup/Brewfile.home\
    # \uc0\u50629 \u47924 \u50857  Mac\
    brew bundle --file=~/mac-setup/Brewfile.work\
    ```\
  - \uc0\u44277 \u53685  \u54056 \u53412 \u51648 \u45716  `Brewfile`, \u54872 \u44221 \u48324  \u54056 \u53412 \u51648 \u45716  `Brewfile.home`/`Brewfile.work`\u50640  \u48516 \u47532 .\
- **\uc0\u51088 \u46041 \u54868  \u49828 \u53356 \u47549 \u53944 **:\
  - `setup.sh`\uc0\u47196  \u49444 \u52824  \u51088 \u46041 \u54868 :\
    ```bash\
    #!/bin/bash\
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"\
    eval "$(/opt/homebrew/bin/brew shellenv)"\
    brew bundle --file=~/mac-setup/Brewfile\
    ollama pull qwen2.5vl:32b-q4_K_M\
    ln -sf ~/mac-setup/.zshrc ~/.zshrc\
    ```\
  - \uc0\u49892 \u54665 :\
    ```bash\
    chmod +x ~/mac-setup/setup.sh\
    ~/mac-setup/setup.sh\
    ```\
- **GitHub Actions**:\
  - CI/CD\uc0\u47196  \u51088 \u46041 \u54868 \u54616 \u47140 \u47732  GitHub Actions \u50892 \u53356 \u54540 \u47196 \u50864  \u52628 \u44032 :\
    ```yaml\
    name: Sync Brewfile\
    on: [push]\
    jobs:\
      check-brewfile:\
        runs-on: macos-latest\
        steps:\
          - uses: actions/checkout@v3\
          - name: Install Homebrew\
            run: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"\
          - name: Run brew bundle\
            run: brew bundle --file=Brewfile\
    ```\
  - \uc0\u51200 \u51109 \u49548 \u50640  \u54392 \u49884 \u54624  \u46412 \u47560 \u45796  `Brewfile` \u50976 \u54952 \u49457  \u44160 \u49324 .\
\
---\
\
### 7. \uc0\u47928 \u51228  \u54644 \u44208 \
- **GitHub \uc0\u50672 \u44208  \u47928 \u51228 **:\
  - `curl` \uc0\u50724 \u47448  \u49884 :\
    ```bash\
    export HOMEBREW_BREW_GIT_REMOTE="https://github.com/Homebrew/brew.git"\
    export HOMEBREW_CORE_GIT_REMOTE="https://github.com/Homebrew/homebrew-core.git"\
    ```\
- **Apple Silicon \uc0\u44221 \u47196 **:\
  - M1 Max\uc0\u50640 \u49436  Homebrew\u45716  `/opt/homebrew`\u50640  \u49444 \u52824 \u46120 . PATH \u54869 \u51064 :\
    ```bash\
    echo $PATH | grep /opt/homebrew\
    ```\
- **Mac App Store \uc0\u50545 **:\
  - `mas` \uc0\u49444 \u52824  \u54980  Apple ID\u47196  \u47196 \u44536 \u51064 :\
    ```bash\
    brew install mas\
    mas signin your_apple_id@example.com\
    ```\
\
---\
\
### 8. \uc0\u52280 \u44256  \u51088 \u47308 \
- Homebrew Bundle \uc0\u47928 \u49436 : `brew bundle`\u51008  `Brewfile`\u47196  \u54056 \u53412 \u51648  \u49444 \u52824 /\u44288 \u47532  \u51088 \u46041 \u54868 .[](https://docs.brew.sh/Brew-Bundle-and-Brewfile)\
- GitHub \uc0\u46041 \u44592 \u54868 : `Brewfile`\u51012  GitHub \u51200 \u51109 \u49548 \u50640  \u51200 \u51109 \u54644  \u50668 \u47084  Mac \u46041 \u44592 \u54868 .[](https://gist.github.com/jpawlowski/5248465)\
- X \uc0\u44172 \u49884 \u47932 : `brew bundle`\u51008  Mac\u51032  `package.json`\u44284  \u50976 \u49324 , Mac App Store \u50545 \u46020  \u44288 \u47532  \u44032 \u45733 .\
\
---\
\
### 9. \uc0\u44208 \u47200 \
- **\uc0\u52628 \u52380  \u54532 \u47196 \u49464 \u49828 **:\
  1. \uc0\u51665  Mac: `brew bundle dump --file=~/Brewfile --force`\
  2. GitHub \uc0\u51200 \u51109 \u49548  \u49373 \u49457  \u48143  `Brewfile` \u54392 \u49884 .\
  3. \uc0\u50629 \u47924 \u50857  Mac: `git clone` \u54980  `brew bundle --file=Brewfile`.\
- **\uc0\u54260 \u45908  \u51060 \u47492 **: \u51060 \u51204  \u45824 \u54868 \u50640 \u49436  \u52628 \u52380 \u54620  `KinzBot` \u46608 \u45716  `WebCrafter` \u46356 \u47113 \u53664 \u47532  \u45236 \u50640  `mac-setup` \u54616 \u50948  \u54260 \u45908 \u47196  \u44288 \u47532  \u52628 \u52380 .\
- **\uc0\u54869 \u51109 **: `.zshrc`, Ollama \u47784 \u45944  \u46321  \u52628 \u44032  \u49444 \u51221  \u46041 \u44592 \u54868 .\
\
\uc0\u52628 \u44032  \u51656 \u47928 (\u50696 : \u53945 \u51221  \u54056 \u53412 \u51648  \u44288 \u47532 , Ollama \u47784 \u45944  \u46041 \u44592 \u54868  \u46321 )\u51060  \u51080 \u51004 \u47732  \u50508 \u47140 \u51452 \u49464 \u50836 ! \u55357 \u56842 }