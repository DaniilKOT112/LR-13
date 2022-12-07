var f:text;
  s: string;
begin
  writeln('Введите строку');
  readln(s);
  assign(f, 'text.txt');
  append(f);
  writeln(f);
  writeln(f, s);
  close(f);
end.