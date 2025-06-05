# ⚡ PowerShell Execution Policy Changer

A simple PowerShell script that allows users to view and change their current user's PowerShell execution policy interactively.

## ✨ Features

- 🕵️‍♂️ Displays the current execution policy for the current user.
- 📝 Presents a menu of valid execution policy options.
- ✅ Prompts the user for confirmation before making changes.
- 🛡️ Handles invalid input and errors gracefully.

## 🚀 Usage

1. **Clone or download this repository.**
2. **Open PowerShell as the user whose policy you want to change.**
3. **Navigate to the script directory:**
   ```powershell
   cd "C:\Path\To\Your\Script"
   ```
4. **Run the script:**
   ```powershell
   .\PowerShell Execution Policy Changer.ps1
   ```
5. **Follow the on-screen prompts to select and confirm your desired execution policy.**

## 🔐 Execution Policy Options

- **Restricted**: No scripts can be run.
- **AllSigned**: Only scripts signed by a trusted publisher can be run.
- **RemoteSigned**: Downloaded scripts must be signed by a trusted publisher.
- **Unrestricted**: No restrictions; all Windows PowerShell scripts can be run.
- **Bypass**: Nothing is blocked and there are no warnings or prompts.

## 📝 Notes

- This script changes the execution policy for the **CurrentUser** scope only.
- You may need to run PowerShell with appropriate permissions.
- For more information, see the [Microsoft documentation](https://learn.microsoft.com/powershell/module/microsoft.powershell.core/about/about_execution_policies).

## ⚠️ Disclaimer

Use this script at your own risk. Changing execution policies can affect the security of your system.

---

## 📄 License

See [LICENSE](LICENSE) for details.