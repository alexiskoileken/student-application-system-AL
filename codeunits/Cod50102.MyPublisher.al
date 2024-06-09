codeunit 50102 MyPublisher
{
    [IntegrationEvent(false, false)]
    procedure OnEmailAdd(code: code[50])
    begin
    end;

    [IntegrationEvent(false, false)]
    procedure OnPhoneNumberAdd(Text: Text[20])
    begin
    end;
}
