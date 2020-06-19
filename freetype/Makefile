ifndef ORBISDEV
$(error ORBISDEV, is not set)
endif

target := ps4_lib
OutPath := lib
TargetFile := libfreetype
AllTarget = $(OutPath)/$(TargetFile).a

include $(ORBISDEV)/make/ps4sdklib.mk

# we are just shipping a cross builted (on linux) archive here!

$(OutPath)/$(TargetFile).a:
	@cp $(OutPath)/$(TargetFile).a $(ORBISDEV)/usr/lib
	@mkdir -p $(ORBISDEV)/usr/include/freetype/freetype/config
	@mkdir -p $(ORBISDEV)/usr/include/freetype/freetype/internal/services
	@cp -a include/*.h $(ORBISDEV)/usr/include/freetype/
	@cp -a include/freetype/*.h $(ORBISDEV)/usr/include/freetype/freetype/
	@cp -a include/freetype/config/*.h $(ORBISDEV)/usr/include/freetype/freetype/config/
	@cp -a include/freetype/internal/*.h $(ORBISDEV)/usr/include/freetype/freetype/internal/
	@cp -a include/freetype/internal/services/*.h $(ORBISDEV)/usr/include/freetype/freetype/internal/services/

install:
	@echo "$(TargetFile) Installed!"

