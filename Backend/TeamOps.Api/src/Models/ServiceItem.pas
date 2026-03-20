unit ServiceItem;

interface

uses
  System.SysUtils;

type
  TServiceItem = class
  private
    FId: Integer;
    FServiceOrderId: Integer;
    FProductId: Integer;
    FDescription: string;
    FQuantity: Double;
    FUnitPrice: Currency;
    FTotalPrice: Currency;
    FCreatedAt: TDateTime;
    FUpdatedAt: TDateTime;
    FIsActive: Boolean;
  public
    property Id: Integer read FId write FId;
    property ServiceOrderId: Integer read FServiceOrderId write FServiceOrderId;
    property ProductId: Integer read FProductId write FProductId;
    property Description: string read FDescription write FDescription;
    property Quantity: Double read FQuantity write FQuantity;
    property UnitPrice: Currency read FUnitPrice write FUnitPrice;
    property TotalPrice: Currency read FTotalPrice write FTotalPrice;
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    property UpdatedAt: TDateTime read FUpdatedAt write FUpdatedAt;
    property IsActive: Boolean read FIsActive write FIsActive;
  end;

implementation

end.
