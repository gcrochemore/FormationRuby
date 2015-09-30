require 'tk'

hello = TkRoot.new {
    title "Hello World"
}

Tk.mainloop

label = TkLabel.new(window) {
    text "Click on the button below!"
    pack( {'padx' => 10, 'pady' => 20} )
}


