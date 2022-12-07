uses crt;
var f: file of char;
i, j, k, n: integer;
s:string; 
begin
  s:='files';
  assign(f, s);
  rewrite(f);
  readln(n);
  readln(k);
  for i:= 1 to n do
  begin
    for j:= 1 to k do
      write(f, '*');
    write(f, #13, #10);
  end;
  close(f);
end.