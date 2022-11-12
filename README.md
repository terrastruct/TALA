# TALA

TALA is a general-purpose diagram layout engine, made for
[D2](https://github.com/terrastruct/d2). TALA is closed-source (for now). This repository
is primarily for installation instructions. You can also use this repository to report
issues, ask questions, and request features.

To learn more about TALA, please visit
[https://terrastruct.com/tala](https://terrastruct.com/tala).

To compare TALA with other layout engines, please visit
[https://text-to-diagram.com](https://text-to-diagram.com).

## Rendering samples

You can see the `.d2` text for these in [./docs/d2](./docs/d2). Samples are generated
through the CLI ([./ci/generate_samples.sh](./docs/d2)).

|<img src="./docs/assets/sample_1.svg" />|<img src="./docs/assets/sample_2.svg" />|<img src="./docs/assets/sample_3.svg" />|
|:-------------------------:|:-------------------------:|:-------------------------:|
|<img src="./docs/assets/sample_4.svg" />|<img src="./docs/assets/sample_5.svg" />|<img src="./docs/assets/sample_6.svg" />|

## Installation

### Prerequisites

You should install D2 first. TALA is installed as a standalone binary in your path which
D2's plugin system calls out to.

### Install

#### MacOS

```sh
brew install --cask d2plugin-tala
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

If you have an API token, copy and paste it into your environment variables. E.g.

```bash
export TSTRUCT_TOKEN = "tstruct_..."
```

## License keys

TALA is freely installable and locally runnable for evaluation. You'll need an API token
from your Terrastruct account to run it out of evaluation mode. Alternatively, if you
don't want to create an account, you can purchase a personal license key for TALA that
allows you to run TALA forever with access to updates for 12 months
[here](https://buy.stripe.com/bIYeXL3cT2Lr23e5ko).

## Troubleshooting

### TALA not found

```sh
which d2plugin-tala
```

If this does not return a directory, then `d2plugin-tala` is not in your path.

```sh
echo $PATH
```

Please move the downloaded binary to one of those locations.

### License warning prints even with API token

In the same terminal that you're running `d2` on, run

```sh
echo $TSTRUCT_TOKEN
```

If it is not found, then your environment variable has not been set in your shell. Make
sure you add it to the appropriate shell config file and `source` it in the running
terminal.

### Other

Please open an Issue describing what you're running into and we're happy to help. If you'd
like to remain anonymous/private, feel free to email us at info@terrastruct.com

## FAQ

### Does TALA use the internet?

The TALA plugin do not collect telemetry or use the internet in any way except to ping to
check the status of a license. This is only done when necessary, e.g. if you purchased a
month subscription, TALA will ping at the start of the next month and renew automatically
if the subscription is ongoing. If you purchased a year, it won't ping for a year. The
  only data that's sent in these pings is the API token itself. No diagrams or anything
  else leaves your computer.

### Others

Full FAQ at [https://terrastruct.com/tala](https://terrastruct.com/tala).
