# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := preparser_lib
DEFS_Debug := '-DENABLE_DEBUGGER_SUPPORT' \
	'-DDEBUG' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_ENABLE_CHECKS' \
	'-DOBJECT_PRINT'

# Flags passed to all source files.
CFLAGS_Debug := -gdwarf-2 \
	-fvisibility=hidden \
	-Werror \
	-Wnewline-eof \
	-mmacosx-version-min=10.4 \
	-arch i386 \
	-fno-strict-aliasing \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter \
	-Wnon-virtual-dtor

# Flags passed to only C files.
CFLAGS_C_Debug := -std=ansi

# Flags passed to only C++ files.
CFLAGS_CC_Debug := -fno-rtti \
	-fno-exceptions \
	-fvisibility-inlines-hidden \
	-fno-threadsafe-statics

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug := 

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug := 

INCS_Debug := -I$(srcdir)/src

DEFS_Release := '-DENABLE_DEBUGGER_SUPPORT'

# Flags passed to all source files.
CFLAGS_Release := -O3 \
	-gdwarf-2 \
	-fvisibility=hidden \
	-Werror \
	-Wnewline-eof \
	-mmacosx-version-min=10.4 \
	-arch i386 \
	-fno-strict-aliasing \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter \
	-Wnon-virtual-dtor

# Flags passed to only C files.
CFLAGS_C_Release := -std=ansi

# Flags passed to only C++ files.
CFLAGS_CC_Release := -fno-rtti \
	-fno-exceptions \
	-fvisibility-inlines-hidden \
	-fno-threadsafe-statics

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release := 

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release := 

INCS_Release := -I$(srcdir)/src

OBJS := $(obj).target/$(TARGET)/src/allocation.o \
	$(obj).target/$(TARGET)/src/bignum.o \
	$(obj).target/$(TARGET)/src/bignum-dtoa.o \
	$(obj).target/$(TARGET)/src/cached-powers.o \
	$(obj).target/$(TARGET)/src/conversions.o \
	$(obj).target/$(TARGET)/src/diy-fp.o \
	$(obj).target/$(TARGET)/src/dtoa.o \
	$(obj).target/$(TARGET)/src/fast-dtoa.o \
	$(obj).target/$(TARGET)/src/fixed-dtoa.o \
	$(obj).target/$(TARGET)/src/hashmap.o \
	$(obj).target/$(TARGET)/src/preparse-data.o \
	$(obj).target/$(TARGET)/src/preparser.o \
	$(obj).target/$(TARGET)/src/preparser-api.o \
	$(obj).target/$(TARGET)/src/scanner.o \
	$(obj).target/$(TARGET)/src/strtod.o \
	$(obj).target/$(TARGET)/src/token.o \
	$(obj).target/$(TARGET)/src/unicode.o \
	$(obj).target/$(TARGET)/src/utils.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE)) $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE)) $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE)) $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE)) $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := -mmacosx-version-min=10.4 \
	-arch i386 \
	-L$(builddir)

LDFLAGS_Release := -mmacosx-version-min=10.4 \
	-arch i386 \
	-L$(builddir)

LIBS := 

$(builddir)/libpreparser_lib.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/libpreparser_lib.a: LIBS := $(LIBS)
$(builddir)/libpreparser_lib.a: TOOLSET := $(TOOLSET)
$(builddir)/libpreparser_lib.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(builddir)/libpreparser_lib.a
# Add target alias
.PHONY: preparser_lib
preparser_lib: $(builddir)/libpreparser_lib.a

# Add target alias to "all" target.
.PHONY: all
all: preparser_lib
