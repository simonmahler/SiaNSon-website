fixMozillaZIndex=true; //Fixes Z-Index problem  with Mozilla browsers but causes odd scrolling problem, toggle to see if it helps
_menuCloseDelay=500;
_menuOpenDelay=150;
_subOffsetTop=2;
_subOffsetLeft=-2;




with(menuStyle=new mm_style()){
bordercolor="black";
borderstyle="solid";
borderwidth=0;
fontfamily="Arial, Tahoma, Verdana";
fontsize="100%";
fontstyle="normal";
fontweight="bold";
headerbgcolor="#ffffff";
headercolor="#000000";
offbgcolor="white";
offcolor="black";
offborder='1px solid white';
onbgcolor="white";
oncolor="black";
onborder='2px solid #cc6600';

outfilter="randomdissolve(duration=.1)";
overfilter="Fade(duration=.1);Alpha(opacity=90);Shadow(color=#777777', Direction=135, Strength=5)";
padding=2;
pagebgcolor="white";
pagecolor="black";
separatorcolor="black";
separatorheight=10;
separatorpadding=4;
separatorwidth=2;
//separatorsize=0;

//subimage="http://www.milonic.com/menuimages/arrow.gif";
subimagepadding=20;
}

with(menuStyle2=new mm_style()){
align="left";
bordercolor="black";
borderstyle="solid";
borderwidth=1;
fontfamily="Arial, Tahoma, Verdana";
fontsize="90%";
fontstyle="normal";
fontweight="bold";
headerbgcolor="#ffffff";
headercolor="#000000";
offbgcolor="white";
offcolor="black";
onbgcolor="white";
oncolor="#cc6600";

outfilter="randomdissolve(duration=.1)";
overfilter="Fade(duration=.1);Alpha(opacity=90);Shadow(color=#777777', Direction=135, Strength=5)";
padding=2;
pagebgcolor="white";
pagecolor="black";
separatorcolor="black";
separatorheight=0;
separatorpadding=0;
separatorwidth=0;
//separatorsize=0;

//subimage="http://www.milonic.com/menuimages/arrow.gif";
subimagepadding=20;
}


with(milonic=new menuname("About")){
overflow="scroll";
style=menuStyle2;
aI("text=Micro-finance;url=about_fr.html#microfinance;")
aI("text=Sia N'Son;url=about_fr.html#mission;")
aI("text=Employ�s;url=employees_fr.html;")

}

with(milonic=new menuname("Products")){
style=menuStyle2;
aI("text=Micro-cr�dit;url=loans.html;showmenu=Microcr�dits;");
aI("text=Application;url=apply_fr.html;");
}

with(milonic=new menuname("Investors")){
style=menuStyle;
}

with(milonic=new menuname("Careers")){
style=menuStyle2;
aI("text=Offres d'emploi ;url=careers_fr.html#jobs;");
aI("text=Stages;url=careers_fr.html#internships;");
}

with(milonic=new menuname("Microcr�dits")){
overflow="scroll";
style=menuStyle2;
aI("text=Micro-Cr�dit au Plus Pauvres;url=loans.html#mcpp;");
aI("text=Tout Petit Cr�dit aux Femmes;url=loans.html#tpcf;");
aI("text=Cr�dit Catholic Relief Services;url=loans.html#ccrs;");
aI("text=Cr�dit Plan�te Finance;url=loans.html#cpf;");
aI("text=Cr�dit Warrantage;url=loans.html#cw;");
}

drawMenus();

