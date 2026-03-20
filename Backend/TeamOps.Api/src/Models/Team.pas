unit Team;

interface

uses
  System.SysUtils;

type
  TTeam = class
  private
    FId: Integer;
    FCompanyId: Integer;
    FName: string;
    FDescription: string;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
    FIsActive: Boolean;
  public
    property Id: Integer read FId write FId;
    property CompanyId: Integer read FCompanyId write FCompanyId;
    property Name: string read FName write FName;
    property Description: string read FDescription write FDescription;
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    property UpdatedAt: TDateTime read FUpdatedAt write FUpdatedAt;
    property IsActive: Boolean read FIsActive write FIsActive;
  end;

implementation

end.
