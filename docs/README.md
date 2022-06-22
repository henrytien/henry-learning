# Henry Learning
:heart:
> A Collection of Useful Documentation for Learning.:pencil2:

## Quick Start

### Windows

Open the Windows [Powershell 5](https://aka.ms/wmf5download) app, installing it if necessary.

Install *Scoop*, the package manager for Windows, by pasting the following commands into Powershell and pressing the *Enter* ↵ key:

```fallback
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb get.scoop.sh | iex
```

Press `Y` and enter if asked `Do you want to change the execution policy?`.

**Install npm**

```sh
scoop install npm
```

**Install docsify-cli** 

`npm i docsify-cli -g`

**Launch**

`docsify serve ./docs`