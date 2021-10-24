# Aidan's Dotfiles

## Old Version

I used to get super into dotfiles. I even made a [kind](https://kind.sigs.k8s.io/)-backed [Concourse](https://concourse-ci.org/) cluster, in conjunction with a local SSH-daemon and [this SSH resource](https://github.com/edtan/concourse-ssh-resource), to SSH to my local machine and install the various groups of config--anywhere from static `.xinitrc`'s to [Consul template](https://github.com/hashicorp/consul-template)-rendered `.zshrc`'s--on my machine, all with the use of a single command (all this code is in a private repo--I haven't put in the effort to clean it up before I make it public).

Then I got tired.

I've instead decided to use this repo as a high-level, source-of-truth spot to track what I've installed on a system (packages, static files, etc.), with those things' dependencies. I've moved from trying to figure out the "how", to just listing the "what".

If the old version of code is available at `357ec03944bc2030f97a8eedaaf4b395e0e9081d`.
