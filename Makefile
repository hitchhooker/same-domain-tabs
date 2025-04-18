.PHONY: build clean

# Get version from manifest.json using jq
VERSION := $(shell jq -r '.version' manifest.json)

# Build the extension into a ZIP file
build:
	@echo "Building extension version $(VERSION) from manifest.json..."
	zip -r manage-tabs-by-domain-v$(VERSION).zip \
		manifest.json \
		background.js \
		popup.html \
		popup.js \
		README.md \
		LICENSE \
		icons/

# Build with a specific version (overrides manifest version)
build-version:
	@echo "Building extension version $(version)..."
	zip -r manage-tabs-by-domain-v$(version).zip \
		manifest.json \
		background.js \
		popup.html \
		popup.js \
		README.md \
		LICENSE \
		icons/

# Clean up build artifacts
clean:
	@echo "Cleaning up build artifacts..."
	rm -f *.zip
