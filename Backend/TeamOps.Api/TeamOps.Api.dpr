program TeamOps.Api;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Company in 'src\Models\Company.pas',
  Employee in 'src\Models\Employee.pas',
  Team in 'src\Models\Team.pas',
  ServiceOrderStatusEnum in 'src\Enums\ServiceOrderStatusEnum.pas',
  ServiceOrder in 'src\Models\ServiceOrder.pas',
  ServiceItem in 'src\Models\ServiceItem.pas',
  ServiceLabor in 'src\Models\ServiceLabor.pas',
  TeamEmployee in 'src\Models\TeamEmployee.pas',
  Customer in 'src\Models\Customer.pas',
  Product in 'src\Models\Product.pas',
  Account in 'src\Models\Account.pas',
  AccountTypeEnum in 'src\Enums\AccountTypeEnum.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
