--- a closure function
function open(name)
  return function()
    hs.application.launchOrFocus(name)
      if name == 'Finder' then
        hs.appfinder.appFromName(name):activate()
    end
  end
end

--- quick open applications
hs.hotkey.bind({"cmd"}, "return", open("Terminal"))
