unit Product;

interface

uses
  System.SysUtils;

type
  TProduct = class
  private
    FId: Integer;
    FCompanyId: Integer;
    FName: string;
    FDescription: string;
    FMeasurementUnit: string;
    FUnitPrice: Currency;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
    FIsActive: Boolean;
  public
    property Id: Integer read FId write FId;
    property CompanyId: Integer read FCompanyId write FCompanyId;
    property Name: string read FName write FName;
    property Description: string read FDescription write FDescription;
    property MeasurementUnit: string read FMeasurementUnit write FMeasurementUnit;
    property UnitPrice: Currency read FUnitPrice write FUnitPrice;
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    property UpdatedAt: TDateTime read FUpdatedAt write FUpdatedAt;
    property IsActive: Boolean read FIsActive write FIsActive;
  end;

implementation

end.
