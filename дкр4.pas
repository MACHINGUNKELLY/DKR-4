uses GraphABC;
function f(x:real):real;
begin
f:=1*x**3+(-2)*x**2+(5)*x+(17);
end;

var x,y,mx,my:real;
    x0,y0,i:integer;
    s:string;
begin
x0:=windowwidth div 2;//начало координат в центре экрана
y0:=windowheight div 2;
my:=(y0-20)/30;//масштаб
mx:=(x0-20)/6;
line(0,y0,2*x0,y0); //оси
line(x0,0,x0,2*y0);
for i:=1 to 30 do //максимальное количество засечек в одну сторону
 begin
  line(x0-3,y0-round(i*my),x0+3,y0-round(i*my));//засечки на оси У
  line(x0-3,y0+round(i*my),x0+3,y0+round(i*my));
  line(x0+round(i*mx),y0-3,x0+round(i*mx),y0+3); //засечки на оси Х
  line(x0-round(i*mx),y0-3,x0-round(i*mx),y0+3);
  str(i,s);
  //подпись оси У
  if i mod 2=0 then
   begin
    textout(x0-25,y0-round(i*my),s);//оответственно засечкам
    textout(x0-25,y0+round(i*my),'-'+s);
   end;
  //подпись оси Х}
  textout(x0+round(i*mx),y0+10,s);
  textout(x0-round(i*mx),y0+10,'-'+s);
 end;
begin

var  l,p: real;
var  x2,x1,y1 : integer;
x0:=windowwidth div 2;//начало координат в центре экрана
y0:=windowheight div 2;
L:=-10;
p:=10;         // отрезок real; 
mx:=20;         
my:= 1;         // int;
x:=l;
textout(x0 - 15, y0 + 5 , '0');
textout(windowwidth - 10, y0 + 15, 'X');
textout(x0 - 15,y0 - 240, 'Y');
setpenwidth (1);
while x<=p do begin 
y:=1*x**3+(-2)*x**2+(5)*x+(17);
x1:=X0+round(x*mx);
y1:=Y0-round(y*my);
setpixel (x1,y1,clred);
x+=0.0001;
end;
 var h,a,b:real;
var n: integer;
read(a,b,n);
h:= (b-a)/n;
x:=a;
while x<=b do
begin
y:=1*x**3+(-2)*x**2+(5)*x+(17);
x1:=X0+round(x*mx);
y1:=Y0-round(y*my);
x2:=x0+round((h+x)*mx);
setpencolor (clrandom);
rectangle(x1,y1,x2,y0);
setbrushcolor(clrandom);
x+=h;
end;
end;
end.