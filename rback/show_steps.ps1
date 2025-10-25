<#
.SYNOPSIS
    Initializes a new uv project with Jupyter kernel, OpenPyXL for Excel and standard packages setup.
.DESCRIPTION
    This script creates a new directory, initializes a uv project, sets up a Jupyter kernel
.PARAMETER SnipDir
    The name of the directory to create and initialize the uv project in.
   #>
<#--Version-v1.1.0-20251025_1453 #>
	
param(
    [string]$StepsID
)
#*--Validate Param--*
if ($PSBoundParameters.ContainsKey('StepsID')) {
	Write-Host "✅ Name was passed: $StepsID" -ForegroundColor Green
} else {
	Write-Host "❌ Name was NOT passed" -ForegroundColor Red
}

<#**==Index-Functions==**
@01. show_steps
@02. ...
@03. ...
#>

#**==Functions==*
function show_steps {
    switch ($StepsID) {
        "git01" {
             # Display steps of git
            Write-Host "*--Steps of Git Push--*" -ForegroundColor Red

            $steps_git_push = @"
@01. git status
@02. git add .
@03. git status
@04. git git commit -m "get_df_by_range(…) added"
@05. git branch #Check current active branch
@06. git remote -v #Check remote 
@07. #git push -u origin main #Push to remote one-time
@08. git push #Push to remote subsequent times
"@
            Write-Host $steps_git_push -ForegroundColor Green
		}
        "git02" {
             # Display steps of git
            Write-Host "*--Steps of Git Branch merging--*" -ForegroundColor Red

            $steps_git_push = @"
#*--Branch Merging--*
@01. git branch
@02. git switch -c xbr
#--Work and commit changes
@03. git push -u origin xbr
@04. git switch main
@05. git pull
@06. git merge xbr
#--Delete branch(Optional)
@07. git branch -d xbr
@08. git push origin --delete xbr
"@
            Write-Host $steps_git_push -ForegroundColor Green
		}
		default {
			Write-Host "❌ Steps ID:  $StepsID not avilable" -ForegroundColor Red
			}
    }
}

show_steps $StepsID