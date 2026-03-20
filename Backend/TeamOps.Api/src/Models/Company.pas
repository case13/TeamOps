unit Company;

interface

uses
  System.SysUtils;

type
  TCompany = class
  private
    FId: Integer;
    FRegistry: string;
    FLegalName: string;
    FName: string;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
    FIsActive: Boolean;
  public
    property Id: Integer read FId write FId;
    property Registry: string read FRegistry write FRegistry;
    property LegalName: string read FLegalName write FLegalName;
    property Name: string read FName write FName;
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    property UpdatedAt: TDateTime read FUpdatedAt write FUpdatedAt;
    property IsActive: Boolean read FIsActive write FIsActive;
  end;

implementation

end.
