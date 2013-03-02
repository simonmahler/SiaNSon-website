with(milonic=new menuname("Main Menu")){
style=menuStyle;
alwaysvisible=1;
orientation="horizontal";
position="relative";
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;Index&nbsp;&nbsp;&nbsp;&nbsp;;url=index.html;status=Index Page;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;About&nbsp;&nbsp;&nbsp;&nbsp;url=about_fr.html;showmenu=About;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;Produits&nbsp;&nbsp;&nbsp;&nbsp;;showmenu=Products;url=loans_fr.html");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;Bailleurs&nbsp;&nbsp;&nbsp;&nbsp;;url=investors_fr.html;status=Investors;");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;Carrières&nbsp;&nbsp;&nbsp;&nbsp;;showmenu=Careers;url=careers_fr.html");
aI("text=&nbsp;&nbsp;&nbsp;&nbsp;Contact&nbsp;&nbsp;&nbsp;&nbsp;;url=contact_fr.html;status=Contact;");
}
drawMenus();
