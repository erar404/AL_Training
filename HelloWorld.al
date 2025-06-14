// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.RGMCTest_erar;

using Microsoft.Sales.Customer;

pageextension 50101 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('Ang Aplikasyon ay matagumpay na ipatakbo! Mabuhay');
    end;
}