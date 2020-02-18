#Credentials for nodes to connect
$pw = convertto-securestring -AsPlainText -Force -String #hasło dla logowania poprzez winrm
$cred = new-object -typename System.Management.Automation.PSCredential -argumentlist "admin",$pw
$skrypt= { Get-Date }

# nowe kompy
For ($i=1;$i -lt 11 ;$i++) 
{
    $nr_render=10049+$i
    $render_node="ars-"+"$nr_render"
    #Invoke-Command -ComputerName $render_node -Credential $cred -ScriptBlock $skrypt # tutaj wpisać plik do usuniecia , w przyszlosci spradzic czemu nie dziala poprzez $zmienna
    "$render_node Done" 
}