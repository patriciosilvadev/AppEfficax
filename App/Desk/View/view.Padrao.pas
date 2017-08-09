unit view.Padrao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Edit, FMX.ListBox, FMX.StdCtrls, FMX.ListView, FMX.TabControl,
  FMX.Controls.Presentation, FMX.Layouts, System.Actions, FMX.ActnList;

type
  TfrmCadPadrao = class(TForm)
    lytBase: TLayout;
    ToolBar1: TToolBar;
    spbMenu: TSpeedButton;
    spbAdd: TSpeedButton;
    spbEdt: TSpeedButton;
    spbCanc: TSpeedButton;
    spbBack: TSpeedButton;
    spbExc: TSpeedButton;
    TabControl1: TTabControl;
    tbiLista: TTabItem;
    tbiFormulario: TTabItem;
    ToolBar2: TToolBar;
    ListView1: TListView;
    StyleBook1: TStyleBook;
    lbTitulo: TLabel;
    spbSalv: TSpeedButton;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    SpeedButton7: TSpeedButton;
    ActionList1: TActionList;
    ctaFormulario: TChangeTabAction;
    ctaLista: TChangeTabAction;
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure spbEdtClick(Sender: TObject);
    procedure spbSalvClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spbAddClick(Sender: TObject);
    procedure spbCancClick(Sender: TObject);
    procedure spbExcClick(Sender: TObject);
    procedure spbBackClick(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaOperacao(I: integer);
  public
    { Public declarations }
  end;

var
  frmCadPadrao: TfrmCadPadrao;

implementation

{$R *.fmx}

{ TForm1 }

procedure TfrmCadPadrao.FormCreate(Sender: TObject);
begin
 VerificaOperacao(1);
 ctaLista.Execute;
end;

procedure TfrmCadPadrao.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
 ctaFormulario.Execute;
end;

procedure TfrmCadPadrao.spbAddClick(Sender: TObject);
begin
 VerificaOperacao(3);
 ctaFormulario.Execute;
end;

procedure TfrmCadPadrao.spbBackClick(Sender: TObject);
begin
VerificaOperacao(1);
ctaLista.Execute;
end;

procedure TfrmCadPadrao.spbCancClick(Sender: TObject);
begin
 VerificaOperacao(1);
 ctaLista.Execute;
end;

procedure TfrmCadPadrao.spbEdtClick(Sender: TObject);
begin
 ctaFormulario.Execute;
 VerificaOperacao(2);
end;

procedure TfrmCadPadrao.spbExcClick(Sender: TObject);
begin
 VerificaOperacao(1);
 if TabControl1.ActiveTab = tbiFormulario then
  ctaLista.Execute;

end;

procedure TfrmCadPadrao.spbSalvClick(Sender: TObject);
begin
 VerificaOperacao(1);
 ctaLista.Execute;
end;

procedure TfrmCadPadrao.VerificaOperacao(I: integer);
begin
//Tela de busca
if I = 1 then
  begin
   spbAdd.Visible := true;
   spbExc.Visible := true;
   spbEdt.Visible := true;
   spbCanc.Visible := false;
   spbSalv.Visible := false;
   spbBack.Visible := false;
   spbMenu.Visible := True;
  end
//Editando
  else
   if I = 2 then
    begin
      spbAdd.Visible := false;
      spbExc.Visible := true;
      spbEdt.Visible := false;
      spbCanc.Visible := true;
      spbSalv.Visible := true;
      spbBack.Visible := true;
      spbMenu.Visible := False;
    end
//Incluindo
    else
     if I = 3 then
      begin
        spbAdd.Visible := false;
        spbExc.Visible := false;
        spbEdt.Visible := false;
        spbCanc.Visible := true;
        spbSalv.Visible := true;
        spbBack.Visible := true;
        spbMenu.Visible := False;
      end;
end;

end.
