codeunit 50101 MySubscriber
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyPublisher, 'OnEmailAdd', '', true, true)]
    local procedure MyProcedure()
    begin

    end;
}
