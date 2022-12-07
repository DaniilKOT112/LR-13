var f1, f2: text;
    l: string; 
    begin
      
      assign(f1, 'f1.txt');
      assign(f2, 'f2.txt');
      reset(f1);
      rewrite(f2);
      while not eof(f1) do begin
        readln(f1, l);
        if l <>'' then
          writeln(f2, l);
      end;
      close(f1);
      close(f2);
      erase(f1);
      rename(f2, 'f1.txt');
    end.