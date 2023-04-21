program Prac3Ejerc5;
const 
  corte = 'ZZZ';
type
 str40 = string[40];
 auto = record
  marca : str40;
  modelo : str40;
  precio: real;
 end;
procedure leer(var a : auto);
begin
writeln('ingrese marca del auto');
 readln(a.marca);
 if (a.marca <> corte)then
 begin
 writeln('ingrese modelo');
 readln(a.modelo);
 writeln('ingrese precio');
 readln(a.precio);
 end;
end;
procedure maximo(au: auto; var aMax: auto);
begin
 if(au.precio > aMax.precio) then aMax := au;
end;
var
  a, max: auto;
  marcaAux: str40;
  cant: integer;
  total: real;
begin
    max.precio := -9999;
    leer(a);
    while (a.marca <> corte) do
    begin
      total := 0;
      cant := 0;
      marcaAux := a.marca;
      while (marcaAux = a.marca) do
      begin
       total := total + a.precio;
       cant := cant + 1;
       maximo(a,max);
       leer(a);
      end;
      writeln('Precio promedio de la marca ', marcaAux ,': ', (total/cant):0:2);
    end;
    writeln('Marca y modelo del auto más caro es: ',max.marca, ' ', max.modelo);
end.