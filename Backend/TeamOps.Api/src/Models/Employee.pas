unit Employee;

interface

uses
  System.SysUtils;

type
  TEmployee = class
  private
    FId: Integer;
    FCompanyId: Integer;
    FName: string;
    FDocument: string;
    FEmail: string;
    FPhone: string;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
    FIsActive: Boolean;
  public
    property Id: Integer read FId write FId;
    property CompanyId: Integer read FCompanyId write FCompanyId;
    property Name: string read FName write FName;
    property Document: string read FDocument write FDocument;
    property Email: string read FEmail write FEmail;
    property Phone: string read FPhone write FPhone;
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    property UpdatedAt: TDateTime read FUpdatedAt write FUpdatedAt;
    property IsActive: Boolean read FIsActive write FIsActive;
  end;

implementation

end.
