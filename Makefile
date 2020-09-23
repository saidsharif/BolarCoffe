1 # Project Variables
  PROJECT_NAME ?= BolarCoffe
  ORG_NAME ?= BolarCoffe
  REPO_NAME ?= BolarCoffe

  .PHONY: migrations db

 migrations:
           cd ./BolarCoffe.Data && dotnet ef --startup-project ../BolarCoffe.web/ migrations add $(mname) && cd ..

  db:
           cd ./BolarCoffe.Data && dotnet ef --startup-project ../BolarCoffe.web/ database update && cd ..
