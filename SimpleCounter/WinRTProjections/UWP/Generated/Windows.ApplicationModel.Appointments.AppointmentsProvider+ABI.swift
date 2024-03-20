// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

private var IID___x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIAddAppointmentOperation: WindowsFoundation.IID {
    .init(Data1: 0xEC4A9AF3, Data2: 0x620D, Data3: 0x4C69, Data4: ( 0xAD,0xD7,0x97,0x94,0xE9,0x18,0x08,0x1F ))// EC4A9AF3-620D-4C69-ADD7-9794E918081F
}

private var IID___x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation: WindowsFoundation.IID {
    .init(Data1: 0x08B66ABA, Data2: 0xFE33, Data3: 0x46CD, Data4: ( 0xA5,0x0C,0xA8,0xFF,0xB3,0x26,0x05,0x37 ))// 08B66ABA-FE33-46CD-A50C-A8FFB3260537
}

private var IID___x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation: WindowsFoundation.IID {
    .init(Data1: 0xF4903D9B, Data2: 0x9E61, Data3: 0x4DE2, Data4: ( 0xA7,0x32,0x26,0x87,0xC0,0x7D,0x1D,0xE8 ))// F4903D9B-9E61-4DE2-A732-2687C07D1DE8
}

public enum __ABI_Windows_ApplicationModel_Appointments_AppointmentsProvider {
    public class IAddAppointmentOperation: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIAddAppointmentOperation }

        internal func get_AppointmentInformationImpl() throws -> UWP.Appointment? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIAddAppointmentOperation.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_AppointmentInformation(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

        internal func get_SourcePackageFamilyNameImpl() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIAddAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_SourcePackageFamilyName(pThis, &value))
            }
            return .init(from: value)
        }

        internal func ReportCompletedImpl(_ itemId: String) throws {
            let _itemId = try! HString(itemId)
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIAddAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.ReportCompleted(pThis, _itemId.get()))
            }
        }

        internal func ReportCanceledImpl() throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIAddAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.ReportCanceled(pThis))
            }
        }

        internal func ReportErrorImpl(_ value: String) throws {
            let _value = try! HString(value)
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIAddAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.ReportError(pThis, _value.get()))
            }
        }

        internal func DismissUIImpl() throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIAddAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.DismissUI(pThis))
            }
        }

    }

    public class IRemoveAppointmentOperation: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation }

        internal func get_AppointmentIdImpl() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_AppointmentId(pThis, &value))
            }
            return .init(from: value)
        }

        internal func get_InstanceStartDateImpl() throws -> WindowsFoundation.DateTime? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_InstanceStartDate(pThis, &valueAbi))
                }
            }
            return UWP.__x_ABI_C__FIReference_1___x_ABI_CWindows__CFoundation__CDateTimeWrapper.unwrapFrom(abi: value)
        }

        internal func get_SourcePackageFamilyNameImpl() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_SourcePackageFamilyName(pThis, &value))
            }
            return .init(from: value)
        }

        internal func ReportCompletedImpl() throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.ReportCompleted(pThis))
            }
        }

        internal func ReportCanceledImpl() throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.ReportCanceled(pThis))
            }
        }

        internal func ReportErrorImpl(_ value: String) throws {
            let _value = try! HString(value)
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.ReportError(pThis, _value.get()))
            }
        }

        internal func DismissUIImpl() throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIRemoveAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.DismissUI(pThis))
            }
        }

    }

    public class IReplaceAppointmentOperation: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation }

        internal func get_AppointmentIdImpl() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_AppointmentId(pThis, &value))
            }
            return .init(from: value)
        }

        internal func get_AppointmentInformationImpl() throws -> UWP.Appointment? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_AppointmentInformation(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

        internal func get_InstanceStartDateImpl() throws -> WindowsFoundation.DateTime? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_InstanceStartDate(pThis, &valueAbi))
                }
            }
            return UWP.__x_ABI_C__FIReference_1___x_ABI_CWindows__CFoundation__CDateTimeWrapper.unwrapFrom(abi: value)
        }

        internal func get_SourcePackageFamilyNameImpl() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_SourcePackageFamilyName(pThis, &value))
            }
            return .init(from: value)
        }

        internal func ReportCompletedImpl(_ itemId: String) throws {
            let _itemId = try! HString(itemId)
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.ReportCompleted(pThis, _itemId.get()))
            }
        }

        internal func ReportCanceledImpl() throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.ReportCanceled(pThis))
            }
        }

        internal func ReportErrorImpl(_ value: String) throws {
            let _value = try! HString(value)
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.ReportError(pThis, _value.get()))
            }
        }

        internal func DismissUIImpl() throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CAppointments_CAppointmentsProvider_CIReplaceAppointmentOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.DismissUI(pThis))
            }
        }

    }

}
