unit ServiceOrder;

interface

uses
  System.SysUtils,
  ServiceOrderStatusEnum;

type
  TServiceOrder = class
  private
    FId: Integer;
    FCompanyId: Integer;
    FTeamId: Integer;
    FCustomerId: Integer;
    FNumber: string;
    FServiceDate: TDate;
    FStartTime: TTime;
    FEndTime: TTime;
    FServiceAddress: string;
    FDescription: string;
    FStatus: TServiceOrderStatusEnum;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
    FIsActive: Boolean;
  public
    property Id: Integer read FId write FId;
    property CompanyId: Integer read FCompanyId write FCompanyId;
    property TeamId: Integer read FTeamId write FTeamId;
    property CustomerId: Integer read FCustomerId write FCustomerId;
    property Number: string read FNumber write FNumber;
    property ServiceDate: TDate read FServiceDate write FServiceDate;
    property StartTime: TTime read FStartTime write FStartTime;
    property EndTime: TTime read FEndTime write FEndTime;
    property ServiceAddress: string read FServiceAddress write FServiceAddress;
    property Description: string read FDescription write FDescription;
    property Status: TServiceOrderStatusEnum read FStatus write FStatus;
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    property UpdatedAt: TDateTime read FUpdatedAt write FUpdatedAt;
    property IsActive: Boolean read FIsActive write FIsActive;
  end;

implementation

end.
