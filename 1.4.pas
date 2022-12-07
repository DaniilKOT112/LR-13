var f, g: text;
    k, i: integer;
    s: string;
 begin
   readln(k);
   inc(k);
   assign(f, 'one.txt'); 
   reset(f);
   assign(g, 'two.txt');
   rewrite(g);
   while not eof do
   begin
     readln(f, s);
     inc(i);
     if i = k then writeln(g);
     writeln(g, s);
   end;
   close(f);
   close(g);
   deletefile('one.txt');
   renamefile('two.txt', 'one.txt');
 end.