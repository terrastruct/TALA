# TALA

TALA is Terrastruct's proprietary diagram layout engine, made for
[D2](https://github.com/terrastruct/d2). TALA is closed-source (for now). This repository
is primarily for installation instructions. You can also use this repository to report
issues, ask questions, and request features.

To learn more about TALA, please visit
[https://terrastruct.com/tala](https://terrastruct.com/tala).

To compare TALA with other layout engines, please visit
[https://text-to-diagram](https://text-to-diagram).

## Installation

TALA is freely installable and locally runnable for evaluation. You'll need an API token
from your Terrastruct account to run it out of evaluation mode.

### Prerequisites

You should install D2 first. TALA is installed as a standalone binary in your path which
D2's plugin system calls out to.

### Install

#### MacOS

```sh
brew install --cask d2talaplugin
```

#### Others

We are working on adding to package managers and a universal install script that'll detect
OS's. For now, you can find binaries in the
[Releases](https://github.com/terarstruct/TALA/releases) page for Linux, Windows, MacOS, for
both AMD and ARM (64-bit for all). Download the appropriate one for your OS to a directory
in your path.

### Post-install

Check that it was installed properly:

```sh
d2 layout tala
```

It should print out information about TALA. If not, please see troubleshooting steps.

### Use TALA

You are now ready to use TALA to layout your diagrams! Specify that D2 should use TALA by
setting the environment variable `D2_LAYOUT`.

```sh
D2_LAYOUT=tala d2 in.d2 out.svg
```

### Add API token (optional)

You may skip this step if you are just evaluating.

If you have an API token from your Terrastruct account, copy and paste it into your
environment variables. E.g.

```bash
export TSTRUCT_TOKEN = "tstruct_..."
```

### Troubleshooting

#### TALA not found

```sh
which d2talaplugin
```

If this does not return a directory, then `d2talaplugin` is not in your path.

```sh
echo $PATH
```

Please move the downloaded binary to one of those locations.

#### License warning prints even with API token

In the same terminal that you're running `d2` on, run

```sh
echo $TSTRUCT_TOKEN
```

If it is not found, then your environment variable has not been set in your shell. Make
sure you add it to the appropriate shell config file and `source` it in the running
terminal.

#### Other

Please open an Issue describing what you're running into and we're happy to help. If you'd
like to remain anonymous/private, feel free to email us at info@terrastruct.com
