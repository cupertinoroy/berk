## Berk Project Preperation Github Repository  
  
  
## Members  
 Roy, Robin, Julie  
  
  
### Initial Behavior : Cloning the Repo & Switching to your own branch:  
    $ git clone git@github.com:cupertinoroy/homesteadprj.git  
    $ cd homesteadprj  
    $ git checkout -b ${your own branch name}  
    $ git add .  
    $ git commit -m "create **** branch"  
    $ git push origin ${your own branch name}
  
  
### Switch to your own branch whenever you access this repository  
    $ git checkout ${your own branch name}  
    $ git merge master   
    $ git add .
    $ git commit -m "update changes...." .  
    $ git push origin ${your own branch name}  
  
### Update master branch  
    $ git checkout master  
    $ git merge --no-ff ${your own branch name}  
    $ git push    
  
### Visual Studio Code Editor  
    http://code.visualstudio.com  
