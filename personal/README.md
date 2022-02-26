# FAQ / Troubleshooting
Some common scenarios one might have to address, especially when
forced to use Windows.

## Git + SSH agent on Windows
We want to achieve a setup where OpenSSH bundled with Windows 10 is used.

1. Enable OpenSSH bundled with Windows 10. If not installed, install it via `Turn Windows Features on or off` and
   start it via `Get-Service ssh-agent | Set-Service -StartupType Automatic -PassThru | Start-Service`
2. Make sure the correct ssh binary is used (git for windows ships its own):
   `git config --global core.sshCommand "'C:\Windows\System32\OpenSSH\ssh.exe'"`
3. Add your key via `ssh-add $env:USERPROFILE\.ssh\id_ed25519_github` to `ssh-agent`

Some things to note:
- I wanted to avoid putting all MinGW binaries into `$PATH`
- Use bundled OpenSSH and just that: No confusion with the bundled OpenSSH from
  git for windows possible

## GnuPG for commit signature
1. Install GnuPG: `scoop install gpg`
2. Import your gpg-key: For scoop the location of `pubring.kbx` / `private-keys-v1.d` is
   `%USERPROFILE%\scoop\apps\gpg\current\home`, verify that `gpg --list-keys` and `gpg --list-secret-keys` lists them.
3. Use `git config --global user.signingkey 123abc` and `git config --global commit.gpgsign true` to tell git to
   sign commits with the specific key
4. Tell git where to look for gpg: `git config --global gpg.program "C:\Users\jth\scoop\apps\gpg\current\bin\gpg.exe"`

## Disable Windows + Key hotkeys
You might want to disable these when using the windows key as `super`-key.

1. Open `group policies`
2. Navigate to `User Configuration -> Administrative Templates -> Windows Components -> File Explorer`
3. Set `Turn Off Windows Hotkeys` to `Enabled`
4. Reboot

## Rust Development
1. Install `rust-analyzer` (`brew install rust-analyzer`)
2. Execute `rustup component add rls rust-analysis rust-src`

| What?             | How?                 |
|:------------------|:---------------------|
| Peek Definition   | M-.                  |
| Enable doc popups | lsp-ui-sideline-mode |
| File structure    | lsp-ui-imenu         |
| Jump to method    | C-c i                |
