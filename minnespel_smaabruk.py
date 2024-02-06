#! /usr/bin/env python3
#  -*- coding: utf-8 -*-
#
# GUI module generated by PAGE version 8.0
#  in conjunction with Tcl version 8.6
#    Feb 05, 2024 05:42:34 PM CET  platform: Linux

import sys
import tkinter as tk
import tkinter.ttk as ttk
from tkinter.constants import *
import os.path

_location = os.path.dirname(__file__)

import minnespel_smaabruk_support

_bgcolor = 'cornsilk4'
_fgcolor = 'black'
_tabfg1 = 'black' 
_tabfg2 = 'white' 
_bgmode = 'light' 
_tabbg1 = '#d9d9d9' 
_tabbg2 = 'gray40' 

_style_code_ran = 0
def _style_code():
    global _style_code_ran
    if _style_code_ran: return        
    try: minnespel_smaabruk_support.root.tk.call('source',
                os.path.join(_location, 'themes', 'cornsilk-dark.tcl'))
    except: pass
    style = ttk.Style()
    style.theme_use('cornsilk-dark')
    style.configure('.', font = "TkDefaultFont")
    _style_code_ran = 1

class Toplevel1:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''

        top.geometry("1360x737+315+114")
        top.minsize(1, 1)
        top.maxsize(3825, 1050)
        top.resizable(0,  0)
        top.title("Toplevel 0")
        top.configure(background="cornsilk4")
        top.configure(highlightbackground="cornsilk4")
        top.configure(highlightcolor="black")

        self.top = top
        self.player1var = tk.StringVar()
        self.player2var = tk.StringVar()
        self.player3var = tk.StringVar()
        self.player4var = tk.StringVar()
        self.selectedButton = tk.IntVar()

        self.menubar = tk.Menu(top, font="TkMenuFont", bg='cornsilk4'
                ,fg=_fgcolor)
        top.configure(menu = self.menubar)

        self.sub_menu = tk.Menu(self.menubar, activebackground='#d9d9d9'
                ,activeforeground='black', background='cornsilk4'
                ,disabledforeground='#68665a'
                ,font="-family {DejaVu Sans} -size 10", foreground='black'
                ,tearoff=0)
        photo_location = os.path.join(_location,"./assets/button_graphics/hamburger_menu.png")
        global _img0
        _img0 = tk.PhotoImage(file=photo_location)
        self.menubar.add_cascade(activebackground='#d9d9d9'
                ,activeforeground='black', font="-family {DejaVu Sans} -size 10"
                ,image=_img0, label='H', menu=self.sub_menu, )
        self.sub_menu.add_command(command=minnespel_smaabruk_support.on_TBtnPlayer1
                ,compound='left', font="TkMenuFont", label='Player 1')
        self.sub_menu.add_command(command=minnespel_smaabruk_support.on_TBtnPlayer2
                ,compound='left', font="TkMenuFont", label='Player 2')
        self.sub_menu.add_command(command=minnespel_smaabruk_support.on_TBtnPlayer3
                ,compound='left', font="TkMenuFont", label='Player 3')
        self.sub_menu.add_command(command=minnespel_smaabruk_support.on_TBtnPlayer4
                ,compound='left', font="TkMenuFont", label='Player 4')
        photo_location = os.path.join(_location,"./assets/button_graphics/preferences.png")
        global _img1
        _img1 = tk.PhotoImage(file=photo_location)
        self.sub_menu.add_command(activebackground='#d9d9d9'
                ,activeforeground='black'
                ,command=minnespel_smaabruk_support.on_preferences
                ,compound='left', font="-family {DejaVu Sans} -size 10"
                ,image=_img1, label='Preferences')
        photo_location = os.path.join(_location,"./assets/button_graphics/app-exit.png")
        global _img2
        _img2 = tk.PhotoImage(file=photo_location)
        self.sub_menu.add_command(activebackground='#d9d9d9'
                ,activeforeground='black'
                ,command=minnespel_smaabruk_support.on_TBtnExit, compound='left'
                ,font="-family {DejaVu Sans} -size 10", image=_img2, label='Exit')

        self.menubar.add_command(compound='left'
                ,font="-family {DejaVu Sans} -size 10", label='space0'
                ,state="disabled", )
        self.menubar.add_command(compound='left'
                ,font="-family {DejaVu Sans} -size 10", label='clock')
        self.menubar.add_command(compound='left'
                ,font="-family {DejaVu Sans} -size 10", label='space1'
                ,state="disabled", )
        self.menubar.add_command(compound='left'
                ,font="-family {DejaVu Sans} -size 12", label='Title')
        self.menubar.add_command(compound='left'
                ,font="-family {DejaVu Sans} -size 10", label='space2'
                ,state="disabled", )
        self.sub_menu1 = tk.Menu(self.menubar, activebackground='#d9d9d9'
                ,activeforeground='black', background='cornsilk4'
                ,disabledforeground='#68665a'
                ,font="-family {DejaVu Sans} -size 10", foreground='black'
                ,tearoff=0)
        photo_location = os.path.join(_location,"./assets/graphic/dialog-question.png")
        global _img3
        _img3 = tk.PhotoImage(file=photo_location)
        self.menubar.add_cascade(font="-family {DejaVu Sans} -size 10"
                ,image=_img3, label='?', menu=self.sub_menu1, )
        photo_location = os.path.join(_location,"./assets/graphic/help-about.png")
        global _img4
        _img4 = tk.PhotoImage(file=photo_location)
        self.menubar.add_command(font="-family {DejaVu Sans} -size 10"
                ,image=_img4, label='A')
        photo_location = os.path.join(_location,"./assets/graphic/window-close.png")
        global _img5
        _img5 = tk.PhotoImage(file=photo_location)
        self.menubar.add_command(command=minnespel_smaabruk_support.on_TBtnExit
                ,font="-family {DejaVu Sans} -size 10", image=_img5, label='X')

        _style_code()
        self.TFrameSplash = ttk.Frame(self.top)
        self.TFrameSplash.place(x=10, y=10, height=665, width=1338)
        self.TFrameSplash.configure(relief='flat')
        self.TFrameSplash.configure(borderwidth="2")
        self.TFrameSplash.configure(relief="flat")

        self.CanvasSplash = tk.Canvas(self.TFrameSplash)
        self.CanvasSplash.place(x=0, y=8, height=665, width=1330)
        self.CanvasSplash.configure(background="cornsilk4")
        self.CanvasSplash.configure(borderwidth="2")
        self.CanvasSplash.configure(highlightbackground="cornsilk4")
        self.CanvasSplash.configure(selectbackground="#d9d9d9")

        self.TextLogo = tk.Text(self.CanvasSplash)
        self.TextLogo.place(x=460, y=576, height=65, width=405)
        self.TextLogo.configure(background="#8B8878")
        self.TextLogo.configure(font="TkTextFont")
        self.TextLogo.configure(highlightbackground="cornsilk4")
        self.TextLogo.configure(relief="flat")
        self.TextLogo.configure(selectbackground="#d9d9d9")
        self.TextLogo.configure(wrap="word")

        self.Scrolledtext2 = ScrolledText(self.CanvasSplash)
        self.Scrolledtext2.place(x=230, y=18, height=545, width=914)
        self.Scrolledtext2.configure(background="cornsilk4")
        self.Scrolledtext2.configure(borderwidth="2")
        self.Scrolledtext2.configure(font="TkTextFont")
        self.Scrolledtext2.configure(highlightbackground="cornsilk4")
        self.Scrolledtext2.configure(insertborderwidth="3")
        self.Scrolledtext2.configure(relief="solid")
        self.Scrolledtext2.configure(selectbackground="#d9d9d9")
        self.Scrolledtext2.configure(wrap="none")

        self.TFrame1 = ttk.Frame(self.top)
        self.TFrame1.place(x=19, y=23, height=641, width=642)
        self.TFrame1.configure(relief='flat')
        self.TFrame1.configure(borderwidth="2")
        self.TFrame1.configure(relief="flat")

        self.Canvas2 = tk.Canvas(self.TFrame1)
        self.Canvas2.place(x=221, y=11, height=200, width=200)
        self.Canvas2.configure(background="wheat")
        self.Canvas2.configure(borderwidth="2")
        self.Canvas2.configure(highlightbackground="wheat")
        self.Canvas2.configure(relief="ridge")
        self.Canvas2.configure(selectbackground="#d9d9d9")

        self.Canvas3 = tk.Canvas(self.TFrame1)
        self.Canvas3.place(x=431, y=11, height=200, width=200)
        self.Canvas3.configure(background="wheat")
        self.Canvas3.configure(borderwidth="2")
        self.Canvas3.configure(highlightbackground="wheat")
        self.Canvas3.configure(relief="ridge")
        self.Canvas3.configure(selectbackground="#d9d9d9")

        self.Canvas4 = tk.Canvas(self.TFrame1)
        self.Canvas4.place(x=11, y=221, height=200, width=200)
        self.Canvas4.configure(background="wheat")
        self.Canvas4.configure(borderwidth="2")
        self.Canvas4.configure(highlightbackground="wheat")
        self.Canvas4.configure(relief="ridge")
        self.Canvas4.configure(selectbackground="#d9d9d9")

        self.Canvas5 = tk.Canvas(self.TFrame1)
        self.Canvas5.place(x=221, y=221, height=200, width=200)
        self.Canvas5.configure(background="wheat")
        self.Canvas5.configure(borderwidth="2")
        self.Canvas5.configure(highlightbackground="wheat")
        self.Canvas5.configure(relief="ridge")
        self.Canvas5.configure(selectbackground="#d9d9d9")

        self.Canvas6 = tk.Canvas(self.TFrame1)
        self.Canvas6.place(x=431, y=221, height=200, width=200)
        self.Canvas6.configure(background="wheat")
        self.Canvas6.configure(borderwidth="2")
        self.Canvas6.configure(highlightbackground="wheat")
        self.Canvas6.configure(relief="ridge")
        self.Canvas6.configure(selectbackground="#d9d9d9")

        self.Canvas7 = tk.Canvas(self.TFrame1)
        self.Canvas7.place(x=11, y=431, height=200, width=200)
        self.Canvas7.configure(background="wheat")
        self.Canvas7.configure(borderwidth="2")
        self.Canvas7.configure(highlightbackground="wheat")
        self.Canvas7.configure(relief="ridge")
        self.Canvas7.configure(selectbackground="#d9d9d9")

        self.Canvas8 = tk.Canvas(self.TFrame1)
        self.Canvas8.place(x=221, y=431, height=200, width=200)
        self.Canvas8.configure(background="wheat")
        self.Canvas8.configure(borderwidth="2")
        self.Canvas8.configure(highlightbackground="wheat")
        self.Canvas8.configure(relief="ridge")
        self.Canvas8.configure(selectbackground="#d9d9d9")

        self.Canvas1 = tk.Canvas(self.TFrame1)
        self.Canvas1.place(x=10, y=10, height=200, width=200)
        self.Canvas1.configure(background="wheat")
        self.Canvas1.configure(borderwidth="2")
        self.Canvas1.configure(highlightbackground="wheat")
        self.Canvas1.configure(relief="ridge")
        self.Canvas1.configure(selectbackground="#d9d9d9")

        self.Canvas9 = tk.Canvas(self.TFrame1)
        self.Canvas9.place(x=431, y=431, height=200, width=200)
        self.Canvas9.configure(background="wheat")
        self.Canvas9.configure(borderwidth="2")
        self.Canvas9.configure(highlightbackground="wheat")
        self.Canvas9.configure(relief="ridge")
        self.Canvas9.configure(selectbackground="#d9d9d9")

        self.TFrame3 = ttk.Frame(self.top)
        self.TFrame3.place(x=10, y=10, height=664, width=664)
        self.TFrame3.configure(relief='flat')
        self.TFrame3.configure(borderwidth="2")
        self.TFrame3.configure(relief="flat")

        self.TLabel1 = ttk.Label(self.TFrame3)
        self.TLabel1.place(x=222, y=111, height=21, width=200)
        self.TLabel1.configure(font="-family {DejaVu Sans} -size 10")
        self.TLabel1.configure(relief="flat")
        self.TLabel1.configure(anchor='center')
        self.TLabel1.configure(justify='left')
        self.TLabel1.configure(text='''Player 1''')
        self.TLabel1.configure(compound='left')

        self.TLabel2 = ttk.Label(self.TFrame3)
        self.TLabel2.place(x=222, y=225, height=21, width=200)
        self.TLabel2.configure(font="-family {DejaVu Sans} -size 10")
        self.TLabel2.configure(relief="flat")
        self.TLabel2.configure(anchor='center')
        self.TLabel2.configure(justify='left')
        self.TLabel2.configure(text='''Player 2''')
        self.TLabel2.configure(compound='left')

        self.TLabel3 = ttk.Label(self.TFrame3)
        self.TLabel3.place(x=222, y=335, height=21, width=200)
        self.TLabel3.configure(font="-family {DejaVu Sans} -size 10")
        self.TLabel3.configure(relief="flat")
        self.TLabel3.configure(anchor='center')
        self.TLabel3.configure(justify='left')
        self.TLabel3.configure(text='''Player 3''')
        self.TLabel3.configure(compound='left')

        self.TLabel4 = ttk.Label(self.TFrame3)
        self.TLabel4.place(x=222, y=456, height=21, width=200)
        self.TLabel4.configure(font="-family {DejaVu Sans} -size 10")
        self.TLabel4.configure(relief="flat")
        self.TLabel4.configure(anchor='center')
        self.TLabel4.configure(justify='left')
        self.TLabel4.configure(text='''Player 4''')
        self.TLabel4.configure(compound='left')

        self.Label2 = tk.Label(self.TFrame3)
        self.Label2.place(x=199, y=251, height=35, width=35)
        self.Label2.configure(activebackground="#d9d9d9")
        self.Label2.configure(anchor='w')
        self.Label2.configure(background="cornsilk4")
        self.Label2.configure(compound='left')
        self.Label2.configure(disabledforeground="#68665a")
        self.Label2.configure(font="-family {DejaVu Sans} -size 10")
        self.Label2.configure(highlightbackground="cornsilk4")
        self.Label2.configure(relief="solid")

        self.Label3 = tk.Label(self.TFrame3)
        self.Label3.place(x=199, y=361, height=35, width=35)
        self.Label3.configure(activebackground="#d9d9d9")
        self.Label3.configure(anchor='w')
        self.Label3.configure(background="cornsilk4")
        self.Label3.configure(compound='left')
        self.Label3.configure(disabledforeground="#68665a")
        self.Label3.configure(font="-family {DejaVu Sans} -size 10")
        self.Label3.configure(highlightbackground="cornsilk4")
        self.Label3.configure(relief="solid")

        self.Label4 = tk.Label(self.TFrame3)
        self.Label4.place(x=199, y=481, height=35, width=35)
        self.Label4.configure(activebackground="#d9d9d9")
        self.Label4.configure(anchor='w')
        self.Label4.configure(background="cornsilk4")
        self.Label4.configure(compound='left')
        self.Label4.configure(disabledforeground="#68665a")
        self.Label4.configure(font="-family {DejaVu Sans} -size 10")
        self.Label4.configure(highlightbackground="cornsilk4")
        self.Label4.configure(relief="solid")

        self.Label1 = tk.Label(self.TFrame3)
        self.Label1.place(x=199, y=137, height=35, width=35)
        self.Label1.configure(activebackground="#d9d9d9")
        self.Label1.configure(anchor='w')
        self.Label1.configure(background="cornsilk4")
        self.Label1.configure(compound='left')
        self.Label1.configure(disabledforeground="#68665a")
        self.Label1.configure(font="-family {DejaVu Sans} -size 10")
        self.Label1.configure(highlightbackground="cornsilk4")
        self.Label1.configure(relief="solid")

        self.TEntry1 = ttk.Entry(self.TFrame3)
        self.TEntry1.place(x=239, y=137, height=35, width=200)
        self.TEntry1.configure(font="-family {DejaVu Sans} -size 10")
        self.TEntry1.configure(textvariable=self.player1var)
        self.TEntry1.configure(cursor="fleur")
        self.TEntry1_tooltip = \
        ToolTip(self.TEntry1, '''Use only letters, capital letter first, no spaces or hyphens''')

        self.TEntry2 = ttk.Entry(self.TFrame3)
        self.TEntry2.place(x=239, y=251, height=35, width=200)
        self.TEntry2.configure(font="-family {DejaVu Sans} -size 10")
        self.TEntry2.configure(textvariable=self.player2var)
        self.TEntry2.configure(cursor="fleur")
        self.TEntry2_tooltip = \
        ToolTip(self.TEntry2, '''Use only letters, capital letter first, no spaces or hyphens''')

        self.TEntry3 = ttk.Entry(self.TFrame3)
        self.TEntry3.place(x=239, y=361, height=35, width=200)
        self.TEntry3.configure(font="-family {DejaVu Sans} -size 10")
        self.TEntry3.configure(textvariable=self.player3var)
        self.TEntry3.configure(cursor="fleur")
        self.TEntry3_tooltip = \
        ToolTip(self.TEntry3, '''Use only letters, capital letter first, no spaces or hyphens''')

        self.TEntry4 = ttk.Entry(self.TFrame3)
        self.TEntry4.place(x=239, y=481, height=35, width=200)
        self.TEntry4.configure(font="-family {DejaVu Sans} -size 10")
        self.TEntry4.configure(textvariable=self.player4var)
        self.TEntry4.configure(cursor="fleur")
        self.TEntry4_tooltip = \
        ToolTip(self.TEntry4, '''Use only letters, capital letter first, no spaces or hyphens''')

        self.TLabel5 = ttk.Label(self.TFrame3)
        self.TLabel5.place(x=15, y=10, height=91, width=614)
        self.TLabel5.configure(font="-family {DejaVu Sans} -size 14 -weight bold")
        self.TLabel5.configure(relief="flat")
        self.TLabel5.configure(anchor='center')
        self.TLabel5.configure(justify='center')
        self.TLabel5.configure(text='''Here you can register up to four players''')
        self.TLabel5.configure(compound='left')

        self.TBtnGoOn = ttk.Button(self.TFrame3)
        self.TBtnGoOn.place(x=271, y=586, height=34, width=100)
        self.TBtnGoOn.configure(command=minnespel_smaabruk_support.on_TBtnGoOn)
        self.TBtnGoOn.configure(text='''Go On''')
        self.TBtnGoOn.configure(compound='left')
        self.TBtnGoOn_tooltip = \
        ToolTip(self.TBtnGoOn, '''Starts the program''')

        self.FrameLanguage = tk.Frame(self.top)
        self.FrameLanguage.place(x=527, y=676, height=55, width=235)
        self.FrameLanguage.configure(relief='flat')
        self.FrameLanguage.configure(borderwidth="2")
        self.FrameLanguage.configure(background="cornsilk4")
        self.FrameLanguage.configure(highlightbackground="cornsilk4")

        self.TRadiobutton1 = ttk.Radiobutton(self.FrameLanguage)
        self.TRadiobutton1.place(x=10, y=15, width=57, height=27)
        self.TRadiobutton1.configure(variable=self.selectedButton)
        self.TRadiobutton1.configure(value='0')
        self.TRadiobutton1.configure(command=minnespel_smaabruk_support.on_Rbtn)
        photo_location = os.path.join(_location,"./assets/graphic/us.png")
        global _img6
        _img6 = tk.PhotoImage(file=photo_location)
        self.TRadiobutton1.configure(image=_img6)
        self.TRadiobutton1.configure(compound='left')
        self.TRadiobutton1_tooltip = \
        ToolTip(self.TRadiobutton1, '''Choose your language''')

        self.TRadiobutton2 = ttk.Radiobutton(self.FrameLanguage)
        self.TRadiobutton2.place(x=75, y=15, width=50, height=23)
        self.TRadiobutton2.configure(variable=self.selectedButton)
        self.TRadiobutton2.configure(command=minnespel_smaabruk_support.on_Rbtn)
        photo_location = os.path.join(_location,"./assets/graphic/no.png")
        global _img7
        _img7 = tk.PhotoImage(file=photo_location)
        self.TRadiobutton2.configure(image=_img7)
        self.TRadiobutton2.configure(compound='left')
        self.TRadiobutton2_tooltip = \
        ToolTip(self.TRadiobutton2, '''Choose your language''')

        self.TBtnNext = ttk.Button(self.FrameLanguage)
        self.TBtnNext.place(x=145, y=10, height=35, width=74)
        self.TBtnNext.configure(command=minnespel_smaabruk_support.on_TBtnNext)
        self.TBtnNext.configure(text='''Next''')
        self.TBtnNext.configure(compound='left')
        self.TBtnNext_tooltip = \
        ToolTip(self.TBtnNext, '''Are you ready to start?''')

        self.TFrame2 = ttk.Frame(self.top)
        self.TFrame2.place(x=685, y=672, height=60, width=660)
        self.TFrame2.configure(relief='flat')
        self.TFrame2.configure(borderwidth="2")
        self.TFrame2.configure(relief="flat")

        self.TLblExplanation = ttk.Label(self.TFrame2)
        self.TLblExplanation.place(x=0, y=0, height=59, width=660)
        self.TLblExplanation.configure(font="-family {DejaVu Sans} -size 14")
        self.TLblExplanation.configure(relief="flat")
        self.TLblExplanation.configure(anchor='center')
        self.TLblExplanation.configure(justify='left')
        self.TLblExplanation.configure(text='''Dette er en forklaring til bildet over her.  Men dette er bare for å syne lengd''')
        self.TLblExplanation.configure(compound='left')

        self.TFrameLotto = ttk.Frame(self.top)
        self.TFrameLotto.place(x=684, y=10, height=664, width=664)
        self.TFrameLotto.configure(relief='flat')
        self.TFrameLotto.configure(borderwidth="2")
        self.TFrameLotto.configure(relief="flat")

        self.Scrolledtext1 = ScrolledText(self.TFrameLotto)
        self.Scrolledtext1.place(x=0, y=0, height=660, width=660)
        self.Scrolledtext1.configure(background="cornsilk4")
        self.Scrolledtext1.configure(font="TkTextFont")
        self.Scrolledtext1.configure(foreground="#CDBD7C")
        self.Scrolledtext1.configure(highlightbackground="cornsilk4")
        self.Scrolledtext1.configure(insertborderwidth="3")
        self.Scrolledtext1.configure(relief="flat")
        self.Scrolledtext1.configure(selectbackground="#d9d9d9")
        self.Scrolledtext1.configure(wrap="none")

        self.CanvasLotto = tk.Canvas(self.TFrameLotto)
        self.CanvasLotto.place(x=0, y=0, height=660, width=660)
        self.CanvasLotto.configure(background="cornsilk4")
        self.CanvasLotto.configure(borderwidth="2")
        self.CanvasLotto.configure(highlightbackground="cornsilk4")
        self.CanvasLotto.configure(relief="solid")
        self.CanvasLotto.configure(selectbackground="#d9d9d9")

from time import time, localtime, strftime
class ToolTip(tk.Toplevel):
    """ Provides a ToolTip widget for Tkinter. """
    def __init__(self, wdgt, msg=None, msgFunc=None, delay=0.5,
                 follow=True):
        self.wdgt = wdgt
        self.parent = self.wdgt.master
        tk.Toplevel.__init__(self, self.parent, bg='black', padx=1, pady=1)
        self.withdraw()
        self.overrideredirect(True)
        self.msgVar = tk.StringVar()
        if msg is None:
            self.msgVar.set('No message provided')
        else:
            self.msgVar.set(msg)
        self.msgFunc = msgFunc
        self.delay = delay
        self.follow = follow
        self.visible = 0
        self.lastMotion = 0
        self.msg = tk.Message(self, textvariable=self.msgVar, bg=_bgcolor,
                   fg=_fgcolor, font="TkDefaultFont",
                   aspect=1000)
        self.msg.grid()
        self.wdgt.bind('<Enter>', self.spawn, '+')
        self.wdgt.bind('<Leave>', self.hide, '+')
        self.wdgt.bind('<Motion>', self.move, '+')
    def spawn(self, event=None):
        self.visible = 1
        self.after(int(self.delay * 1000), self.show)
    def show(self):
        if self.visible == 1 and time() - self.lastMotion > self.delay:
            self.visible = 2
        if self.visible == 2:
            self.deiconify()
    def move(self, event):
        self.lastMotion = time()
        if self.follow is False:
            self.withdraw()
            self.visible = 1
        self.geometry('+%i+%i' % (event.x_root + 20, event.y_root - 10))
        try:
            self.msgVar.set(self.msgFunc())
        except:
            pass
        self.after(int(self.delay * 1000), self.show)
    def hide(self, event=None):
        self.visible = 0
        self.withdraw()
    def update(self, msg):
        self.msgVar.set(msg)
    def configure(self, **kwargs):
        backgroundset = False
        foregroundset = False
        # Get the current tooltip text just in case the user doesn't provide any.
        current_text = self.msgVar.get()
        # to clear the tooltip text, use the .update method
        if 'debug' in kwargs.keys():
            debug = kwargs.pop('debug', False)
            if debug:
                for key, value in kwargs.items():
                    print(f'key: {key} - value: {value}')
        if 'background' in kwargs.keys():
            background = kwargs.pop('background')
            backgroundset = True
        if 'bg' in kwargs.keys():
            background = kwargs.pop('bg')
            backgroundset = True
        if 'foreground' in kwargs.keys():
            foreground = kwargs.pop('foreground')
            foregroundset = True
        if 'fg' in kwargs.keys():
            foreground = kwargs.pop('fg')
            foregroundset = True

        fontd = kwargs.pop('font', None)
        if 'text' in kwargs.keys():
            text = kwargs.pop('text')
            if (text == '') or (text == "\n"):
                text = current_text
            else:
                self.msgVar.set(text)
        reliefd = kwargs.pop('relief', 'flat')
        justifyd = kwargs.pop('justify', 'left')
        padxd = kwargs.pop('padx', 1)
        padyd = kwargs.pop('pady', 1)
        borderwidthd = kwargs.pop('borderwidth', 2)
        wid = self.msg      # The message widget which is the actual tooltip
        if backgroundset:
            wid.config(bg=background)
        if foregroundset:
            wid.config(fg=foreground)
        wid.config(font=fontd)
        wid.config(borderwidth=borderwidthd)
        wid.config(relief=reliefd)
        wid.config(justify=justifyd)
        wid.config(padx=padxd)
        wid.config(pady=padyd)
#                   End of Class ToolTip

# The following code is added to facilitate the Scrolled widgets you specified.
class AutoScroll(object):
    '''Configure the scrollbars for a widget.'''
    def __init__(self, master):
        #  Rozen. Added the try-except clauses so that this class
        #  could be used for scrolled entry widget for which vertical
        #  scrolling is not supported. 5/7/14.
        try:
            vsb = ttk.Scrollbar(master, orient='vertical', command=self.yview)
        except:
            pass
        hsb = ttk.Scrollbar(master, orient='horizontal', command=self.xview)
        try:
            self.configure(yscrollcommand=self._autoscroll(vsb))
        except:
            pass
        self.configure(xscrollcommand=self._autoscroll(hsb))
        self.grid(column=0, row=0, sticky='nsew')
        try:
            vsb.grid(column=1, row=0, sticky='ns')
        except:
            pass
        hsb.grid(column=0, row=1, sticky='ew')
        master.grid_columnconfigure(0, weight=1)
        master.grid_rowconfigure(0, weight=1)
        # Copy geometry methods of master  (taken from ScrolledText.py)
        methods = tk.Pack.__dict__.keys() | tk.Grid.__dict__.keys() \
                  | tk.Place.__dict__.keys()
        for meth in methods:
            if meth[0] != '_' and meth not in ('config', 'configure'):
                setattr(self, meth, getattr(master, meth))

    @staticmethod
    def _autoscroll(sbar):
        '''Hide and show scrollbar as needed.'''
        def wrapped(first, last):
            first, last = float(first), float(last)
            if first <= 0 and last >= 1:
                sbar.grid_remove()
            else:
                sbar.grid()
            sbar.set(first, last)
        return wrapped

    def __str__(self):
        return str(self.master)

def _create_container(func):
    '''Creates a ttk Frame with a given master, and use this new frame to
    place the scrollbars and the widget.'''
    def wrapped(cls, master, **kw):
        container = ttk.Frame(master)
        container.bind('<Enter>', lambda e: _bound_to_mousewheel(e, container))
        container.bind('<Leave>', lambda e: _unbound_to_mousewheel(e, container))
        return func(cls, container, **kw)
    return wrapped

class ScrolledText(AutoScroll, tk.Text):
    '''A standard Tkinter Text widget with scrollbars that will
    automatically show/hide as needed.'''
    @_create_container
    def __init__(self, master, **kw):
        tk.Text.__init__(self, master, **kw)
        AutoScroll.__init__(self, master)

import platform
def _bound_to_mousewheel(event, widget):
    child = widget.winfo_children()[0]
    if platform.system() == 'Windows' or platform.system() == 'Darwin':
        child.bind_all('<MouseWheel>', lambda e: _on_mousewheel(e, child))
        child.bind_all('<Shift-MouseWheel>', lambda e: _on_shiftmouse(e, child))
    else:
        child.bind_all('<Button-4>', lambda e: _on_mousewheel(e, child))
        child.bind_all('<Button-5>', lambda e: _on_mousewheel(e, child))
        child.bind_all('<Shift-Button-4>', lambda e: _on_shiftmouse(e, child))
        child.bind_all('<Shift-Button-5>', lambda e: _on_shiftmouse(e, child))

def _unbound_to_mousewheel(event, widget):
    if platform.system() == 'Windows' or platform.system() == 'Darwin':
        widget.unbind_all('<MouseWheel>')
        widget.unbind_all('<Shift-MouseWheel>')
    else:
        widget.unbind_all('<Button-4>')
        widget.unbind_all('<Button-5>')
        widget.unbind_all('<Shift-Button-4>')
        widget.unbind_all('<Shift-Button-5>')

def _on_mousewheel(event, widget):
    if platform.system() == 'Windows':
        widget.yview_scroll(-1*int(event.delta/120),'units')
    elif platform.system() == 'Darwin':
        widget.yview_scroll(-1*int(event.delta),'units')
    else:
        if event.num == 4:
            widget.yview_scroll(-1, 'units')
        elif event.num == 5:
            widget.yview_scroll(1, 'units')

def _on_shiftmouse(event, widget):
    if platform.system() == 'Windows':
        widget.xview_scroll(-1*int(event.delta/120), 'units')
    elif platform.system() == 'Darwin':
        widget.xview_scroll(-1*int(event.delta), 'units')
    else:
        if event.num == 4:
            widget.xview_scroll(-1, 'units')
        elif event.num == 5:
            widget.xview_scroll(1, 'units')
def start_up():
    minnespel_smaabruk_support.main()

if __name__ == '__main__':
    minnespel_smaabruk_support.main()




