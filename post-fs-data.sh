#!/system/bin/sh

if ! command -v resetprop >/dev/null 2>&1; then
    exit 0
fi

# --- System Rendering Flags ---
resetprop debug.hwui.skia_atrace_enabled false
resetprop debug.performance.tuning 1
resetprop ro.config.enable.hw_accel true
# --- Render Engine Backend ---
resetprop debug.renderengine.backend skiaglthreaded
resetprop debug.hwui.renderer opengl

# --- Compiler Optimization ---
resetprop dalvik.vm.systemuicompilerfilter speed-profile
resetprop dalvik.vm.systemservercompilerfilter speed-profile

# --- VSYNC & SurfaceFlinger Tweaks ---
resetprop debug.cpurend.vsync false
resetprop debug.sf.hw 1
resetprop debug.sf.disable_client_composition_cache 1