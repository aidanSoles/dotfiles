# config.set('aliases', )
config.set('auto_save.interval', 10000)
config.set('auto_save.session', True)
config.set('backend', 'webengine') # Default is QtWebEngine but want to make sure. :D
# config.set('bindings.commands', )
# config.set('bindings.default', )
# config.set('bindings.key_mappings', )

# Beginning of `https://hastebin.com/raw/imeyopolew`.

solarized = {
    'base03': '#002b36',
    'base02': '#073642',
    'base01': '#586e75',
    'base00': '#657b83',
    'base0': '#839496',
    'base1': '#93a1a1',
    'base2': '#eee8d5',
    'base3': '#fdf6e3',
    'yellow': '#b58900',
    'orange': '#cb4b16',
    'red': '#dc322f',
    'magenta': '#d33682',
    'violet': '#6c71c4',
    'blue': '#268bd2',
    'cyan': '#2aa198',
    'green': '#859900'
}

## Background color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.bg = solarized['base03']

## Bottom border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.border.bottom = solarized['base03']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.border.top = solarized['base03']

## Foreground color of completion widget category headers.
## Type: QtColor
c.colors.completion.category.fg = solarized['base3']

## Background color of the completion widget for even rows.
## Type: QssColor
c.colors.completion.even.bg = solarized['base02']

## Text color of the completion widget.
## Type: QtColor
c.colors.completion.fg = solarized['base3']

## Background color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.bg = solarized['violet']

## Bottom border color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.border.bottom = solarized['violet']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.item.selected.border.top = solarized['violet']

## Foreground color of the selected completion item.
## Type: QtColor
c.colors.completion.item.selected.fg = solarized['base3']

## Foreground color of the matched text in the completion.
## Type: QssColor
c.colors.completion.match.fg = solarized['base2']

## Background color of the completion widget for odd rows.
## Type: QssColor
c.colors.completion.odd.bg = solarized['base02']

## Color of the scrollbar in completion view
## Type: QssColor
c.colors.completion.scrollbar.bg = solarized['base0']

## Color of the scrollbar handle in completion view.
## Type: QssColor
c.colors.completion.scrollbar.fg = solarized['base2']

## Background color for the download bar.
## Type: QssColor
c.colors.downloads.bar.bg = solarized['base03']

## Background color for downloads with errors.
## Type: QtColor
c.colors.downloads.error.bg = solarized['red']

## Foreground color for downloads with errors.
## Type: QtColor
c.colors.downloads.error.fg = solarized['base3']

## Color gradient start for download backgrounds.
## Type: QtColor
# c.colors.downloads.start.bg = '#0000aa'

## Color gradient start for download text.
## Type: QtColor
c.colors.downloads.start.fg = solarized['base3']

## Color gradient stop for download backgrounds.
## Type: QtColor
# c.colors.downloads.stop.bg = '#00aa00'

## Color gradient end for download text.
## Type: QtColor
# c.colors.downloads.stop.fg = solarized['base3']

## Color gradient interpolation system for download backgrounds.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
# c.colors.downloads.system.bg = 'rgb'

## Color gradient interpolation system for download text.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
# c.colors.downloads.system.fg = 'rgb'

## Background color for hints. Note that you can use a `rgba(...)` value
## for transparency.
## Type: QssColor
c.colors.hints.bg = solarized['violet']

## Font color for hints.
## Type: QssColor
c.colors.hints.fg = solarized['base3']

## Font color for the matched part of hints.
## Type: QssColor
c.colors.hints.match.fg = solarized['base2']

## Background color of the keyhint widget.
## Type: QssColor
# c.colors.keyhint.bg = 'rgba(0, 0, 0, 80%)'

## Text color for the keyhint widget.
## Type: QssColor
c.colors.keyhint.fg = solarized['base3']

## Highlight color for keys to complete the current keychain.
## Type: QssColor
c.colors.keyhint.suffix.fg = solarized['yellow']

## Background color of an error message.
## Type: QssColor
c.colors.messages.error.bg = solarized['red']

## Border color of an error message.
## Type: QssColor
c.colors.messages.error.border = solarized['red']

## Foreground color of an error message.
## Type: QssColor
c.colors.messages.error.fg = solarized['base3']

## Background color of an info message.
## Type: QssColor
c.colors.messages.info.bg = solarized['base03']

## Border color of an info message.
## Type: QssColor
c.colors.messages.info.border = solarized['base03']

## Foreground color an info message.
## Type: QssColor
c.colors.messages.info.fg = solarized['base3']

## Background color of a warning message.
## Type: QssColor
c.colors.messages.warning.bg = solarized['orange']

## Border color of a warning message.
## Type: QssColor
c.colors.messages.warning.border = solarized['orange']

## Foreground color a warning message.
## Type: QssColor
c.colors.messages.warning.fg = solarized['base3']

## Background color for prompts.
## Type: QssColor
c.colors.prompts.bg = solarized['base02']

## Border used around UI elements in prompts.
## Type: String
c.colors.prompts.border = '1px solid ' + solarized['base3']

## Foreground color for prompts.
## Type: QssColor
c.colors.prompts.fg = solarized['base3']

## Background color for the selected item in filename prompts.
## Type: QssColor
c.colors.prompts.selected.bg = solarized['base01']

## Background color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.bg = solarized['blue']

## Foreground color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.fg = solarized['base3']

## Background color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.bg = solarized['violet']

## Foreground color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.fg = solarized['base3']

## Background color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.bg = solarized['base03']

## Foreground color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.fg = solarized['base3']

## Background color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.bg = solarized['base01']

## Foreground color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.fg = solarized['base3']

## Background color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.bg = solarized['green']

## Foreground color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.fg = solarized['base3']

## Background color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.bg = solarized['base03']

## Foreground color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.fg = solarized['base3']

## Background color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.bg = solarized['magenta']

## Foreground color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.fg = solarized['base3']

## Background color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.bg = solarized['base01']

## Foreground color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.fg = solarized['base3']

## Background color of the progress bar.
## Type: QssColor
c.colors.statusbar.progress.bg = solarized['base3']

## Foreground color of the URL in the statusbar on error.
## Type: QssColor
c.colors.statusbar.url.error.fg = solarized['red']

## Default foreground color of the URL in the statusbar.
## Type: QssColor
c.colors.statusbar.url.fg = solarized['base3']

## Foreground color of the URL in the statusbar for hovered links.
## Type: QssColor
c.colors.statusbar.url.hover.fg = solarized['base2']

## Foreground color of the URL in the statusbar on successful load
## (http).
## Type: QssColor
c.colors.statusbar.url.success.http.fg = solarized['base3']

## Foreground color of the URL in the statusbar on successful load
## (https).
## Type: QssColor
c.colors.statusbar.url.success.https.fg = solarized['base3']

## Foreground color of the URL in the statusbar when there's a warning.
## Type: QssColor
c.colors.statusbar.url.warn.fg = solarized['yellow']

## Background color of the tab bar.
## Type: QtColor
# c.colors.tabs.bar.bg = '#555555'

## Background color of unselected even tabs.
## Type: QtColor
c.colors.tabs.even.bg = solarized['base01']

## Foreground color of unselected even tabs.
## Type: QtColor
c.colors.tabs.even.fg = solarized['base2']

## Color for the tab indicator on errors.
## Type: QtColor
c.colors.tabs.indicator.error = solarized['red']

## Color gradient start for the tab indicator.
## Type: QtColor
c.colors.tabs.indicator.start = solarized['violet']

## Color gradient end for the tab indicator.
## Type: QtColor
c.colors.tabs.indicator.stop = solarized['orange']

## Color gradient interpolation system for the tab indicator.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
# c.colors.tabs.indicator.system = 'rgb'

## Background color of unselected odd tabs.
## Type: QtColor
c.colors.tabs.odd.bg = solarized['base01']

## Foreground color of unselected odd tabs.
## Type: QtColor
c.colors.tabs.odd.fg = solarized['base2']

## Background color of selected even tabs.
## Type: QtColor
c.colors.tabs.selected.even.bg = solarized['base03']

## Foreground color of selected even tabs.
## Type: QtColor
c.colors.tabs.selected.even.fg = solarized['base3']

## Background color of selected odd tabs.
## Type: QtColor
c.colors.tabs.selected.odd.bg = solarized['base03']

## Foreground color of selected odd tabs.
## Type: QtColor
c.colors.tabs.selected.odd.fg = solarized['base3']

## Background color for webpages if unset (or empty to use the theme's
## color)
## Type: QtColor
# c.colors.webpage.bg = 'white'

# End of `https://hastebin.com/raw/imeyopolew`.

config.set('completion.cmd_history_max_items', 20)
# config.set('completion.delay', )
# config.set('completion.height', )
# config.set('completion.min_chars', )
# config.set('completion.open_categories', )
# config.set('completion.quick', )
# config.set('completion.scrollbar.padding', )
# config.set('completion.scrollbar.width', )
# config.set('completion.show', )
# config.set('completion.shrink', )
# config.set('completion.timestamp_format', )
# config.set('completion.use_best_match', )
# config.set('completion.web_history.exclude', )
# config.set('completion.web_history.max_items', )
# config.set('confirm_quit', )
# config.set('content.autoplay', )
# config.set('content.cache.appcache', )
# config.set('content.cache.maximum_pages', )
# config.set('content.cache.size', )
# config.set('content.canvas_reading', )
# config.set('content.cookies.accept', )
# config.set('content.cookies.store', )
# config.set('content.default_encoding', )
# config.set('content.desktop_capture', )
# config.set('content.dns_prefetch', )
# config.set('content.frame_flattening', )
# config.set('content.geolocation', )
# config.set('content.headers.accept_language', )
# config.set('content.headers.custom', )
# config.set('content.headers.do_not_track', )
# config.set('content.headers.referer', )
# config.set('content.headers.user_agent', )
# config.set('content.host_blocking.enabled', )
# config.set('content.host_blocking.lists', )
# config.set('content.host_blocking.whitelist', )
# config.set('content.hyperlink_auditing', )
# config.set('content.images', )
# config.set('content.javascript.alert', )
# config.set('content.javascript.can_access_clipboard', )
# config.set('content.javascript.can_close_tabs', )
# config.set('content.javascript.can_open_tabs_automatically', )
# config.set('content.javascript.enabled', )
# config.set('content.javascript.log', )
# config.set('content.javascript.modal_dialog', )
# config.set('content.javascript.prompt', )
# config.set('content.local_content_can_access_file_urls', )
# config.set('content.local_content_can_access_remote_urls', )
# config.set('content.local_storage', )
# config.set('content.media_capture', )
# config.set('content.mouse_lock', )
# config.set('content.mute', )
# config.set('content.netrc_file', )
# config.set('content.notifications', )
# config.set('content.pdfjs', )
# config.set('content.persistent_storage', )
# config.set('content.plugins', )
# config.set('content.print_element_backgrounds', )
# config.set('content.private_browsing', )
# config.set('content.proxy', )
# config.set('content.proxy_dns_requests', )
# config.set('content.register_protocol_handler', )
# config.set('content.ssl_strict', )
# config.set('content.user_stylesheets', )
# config.set('content.webgl', )
# config.set('content.webrtc_ip_handling_policy', )
# config.set('content.windowed_fullscreen', )
# config.set('content.xss_auditing', )
# config.set('downloads.location.directory', )
# config.set('downloads.location.prompt', )
# config.set('downloads.location.remember', )
# config.set('downloads.location.suggestion', )
# config.set('downloads.open_dispatcher', )
# config.set('downloads.position', )
# config.set('downloads.remove_finished', )
# config.set('editor.command', )
# config.set('editor.encoding', )
# config.set('fonts.completion.category', )
# config.set('fonts.completion.entry', )
# config.set('fonts.debug_console', )
# config.set('fonts.downloads', )
# config.set('fonts.hints', )
# config.set('fonts.keyhint', )
# config.set('fonts.messages.error', )
# config.set('fonts.messages.info', )
# config.set('fonts.messages.warning', )
# config.set('fonts.monospace', )
# config.set('fonts.prompts', )
# config.set('fonts.statusbar', )
# config.set('fonts.tabs', )
# config.set('fonts.web.family.cursive', )
# config.set('fonts.web.family.fantasy', )
# config.set('fonts.web.family.fixed', )
# config.set('fonts.web.family.sans_serif', )
# config.set('fonts.web.family.serif', )
# config.set('fonts.web.family.standard', )
# config.set('fonts.web.size.default', )
# config.set('fonts.web.size.default_fixed', )
# config.set('fonts.web.size.minimum', )
# config.set('fonts.web.size.minimum_logical', )
# config.set('hints.auto_follow', )
# config.set('hints.auto_follow_timeout', )
# config.set('hints.border', )
# config.set('hints.chars', )
# config.set('hints.dictionary', )
# config.set('hints.find_implementation', )
# config.set('hints.hide_unmatched_rapid_hints', )
# config.set('hints.leave_on_load', )
# config.set('hints.min_chars', )
# config.set('hints.mode', )
# config.set('hints.next_regexes', )
# config.set('hints.prev_regexes', )
# config.set('hints.scatter', )
# config.set('hints.selectors', )
# config.set('hints.uppercase', )
# config.set('history_gap_interval', )
# config.set('input.escape_quits_reporter', )
# config.set('input.forward_unbound_keys', )
# config.set('input.insert_mode.auto_enter', )
# config.set('input.insert_mode.auto_leave', )
# config.set('input.insert_mode.auto_load', )
# config.set('input.insert_mode.leave_on_load', )
# config.set('input.insert_mode.plugins', )
# config.set('input.links_included_in_focus_chain', )
# config.set('input.partial_timeout', )
# config.set('input.rocker_gestures', )
# config.set('input.spatial_navigation', )
# config.set('keyhint.blacklist', )
# config.set('keyhint.delay', )
# config.set('keyhint.radius', )
# config.set('messages.timeout', )
# config.set('new_instance_open_target', )
# config.set('new_instance_open_target_window', )
# config.set('prompt.filebrowser', )
# config.set('prompt.radius', )
# config.set('qt.args', )
# config.set('qt.force_platform', )
# config.set('qt.force_software_rendering', )
# config.set('qt.highdpi', )
# config.set('qt.low_end_device_mode', )
# config.set('qt.process_model', )
# config.set('scrolling.bar', )
# config.set('scrolling.smooth', )
# config.set('search.ignore_case', )
# config.set('search.incremental', )
# config.set('session.default_name', )
# config.set('session.lazy_restore', )
# config.set('spellcheck.languages', )
# config.set('statusbar.hide', )
# config.set('statusbar.padding', )
# config.set('statusbar.position', )
# config.set('statusbar.widgets', )
# config.set('tabs.background', )
# config.set('tabs.close_mouse_button', )
# config.set('tabs.close_mouse_button_on_bar', )
# config.set('tabs.favicons.scale', )
# config.set('tabs.favicons.show', )
# config.set('tabs.indicator.padding', )
# config.set('tabs.indicator.width', )
# config.set('tabs.last_close', )
# config.set('tabs.max_width', )
# config.set('tabs.min_width', )
# config.set('tabs.mode_on_change', )
# config.set('tabs.mousewheel_switching', )
# config.set('tabs.new_position.related', )
# config.set('tabs.new_position.stacking', )
# config.set('tabs.new_position.unrelated', )
# config.set('tabs.padding', )
# config.set('tabs.pinned.frozen', )
# config.set('tabs.pinned.shrink', )
# config.set('tabs.position', )
# config.set('tabs.select_on_remove', )
# config.set('tabs.show', )
# config.set('tabs.show_switching_delay', )
# config.set('tabs.tabs_are_windows', )
# config.set('tabs.title.alignment', )
# config.set('tabs.title.format', )
# config.set('tabs.title.format_pinned', )
# config.set('tabs.undo_stack_size', )
# config.set('tabs.width', )
# config.set('tabs.wrap', )
# config.set('url.auto_search', )
# config.set('url.default_page', )
# config.set('url.incdec_segments', )
# config.set('url.open_base_url', )
# config.set('url.searchengines', )
# config.set('url.start_pages', )
# config.set('url.yank_ignored_parameters', )
# config.set('window.hide_decoration', )
# config.set('window.title_format', )
# config.set('zoom.default', )
# config.set('zoom.levels', )
# config.set('zoom.mouse_divider', )
# config.set('zoom.text_only', )

config.bind(',d', 'config-cycle content.user_stylesheets ~/.config/solarized-everything-css/css/solarized-dark/solarized-dark-all-sites.css ""')
