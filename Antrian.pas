unit Antrian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,MmSystem;

const
  maxSize=999;
type
  TForm1 = class(TForm)
    Panel1: TPanel;
    meja1: TLabel;
    Panel2: TPanel;
    meja2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  ArrayInt=array[1..maxSize]of string; 
var
  Form1: TForm1;
  heap:ArrayInt;
  size:integer;


implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
   size:=0;
end;

function parent(index:integer):integer;
begin
    parent:=index div 2;
end;

function leftChild(index:integer):integer;
begin
    leftChild:=2*index;
end;

function rightChild(index:integer):integer;
begin
    rightChild:=(2*index)+1;
end;
 
function isLeaf(index:integer):boolean;
begin
    if (index >= (size/2)) and (index<=size)then
      isLeaf:=true
      else
        isLeaf:=false;
end;    

procedure tukar(index1:integer;index2:integer);
var
  temp:string;
begin
   temp:=heap[index1];
   heap[index1]:=heap[index2];
   heap[index2]:=temp;
end;

procedure buatHeap(index:integer);
begin
   if(not isLeaf(index))then
   begin
       if(heap[index]>heap[leftChild(index)]) or (heap[index] > heap[rightChild(index)])then
       begin
          if(heap[leftChild(index)] < heap[rightChild(index)])then
          begin
              tukar(index,leftChild(index));
              buatHeap(leftChild(index));
          end
          else
          begin
              tukar(index,rightChild(index));
              buatHeap(rightChild(index));
          end;
       end;
   end;
end;


procedure siftUp;
var
  index:integer;
  y:string;
begin
   index:=size;
   while(index>1) and(heap[index div 2]>heap[index])do
   begin
      y := heap[index];
      heap[index]:=heap[index div 2];
      heap[index div 2]:=y;
      index:=index div 2;
    end;
end;


procedure tambah(data:string);
var
  current:integer;
begin
    heap[size+1]:=data;
    current:=size;
    size:=size+1;
    siftUp;
end;

procedure reorganisasi;
var
  i:integer;
  tengah:integer;
begin
  i:=size div 2;
  while(i >= 1)do
  begin
      buatHeap(i);
      i:=i-1;
  end;
end;

function ambil:string;
var
  data:string;
begin
   data:=heap[1];
   heap[1]:=heap[size];
   size:=size-1;
   //buatHeap(1);
   //siftDown(1);
   reorganisasi;
   ambil:=data;
end;


procedure TForm1.Button1Click(Sender: TObject);
var
  urut:string;
begin
  if(size=0)then
  begin
     heap[1]:='P001';
     size:=1;
     //tambah('P001');
     ShowMessage('Nomor antrian anda : P001');
  end
  else
  begin
     urut:='P'+Format('%.3d', [size+1]);
     tambah(urut);
     ShowMessage('Nomor antrian anda : '+urut);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  kode:string;
begin
  if(size=0)then
  begin
    ShowMessage('Antrian kosong!!');
    meja1.Caption:='0';
    meja2.Caption:='0';
  end
  else
    begin
      kode:=ambil;
      meja1.Caption:=kode;

    end;
  end;

procedure TForm1.Button3Click(Sender: TObject);
var
  urut:string;
begin
  if(size=0)then
  begin
     heap[1]:='B001';
     size:=1;
     //tambah('P001');
     ShowMessage('Nomor antrian anda : B001');
  end
  else
  begin
     urut:='B'+Format('%.3d', [size+1]);
     tambah(urut);
     ShowMessage('Nomor antrian adana : '+urut);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i:integer;
  kode:string;
  j:PAnsiChar;
begin
  if(size=0)then
  begin
    ShowMessage('Antrian kosong!!');
    meja1.Caption:='0';
    meja2.Caption:='0';
  end
    else
    begin
      kode:=ambil;
      meja2.Caption:=kode;

      PlaySound('C:\Program Files (x86)\Borland\Delphi7\Projects\Antrian2\suara\nomor-urut.wav',0,SND_FILENAME);
      for i:=1 to 4 do
      begin
          j:=PAnsiChar('C:\Program Files (x86)\Borland\Delphi7\Projects\Antrian2\suara\'+Copy(kode,i,1)+'.wav');
          PlaySound(j,0,SND_FILENAME);
      end;
      PlaySound('C:\Program Files (x86)\Borland\Delphi7\Projects\Antrian2\suara\loket.wav',0,SND_FILENAME);
      PlaySound('C:\Program Files (x86)\Borland\Delphi7\Projects\Antrian2\suara\2.wav',0,SND_FILENAME);
    end;
end;

end.
