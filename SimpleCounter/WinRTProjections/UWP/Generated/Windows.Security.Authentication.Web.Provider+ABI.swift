// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

private var IID___x_ABI_CWindows_CSecurity_CAuthentication_CWeb_CProvider_CIWebAccountProviderOperation: WindowsFoundation.IID {
    .init(Data1: 0x6D5D2426, Data2: 0x10B1, Data3: 0x419A, Data4: ( 0xA4,0x4E,0xF9,0xC5,0x16,0x15,0x74,0xE6 ))// 6D5D2426-10B1-419A-A44E-F9C5161574E6
}

public enum __ABI_Windows_Security_Authentication_Web_Provider {
    public class IWebAccountProviderOperation: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CSecurity_CAuthentication_CWeb_CProvider_CIWebAccountProviderOperation }

        open func get_KindImpl() throws -> UWP.WebAccountProviderOperationKind {
            var value: __x_ABI_CWindows_CSecurity_CAuthentication_CWeb_CProvider_CWebAccountProviderOperationKind = .init(0)
            _ = try perform(as: __x_ABI_CWindows_CSecurity_CAuthentication_CWeb_CProvider_CIWebAccountProviderOperation.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_Kind(pThis, &value))
            }
            return value
        }

    }

    internal static var IWebAccountProviderOperationVTable: __x_ABI_CWindows_CSecurity_CAuthentication_CWeb_CProvider_CIWebAccountProviderOperationVtbl = .init(
        QueryInterface: { IWebAccountProviderOperationWrapper.queryInterface($0, $1, $2) },
        AddRef: { IWebAccountProviderOperationWrapper.addRef($0) },
        Release: { IWebAccountProviderOperationWrapper.release($0) },
        GetIids: {
            let size = MemoryLayout<WindowsFoundation.IID>.size
            let iids = CoTaskMemAlloc(UInt64(size) * 3).assumingMemoryBound(to: WindowsFoundation.IID.self)
            iids[0] = IUnknown.IID
            iids[1] = IInspectable.IID
            iids[2] = __ABI_Windows_Security_Authentication_Web_Provider.IWebAccountProviderOperationWrapper.IID
            $1!.pointee = 3
            $2!.pointee = iids
            return S_OK
        },

        GetRuntimeClassName: {
            _ = $0
            let hstring = try! HString("Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation").detach()
            $1!.pointee = hstring
            return S_OK
        },

        GetTrustLevel: {
            _ = $0
            $1!.pointee = TrustLevel(rawValue: 0)
            return S_OK
        },

        get_Kind: {
            guard let __unwrapped__instance = IWebAccountProviderOperationWrapper.tryUnwrapFrom(raw: $0) else { return E_INVALIDARG }
            let value = __unwrapped__instance.kind
            $1?.initialize(to: value)
            return S_OK
        }
    )

    public typealias IWebAccountProviderOperationWrapper = InterfaceWrapperBase<__IMPL_Windows_Security_Authentication_Web_Provider.IWebAccountProviderOperationBridge>
}
