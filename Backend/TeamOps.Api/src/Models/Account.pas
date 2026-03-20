unit Account;

interface

uses
  System.SysUtils,
  AccountTypeEnum;

type
  TAccount = class
  private
    FId: Integer;
    FCompanyId: Integer;
    FName: string;
    FEmail: string;
    FPasswordHash: string;
    FAccountType: TAccountTypeEnum;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
    FIsActive: Boolean;
  public
    property Id: Integer read FId write FId;
    property CompanyId: Integer read FCompanyId write FCompanyId;
    property Name: string read FName write FName;
    property Email: string read FEmail write FEmail;
    property PasswordHash: string read FPasswordHash write FPasswordHash;
    property AccountType: TAccountTypeEnum read FAccountType write FAccountType;
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    property UpdatedAt: TDateTime read FUpdatedAt write FUpdatedAt;
    property IsActive: Boolean read FIsActive write FIsActive;
  end;

implementation

end.
