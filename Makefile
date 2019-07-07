LOCAL_INSTALL_PATH := ${HOME}/.local/bin
NAME := runtests

default:
	@echo "No default target. Use make install_local to install to ${LOCAL_INSTALL_PATH}"
	@exit 2
.PHONY: default

install_local: $(LOCAL_INSTALL_PATH)/$(NAME)
.PHONY: install_local

$(LOCAL_INSTALL_PATH)/$(NAME) : $(NAME) | $(LOCAL_INSTALL_PATH)
	cp $< $@

$(LOCAL_INSTALL_PATH):
	mkdir -p $@

$(NAME):
	$(error missing file "$@")
