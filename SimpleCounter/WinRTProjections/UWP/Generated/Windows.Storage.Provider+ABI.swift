// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

private var IID___x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI: WindowsFoundation.IID {
    .init(Data1: 0x9E6F41E6, Data2: 0xBAF2, Data3: 0x4A97, Data4: ( 0xB6,0x00,0x93,0x33,0xF5,0xDF,0x80,0xFD ))// 9E6F41E6-BAF2-4A97-B600-9333F5DF80FD
}

private var IID___x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI2: WindowsFoundation.IID {
    .init(Data1: 0x8856A21C, Data2: 0x8699, Data3: 0x4340, Data4: ( 0x9F,0x49,0xF7,0xCA,0xD7,0xFE,0x89,0x91 ))// 8856A21C-8699-4340-9F49-F7CAD7FE8991
}

private var IID___x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest: WindowsFoundation.IID {
    .init(Data1: 0x40C82536, Data2: 0xC1FE, Data3: 0x4D93, Data4: ( 0xA7,0x92,0x1E,0x73,0x6B,0xC7,0x08,0x37 ))// 40C82536-C1FE-4D93-A792-1E736BC70837
}

private var IID___x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest2: WindowsFoundation.IID {
    .init(Data1: 0x82484648, Data2: 0xBDBE, Data3: 0x447B, Data4: ( 0xA2,0xEE,0x7A,0xFE,0x6A,0x03,0x2A,0x94 ))// 82484648-BDBE-447B-A2EE-7AFE6A032A94
}

private var IID___x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequestDeferral: WindowsFoundation.IID {
    .init(Data1: 0xFFCEDB2B, Data2: 0x8ADE, Data3: 0x44A5, Data4: ( 0xBB,0x00,0x16,0x4C,0x4E,0x72,0xF1,0x3A ))// FFCEDB2B-8ADE-44A5-BB00-164C4E72F13A
}

private var IID___x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequestedEventArgs: WindowsFoundation.IID {
    .init(Data1: 0x7B0A9342, Data2: 0x3905, Data3: 0x438D, Data4: ( 0xAA,0xEF,0x78,0xAE,0x26,0x5F,0x8D,0xD2 ))// 7B0A9342-3905-438D-AAEF-78AE265F8DD2
}

public enum __ABI_Windows_Storage_Provider {
    public class ICachedFileUpdaterUI: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI }

        internal func get_TitleImpl() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_Title(pThis, &value))
            }
            return .init(from: value)
        }

        internal func put_TitleImpl(_ value: String) throws {
            let _value = try! HString(value)
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.put_Title(pThis, _value.get()))
            }
        }

        internal func get_UpdateTargetImpl() throws -> UWP.CachedFileTarget {
            var value: __x_ABI_CWindows_CStorage_CProvider_CCachedFileTarget = .init(0)
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_UpdateTarget(pThis, &value))
            }
            return value
        }

        internal func add_FileUpdateRequestedImpl(_ handler: TypedEventHandler<UWP.CachedFileUpdaterUI?, UWP.FileUpdateRequestedEventArgs?>?) throws -> EventRegistrationToken {
            var token: EventRegistrationToken = .init()
            let handlerWrapper = UWP.__x_ABI_C__FITypedEventHandler_2___x_ABI_CWindows__CStorage__CProvider__CCachedFileUpdaterUI___x_ABI_CWindows__CStorage__CProvider__CFileUpdateRequestedEventArgsWrapper(handler)
            let _handler = try! handlerWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.add_FileUpdateRequested(pThis, _handler, &token))
            }
            return token
        }

        internal func remove_FileUpdateRequestedImpl(_ token: EventRegistrationToken) throws {
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.remove_FileUpdateRequested(pThis, token))
            }
        }

        internal func add_UIRequestedImpl(_ handler: TypedEventHandler<UWP.CachedFileUpdaterUI?, Any?>?) throws -> EventRegistrationToken {
            var token: EventRegistrationToken = .init()
            let handlerWrapper = UWP.__x_ABI_C__FITypedEventHandler_2___x_ABI_CWindows__CStorage__CProvider__CCachedFileUpdaterUI_IInspectableWrapper(handler)
            let _handler = try! handlerWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.add_UIRequested(pThis, _handler, &token))
            }
            return token
        }

        internal func remove_UIRequestedImpl(_ token: EventRegistrationToken) throws {
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.remove_UIRequested(pThis, token))
            }
        }

        internal func get_UIStatusImpl() throws -> UWP.UIStatus {
            var value: __x_ABI_CWindows_CStorage_CProvider_CUIStatus = .init(0)
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_UIStatus(pThis, &value))
            }
            return value
        }

    }

    public class ICachedFileUpdaterUI2: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI2 }

        internal func get_UpdateRequestImpl() throws -> UWP.FileUpdateRequest? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI2.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_UpdateRequest(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

        internal func GetDeferralImpl() throws -> UWP.FileUpdateRequestDeferral? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CICachedFileUpdaterUI2.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.GetDeferral(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

    }

    public class IFileUpdateRequest: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest }

        internal func get_ContentIdImpl() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_ContentId(pThis, &value))
            }
            return .init(from: value)
        }

        internal func get_FileImpl() throws -> UWP.StorageFile? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_File(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

        internal func get_StatusImpl() throws -> UWP.FileUpdateStatus {
            var value: __x_ABI_CWindows_CStorage_CProvider_CFileUpdateStatus = .init(0)
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_Status(pThis, &value))
            }
            return value
        }

        internal func put_StatusImpl(_ value: UWP.FileUpdateStatus) throws {
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.put_Status(pThis, value))
            }
        }

        internal func GetDeferralImpl() throws -> UWP.FileUpdateRequestDeferral? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.GetDeferral(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

        internal func UpdateLocalFileImpl(_ value: UWP.AnyIStorageFile?) throws {
            let valueWrapper = __ABI_Windows_Storage.IStorageFileWrapper(value)
            let _value = try! valueWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.UpdateLocalFile(pThis, _value))
            }
        }

    }

    public class IFileUpdateRequest2: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest2 }

        internal func get_UserInputNeededMessageImpl() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest2.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_UserInputNeededMessage(pThis, &value))
            }
            return .init(from: value)
        }

        internal func put_UserInputNeededMessageImpl(_ value: String) throws {
            let _value = try! HString(value)
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequest2.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.put_UserInputNeededMessage(pThis, _value.get()))
            }
        }

    }

    public class IFileUpdateRequestDeferral: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequestDeferral }

        internal func CompleteImpl() throws {
            _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequestDeferral.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.Complete(pThis))
            }
        }

    }

    public class IFileUpdateRequestedEventArgs: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequestedEventArgs }

        internal func get_RequestImpl() throws -> UWP.FileUpdateRequest? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CWindows_CStorage_CProvider_CIFileUpdateRequestedEventArgs.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_Request(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

    }

}
