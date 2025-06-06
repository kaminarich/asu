#!/system/bin/sh

# Wait for system ready
sleep 10

# --- System Animations ---
settings put global window_animation_scale 0.5
settings put global transition_animation_scale 0.5
settings put global animator_duration_scale 0.5

# --- HWUI Dirty Region Flag (runtime-safe) ---
setprop persist.sys.hwui.render_dirty_regions true

# --- Scroll Responsiveness (safe tweaks) ---
setprop persist.service.lcd.ledcover_enable 1
setprop persist.service.lcd.ledcover_gesture 1

# --- GPU Optimizations ---
setprop persist.service.gfx.enable 1
setprop persist.service.gfx.enable_early_boost 1
setprop persist.service.gfx.gpu_optimize 1
setprop persist.service.gfx.renderthread 1
setprop persist.service.gfx.gpu_usage_limit 100
setprop persist.service.gfx.gpu_rendering_priority 1
setprop persist.service.gfx.gpu_boost 1
setprop persist.service.gfx.force_gpu 1

# --- RAM / Storage Optimization ---
setprop persist.service.lmk.kill_heaviest_task 1
setprop persist.service.storage_optimize 1