ifndef ORBISDEV
$(error ORBISDEV, is not set)
endif

target := ps4_lib
OutPath := lib
TargetFile := libfreetype-gl
AllTarget = $(OutPath)/$(TargetFile).a

include $(ORBISDEV)/make/ps4sdklib.mk

CompilerFlags += -nostdinc -nostdlib -D_BSD_SOURCE -D__PS4__

IncludePath += -I$(ORBISDEV)/usr/include -I$(ORBISDEV)/usr/include/orbis/freetype -I$(ORBISDEV)/usr/include/orbis/freetype/freetype/config

$(OutPath)/$(TargetFile).a: $(ObjectFiles)
	$(dirp)
	$(archive)

install:
	@cp $(OutPath)/$(TargetFile).a $(ORBISDEV)/usr/lib
	@mkdir -p $(ORBISDEV)/usr/include/orbis/freetype-gl
	@cp include/*.h $(ORBISDEV)/usr/include/orbis/freetype-gl
	@echo "$(TargetFile) Installed!"

