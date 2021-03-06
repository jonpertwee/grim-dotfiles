from __future__ import (absolute_import, division, print_function)

from ranger.colorschemes.default import Default
from ranger.gui.color import red, cyan


class Scheme(Default):
    progress_bar_color = red

    def use(self, context):
        fg, bg, attr = Default.use(self, context)

        if context.directory and not context.marked and not context.link \
                and not context.inactive_pane:
            fg = red

        if context.in_titlebar and context.hostname:
            fg = cyan if context.bad else red

        return fg, bg, attr
