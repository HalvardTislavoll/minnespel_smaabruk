#############################################################################
# Generated by PAGE version 8.0
#  in conjunction with Tcl version 8.6
#  Mar 10, 2024 01:21:42 PM CET  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
    app_exit_png "./assets/button_graphics/app-exit.png" 
    dialog_question_png "./assets/graphic/dialog-question.png" 
    hamburger_menu_png "./assets/button_graphics/hamburger_menu.png" 
    help_about_png "./assets/graphic/help-about.png" 
    no_png "./assets/graphic/no.png" 
    us_png "./assets/graphic/us.png" 
    preferences_png "./assets/button_graphics/preferences.png" 
    window_close_png "./assets/graphic/window-close.png" 
}
vTcl:create_project_images $image_list   ;# In image.tcl

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
########################################### 
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) gray40
set vTcl(analog_color_p) #c3c3c3
set vTcl(analog_color_m) beige
set vTcl(tabfg1) black
set vTcl(tabfg2) white
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
########################################### 
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 0
set vTcl(mode) Absolute
set vTcl(project_theme) cornsilk-dark



proc vTclWindow.top1 {base} {
    global vTcl
    if {$base == ""} {
        set base .top1
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu $top.mem50 -background cornsilk4 -highlightbackground cornsilk4 \
        -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 1360x736+316+125
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 3825 1050
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "Toplevel 0"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    menu "$top.mem50" \
        -activebackground #d9d9d9 -activeforeground black \
        -font "-family {DejaVu Sans} -size 10" -tearoff 0 
    
set site_3_0 $top.mem50
    $top.mem50 add cascade \
        -menu "$top.mem50.men50" -activebackground #d9d9d9 -activeforeground black \
        -font "-family {DejaVu Sans} -size 10" -image hamburger_menu_png \
        -label "H" 
    menu "$site_3_0.men50" \
        -activebackground #d9d9d9 -activeforeground black \
        -font "-family {DejaVu Sans} -size 10" -tearoff 0 
    $site_3_0.men50 add command \
        -command "#on_TBtnPlayer1" -compound left \
        -font "-family {DejaVu Sans} -size 10" -label "Player 1" 
    $site_3_0.men50 add command \
        -command "#on_TBtnPlayer2" -compound left \
        -font "-family {DejaVu Sans} -size 10" -label "Player 2" 
    $site_3_0.men50 add command \
        -command "#on_TBtnPlayer3" -compound left \
        -font "-family {DejaVu Sans} -size 10" -label "Player 3" 
    $site_3_0.men50 add command \
        -command "#on_TBtnPlayer4" -compound left \
        -font "-family {DejaVu Sans} -size 10" -label "Player 4" 
    $site_3_0.men50 add command \
        -activebackground #d9d9d9 -activeforeground black \
        -command "#on_preferences" -compound left \
        -font "-family {DejaVu Sans} -size 10" -image preferences_png \
        -label "Preferences" 
    $site_3_0.men50 add command \
        -activebackground #d9d9d9 -activeforeground black \
        -command "#on_TBtnExit" -compound left \
        -font "-family {DejaVu Sans} -size 10" -image app_exit_png \
        -label "Exit" 
    $top.mem50 add command \
        -command "#" -compound left -font "-family {DejaVu Sans} -size 10" \
        -label "space1" -state disabled 
    $top.mem50 add command \
        -command "#" -compound left -font "-family {DejaVu Sans} -size 10" \
        -label "clock" 
    $top.mem50 add command \
        -command "#" -compound left -font "-family {DejaVu Sans} -size 12" \
        -label "cur_user" -state disabled 
    $top.mem50 add command \
        -command "#" -compound left -font "-family {DejaVu Sans} -size 10" \
        -label "space2" -state disabled 
    $top.mem50 add command \
        -command "#" -compound left -font "-family {DejaVu Sans} -size 12" \
        -label "title" 
    $top.mem50 add command \
        -command "#" -compound left -font "-family {DejaVu Sans} -size 10" \
        -label "space3" -state disabled 
    $top.mem50 add command \
        -command "#on_mnu_help()" -font "-family {DejaVu Sans} -size 12" \
        -image dialog_question_png -label "I" 
    $top.mem50 add command \
        -command "#on_mnu_about()" -font "-family {DejaVu Sans} -size 10" \
        -image help_about_png -label "A" 
    $top.mem50 add command \
        -command "#on_TBtnExit" -font "-family {DejaVu Sans} -size 10" \
        -image window_close_png -label "X" 
    ttk::frame "$top.tFr47" \
        -borderwidth 2 -relief flat -width 520 -height 55 
    vTcl:DefineAlias "$top.tFr47" "TFrame2" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr47
    ttk::label "$site_3_0.tLa49" \
        -font "-family {DejaVu Sans} -size 14" -relief flat -anchor center \
        -justify left -text "undertitle 2" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa49" "TLblExplanationBig" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.tLa49 \
        -in $site_3_0 -x 0 -y 0 -width 660 -relwidth 0 -height 59 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$top.tFr52" \
        -borderwidth 2 -relief solid -width 915 -height 588 
    vTcl:DefineAlias "$top.tFr52" "TFrameInfo" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr52
    ttk::button "$site_3_0.tBu54" \
        -command "on_TButtonDismiss" -text "Dismiss" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu54" "TButtonDismiss" vTcl:WidgetProc "Toplevel1" 1
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$site_3_0.scr53" \
        -borderwidth 2 -relief groove -background cornsilk4 -height 75 \
        -highlightbackground cornsilk4 -highlightcolor black -width 125 
    vTcl:DefineAlias "$site_3_0.scr53" "ScrolledtextHelp" vTcl:WidgetProc "Toplevel1" 1

    $site_3_0.scr53.01 configure -background cornsilk4 \
        -borderwidth 2 \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightbackground cornsilk4 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -relief flat \
        -selectbackground #d9d9d9 \
        -selectforeground black \
        -width 10 \
        -wrap none
    place $site_3_0.tBu54 \
        -in $site_3_0 -x 410 -y 556 -width 74 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.scr53 \
        -in $site_3_0 -x 3 -y 3 -width 906 -relwidth 0 -height 545 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$top.tFr48" \
        -borderwidth 2 -relief flat -width 642 -height 641 
    vTcl:DefineAlias "$top.tFr48" "TFrame3" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr48
    ttk::label "$site_3_0.tLa56" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor center \
        -justify left -text "Player 1" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa56" "TLabel1" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.tLa56
    ttk::label "$site_3_0.tLa47" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor center \
        -justify left -text "Player 2" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa47" "TLabel2" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.tLa47
    ttk::label "$site_3_0.tLa48" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor center \
        -justify left -text "Player 3" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa48" "TLabel3" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.tLa48
    ttk::label "$site_3_0.tLa50" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor center \
        -justify left -text "Player 4" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa50" "TLabel4" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.tLa50
    label "$site_3_0.lab48" \
        -activebackground #d9d9d9 -activeforeground black -anchor w \
        -background cornsilk4 -compound left -disabledforeground #68665a \
        -font "-family {DejaVu Sans} -size 10" -foreground black \
        -highlightbackground cornsilk4 -highlightcolor black -relief solid 
    vTcl:DefineAlias "$site_3_0.lab48" "Label2" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab48
    label "$site_3_0.lab49" \
        -activebackground #d9d9d9 -activeforeground black -anchor w \
        -background cornsilk4 -compound left -disabledforeground #68665a \
        -font "-family {DejaVu Sans} -size 10" -foreground black \
        -highlightbackground cornsilk4 -highlightcolor black -relief solid 
    vTcl:DefineAlias "$site_3_0.lab49" "Label3" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab49
    label "$site_3_0.lab50" \
        -activebackground #d9d9d9 -activeforeground black -anchor w \
        -background cornsilk4 -compound left -disabledforeground #68665a \
        -font "-family {DejaVu Sans} -size 10" -foreground black \
        -highlightbackground cornsilk4 -highlightcolor black -relief solid 
    vTcl:DefineAlias "$site_3_0.lab50" "Label4" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab50
    label "$site_3_0.lab47" \
        -activebackground #d9d9d9 -activeforeground black -anchor w \
        -background cornsilk4 -compound left -disabledforeground #68665a \
        -font "-family {DejaVu Sans} -size 10" -foreground black \
        -highlightbackground cornsilk4 -highlightcolor black -relief solid 
    vTcl:DefineAlias "$site_3_0.lab47" "Label1" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab47
    ttk::entry "$site_3_0.tEn50" \
        -font "-family {DejaVu Sans} -size 10" -textvariable "player1var" \
        -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn50" "TEntry1" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tEn50 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Use only letters, capital letter first, no spaces or hyphens}
    }
    vTcl:copy_lock $site_3_0.tEn50
    ttk::entry "$site_3_0.tEn51" \
        -font "-family {DejaVu Sans} -size 10" -textvariable "player2var" \
        -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn51" "TEntry2" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tEn51 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Use only letters, capital letter first, no spaces or hyphens}
    }
    vTcl:copy_lock $site_3_0.tEn51
    ttk::entry "$site_3_0.tEn54" \
        -font "-family {DejaVu Sans} -size 10" -textvariable "player3var" \
        -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn54" "TEntry3" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tEn54 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Use only letters, capital letter first, no spaces or hyphens}
    }
    vTcl:copy_lock $site_3_0.tEn54
    ttk::entry "$site_3_0.tEn55" \
        -font "-family {DejaVu Sans} -size 10" -textvariable "player4var" \
        -cursor fleur 
    vTcl:DefineAlias "$site_3_0.tEn55" "TEntry4" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tEn55 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Use only letters, capital letter first, no spaces or hyphens}
    }
    vTcl:copy_lock $site_3_0.tEn55
    ttk::label "$site_3_0.tLa51" \
        -font "-family {DejaVu Sans} -size 14 -weight bold" -relief flat \
        -anchor center -justify center \
        -text "Here you can register up to four players" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa51" "TLabel5" vTcl:WidgetProc "Toplevel1" 1
    ttk::button "$site_3_0.tBu52" \
        -command "on_TBtnGoOn" -text "Go On" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu52" "TBtnGoOn" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.tBu52 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Starts the program}
    }
    vTcl:copy_lock $site_3_0.tBu52
    place $site_3_0.tLa56 \
        -in $site_3_0 -x 222 -y 111 -width 200 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa47 \
        -in $site_3_0 -x 222 -y 225 -width 200 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa48 \
        -in $site_3_0 -x 222 -y 335 -width 200 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa50 \
        -in $site_3_0 -x 222 -y 456 -width 200 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab48 \
        -in $site_3_0 -x 199 -y 251 -width 35 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab49 \
        -in $site_3_0 -x 199 -y 361 -width 35 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab50 \
        -in $site_3_0 -x 199 -y 481 -width 35 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab47 \
        -in $site_3_0 -x 199 -y 137 -width 35 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn50 \
        -in $site_3_0 -x 239 -y 137 -width 200 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn51 \
        -in $site_3_0 -x 239 -y 251 -width 200 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn54 \
        -in $site_3_0 -x 239 -y 361 -width 200 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tEn55 \
        -in $site_3_0 -x 239 -y 481 -width 200 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa51 \
        -in $site_3_0 -x 15 -y 10 -width 614 -relwidth 0 -height 91 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tBu52 \
        -in $site_3_0 -x 271 -y 586 -width 100 -relwidth 0 -height 34 \
        -relheight 0 -anchor nw -bordermode ignore 
    frame "$top.fra47" \
        -borderwidth 2 -background cornsilk4 -height 55 \
        -highlightbackground cornsilk4 -highlightcolor black -width 235 
    vTcl:DefineAlias "$top.fra47" "FrameLanguage" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra47
    ttk::button "$site_3_0.tBu53" \
        -command "on_TBtnNext" -text "Next" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu53" "TBtnNext" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.tBu53
    place $site_3_0.tBu53 \
        -in $site_3_0 -x 80 -y 0 -width 74 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    vTcl:copy_lock $top.fra47
    ttk::frame "$top.tFr51" \
        -borderwidth 2 -relief flat -width 520 -height 55 
    vTcl:DefineAlias "$top.tFr51" "TFrame5" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr51
    ttk::label "$site_3_0.tLa49" \
        -font "-family {DejaVu Sans} -size 14" -relief flat -anchor center \
        -justify left -text "undertitle" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa49" "TLblExplanationLittle" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.tLa49 \
        -in $site_3_0 -x 0 -y 0 -width 660 -relwidth 0 -height 59 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$top.tFr55" \
        -borderwidth 2 -relief flat -width 1330 -height 730 
    vTcl:DefineAlias "$top.tFr55" "TFrameSplash" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr55
    canvas "$site_3_0.can50" \
        -background cornsilk4 -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground cornsilk4 -highlightcolor black \
        -insertbackground black -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can50" "CanvasSplash" vTcl:WidgetProc "Toplevel1" 1
    set site_4_0 $site_3_0.can50
    text "$site_4_0.tex47" \
        -background #8B8878 -font "-family {DejaVu Sans} -size 10" \
        -foreground black -height 64 -highlightbackground cornsilk4 \
        -highlightcolor black -insertbackground black -relief flat \
        -selectbackground #d9d9d9 -selectforeground black -width 406 \
        -wrap word 
    $site_4_0.tex47 configure -font "TkTextFont"
    $site_4_0.tex47 insert end text
    vTcl:DefineAlias "$site_4_0.tex47" "TextLogo" vTcl:WidgetProc "Toplevel1" 1
    place $site_4_0.tex47 \
        -in $site_4_0 -x 460 -y 576 -width 405 -relwidth 0 -height 65 \
        -relheight 0 -anchor nw -bordermode ignore 
    vTcl:copy_lock $site_3_0.can50
    place $site_3_0.can50 \
        -in $site_3_0 -x 0 -y 8 -width 1330 -relwidth 0 -height 665 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$top.tFr54" \
        -borderwidth 2 -relief solid -width 915 -height 588 
    vTcl:DefineAlias "$top.tFr54" "TFramePreferences" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr54
    ttk::button "$site_3_0.tBu47" \
        -command "on_TButtonDismissPref" -text "Dismiss" -compound left 
    vTcl:DefineAlias "$site_3_0.tBu47" "TButtonDismiss_1" vTcl:WidgetProc "Toplevel1" 1
    ttk::radiobutton "$site_3_0.tRa56" \
        -variable "selectedButton" -command "on_Rbtn" -image no_png \
        -compound left 
    vTcl:DefineAlias "$site_3_0.tRa56" "TRadiobutton2" vTcl:WidgetProc "Toplevel1" 1
    ttk::radiobutton "$site_3_0.tRa55" \
        -variable "selectedButton" -value "0" -command "on_Rbtn" \
        -image us_png -compound left 
    vTcl:DefineAlias "$site_3_0.tRa55" "TRadiobutton1" vTcl:WidgetProc "Toplevel1" 1
    ttk::label "$site_3_0.tLa57" \
        -font "-family {DejaVu Sans} -size 10" -relief flat -anchor w \
        -justify left -text "Language options:" -compound left 
    vTcl:DefineAlias "$site_3_0.tLa57" "TLabel6" vTcl:WidgetProc "Toplevel1" 1
    ttk::label "$site_3_0.tLa52" \
        -font "-family {DejaVu Sans} -size 14 -weight bold" -relief flat \
        -anchor center -justify left -text "P R E F E R E N C E S :" \
        -compound center 
    vTcl:DefineAlias "$site_3_0.tLa52" "TLabel7" vTcl:WidgetProc "Toplevel1" 1
    ttk::checkbutton "$site_3_0.tCh47" \
        -variable "tch47" -command "on_tch_display" \
        -text "Vis instruksjoner ved oppstart" -compound left 
    vTcl:DefineAlias "$site_3_0.tCh47" "TCheckbuttonDisplay" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.tBu47 \
        -in $site_3_0 -x 410 -y 556 -width 74 -height 35 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tRa56 \
        -in $site_3_0 -x 229 -y 271 -width 50 -relwidth 0 -height 23 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tRa55 \
        -in $site_3_0 -x 229 -y 228 -width 57 -relwidth 0 -height 27 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa57 \
        -in $site_3_0 -x 178 -y 186 -width 123 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tLa52 \
        -in $site_3_0 -x 20 -y 50 -width 874 -relwidth 0 -height 41 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tCh47 \
        -in $site_3_0 -x 545 -y 232 -width 241 -relwidth 0 -height 23 \
        -relheight 0 -anchor nw -bordermode ignore 
    vTcl:copy_lock $top.tFr54
    ttk::frame "$top.tFr53" \
        -borderwidth 2 -relief flat -width 642 -height 641 
    vTcl:DefineAlias "$top.tFr53" "TFrame1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr53
    canvas "$site_3_0.can55" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 190 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 200 
    vTcl:DefineAlias "$site_3_0.can55" "Canvas2" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can55
    canvas "$site_3_0.can65" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can65" "Canvas3" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can65
    canvas "$site_3_0.can66" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can66" "Canvas4" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can66
    canvas "$site_3_0.can47" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can47" "Canvas5" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can47
    canvas "$site_3_0.can48" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can48" "Canvas6" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can48
    canvas "$site_3_0.can53" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can53" "Canvas7" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can53
    canvas "$site_3_0.can67" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can67" "Canvas8" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can67
    canvas "$site_3_0.can54" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can54" "Canvas1" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can54
    canvas "$site_3_0.can68" \
        -background wheat -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground wheat -highlightcolor black \
        -insertbackground black -relief ridge -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can68" "Canvas9" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.can68
    place $site_3_0.can55 \
        -in $site_3_0 -x 221 -y 11 -width 200 -relwidth 0 -height 200 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can65 \
        -in $site_3_0 -x 431 -y 11 -width 200 -height 200 -anchor nw \
        -bordermode ignore 
    place $site_3_0.can66 \
        -in $site_3_0 -x 11 -y 221 -width 200 -height 200 -anchor nw \
        -bordermode ignore 
    place $site_3_0.can47 \
        -in $site_3_0 -x 221 -y 221 -width 200 -relwidth 0 -height 200 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can48 \
        -in $site_3_0 -x 431 -y 221 -width 200 -relwidth 0 -height 200 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can53 \
        -in $site_3_0 -x 11 -y 431 -width 200 -height 200 -anchor nw \
        -bordermode ignore 
    place $site_3_0.can67 \
        -in $site_3_0 -x 221 -y 431 -width 200 -height 200 -anchor nw \
        -bordermode ignore 
    place $site_3_0.can54 \
        -in $site_3_0 -x 10 -y 10 -width 200 -height 200 -anchor nw \
        -bordermode ignore 
    place $site_3_0.can68 \
        -in $site_3_0 -x 431 -y 431 -width 200 -relwidth 0 -height 200 \
        -relheight 0 -anchor nw -bordermode ignore 
    vTcl:copy_lock $top.tFr53
    ttk::frame "$top.tFr49" \
        -borderwidth 2 -relief flat -width 662 -height 661 
    vTcl:DefineAlias "$top.tFr49" "TFrameLotto" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.tFr49
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$site_3_0.scr51" \
        -borderwidth 2 -relief groove -background cornsilk4 -height 75 \
        -highlightbackground cornsilk4 -highlightcolor black -width 125 
    vTcl:DefineAlias "$site_3_0.scr51" "Scrolledtext1" vTcl:WidgetProc "Toplevel1" 1

    $site_3_0.scr51.01 configure -background cornsilk4 \
        -font TkTextFont \
        -foreground #CDBD7C \
        -height 3 \
        -highlightbackground cornsilk4 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -relief flat \
        -selectbackground #d9d9d9 \
        -selectforeground black \
        -width 10 \
        -wrap none
    canvas "$site_3_0.can49" \
        -background cornsilk4 -borderwidth 2 -closeenough 1.0 -height 75 \
        -highlightbackground cornsilk4 -highlightcolor black \
        -insertbackground black -relief solid -selectbackground #d9d9d9 \
        -selectforeground black -width 125 
    vTcl:DefineAlias "$site_3_0.can49" "CanvasLotto" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.scr51 \
        -in $site_3_0 -x 0 -y 0 -width 660 -relwidth 0 -height 660 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.can49 \
        -in $site_3_0 -x 0 -y 0 -width 660 -relwidth 0 -height 660 \
        -relheight 0 -anchor nw -bordermode ignore 
    vTcl:copy_lock $top.tFr49
    ttk::progressbar "$top.tPr48" \
        -orient vertical -length 18 -variable "turn" 
    vTcl:DefineAlias "$top.tPr48" "TProgressbarTurn" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tFr47 \
        -in $top -x 685 -y 672 -width 660 -relwidth 0 -height 60 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tFr52 \
        -in $top -x 240 -y 137 -width 915 -relwidth 0 -height 600 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $top.tFr48 \
        -in $top -x 10 -y 10 -width 664 -relwidth 0 -height 664 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.fra47 \
        -in $top -x 546 -y 690 -width 235 -relwidth 0 -height 40 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tFr51 \
        -in $top -x 10 -y 672 -width 660 -height 60 -anchor nw \
        -bordermode ignore 
    place $top.tFr55 \
        -in $top -x 20 -y 0 -width 1330 -relwidth 0 -height 735 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tFr54 \
        -in $top -x 240 -y 140 -width 915 -height 600 -anchor nw \
        -bordermode ignore 
    place $top.tFr53 \
        -in $top -x 19 -y 23 -width 646 -relwidth 0 -height 647 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tFr49 \
        -in $top -x 684 -y 10 -width 664 -relwidth 0 -height 664 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tPr48 \
        -in $top -x 667 -y 96 -width 18 -relwidth 0 -height 497 -relheight 0 \
        -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top1 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}

