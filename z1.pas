﻿var 
  time:array of integer;
  n,student1,student3,student5:integer;
  f1,f2:text;
  
function sumtimes(arr:array of integer; count: integer): integer;
begin
  var sum: integer;
  var points: integer;
    for var i := 0 to n-1 do 
    begin
      sum := 0;
      for var j := 0 to i do
        sum += arr[j];
      points += sum
    end;
  result := points;
end;  

function whowin(s1,s3,s5:integer): integer;
begin
  if (s1 <= s3)and(s1 <= s5) then result := 1;
  if (s3 < s1)and(s3 <= s5) then result := 3;
  if (s5 < s1)and(s5 < s3) then result := 5;
end;  
 
begin 
  assign(f1,'input.txt');
  reset(f1);
  readln(f1,n);
  
  setlength(time, n);
  for var i := 0 to n-1 do 
    read(f1,time[i]);
  close(f1);
  student5 := sumtimes(time,n);
  reverse(time); //заменить 
  student3 := sumtimes(time,n);
  Sort(time);  //заменить (пузырек)
  student1 := sumtimes(time,n);
  
  assign(f2,'output.txt');
  rewrite(f2);
  write(f2, whowin(student1, student3,student5));
  close(f2);
end.