# Preparation

These are the applications, plugins and modules that you need to start with this course. 

### Visual Studio Code

If you are not already using Visual Studio Code as your IDE, please download and install this application. You can find the download and installation instruction in the link below:

[Guide for Installing Visual Studio Code and GIT](https://towardsdatascience.com/installing-github-in-visual-studio-code-for-windows-10-6abd3325ab1)


After that, please install the 'Bicep' language extension for Visual Studio Code. This extension will help you write code more easily.

You can do so by opening VS Code and installing the Extension

![Image of BicepExtension](https://github.com/Ruthhl3ss/AzureDevOpsCourse/blob/main/Images/BicepExtension.png)

### Install Azure CLI

Azure CLI is needed to test Bicep Templates directly on your machine via Visual Studio Code.

You can install Azure CLI by running the following code:

````Powershell
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
````


### Installing Powershell 7

In order to use Bicep in Windows I would advise you to use install Powershell 7.

You can download Powershell here:

[Download Powershell 7](https://github.com/PowerShell/PowerShell/releases/download/v7.1.4/PowerShell-7.1.4-win-x64.msi)


### Install Bicep language

Bicep needs to be installed on your machine. That way, you are able to decompile ARM Templates and deploy Bicep Templates directly from your machine.

You can download the Bicep software by running the following code:

````Powershell
# Create the install folder
$installPath = "$env:USERPROFILE\.bicep"
$installDir = New-Item -ItemType Directory -Path $installPath -Force
$installDir.Attributes += 'Hidden'
# Fetch the latest Bicep CLI binary
(New-Object Net.WebClient).DownloadFile("https://github.com/Azure/bicep/releases/latest/download/bicep-win-x64.exe", "$installPath\bicep.exe")
# Add bicep to your PATH
$currentPath = (Get-Item -path "HKCU:\Environment" ).GetValue('Path', '', 'DoNotExpandEnvironmentNames')
if (-not $currentPath.Contains("%USERPROFILE%\.bicep")) { setx PATH ($currentPath + ";%USERPROFILE%\.bicep") }
if (-not $env:path.Contains($installPath)) { $env:path += ";$installPath" }
# Verify you can now access the 'bicep' command.
bicep --help
# Done!

````

### Clone this repository in your Visual Studio Code

Lastly, I would advise you to clone this repository in your Visual Studio Code.

Copy the URL of the Repository:

![Image of CopyURL](https://github.com/Ruthhl3ss/AzureDevOpsCourse/blob/main/Images/CloningRepository.png)

After run the following command in GIT bash:

````bash
git clone https://github.com/Ruthhl3ss/AzureDevOpsCourse.git
````

You can do so by opening a Bash command prompt in VS Code:

![Image of CopyURL](https://github.com/Ruthhl3ss/AzureDevOpsCourse/blob/main/Images/GitBashinVsCode.png)


## You are now ready to start the courses!