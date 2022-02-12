## Usage
### Clone
```
git clone https://github.com/pb10005/dotnet-vite-dev-env.git
cd dotnet-vite-dev-env
```

### For Windows
On `PowerShell`, run the following commands.
- Create projects
```powershell
.\dev-env-create.ps1
```
by using standard input, specify the names of your apps when asked.

- Enable aliases for the commands in order to use the containers from the external shell
```powershell
.\set-alias.ps1
```

### For MacOS or Linux
On `Termial`, run the following commands.
- Add permission to execute the shellscripts
```shell
chmod a+x *.sh
```

- Create projects
```shell
./dev-env-create.sh
```

- Enable aliases for the commands in order to use the containers from the external shell
```shell
./set-alias.sh
```

### Available aliases
Note: Change directory to your working directory when you use following aliases.

#### vt
run any commands on `vite-dev` container

Example
```shell
vt bash
```

#### dn
run any commands on `dotnet-dev` container
```shell
dn bash
```

#### dotnet
#### yarn
#### npx