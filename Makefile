DATELOG := "[$(shell date -u +'%Y-%m-%dT%H:%M:%SZ')]"

.PHONY: run 
run: ## Run the flake locally
	@echo "$(DATELOG) Running neovim flake"
	nix run .

.PHONY: update
update: ## Update all of your packages
	nix --extra-experimental-features 'nix-command flakes' flake update

.PHONY: repair
repair: ## Use this when you start getting weird 'file not found' errors from nix-store.
	sudo nix-store --repair --verify --check-contents

.PHONY: gc clean
clean: gc
gc: ##  Garbage collect nix files that are older than 5 days.
	@echo "$(DATELOG) Garbage collecting nix files older than 5 days"
	sudo nix-collect-garbage --delete-older-than 5d

.PHONY: fmt
fmt: ## format nix files
	@echo "$(DATELOG) Formatting nix files"
	alejandra --quiet .

.PHONY: help
help: ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

.PHONY: default
default: run 
