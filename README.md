# Aidan's Dotfiles

## New Version

Installations should (roughly) follow [this format](https://nomnoml.com/#view/%5Bsystem%5D%0A%0A%5Bnix%7C%0Aosx%7C%0Alinux%5D%0A%0A%5Bbrew%7C%0Aosx%7C%0Alinux%5D%0A%0A%5Bversioned%20script%20or%20repo%7C%0Aosx%7C%0Alinux%5D%0A%0A%5Bunversioned%20script%20or%20repo%7C%0Aosx%7C%0Alinux%5D%0A%0A%5Bapt%7C%0Alinux%5D%0A%0A%5Bapt-get%7C%0Alinux%5D%0A%0A%5Bsystem%5D-%3E%5Bnix%5D%0A%5Bnix%5Dnot%20available-%3E%5Bbrew%5D%0A%5Bbrew%5Dnot%20available-%3E%5Bversioned%20script%20or%20repo%5D%0A%5Bversioned%20script%20or%20repo%5Dnot%20available-%3E%5Bunversioned%20script%20or%20repo%5D%0A%5Bunversioned%20script%20or%20repo%5Dnot%20available-%3E%5Bapt%5D%0A%5Bapt%5Dnot%20available-%3E%5Bapt-get%5D%0A%0A%5Bpython%5D-%3E%5Bpoetry%5D%0A%5Bpoetry%5Dnot%20available-%3E%5Bpip3%20with%20virtualenv%5D%0A%5Bpip3%20with%20virtualenv%5Dnot%20available-%3E%5Bpip%20with%20virtualenv%5D%0A%5Bpip%20with%20virtualenv%5Dnot%20available-%3E%5Bpip3%20on%20system%5D%0A%5Bpip3%20on%20system%5Dnot%20available-%3E%5Bpip%20on%20system%5D).

### Packages (Not In Config Files)

* `nix`:
    * Installation: Use `curl` from [here](https://github.com/NixOS/nix/tree/f24ac3115f154edf72b995cffae6da3793862294#installation).
    * Dependencies: None.
* `.tmux`/`oh-my-tmux`:
    * Installation: Followed the first set of commands from [here](https://github.com/gpakosz/.tmux/tree/90cdbbc32fb55017077d08f1f5e1597a0be70e73#installation).
    * Dependencies: `fish` (run `ln -s (pwd)/home/.tmux.conf.local-<os> ~/.tmux.conf.local` to configure).
* `neovim`:
    * Installation: Downloaded `nvim.appimage` from [here](https://github.com/neovim/neovim/releases/tag/v0.6.0), then moved it to `~/.local/bin/nvim`, and ran `chmod +x ~/.local/bin/nvim`.
    * Dependencies: None.
    * Notes: Would have used `nix` to install, but the latest version [here](https://search.nixos.org/packages) was `0.5.1` (and I needed version `0.6.0` and higher).
* `LunarVim`:
    * Installation: Followed the first set of commands from [here](https://github.com/LunarVim/LunarVim/tree/0.6.1#install-in-one-command).
    * Dependencies: `neovim` (version `0.6.0` and higher).
* `kitty`:
    * Installation: Followed the first set of commands from [here](https://sw.kovidgoyal.net/kitty/binary/#binary-install), then the first set of commands from [here](https://sw.kovidgoyal.net/kitty/binary/#desktop-integration-on-linux).
    * Dependencies: None.
    * Notes: Installed the [dracula theme](https://github.com/dracula/kitty) using `git clone`, and the first set of commands from the `Install` section [here](https://draculatheme.com/kitty).
* `oh-my-fish`:
    * Installation: Followed the first set of commands from [here](https://github.com/oh-my-fish/oh-my-fish#installation).
    * Dependencies: `fish`.
    * Notes: Would have installed a specific version, but it updates all the time by design (i.e. `omf update`), so just used `master`. Also, using the [cmorrell theme](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md#cmorrell) (ran `omf install cmorrell`, followed by `omf theme cmorrell`).
* `docker`:
    * Installation: `git clone`'d [this repo](https://github.com/docker/docker-install), ran `sh rootless-install.sh` as my regular user, ran the commands outputted by the install script (then re-ran the install script until it finished), and added the aliases outputted by the install script to `~/.zshrc`.
    * Dependencies: None.
    * Notes: Installed rootless Docker instead of the regular version.
* `virtualbox`:
    * Installation: Ran `sudo apt install virtualbox`, found the matching extension pack version from [here](https://www.virtualbox.org/wiki/Downloads), and ran `VBoxManage extpack install <vbox-extpack-file>`.
    * Dependencies: None.
    * Notes: Enabled VT-D and made sure secure boot was disabled.

### Static Config

All the config files in the `home` directory can be symlinked into the `$HOME` directory.

## Old Version

I used to get super into dotfiles. I even made a [kind](https://kind.sigs.k8s.io/)-backed [Concourse](https://concourse-ci.org/) cluster, in conjunction with a local SSH-daemon and [this SSH resource](https://github.com/edtan/concourse-ssh-resource), to SSH to my local machine and install the various groups of config--anywhere from static `.xinitrc`'s to [Consul template](https://github.com/hashicorp/consul-template)-rendered `.zshrc`'s--on my machine, all with the use of a single command (all this code is in a private repo--I haven't put in the effort to clean it up before I make it public).

Then I got tired.

I've instead decided to use this repo as a high-level, source-of-truth spot to track what I've installed on a system (packages, static files, etc.), with those things' dependencies. I've moved from trying to figure out the "how", to just listing the "what".

If you want to see the old version of code, it's available at `357ec03944bc2030f97a8eedaaf4b395e0e9081d`.
