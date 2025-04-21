# StackHawk HawkScan CLI from zip file

This is the [StackHawk](https://www.stackhawk.com) CLI version `4.4.0`. 

## Requirements

A Java v11+ runtime is required.
If running on an arm64 architecture, Java v17+ is required.

## Installation

Using a terminal change to your home directory and run the following commands.

### Download and extract cli zip file
```shell
curl -v https://download.stackhawk.com/hawk/cli/hawk-4.4.0.zip -o hawk-4.4.0.zip
unzip hawk-4.4.0.zip
```

### Add the CLI to your PATH
Assuming this directory has been extracted to `$HOME/hawk-4.4.0`, update your shell profile PATH:
* Zsh
```shell
echo "export PATH=$HOME/hawk-4.4.0:$PATH" >> ~/.zshrc
source ~/.zshrc
```

* Bash
```shell
echo "export PATH=$HOME/hawk-4.4.0:$PATH" >> ~/.bash_profile
source ~/.bash_profile
```

* Windows Powershell
```shell
echo "`$Env:PATH += `";$HOME\hawk-4.4.0`"" >> $profile
. $profile
```

## Usage

Make sure you first have made an account with [StackHawk](https://app.stackhawk.com).
Once you have signed up and created a StackHawk account, you can run `hawk init` to save your StackHawk API key.
This will authorize HawkScan running on behalf of your account.

See https://docs.stackhawk.com/getting-started for more details.

### `JAVA_OPTS` custom runtime

Both `hawk` scripts will call java with default java options `-Xms50m -Xmx500m -Dlog4j2.configurationFile=log4j2.cli.properties -Dfile.encoding=UTF-8`.
Additional java runtime options can be defined to the `$JAVA_OPTS` envvar and these will be applied with the default java options.

## Run hawk command

```shell
hawk --help
```