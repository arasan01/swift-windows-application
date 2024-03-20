// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.addappointmentoperation)
public final class AddAppointmentOperation : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Appointments_AppointmentsProvider.IAddAppointmentOperation
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIAddAppointmentOperation
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIAddAppointmentOperation>?) -> AddAppointmentOperation? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: WindowsFoundation.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.addappointmentoperation.reportcompleted)
    public func reportCompleted(_ itemId: String) throws {
        try _default.ReportCompletedImpl(itemId)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.addappointmentoperation.reportcanceled)
    public func reportCanceled() throws {
        try _default.ReportCanceledImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.addappointmentoperation.reporterror)
    public func reportError(_ value: String) throws {
        try _default.ReportErrorImpl(value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.addappointmentoperation.dismissui)
    public func dismissUI() throws {
        try _default.DismissUIImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.addappointmentoperation.appointmentinformation)
    public var appointmentInformation : UWP.Appointment! {
        get { try! _default.get_AppointmentInformationImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.addappointmentoperation.sourcepackagefamilyname)
    public var sourcePackageFamilyName : String {
        get { try! _default.get_SourcePackageFamilyNameImpl() }
    }

    deinit {
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.removeappointmentoperation)
public final class RemoveAppointmentOperation : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Appointments_AppointmentsProvider.IRemoveAppointmentOperation
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation>?) -> RemoveAppointmentOperation? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: WindowsFoundation.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.removeappointmentoperation.reportcompleted)
    public func reportCompleted() throws {
        try _default.ReportCompletedImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.removeappointmentoperation.reportcanceled)
    public func reportCanceled() throws {
        try _default.ReportCanceledImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.removeappointmentoperation.reporterror)
    public func reportError(_ value: String) throws {
        try _default.ReportErrorImpl(value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.removeappointmentoperation.dismissui)
    public func dismissUI() throws {
        try _default.DismissUIImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.removeappointmentoperation.appointmentid)
    public var appointmentId : String {
        get { try! _default.get_AppointmentIdImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.removeappointmentoperation.instancestartdate)
    public var instanceStartDate : WindowsFoundation.DateTime? {
        get { try! _default.get_InstanceStartDateImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.removeappointmentoperation.sourcepackagefamilyname)
    public var sourcePackageFamilyName : String {
        get { try! _default.get_SourcePackageFamilyNameImpl() }
    }

    deinit {
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.replaceappointmentoperation)
public final class ReplaceAppointmentOperation : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Appointments_AppointmentsProvider.IReplaceAppointmentOperation
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation>?) -> ReplaceAppointmentOperation? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: WindowsFoundation.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.replaceappointmentoperation.reportcompleted)
    public func reportCompleted(_ itemId: String) throws {
        try _default.ReportCompletedImpl(itemId)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.replaceappointmentoperation.reportcanceled)
    public func reportCanceled() throws {
        try _default.ReportCanceledImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.replaceappointmentoperation.reporterror)
    public func reportError(_ value: String) throws {
        try _default.ReportErrorImpl(value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.replaceappointmentoperation.dismissui)
    public func dismissUI() throws {
        try _default.DismissUIImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.replaceappointmentoperation.appointmentid)
    public var appointmentId : String {
        get { try! _default.get_AppointmentIdImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.replaceappointmentoperation.appointmentinformation)
    public var appointmentInformation : UWP.Appointment! {
        get { try! _default.get_AppointmentInformationImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.replaceappointmentoperation.instancestartdate)
    public var instanceStartDate : WindowsFoundation.DateTime? {
        get { try! _default.get_InstanceStartDateImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.appointments.appointmentsprovider.replaceappointmentoperation.sourcepackagefamilyname)
    public var sourcePackageFamilyName : String {
        get { try! _default.get_SourcePackageFamilyNameImpl() }
    }

    deinit {
        _default = nil
    }
}

