codeunit 50102 "CX Playground Install"
{
    Subtype = Install;
    InherentEntitlements = X;
    InherentPermissions = X;
    Access = Internal;

    trigger OnInstallAppPerDatabase()
    begin
        RegisterCapability();
    end;

    local procedure RegisterCapability()
    var
        EnvironmentInfo: Codeunit "Environment Information";
        CopilotCapability: Codeunit "Copilot Capability";
    begin
        if EnvironmentInfo.IsSaaSInfrastructure() then
            if not CopilotCapability.IsCapabilityRegistered(Enum::"Copilot Capability"::"CX Playground Test") then
                CopilotCapability.RegisterCapability(
                    Enum::"Copilot Capability"::"CX Playground Test",
                    Enum::"Copilot Availability"::Preview,
                    Enum::"Copilot Billing Type"::"Not Billed",
                    '');
    end;
}