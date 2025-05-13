Changelog:
> - All significant changes to this project will be documented here.
---

> [5.0.0]
>
> - Now `Dex` is no longer run automatically but manually, which improves stability and avoids unintended executions.
> - Updated `service.sh` to better support `module.prop` integration and clean service management.
> - Added notification system with a custom icon for better user feedback.
> - Implemented automatic `integrity` check logic for safer execution.
> - Complete rewrite and cleanup of script structure for better readability and maintainability.
> - Unified and simplified logging system using a dedicated `log()` function with timestamps.
> - Improved boot and storage readiness checks with retry and timeout mechanisms for better reliability on all devices.
> - Replaced `illumi` logging method with a cleaner direct function call.
> - Enhanced Dalvik/ART property application with improved syntax and validation.
> - Added new Dalvik properties such as `heapgrowthlimit`, `heapsize`, and `dex2oat-threads=$(nproc)` for better performance tuning.
> - Modularized and renamed optimization functions (`run_dexopt`, `notify_user`, etc.) for clarity.
> - Added error handling and fallback logging when setting system properties or executing compile commands fails.
> - Refined `dex2oat` process wait logic with longer delay (0.5s) to reduce CPU usage.
> - Removed legacy or unused functions such as `illumi -c`.
> - Improved log output messages to be more user-friendly and informative.
> - Added lock mechanism (`/data/local/tmp/dex_opt_lock`) to prevent multiple instances of the script from running.
> - Rewrote `wait_until_login` to include both boot completion and storage access checks with retry loops.
> - Rewrote Dalvik optimizer to modular structure: now includes `main_dexopt`, `secondary_dexopt`, and `advanced_art_opt`.
> - Improved Dalvik/ART cleanup, now includes `/data/dalvik-cache` cleanup step before optimization.
> - Improved notification system using `cmd notification post` with support for dual icons.
---

> [4.0.0]
> 
> - Delay Execution Function `wait until login`.
> - Added `wait until login` function to ensure that the system has finished booting and storage is available before running optimizations. This improves the stability of execution on the device.
> - Changes to `dalvik prop` Function and Added new Dalvik properties.
> - Main and Secondary Dex Optimization Modifications.
> - Dex will be run with `service.d` which will automatically run when the device is restarted.
> - Changes to `service.sh` for compatible modules.
> - Improved Logs and Notifications.
> - Synchronization and Simplification of Execution Flow.
---

> [2.5.0]
> 
> - Update Build.
> - Total change from the previous version.
---

> [1.0.0]
> 
> - Initial release.
---
