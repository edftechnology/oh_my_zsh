# Como configurar/instalar/usar o `oh-my-zsh` no `Linux Ubuntu`

## Resumo

Neste documento estão contidos os principais comandos para configurar/instalar/usar o `oh-my-zsh` no `Linux Ubuntu`.

## _Abstract_

_This document contains the main commands for configuring/installing/use `oh-my-zsh` on `Linux Ubuntu`._

## Descrição

### `shell`

Um `shell` é uma Interface de Linha de Comando (_Command Line Interface, CLI_) que permite aos usuários interagirem com um sistema operacional por meio de comandos de texto. Ele interpreta os comandos inseridos pelo usuário e os executa, facilitando a manipulação de arquivos, a execução de programas e outras tarefas do sistema. Além disso, os shells também oferecem recursos avançados, como redirecionamento de entrada e saída, expansão de comandos e controle de processos. Exemplos comuns incluem o `Bash`, o `Zsh` e o `PowerShell`.


### `bash`

`Bash`, ou `Bourne Again Shell`, é um `shell` de linha de comando amplamente utilizado em sistemas operacionais Unix e `Linux`. Ele oferece uma variedade de recursos, como expansão de comandos, redirecionamento de entrada/saída, _scripts_ de `shell` e controle de processos. O `Bash` é altamente personalizável e suporta automação de tarefas por meio de _scripts_, tornando-o uma ferramenta poderosa para usuários avançados e administradores de sistemas. Sua sintaxe simples e intuitiva o torna acessível para iniciantes, enquanto sua flexibilidade e extensibilidade o tornam uma escolha popular entre profissionais de TI.


### `zsh`

O `oh-my-zsh`, ou `Z Shell`, é um interpretador de `shell` de código aberto e uma alternativa avançada ao `bash` (`Bourne Again Shell`), que é comumente usado em sistemas Unix e Linux. O `oh-my-zsh` oferece uma série de recursos avançados, como autocompletamento poderoso, histórico de comandos expandido, personalização flexível da aparência e do comportamento do `shell`, além de suporte a plugins e temas. Sua interface de linha de comando aprimorada e recursos de automação tornam-no uma escolha popular entre desenvolvedores, administradores de sistema e entusiastas de `Terminal Emulator` que desejam uma experiência de linha de comando mais produtiva e personalizável. O `oh-my-zsh` é altamente configurável e pode ser estendido por meio de plugins, tornando-o uma ferramenta versátil para trabalhar com eficiência no ambiente `Unix` e `Linux`.


### `oh-my-zsh`

`Oh-my-zsh` é um _framework_ de código aberto para gerenciar a configuração do _shell_ `Zsh`, fornecendo um conjunto de plugins, temas e ferramentas para aprimorar a experiência do usuário. Ele simplifica a personalização do ambiente de linha de comando, oferecendo recursos como autocompletar, atalhos de teclado e sugestões contextuais, aumentando a produtividade e a eficiência dos usuários. Com uma comunidade ativa e uma grande variedade de extensões disponíveis, o `Oh-my-zsh` é amplamente utilizado por desenvolvedores e usuários avançados para customizar e otimizar o ambiente de `Terminal Emulator`.


### `powerlevel10k`

O `Powerlevel10k` é um tema altamente configurável para o `Terminal Emulator` `Zsh`, conhecido por sua velocidade e eficiência. Ele oferece uma experiência personalizável ao usuário, com uma configuração inicial rápida e opções avançadas para ajustar o estilo e os elementos exibidos no _prompt_ de comando. O `Powerlevel10`k suporta ícones, diferentes estilos de _prompt_, exibição de informações contextuais e é projetado para ser rápido mesmo em ambientes com muitos _plugins_ e configurações adicionais.


### `zinit`

O `Zinit` é um gerenciador de plugins e temas para o `Zsh`, projetado para simplificar e otimizar o processo de personalização do ambiente de linha de comando. Com recursos avançados de carregamento assíncrono, ele oferece uma inicialização rápida do shell, permitindo aos usuários instalar e atualizar facilmente extensões, temas e utilitários adicionais. Além disso, o `Zinit` suporta a configuração flexível de plugins, garantindo compatibilidade com diferentes workflows e necessidades de desenvolvimento. Com uma sintaxe intuitiva e uma vasta biblioteca de extensões disponíveis, o `Zinit` é uma ferramenta poderosa para aumentar a produtividade e a eficiência dos usuários do Zsh.


### `zsh-completions`

O `zsh-completions` é um _plugin_ para o `shell` `zsh` que sugere automaticamente comandos com base no histórico de entrada do usuário. Ele funciona destacando uma sugestão na linha de comando, baseada no que o usuário começou a digitar, facilitando a reutilização de comandos anteriores de maneira eficiente. Isso não apenas economiza tempo, mas também reduz erros ao lembrar comandos frequentemente usados.


### `zsh-completions`

O `zsh-completions` é um conjunto de _scripts_ de conclusão automática para o `shell` `zsh`, projetado para melhorar a experiência do usuário ao fornecer conclusões detalhadas e precisas para comandos, argumentos de comandos e opções. Ele amplia significativamente a funcionalidade do `shell` `zsh`, permitindo que os usuários completem rapidamente comandos complexos e evitem erros de sintaxe, aumentando assim a eficiência na linha de comando.


### `fast-syntax-highlighting`

O `fast-syntax-highlighting` é um _plugin_ para o `shell` `fish` que oferece realce de sintaxe rápido e responsivo para comandos e scripts. Ele melhora a experiência do usuário ao proporcionar cores distintas para diferentes elementos de linguagem, facilitando a leitura e a compreensão de código diretamente no `Terminal Emulator`. Essa funcionalidade ajuda os usuários a identificar erros de sintaxe mais rapidamente e a escrever scripts de forma mais eficiente no `shell` `fish`.


## 1. Como configurar/instalar/usar o `oh-my-zsh` no `Linux Ubuntu` [1][3]

Para configurar/instalar/usar o `oh-my-zsh` no `Linux Ubuntu`, você pode seguir estes passos:

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. Certifique-se de que seu sistema esteja limpo e atualizado.

    2.1 Limpar o `cache` do gerenciador de pacotes `apt`. Especificamente, ele remove todos os arquivos de pacotes (`.deb`) baixados pelo `apt` e armazenados em `/var/cache/apt/archives/`. Digite o seguinte comando:
    ```bash
    sudo apt clean
    ```

    2.2 Remover pacotes `.deb` antigos ou duplicados do `cache` local. É útil para liberar espaço, pois remove apenas os pacotes que não podem mais ser baixados (ou seja, versões antigas de pacotes que foram atualizados). Digite o seguinte comando:
    ```bash
    sudo apt autoclean
    ```

    2.3 Remover pacotes que foram automaticamente instalados para satisfazer as dependências de outros pacotes e que não são mais necessários. Digite o seguinte comando:
    ```bash
    sudo apt autoremove -y
    ```

    2.4 Buscar as atualizações disponíveis para os pacotes que estão instalados em seu sistema. Digite o seguinte comando e pressione `Enter`:
    ```bash
    sudo apt update
    ```

    2.5 **Corrigir pacotes quebrados**: Isso atualizará a lista de pacotes disponíveis e tentará corrigir pacotes quebrados ou com dependências ausentes:
    ```bash
    sudo apt --fix-broken install
    ```

    2.6 Limpar o `cache` do gerenciador de pacotes `apt` novamente:
    ```bash
    sudo apt clean
    ```

    2.7 Para ver a lista de pacotes a serem atualizados, digite o seguinte comando e pressione `Enter`:
    ```bash
    sudo apt list --upgradable
    ```

    2.8 Realmente atualizar os pacotes instalados para as suas versões mais recentes, com base na última vez que você executou `sudo apt update`. Digite o seguinte comando e pressione `Enter`:
    ```bash
    sudo apt full-upgrade -y
    ```

### 1.1 Configurar/Instalar/Usar o `oh-my-zsh`

Para configurar/instalar/usar o `oh-my-zsh` em um sistema `Linux Ubuntu`, você pode seguir estes passos:

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. **Primeiro, instalar o `oh-my-zsh` com o comando**:

    **ATENÇÃO**: É necessário instalar o `zsh` antes do `oh-my-zsh`:

    ```bash
    sudo apt install zsh -y
    ```

3. **Instalar os pacotes `curl` e `git`**:

    ```bash
    sudo apt install curl git -y
    ```

4. **Instalar o `oh-my-zsh`**:

    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

    **OBSERVAÇÂO(ÕES)**: O diretório para a(s) pasta(s) ou arquivo(s) é indicado a seguir, conferir se no diretório se a(s) pasta(s) e/ou o(s) arquivo(s) existe(m), se não, copiar da pasta `docs` para o diretório:
    
    ```bash
    ls -alF $HOME/ | grep "oh-my-zsh"
    ```

    Você pode usar o código a seguir para copiar a pasta ou o arquivo para o diretório:
    
    ```bash
    sudo cp -R $HOME/Documents/Downloads/unix/ubuntu/zsh/oh_my_zsh/docs/.oh-my-zsh/* $HOME/.oh-my-zsh/
    ```
    

### 1.2 Configurar o `zsh` como seu `shell` padrão

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. **Configurar o `zsh` como seu `shell` Padrão:** Para configurar o `zsh` como seu `shell` padrão, use (**NÃO** colocar o `sudo`!):

    ```bash
    chsh -s $(which zsh)
    ```

3. Você precisará fazer _logout_ e _login_ novamente para que a mudança tenha efeito:

    ```bash
    sudo reboot
    ```


### 1.3 Código completo para configurar/instalar/usar

Para configurar/instalar/usar o `oh-my-zsh` no `Linux Ubuntu` sem precisar digitar linha por linha, você pode seguir estas etapas:

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. Digite o seguinte comando e pressione `Enter`:

    ```bash
    sudo apt clean
    sudo apt autoclean
    sudo apt autoremove -y
    sudo apt update
    sudo apt --fix-broken install
    sudo apt clean
    sudo apt list --upgradable
    sudo apt full-upgrade -y
    sudo apt install zsh -y
    sudo apt install curl git -y
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    chsh -s $(which zsh)
    sudo reboot
    ```


### 2. Configurar/Instalar/Usar o `zinit`

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. **Instalar o `zinit`**:

    ```bash
    bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
    ```

    **OBSERVAÇÂO(ÕES)**: O diretório para a(s) pasta(s) ou arquivo(s) é indicado a seguir, conferir se no diretório se a(s) pasta(s) e/ou o(s) arquivo(s) existe(m), se não, copiar da pasta `docs` para o diretório:
    
    ```bash
    ls -alF $HOME/.local/share/ | grep "zinit"
    ```

    Você pode usar o código a seguir para copiar a pasta ou o arquivo para o diretório:
    
    ```bash
    sudo cp -R $HOME/Documents/Downloads/unix/ubuntu/zsh/oh_my_zsh/docs/zinit/* $HOME/.local/share/zinit/
    ```
    
3. **Abrir o arquivo `~/.zshrc`**:

    ```bash
    sudo nano ~/.zshrc
    ```

4. **Editar o arquivo `~/.zshrc`**: Execute o comando abaixo para inserir as linhas no final do arquivo `~/.zshrc`:

    ```bash
    echo -e "\n# Plugins via Zinit" >> ~/.zshrc
    echo "zinit light zdharma-continuum/fast-syntax-highlighting" >> ~/.zshrc
    echo "zinit light zsh-users/zsh-autosuggestions" >> ~/.zshrc
    echo "zinit light zsh-users/zsh-completions" >> ~/.zshrc
    ```

    **OBSERVAÇÂO(ÕES)**: O diretório para a(s) pasta(s) ou arquivo(s) é indicado a seguir, conferir se no diretório se a(s) pasta(s) e/ou o(s) arquivo(s) existe(m), se não, copiar da pasta `docs` para o diretório:
    
    ```bash
    ls -alF $HOME/.local/share/zinit/plugins/ 
    ```

    Segue a lista de arquivos que a pasta deve possuir:

    - `_local---zinit`
    - `zdharma-continuum---fast-syntax-highlighting`
    - `zdharma-continuum---zinit-annex-as-monitor`
    - `zdharma-continuum---zinit-annex-bin-gem-node`
    - `zdharma-continuum---zinit-annex-patch-dl`
    - `zdharma-continuum---zinit-annex-rust`
    - `zdharma---fast-syntax-highlighting`
    - `zsh-users---zsh-autosuggestions`
    - `zsh-users---zsh-completions`

    Você pode usar o código a seguir para copiar a pasta ou o arquivo para o diretório, caso os arquivos não existam na pasta:
    
    ```bash
    cp -R $HOME/Documents/Downloads/unix/ubuntu/zsh/oh_my_zsh/docs/zinit/ $HOME/.local/share/zinit/
    ```

5. Fechar o `Terminal Emulator` e abrir novamente


### 3. Configurar/Instalar/Usar a fonte `fira code`

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. **Criar diretório**:

    ```bash
    mkdir ~/.fonts
    ```

3. **Baixar fonte**:

    ```bash
    wget -P ~/.fonts 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/BitstreamVeraSansMono.zip'
    ``` 

4. **Descompactar fonte**:

    ```bash
    unzip ~/.fonts/BitstreamVeraSansMono.zip -d ~/.fonts
    ```

    **OBSERVAÇÂO(ÕES)**: O diretório para a(s) pasta(s) ou arquivo(s) é indicado a seguir, conferir se no diretório se a(s) pasta(s) e/ou o(s) arquivo(s) existe(m), se não, copiar da pasta `docs` para o diretório:
    
    ```bash
    ls -alF ~/.fonts | grep "Bitstream"
    ```

    Você pode usar o código a seguir para copiar a pasta ou o arquivo para o diretório:
    
    ```bash
    sudo cp -R $HOME/Documents/Downloads/unix/ubuntu/oh_my_zsh/docs/.fonts/ $HOME/.fonts/
    ``` 

5. **Instalar a fonte `firacode`**:

    ```bash
    sudo apt install fonts-firacode -y
    ```

6. Fechar o `Terminal Emulator` e abrir novamente

7. Clicar na aba: `Edit`

8. Clicar em `Preferences...`

9. No campo `Font` clicar na fonte e alterar para `Fira Code Regular`


### 4. Configurar/Instalar/Usar o tema `powerlevel10k`

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. **Instalar o tema `powerlevel10k`**:

    ```bash
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
    ```

    **OBSERVAÇÂO(ÕES)**: O diretório para a(s) pasta(s) ou arquivo(s) é indicado a seguir, conferir se no diretório se a(s) pasta(s) e/ou o(s) arquivo(s) existe(m), se não, copiar da pasta `docs` para o diretório:
    
    ```bash
    ls -alF $HOME/.oh-my-zsh/themes/
    ls -alF ~/ | grep "powerlevel10k"
    ```

    1.1 Copiar a pasta também para o diretório:
    
    ```bash
    ls -alF $HOME/
    ```

    Você pode usar o código a seguir para copiar a pasta ou o arquivo para o diretório:
    
    ```bash
    sudo cp -R $HOME/.oh-my-zsh/themes/* $HOME/.oh-my-zsh/themes/
    sudo cp -R $HOME/Documents/Downloads/unix/ubuntu/oh_my_zsh/docs/powerlevel10k/* $HOME/powerlevel10k/
    ```

3. **Inserir o `powerlever10k` no arquivo de configuração do `zshrc`**:

    ```bash
    echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
    ```

4. **Abrir o arquivo `~/.zshrc`**:

    ```bash
    sudo nano ~/.zshrc
    ```

5. **Editar o arquivo `~/.zshrc` alterar a linha, como segue**:

    ```bash
    ZSH_THEME="powerlevel10k/powerlevel10k"
    ```

6. Fechar o `Terminal Emulator` e abrir novamente


#### 4.1 Copiar demais arquivos antes de configurar o `powerlevel10k`

1. **Copiar o(s) arquivo(s) de configuração**:

    Segue a lista de arquivos a serem copiados:

    - `.p10k.zsh`
    - `.zsh_history`
    - `.zshrc.pre-oh-my-zsh`
    - `.zshrc` (**CUIDADO**: Embora o código abaixo irá criar um arquivo de _backup_, se atentar para não perder informações importantes do seu arquivo `~/.zshrc`, caso já tenha configurado)
       
    **OBSERVAÇÂO(ÕES)**: O diretório para a(s) pasta(s) ou arquivo(s) é indicado a seguir, conferir se no diretório se a(s) pasta(s) e/ou o(s) arquivo(s) existe(m), se não, copiar da pasta `docs` para o diretório:
    
    ```bash
    ls -alF $HOME/ | grep ".p10k.zsh"
    ls -alF $HOME/ | grep ".zsh_history"
    ls -alF $HOME/ | grep ".zshrc.pre-oh-my-zsh"
    ls -alF $HOME/ | grep ".zshrc"
    ```

    Você pode usar o código a seguir para copiar a pasta ou o arquivo para o diretório:
    
    ```bash
    # REALIZAR BACKUP DOS ARQUIVOS EXISTENTES:

    # Define a variável com a data e hora atual
    timestamp=$(date +"_backup_%m_%d_%Y_%H_%M_%S")

    # Copiar os arquivos de configuração adicionando o timestamp ao nome do arquivo
    cp $HOME/.p10k.zsh $HOME/.p10k.zsh$timestamp
    cp $HOME/.zsh_history $HOME/.zsh_history$timestamp
    cp $HOME/.zshrc.pre-oh-my-zsh $HOME/.zshrc.pre-oh-my-zsh$timestamp
    cp $HOME/.zshrc $HOME/.zshrc_linux_ubuntu$timestamp

    # COPIAR OS NOVOS ARQUIVOS:
    sudo cp -R $HOME/Documents/Downloads/unix/ubuntu/oh_my_zsh/docs/.p10k.zsh $HOME/
    sudo cp -R $HOME/Documents/Downloads/unix/ubuntu/oh_my_zsh/docs/.zsh_history $HOME/
    sudo cp -R $HOME/Documents/Downloads/unix/ubuntu/oh_my_zsh/docs/.zshrc.pre-oh-my-zsh $HOME/
    # **CUIDADO**: Embora o código abaixo irá criar um arquivo de _backup_, se atentar para não perder informações importantes do seu arquivo `~/.zshrc`, caso já tenha configurado
    # sudo cp -R $HOME/Documents/Downloads/unix/ubuntu/oh_my_zsh/docs/.zshrc $HOME/
    ```

#### 4.2 Configurar o `powerlevel10k`

1. Confirmar os símbolos que estiver vendo para que a configuração reconheca e configure corretamente.

2. Em `Does this look like a diamond (rotated square)? reference: https://graphemica.com/%E2%97%86 --->    <---` escolha a opção: `(y) Yes`

3. Em `Does this look like a lock? reference: https://fontawesome.com/icons/lock --->    <---` escolha a opção: `(y) Yes`

4. Em `Does this look like an upwards arrow? reference: https://graphemica.com/%F0%9F%A0%89 --->  󰜷  <---` escolha a opção: `(y) Yes`

5. Em `What digit is the downwards arrow pointing at? 󰜴 󰜴 󰜴 󰜮 111222` escolha a opção: `(1)  It is pointing at '1'.`

6. Em `Do all these icons fit between the crosses? --->  XXXXXXXXX  <--` escolha a opção: `(y)  Yes. Icons are very close to the crosses but there is no overlap.`

7. Em `Prompt Style` escolha a opção:  `(3) Rainbow.`

8. Em `Character Set` escolha a opção:  `(1) Unicode.`

9. Em `Show current time?` escolha a opção:  `(2) 24-hour format.`

10. Em `Prompt Separators` escolha a opção:  `(1) Angled.`

11. Em `Prompt Heads` escolha a opção:  `(3) Sharp.`

12. Em `Prompt Tails` escolha a opção:  `(2) Bluerred.`

13. Em `Prompt Height` escolha a opção:  `(2) Two lines.`

14. Em `Prompt Connection` escolha a opção:  `(3) Solid.`

15. Em `Prompt Frame` escolha a opção:  `(2) Left.`

16. Em `Connection & Frame Color` escolha a opção:  `(1) Lightest.`

17. Em `Prompt Spacing` escolha a opção:  `(2) Sparse.`

18. Em `Icons` escolha a opção:  `(2) Many icons.`

19. Em `Prompt Flow` escolha a opção:  `(2) Fluent.`

20. Em `Enable Transient Prompt` escolha a opção:  `(n) No.`

21. Em `Instant Prompt Mode` escolha a opção:  `(1) Verbose (recommended).`

22. Em `Apply changes to ~/.zshrc` escolha a opção:  `(y) Yes (recommended).`


### 4.3 Ajustes

#### 4.3.1 Ajustar as cores do `Terminal Emulator`

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. No `Terminal Emulator`, na barra de ferramentas, clicar em: `Edit`

3. Clique em: `Preferences`

4. Clique na aba `Appearence`

    4.1 Em `Background` altere a opção para `Transparent background`

    4.2 Em `Opacity` coloque em `0.85`

5. Clique na aba `Colors`

    4.1 Em `Presets` selecione `Tango`

6. Em `General`, em `Text color:` selecione a cor `Dourada` para que fique visível.


### 4.4 Reconfigurar o `powerlevel10k`

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. Para reconfigurar o `Powerlevel10k` no `Zsh`, você pode executar o comando de configuração fornecido pelo próprio tema. Abra o `Terminal Emulator` e digite o seguinte:

    ```bash
    p10k configure
    ```

Isso iniciará o assistente de configuração do `Powerlevel10k`, onde você poderá escolher várias opções para personalizar o visual e o comportamento do seu `prompt` de comando. Se você tiver algum arquivo de configuração anterior, como `~/.p10k.zsh`, o assistente pode usar essas configurações como base ou você pode começar uma nova configuração do zero.

### 4.5 Desativação seletiva do status `Git` no _prompt_ dentro de `~/Documents`

Para otimização do `Zsh`/`Powerlevel10k` para `mount` em `~/Documents` e redução de travamentos do 
`Terminal Emulator` em `mount FUSE` com `Powerlevel10k`

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. O que pode pesar no caso de `mount` é o segmento `vcs` do `powerlevel10k`, que usa `gitstatus` 
para recalcular o estado do repositório a cada `redraw` do _prompt_. Dentro de um `mount FUSE` isso 
é exatamente o tipo de acesso pequeno e frequente que pode “segurar” o `Terminal Emulator` quando a
rede oscila. A boa notícia é que o próprio `powerlevel10k` já tem uma chave nativa para isso.
No seu arquivo `~/.p10k.zsh` deve haver:

    ```bash
    # For example, if set to '~', the Git repository at $HOME/.git will be ignored.
    # Multiple patterns can be combined with '|': '~(|/foo)|/bar/baz/*'.
    typeset -g POWERLEVEL9K_VCS_DISABLED_WORKDIR_PATTERN='~'
    ```

    Logo, altere para:

    ```bash
    # Keep Git status everywhere else, but skip the mounted tree under ~/Documents.
    # This avoids prompt redraws from touching the rclone FUSE mount on every command.
    typeset -g POWERLEVEL9K_VCS_DISABLED_WORKDIR_PATTERN='~|~/Documents(|/*)'
    ```

    Efeito prático:

    - fora de `~/Documents`, nada muda: `branch`, `dirty state`, `untracked` etc. continuam no _prompt_
    - em `~/Documents` e qualquer subdiretório do `mount`, o _prompt_ para de consultar `git`
    - seus repositórios continuam existindo, sincronizando e funcionando normalmente; só o _prompt_ 
    deixa de inspecioná-los automaticamente ali

    Isso é melhor do que desativar `git` globalmente, porque ataca só a área problemática: o `tree` 
    montado, por exemplo, pelo `rclone`.

3. Para ativar na sessão atual sem abrir outro `Terminal Emulator`:

    ```bash
    source ~/.p10k.zsh
    ```

## 5. Mudar o seu `shell` de volta para o `bash` (ou outro `shell` de sua preferência) com o comando

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. Finalmente, mude o seu `shell` de volta para o `bash` (ou outro `shell` de sua preferência) com o comando:

    ```bash
    sudo chsh -s /bin/bash
    ```

    Você precisará fechar a sessão e logar novamente para que a alteração tenha efeito.

3. **Iniciar o `bash` Manualmente:** Caso **NÃO** funcione, como solução temporária, você pode iniciar o `bash` manualmente em um `Terminal Emulator` do `oh-my-zsh`, simplesmente digitando bash. Isso não muda seu `shell` padrão, mas inicia uma sessão do `bash` naquele `Terminal Emulator` específico.


## 6. Alterar a opacidade/transparência do `Terminal Emulator`

A referência específica à transparência padrão do `Terminal Emulator` no `Kali Linux` não é mencionada diretamente nas fontes. No entanto, uma prática comum é definir a transparência do painel do `Terminal Emulator` para cerca de `5%`, para dar uma aparência estilizada, como mencionado em um guia de personalização do ambiente de desktop `xfce` no `Kali Linux​​`. Isso indica que a transparência padrão pode ser definida para um valor baixo ou até mesmo desativada por padrão, com a opção de ajuste conforme a preferência do usuário.

No entanto, se você deseja ajustar ou verificar a transparência do seu `Terminal Emulator` no `Kali Linux`, você geralmente pode fazer isso através das preferências do próprio `Terminal Emulator`. Por exemplo, no GNOME Terminal, você pode seguir estes passos:

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. Clique com o botão direito dentro do `Terminal Emulator` e selecione `“Preferences”` ou `“Profile Preferences”`.

3. Na aba `“Appearance”`, você encontrará um controle deslizante para ajustar a opacidade/transparência do fundo do `Terminal Emulator`.

É importante observar que essas configurações podem variar dependendo do emulador de `Terminal Emulator` que você está usando. Além disso, a capacidade de ajustar a transparência pode depender de outros fatores do sistema, como os efeitos gráficos habilitados no seu ambiente de desktop.

## 7. Adicionar o ícone da cobra (`Python`) no _prompt_ do tema `Powerlevel10k` em `zsh` 

Para adicionar o ícone da cobra (`Python`) no _prompt_ do tema `Powerlevel10k` em `zsh`, você precisa configurar o segmento do ambiente `Python` (como o `pyenv`, `virtualenv`, `anaconda` etc.) para incluir um ícone. Aqui estão os passos gerais:

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. **Acesse o Arquivo de Configuração**: Abra o arquivo `~/.p10k.zsh` em um editor de texto. Esse arquivo é gerado pelo `Powerlevel10k` quando você configura o tema pela primeira vez com `p10k configure`. Execute o comando:

    ```bash
    sudo nano ~/.p10k.zsh
    ```

3. **Localize o Segmento de Configuração Python**: Procure a seção que configura o ambiente `Python` que você está usando. Por exemplo, se você estiver usando `virtualenv`, procure por configurações que começam com `POWERLEVEL9K_VIRTUALENV_`.

4. **Adicionar ou modificar o ícone**: Adicione ou altere a linha que define o ícone. Por exemplo, para `virtualenv`, você pode adicionar:

    ```bash
    typeset -g POWERLEVEL9K_VIRTUALENV_VISUAL_IDENTIFIER_EXPANSION='🐍'
    ```

    Isso definirá o ícone da cobra para o ambiente virtual `Python`.

5. **Aplicar as mudanças**: Depois de fazer as alterações, salve o arquivo e reinicie o `Terminal Emulator` ou recarregue sua configuração com:

    ```bash
    source ~/.zshrc
    ```

6. Reinicie o computador:

    ```bash
    sudo reboot
    ```

Se o ícone da cobra não aparecer após essas configurações, certifique-se de que seu `Terminal Emulator` suporta emojis e que as configurações do `Powerlevel10k` estão corretas para exibir ícones.


## 8. Desinstalar o `oh-my-zsh`

Para desinstalar completamente o `oh-my-zsh` no `Linux Ubuntu`, você precisa seguir algumas etapas. Primeiro, é importante remover o pacote `oh-my-zsh` em si e, em seguida, alterar o `shell` padrão para o usuário de volta ao `shell` anterior (geralmente `bash`), caso o `oh-my-zsh` tenha sido configurado como o `shell` padrão. Aqui estão as etapas detalhadas:

1. **Abra o `Terminal Emulator`:** Você pode fazer isso pressionando no `Linux Ubuntu`:

    ```bash
    Ctrl + Alt + T
    ```

2. Verifique se o `oh-my-zsh` é o `shell` atual: Antes de desinstalar o `oh-my-zsh`, é uma boa ideia verificar se ele está configurado como o `shell` padrão para o seu usuário. Execute:

    ```bash
    echo $SHELL
    ```

3. Se o resultado for algo como `/usr/bin/zsh` ou similar, significa que `oh-my-zsh` é o seu `shell` atual.

4. Troque o `shell` padrão para bash (ou outro `shell` de sua preferência): Se `oh-my-zsh` é o seu `shell` atual, você precisa mudá-lo antes de desinstalar o `oh-my-zsh`. Para mudar para `bash`, por exemplo, use:

    ```bash
    chsh -s /bin/bash
    ```

5. Você precisará sair e entrar novamente na sua sessão para que a alteração tenha efeito.

6. **Desinstale o `oh-my-zsh`:** Agora, para desinstalar o `oh-my-zsh`, use o comando `apt` com privilégios de administrador:

    ```bash
    sudo apt remove --purge zsh
    ```

7. Este comando remove o `oh-my-zsh` e qualquer configuração personalizada que você possa ter feito.

8. **Limpe os pacotes não mais necessários:** Após a desinstalação, é uma boa prática remover pacotes que foram automaticamente instalados para satisfazer as dependências de outros pacotes e que não são mais necessários:

    ```bash
    sudo apt autoremove
    ```

9. **Opcional - Remova manualmente qualquer arquivo de configuração residuais:** Se você quiser garantir que todas as configurações personalizadas do `zsh` sejam removidas, pode precisar excluí-las manualmente. Arquivos de configuração do `zsh` geralmente estão localizados em seu diretório home, como `.zshrc`. Para removê-los, use:

    ```bash
    rm -rf ~/.zshrc
    ```

    E qualquer outro arquivo de configuração do `zsh` que você possa ter criado ou modificado.

Lembre-se de que esses comandos podem variar ligeiramente dependendo da sua configuração específica e da versão do `Linux Ubuntu`. Certifique-se de ter _backups_ de quaisquer dados ou configurações importantes antes de proceder com a desinstalação.

## Referências

[1] OPENAI. ***Instalar o `oh_my_zsh` no `linux ubuntu` pelo `terminal emulator`.*** Disponível em: <https://chat.openai.com/c/1ecf460a-8fee-4048-9a29-baae6a494efd> (texto adaptado). ChatGPT. Acessado em: 07/12/2023 09:07.

[2] OPENAI. ***Vs code: editor popular.*** Disponível em: <https://chat.openai.com/c/b640a25d-f8e3-4922-8a3b-ed74a2657e42> (texto adaptado). ChatGPT. Acessado em: 29/11/2023 09:07.

[3] OPENAI. ***Comandos de manutenção do ubuntu.*** Disponível em: <https://chat.openai.com/c/4a8cfaa2-30d6-474d-821f-7047a6a39830>. ChatGPT. Acessado em: 15/12/2023 08:25.

[4] USER: LEO VARGAS. ***Como personalizar o `Terminal Emulator` do linux - mais produtivo e bonito.*** Disponĩvel em: <https://www.youtube.com/watch?v=zqrUlHA8jTA&t=1s>. Acessado em: 05/06/2024 16:26.
