#Website for reference: https://rfortherestofus.com/2021/02/how-to-use-git-github-with-r

install.packages("usethis")

library(usethis)

#Use git --version to see what version is downloaded.

#after loading the library do use_git_config(user.name = "Username", user.email = "Email")
#This is to let git know who you are.

#use_git() to initialize a git repository and then select 1 to do initial commit. A git tab should come up near the environment pane.

#create_github_token() to create token, it is only a one time use so save it somewhere. Do standard settings when webpage opens up.

library(gitcreds)

#gitcreds_set() and then put token in. 2 -> put token in.

#use_github() to push the inital repository. 



#To test if commit works by doing git add ., git commit -m 'test commit', git push
print("hi")




