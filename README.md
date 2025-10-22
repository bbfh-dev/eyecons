# Eyecons

A 16x16 stylized vector icon pack that aims to be consistent & pixel-perfect.

<!-- vim-markdown-toc GFM -->

* [Preview](#preview)
* [Usage](#usage)
    * [Fair-use](#fair-use)
    * [File structure](#file-structure)
* [Building](#building)

<!-- vim-markdown-toc -->

# Preview

An up-to-date preview of [latest](https://github.com/bbfh-dev/eyecons/releases/latest): <!-- INSERT icons-amount -->`164 icons`:

<div style="display: flex; gap: 1rem; flex-wrap: wrap;">
<!-- BEGIN insert-icons-preview -->
    <img src=".docs/icon/white/animal.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/animal.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/apps.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/apps.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/book.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/book.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/box.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/box.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/building.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/building.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/burger.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/burger.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/bus.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/bus.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/calendar.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/calendar.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/clipboard.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/clipboard.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/clock.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/clock.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/coin.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/coin.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/collapse.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/collapse.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/color_picker.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/color_picker.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/copy.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/copy.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/couch.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/couch.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/database.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/database.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/diagram.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/diagram.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/dice.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/dice.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/download.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/download.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/dumbbell.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/dumbbell.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/error.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/error.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/eye-crossed.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/eye-crossed.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/eye.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/eye.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/file-crossed.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/file-crossed.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/file-minus.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/file-minus.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/file-plus.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/file-plus.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/file.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/file.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/flag-crossed.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/flag-crossed.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/flag.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/flag.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/folder-crossed.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/folder-crossed.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/folder-minus.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/folder-minus.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/folder-plus.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/folder-plus.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/folder.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/folder.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/folder_zip.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/folder_zip.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/fork.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/fork.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/fullscreen.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/fullscreen.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/gear-exclamation.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/gear-exclamation.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/gear.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/gear.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/globe.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/globe.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/graph.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/graph.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/helmet.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/helmet.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/home.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/home.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/honeycomb.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/honeycomb.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/indicator_checkbox-checked.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/indicator_checkbox-checked.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/indicator_checkbox.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/indicator_checkbox.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/indicator_radio-checked.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/indicator_radio-checked.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/indicator_radio-mixed.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/indicator_radio-mixed.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/indicator_radio.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/indicator_radio.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/indicator_spinner.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/indicator_spinner.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/jigsaw.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/jigsaw.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/key.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/key.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/label.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/label.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/language.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/language.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/leave_fullscreen.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/leave_fullscreen.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/lightning.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/lightning.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/link-crossed.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/link-crossed.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/link.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/link.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/list.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/list.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/lock-open.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/lock-open.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/lock.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/lock.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/logo_discord.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/logo_discord.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/logo_eyecons.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/logo_eyecons.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/logo_github.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/logo_github.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/logo_modrinth.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/logo_modrinth.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/mail-notification.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/mail-notification.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/mail.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/mail.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/map_pin.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/map_pin.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_audio_volume_high.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_audio_volume_high.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_audio_volume_low.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_audio_volume_low.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_audio_volume_medium.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_audio_volume_medium.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_audio_volume_mute.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_audio_volume_mute.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_cycle.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_cycle.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_fast_forward.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_fast_forward.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_microphone-medium.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_microphone-medium.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_microphone-mute.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_microphone-mute.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_microphone.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_microphone.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_play-fill.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_play-fill.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_play.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_play.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_record.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_record.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/media_shuffle.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/media_shuffle.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/menu_hamburger.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/menu_hamburger.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/moon.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/moon.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_angle_down.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_angle_down.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_angle_left.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_angle_left.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_angle_right.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_angle_right.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_angle_up.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_angle_up.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_arrow_down.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_arrow_down.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_arrow_left.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_arrow_left.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_arrow_right.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_arrow_right.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_arrow_up.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_arrow_up.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_next.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_next.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_previous.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_previous.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_redo.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_redo.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/navigation_undo.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/navigation_undo.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/neutral.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/neutral.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/node_branch_cross.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/node_branch_cross.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/node_branch_left.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/node_branch_left.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/node_branch_right.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/node_branch_right.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/node_cross.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/node_cross.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/node_down.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/node_down.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/node_horizontal.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/node_horizontal.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/node_left.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/node_left.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/node_right.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/node_right.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/node_up.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/node_up.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/node_vertical.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/node_vertical.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/notification.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/notification.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/notification-unread.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/notification-unread.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/pallete.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/pallete.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/pencil.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/pencil.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/picture-placeholder.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/picture-placeholder.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/picture.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/picture.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/pin.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/pin.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/popout.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/popout.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/properties.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/properties.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/refresh.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/refresh.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/scaling.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/scaling.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/scroll.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/scroll.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/search.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/search.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_bullet.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_bullet.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_circle-crossed.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_circle-crossed.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_circle-fill.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_circle-fill.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_circle.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_circle.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_heart-crossed.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_heart-crossed.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_heart-fill.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_heart-fill.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_heart.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_heart.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_square-fill.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_square-fill.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_square.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_square.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_star-fill.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_star-fill.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_star.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_star.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/shape_sun.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/shape_sun.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/share_connections.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/share_connections.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/share.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/share.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/signal.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/signal.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/sort.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/sort.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/sword.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/sword.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_at_sign.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_at_sign.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_check.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_check.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_cross.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_cross.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_curly_braces.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_curly_braces.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_ellipsis_horizontal.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_ellipsis_horizontal.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_ellipsis_vertical.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_ellipsis_vertical.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_exclamation_point.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_exclamation_point.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_font.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_font.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_hashtag.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_hashtag.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_info.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_info.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_minus_sign.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_minus_sign.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_parentheses.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_parentheses.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_percentage.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_percentage.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_plus_sign.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_plus_sign.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_question_mark.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_question_mark.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_square_brackets.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_square_brackets.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_text.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_text.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/symbol_whitespace.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/symbol_whitespace.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/text_align_center.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/text_align_center.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/text_align_justify.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/text_align_justify.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/text_align_left.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/text_align_left.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/text_align_right.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/text_align_right.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/text.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/text.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/trashcan.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/trashcan.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/upload.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/upload.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/users.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/users.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/user.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/user.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/warning.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/warning.svg#gh-light-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/white/window.svg#gh-dark-mode-only" width="16px" height="16px" />
    <img src=".docs/icon/black/window.svg#gh-light-mode-only" width="16px" height="16px" />

<!-- END insert-icons-preview -->

</div>

# Usage

Download the [latest version](https://github.com/bbfh-dev/eyecons/releases/latest). You **do <ins>NOT</ins>** need to give attribution when doing [fair-use](#fair-use)

## Fair-use

- ☑️ Using icons on your website/application
- ❎ Putting icons into your own icon repository **without attribution**

## File structure

```bash
$ tree -d ./dist/latest/
├── raster/
│   ├── black/
│   │   ├── 12x12/
│   │   ├── 16x16/
│   │   ├── 24x24/
│   │   ├── 32x32/
│   │   ├── 48x48/
│   │   └── 64x64/
│   └── white/
│       ├── 12x12/
│       ├── 16x16/
│       ├── 24x24/
│       ├── 32x32/
│       ├── 48x48/
│       └── 64x64/
└── symbolic/
    ├── black/
    ├── web/
    └── white/
```

# Building

Building requires the following additional binaries to be installed: `resvg (rendering icons)`, `tar (archiving)` & `zip (compressing)`

```bash
./build.sh
```
