{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvDropDownForm, released on 2002-10-04.

The Initial Developer of the Original Code is Oliver Giesen [giesen@lucatec.com]
Portions created by Oliver Giesen are Copyright (C) 2002 Lucatec GmbH.
All Rights Reserved.

Contributor(s): ______________________________________.

Last Modified: 2002-10-04

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}
{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$I JVCL.INC}

{ A generic container form to be displayed as dropdown below a TCustomEdit
 descendant.

 There's still plenty of room for improvement here.
}

unit JvDropDownForm;

interface

uses
  Classes,
  Windows,
  Messages,
  Controls,
  StdCtrls,
  Forms,
  JvTypes;

type
  TJvCustomDropDownForm = class(TCustomForm)
  private
    FEntering: Boolean;
    FCloseOnLeave: Boolean;
    FLeaving: Boolean;
    FOnLoseFocus: TJvFocusChangeEvent;
    FOnGetFocus: TJvFocusChangeEvent;
    procedure WMKillFocus(var AMessage: TMessage); message WM_KILLFOCUS;
    procedure WMSetFocus(var AMessage: TMessage); message WM_SETFOCUS;
  protected
    function GetEdit: TCustomEdit;

    function Entering: Boolean;
    function Leaving: Boolean;

    procedure GetFocus(const APreviousControl: TWinControl);dynamic;
    procedure LoseFocus(const AFocusControl: TWinControl); virtual;

    procedure DoClose(var AAction: TCloseAction); override;
    procedure DoShow; override;
    procedure CreateParams(var AParams: TCreateParams); override;

    property Edit: TCustomEdit read GetEdit;
  public
    constructor Create(AOwner: TComponent); override;

    property CloseOnLeave: Boolean read FCloseOnLeave write FCloseOnLeave;

    property OnGetFocus: TJvFocusChangeEvent read FOnGetFocus write FOnGetFocus;
    property OnLoseFocus: TJvFocusChangeEvent read FOnLoseFocus
      write FOnLoseFocus;
  end;

{TODO : IsChildOf should probably better be moved somewhere into the JCL}
function IsChildOf(const AChild, AParent: HWND): Boolean;

implementation

uses
  SysUtils;


function IsChildOf(const AChild, AParent: HWND): Boolean;
var
  lParent: HWND;
begin
 {determines whether one control is the child (or grand^x-child) of another}
  lParent := AChild;
  repeat
    lParent := GetParent(lParent);
  until(lParent = AParent) or(lParent = 0);
  result := lParent = AParent;
end;

{ TJvCustomDropDownForm }

type
  TCustomEditHack = class(TCustomEdit);

constructor TJvCustomDropDownForm.Create(AOwner: TComponent);
begin
  Assert(AOwner is TCustomEdit,
    Format('Owner of %s must be a TCustomEdit!', [ClassName]));

  inherited CreateNew(AOwner);

  BorderIcons := [];
  BorderStyle := bsNone;
  Font := TCustomEditHack(AOwner).Font;

  FEntering := True;
  FLeaving := False;
  FCloseOnLeave := True;

  with(TWinControl(AOwner)) do
  begin
    Self.Left := ClientOrigin.X;
    Self.Top := ClientOrigin.Y + Height;
  end;
end;

procedure TJvCustomDropDownForm.CreateParams(var AParams: TCreateParams);
begin
  inherited;
  AParams.Style := AParams.Style or WS_BORDER;
end;

procedure TJvCustomDropDownForm.DoClose(var AAction: TCloseAction);
begin
  AAction := caFree;
  inherited;
end;

procedure TJvCustomDropDownForm.DoShow;
var
  lScreenRect: TRect;
begin
  inherited;

  if(not SystemParametersInfo(SPI_GETWORKAREA, 0, @lScreenRect, 0)) then
    lScreenRect := Rect(0, 0, Screen.Width, Screen.Height);

  if(Left + Width > lScreenRect.Right) then
    Left := lScreenRect.Right - Width;

  if(Top + Height > lScreenRect.Bottom) then
    Top := Self.Edit.ClientOrigin.y - Height;
end;

function TJvCustomDropDownForm.GetEdit: TCustomEdit;
begin
  result := TCustomEdit(Owner);
end;

procedure TJvCustomDropDownForm.WMKillFocus(var AMessage: TMessage);
begin
  if(IsChildOf(AMessage.WParam, Self.Handle)) then
    inherited
  else
  begin
    FLeaving := True;
    try
      inherited;
      LoseFocus(FindControl(AMessage.WParam));
    finally
      FLeaving := False;
    end;
  end;
end;

function TJvCustomDropDownForm.Leaving: Boolean;
begin
  result := FLeaving;
end;

procedure TJvCustomDropDownForm.LoseFocus(const AFocusControl: TWinControl);
begin
  if(Assigned(OnLoseFocus)) then
    OnLoseFocus(Self, AFocusControl);

  if(CloseOnLeave) then
    Close;
end;

procedure TJvCustomDropDownForm.WMSetFocus(var AMessage: TMessage);
begin
  if(IsChildOf(AMessage.WParam, Self.Handle)) then
    inherited
  else
  begin
    FEntering := True;
    try
      inherited;
      GetFocus(FindControl(AMessage.WParam));
    finally
      FEntering := False;
    end;
  end;
end;

function TJvCustomDropDownForm.Entering: Boolean;
begin
  result := FEntering;
end;

procedure TJvCustomDropDownForm.GetFocus(
  const APreviousControl: TWinControl);
begin
  if(Assigned(OnGetFocus)) then
    OnGetFocus(Self, APreviousControl);
end;

end.
