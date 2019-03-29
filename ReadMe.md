## Berk Project Preperation Github Repository  
  
  
## Members  
 Roy, Robin, Julie  
  
  
### Initial Behavior : Cloning the Repo & Switching to your own branch:  
    $ git clone git@github.com:cupertinoroy/berk.git  
    $ cd berk  
    $ git checkout -b ${your branch}  
    $ git add .  
    $ git commit -m "create **** branch"  
    $ git push origin ${your branch}
  
  
### Switch to your own branch whenever you access this repository  
    $ git checkout ${your branch}  
    $ git merge master   
    $ git add .
    $ git commit -m "update changes...." .  
    $ git push origin ${your branch}  
  
### Merge up-to-dated dev to your branch
    $ git checkout dev
    $ git pull
    $ git checkout ${your branch}
    $ git merge dev

### Update master branch  
    $ git checkout master  
    $ git merge --no-ff ${your branch}  
    $ git push    
  
### Visual Studio Code Editor  
    http://code.visualstudio.com  
