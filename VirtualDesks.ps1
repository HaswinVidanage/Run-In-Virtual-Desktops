$Source = @"
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WindowsInput;

namespace CSharpPS
{
    public static class virDeskHD
    {
        public static void NewVD()
        {
            InputSimulator.SimulateKeyDown(VirtualKeyCode.LWIN);
            InputSimulator.SimulateKeyDown(VirtualKeyCode.CONTROL);
            InputSimulator.SimulateKeyPress(VirtualKeyCode.VK_D);
            InputSimulator.SimulateKeyUp(VirtualKeyCode.LWIN);
            InputSimulator.SimulateKeyUp(VirtualKeyCode.CONTROL);
        }

        public static void NextVD()
        {
            InputSimulator.SimulateKeyDown(VirtualKeyCode.LWIN);
            InputSimulator.SimulateKeyDown(VirtualKeyCode.CONTROL);
            InputSimulator.SimulateKeyPress(VirtualKeyCode.RIGHT);
            InputSimulator.SimulateKeyUp(VirtualKeyCode.LWIN);
            InputSimulator.SimulateKeyUp(VirtualKeyCode.CONTROL);
        }

        public static void gotoFirstVD()
        {
            InputSimulator.SimulateKeyDown(VirtualKeyCode.LWIN);
            InputSimulator.SimulateKeyDown(VirtualKeyCode.CONTROL);
            InputSimulator.SimulateKeyPress(VirtualKeyCode.LEFT);
            InputSimulator.SimulateKeyPress(VirtualKeyCode.LEFT);
            InputSimulator.SimulateKeyPress(VirtualKeyCode.LEFT);
            InputSimulator.SimulateKeyUp(VirtualKeyCode.LWIN);
            InputSimulator.SimulateKeyUp(VirtualKeyCode.CONTROL);
        }


    }
}
"@;

Add-Type -TypeDefinition $Source -Language CSharp -ReferencedAssemblies InputSimulator.dll
$Assembly = [System.Reflection.Assembly]::LoadFrom("InputSimulator.dll");



[CSharpPS.virDeskHD]::gotoFirstVD()
Start-Process -FilePath "C:\Program Files\Git\git-bash.exe"


Start-Sleep -Milliseconds 5000
[CSharpPS.virDeskHD]::NextVD()
Start-Process -FilePath "C:\Users\haswi\AppData\Local\atom\atom.exe"

Start-Sleep -Milliseconds 5000
[CSharpPS.virDeskHD]::NextVD()
Start-Process -FilePath "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
EXIT