MINT_PATH=".mint/lib"
MINT_LINK_PATH=".mint/bin"
MINT=MINT_LINK_PATH=$(MINT_LINK_PATH) MINT_PATH=$(MINT_PATH) mint

.PHONY: setup
setup:
	@make mint_bootstrap
	@make xcodegen

.PHONY: mint_bootstrap
mint_bootstrap:
	 $(MINT) bootstrap --link

.PHONY: xcodegen
xcodegen:
	 $(MINT) run xcodegen
