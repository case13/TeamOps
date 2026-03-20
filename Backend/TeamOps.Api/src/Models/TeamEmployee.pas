unit TeamEmployee;

interface

uses
  System.SysUtils;

type
  TTeamEmployee = class
  private
    FId: Integer;
    FTeamId: Integer;
    FEmployeeId: Integer;
    FStartDate: TDate;
    FEndDate: TDate;
    FIsLeader: Boolean;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
    FIsActive: Boolean;
  public
    property Id: Integer read FId write FId;
    property TeamId: Integer read FTeamId write FTeamId;
    property EmployeeId: Integer read FEmployeeId write FEmployeeId;
    property StartDate: TDate read FStartDate write FStartDate;
    property EndDate: TDate read FEndDate write FEndDate;
    property IsLeader: Boolean read FIsLeader write FIsLeader;
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    property UpdatedAt: TDateTime read FUpdatedAt write FUpdatedAt;
    property IsActive: Boolean read FIsActive write FIsActive;
  end;

implementation

end.
