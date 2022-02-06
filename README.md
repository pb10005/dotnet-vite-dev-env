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
.\dev-env-create.ps1 <client-app-name> <ServerAppName>
```

- Start Vite devserver
```powershell
.\vite-dev.ps1 <cient-app-name>
```

- Start dotnet app
```powershell
.\dotnet-dev.ps1 <ServerAppName>
```


### For MacOS or Linux
On `Termial`, run the following commands.
- Add permission to execute the shellscripts
```shell
chmod a+x *.sh
```

- Create projects
```shell
./dev-env-create.sh <client-app-name> <ServerAppName>
```

- Start Vite devserver
```shell
./vite-dev.sh <cient-app-name>
```

- Start dotnet app
```shell
./dotnet-dev.sh <ServerAppName>
```
