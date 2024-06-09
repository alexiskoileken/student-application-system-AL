codeunit 50101 MySubscriber
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyPublisher, 'OnPhoneNumberAdd', '', true, true)]
    procedure ValidatePhoneNumber(Text: Text[20])
    var
        phoneNumber: Record "student details";

    begin
        if (StrLen(phoneNumber."Mobile Phone") <> 13) or (CopyStr(phoneNumber."Mobile Phone", 1, 1) <> '+') then
            Error('enter a valid phonenumber');
    end;





}
