ifndef ORBISDEV
$(error ORBISDEV, is not set)
endif

target := ps4_lib
OutPath := lib
TargetFile := libMiniAPI
AllTarget = $(OutPath)/$(TargetFile).a

include $(ORBISDEV)/make/ps4sdklib.mk
IncludePath += -I$(ORBISDEV)/usr/include -Iinclude/nfsc 


$(OutPath)/$(TargetFile).a: $(ObjectFiles)
	$(dirp)
	$(archive)

install:
	@cp $(OutPath)/$(TargetFile).a $(ORBISDEV)/usr/lib
	@mkdir -p $(ORBISDEV)/usr/include/orbis/MiniAPI
	@cp include/*.h $(ORBISDEV)/usr/include/orbis/MiniAPI
	@echo "$(TargetFile) Installed!"
