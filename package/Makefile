REPO_DIR    := $(shell git rev-parse --show-toplevel)
BUILD_IMAGE := condaforge/miniforge3

default: clean package

.PHONY: package
package: macos linux windows

.PHONY: macos
macos:
	docker run --rm --volume "$(REPO_DIR):/wd" --entrypoint /wd/package/build.sh $(BUILD_IMAGE)

.PHONY: linux
linux:

.PHONY: windows
windows:

clean:
	rm -rf $(REPO_DIR)/build/package

