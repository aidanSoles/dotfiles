# Aidan's Dotfiles

## New Version

Installations should (roughly) follow [this format](https://nomnoml.com/#view/%2F%2F%20g%0A%0A%5Bsystem%5D%0A%0A%5Bbrew%7C%0Aosx%7C%0Alinux%5D%0A%0A%5Bversioned%20script%20or%20repo%7C%0Aosx%7C%0Alinux%5D%0A%0A%5Bunversioned%20script%20or%20repo%7C%0Aosx%7C%0Alinux%5D%0A%0A%5Bapt%7C%0Alinux%5D%0A%0A%5Bapt-get%7C%0Alinux%5D%0A%0A%5Bsystem%5D-%3E%5Bbrew%5D%0A%5Bbrew%5Dnot%20available-%3E%5Bversioned%20script%20or%20repo%5D%0A%5Bversioned%20script%20or%20repo%5Dnot%20available-%3E%5Bunversioned%20script%20or%20repo%5D%0A%5Bunversioned%20script%20or%20repo%5Dnot%20available-%3E%5Bapt%5D%0A%5Bapt%5Dnot%20available-%3E%5Bapt-get%5D%0A%0A%5Bpython%5D-%3E%5Bpoetry%5D%0A%5Bpoetry%5Dnot%20available-%3E%5Bpip3%20with%20virtualenv%5D%0A%5Bpip3%20with%20virtualenv%5Dnot%20available-%3E%5Bpip%20with%20virtualenv%5D%0A%5Bpip%20with%20virtualenv%5Dnot%20available-%3E%5Bpip3%20on%20system%5D%0A%5Bpip3%20on%20system%5Dnot%20available-%3E%5Bpip%20on%20system%5D).

### Packages (Not In Config Files)

* `oh-my-zsh`:
    * Installation: Use `curl` from [here](https://github.com/ohmyzsh/ohmyzsh/tree/master#basic-installation) (since it updates all the time anyway).
    * Dependencies: `zsh`.
* `Visual Studio Code`:
    * Installation: Downloaded from [here](https://code.visualstudio.com/Download#) for my Linux machine (`cask` is not available for `brew` on Linux, `apt*` didn't have it, etc.).
    * Dependencies: None.
    * Note: I turned on `Sync to and from other devices` on the startup page so that I don't have to redo settings across devices.

### Static Config

All the config files in the `home` directory can be symlinked into the `$HOME` directory.

## Old Version

I used to get super into dotfiles. I even made a [kind](https://kind.sigs.k8s.io/)-backed [Concourse](https://concourse-ci.org/) cluster, in conjunction with a local SSH-daemon and [this SSH resource](https://github.com/edtan/concourse-ssh-resource), to SSH to my local machine and install the various groups of config--anywhere from static `.xinitrc`'s to [Consul template](https://github.com/hashicorp/consul-template)-rendered `.zshrc`'s--on my machine, all with the use of a single command (all this code is in a private repo--I haven't put in the effort to clean it up before I make it public).

Then I got tired.

I've instead decided to use this repo as a high-level, source-of-truth spot to track what I've installed on a system (packages, static files, etc.), with those things' dependencies. I've moved from trying to figure out the "how", to just listing the "what".

If the old version of code is available at `357ec03944bc2030f97a8eedaaf4b395e0e9081d`.
