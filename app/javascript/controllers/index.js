// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js or *_controller.ts.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import { Alert, Slideover, Tabs } from "tailwindcss-stimulus-components"
import TextareaAutogrow from "stimulus-textarea-autogrow"

window.Stimulus = Application.start()
const context = require.context("controllers", true, /_controller\.(js|ts)$/)
Stimulus.load(definitionsFromContext(context))

window.Stimulus.register("alert", Alert)
window.Stimulus.register("slideover", Slideover)
window.Stimulus.register("tabs", Tabs)

window.Stimulus.register("textarea-autogrow", TextareaAutogrow)
