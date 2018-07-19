DOTPATH := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
EXCLUDS := .DS_Store .git .gitmodules .travis.yml
TARGET  := $(wildcard .??*) bin
DOTFILES   := $(filter-out $(EXCLUDS), $(TARGET))

deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init:
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/etc/init/init.sh

