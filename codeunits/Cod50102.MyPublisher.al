/// <summary>
/// Codeunit MyPublisher (ID 50102).
/// </summary>
codeunit 50102 MyPublisher
{
    // [IntegrationEvent(false, false)]
    // procedure OnEmailAdd(code: code[50])
    // begin
    // end;

    [IntegrationEvent(false, false)]
    procedure OnPhoneNumberAdd(Code: Code[20])
    begin
    end;
}
