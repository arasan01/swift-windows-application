// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

private var IID___x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallEndCallDeferral: WindowsFoundation.IID {
    .init(Data1: 0x2DD7ED0D, Data2: 0x98ED, Data3: 0x4041, Data4: ( 0x96,0x32,0x50,0xFF,0x81,0x2B,0x77,0x3F ))// 2DD7ED0D-98ED-4041-9632-50FF812B773F
}

private var IID___x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallEndRequestedEventArgs: WindowsFoundation.IID {
    .init(Data1: 0x8190A363, Data2: 0x6F27, Data3: 0x46E9, Data4: ( 0xAE,0xB6,0xC0,0xAE,0x83,0xE4,0x7D,0xC7 ))// 8190A363-6F27-46E9-AEB6-C0AE83E47DC7
}

private var IID___x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallUI: WindowsFoundation.IID {
    .init(Data1: 0xC596FD8D, Data2: 0x73C9, Data3: 0x4A14, Data4: ( 0xB0,0x21,0xEC,0x1C,0x50,0xA3,0xB7,0x27 ))// C596FD8D-73C9-4A14-B021-EC1C50A3B727
}

public enum __ABI_Windows_ApplicationModel_Calls {
    public class ILockScreenCallEndCallDeferral: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallEndCallDeferral }

        internal func CompleteImpl() throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallEndCallDeferral.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.Complete(pThis))
            }
        }

    }

    public class ILockScreenCallEndRequestedEventArgs: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallEndRequestedEventArgs }

        internal func GetDeferralImpl() throws -> UWP.LockScreenCallEndCallDeferral? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallEndRequestedEventArgs.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.GetDeferral(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

        internal func get_DeadlineImpl() throws -> WindowsFoundation.DateTime {
            var value: __x_ABI_CWindows_CFoundation_CDateTime = .init()
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallEndRequestedEventArgs.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_Deadline(pThis, &value))
            }
            return .from(abi: value)
        }

    }

    public class ILockScreenCallUI: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallUI }

        internal func DismissImpl() throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.Dismiss(pThis))
            }
        }

        internal func add_EndRequestedImpl(_ handler: TypedEventHandler<UWP.LockScreenCallUI?, UWP.LockScreenCallEndRequestedEventArgs?>?) throws -> EventRegistrationToken {
            var token: EventRegistrationToken = .init()
            let handlerWrapper = UWP.__x_ABI_C__FITypedEventHandler_2___x_ABI_CWindows__CApplicationModel__CCalls__CLockScreenCallUI___x_ABI_CWindows__CApplicationModel__CCalls__CLockScreenCallEndRequestedEventArgsWrapper(handler)
            let _handler = try! handlerWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.add_EndRequested(pThis, _handler, &token))
            }
            return token
        }

        internal func remove_EndRequestedImpl(_ token: EventRegistrationToken) throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.remove_EndRequested(pThis, token))
            }
        }

        internal func add_ClosedImpl(_ handler: TypedEventHandler<UWP.LockScreenCallUI?, Any?>?) throws -> EventRegistrationToken {
            var token: EventRegistrationToken = .init()
            let handlerWrapper = UWP.__x_ABI_C__FITypedEventHandler_2___x_ABI_CWindows__CApplicationModel__CCalls__CLockScreenCallUI_IInspectableWrapper(handler)
            let _handler = try! handlerWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.add_Closed(pThis, _handler, &token))
            }
            return token
        }

        internal func remove_ClosedImpl(_ token: EventRegistrationToken) throws {
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.remove_Closed(pThis, token))
            }
        }

        internal func get_CallTitleImpl() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_CallTitle(pThis, &value))
            }
            return .init(from: value)
        }

        internal func put_CallTitleImpl(_ value: String) throws {
            let _value = try! HString(value)
            _ = try perform(as: __x_ABI_CWindows_CApplicationModel_CCalls_CILockScreenCallUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.put_CallTitle(pThis, _value.get()))
            }
        }

    }

}
