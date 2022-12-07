var mas: array [1..100] of integer;
    i, min, max: integer;
    f1, f2: text;
    begin
     assign(f1, 'input.txt');
     assign(f2, 'output.txt');
     reset(f1);
      while not eof(f1) do
        begin
      for i:= 1 to 100 do
        readln(f1, mas[i]);
        end;
    min:= mas[1];
    for i:= 2 to 100 do
    begin
      if mas[i] < mas[1] then
        min:= mas[i];
     end;
    max:= mas[1];
    for i:= 2 to 100 do
    begin
      if mas[i] > mas[1] then
        max:= mas[i];
     end;   
    rewrite(f2);
    writeln(f2, max, min);
    close(f1);
    close(f2);
     end.