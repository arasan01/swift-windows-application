// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

private var IID___x_ABI_CMicrosoft_CUI_CSystem_CIThemeSettings: WindowsFoundation.IID {
    .init(Data1: 0x2228EE7E, Data2: 0x6D15, Data3: 0x563C, Data4: ( 0x8F,0x3C,0xE8,0x78,0x3B,0xA1,0x38,0x46 ))// 2228EE7E-6D15-563C-8F3C-E8783BA13846
}

private var IID___x_ABI_CMicrosoft_CUI_CSystem_CIThemeSettingsStatics: WindowsFoundation.IID {
    .init(Data1: 0x1586907D, Data2: 0x30DB, Data3: 0x5F97, Data4: ( 0x8F,0xA1,0x89,0x40,0xC7,0x5D,0xCC,0xC0 ))// 1586907D-30DB-5F97-8FA1-8940C75DCCC0
}

public enum __ABI_Microsoft_UI_System {
    public class IThemeSettings: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CSystem_CIThemeSettings }

        internal func add_ChangedImpl(_ handler: TypedEventHandler<WinAppSDK.ThemeSettings?, Any?>?) throws -> EventRegistrationToken {
            var token: EventRegistrationToken = .init()
            let handlerWrapper = WinAppSDK.__x_ABI_C__FITypedEventHandler_2___x_ABI_CMicrosoft__CUI__CSystem__CThemeSettings_IInspectableWrapper(handler)
            let _handler = try! handlerWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CSystem_CIThemeSettings.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.add_Changed(pThis, _handler, &token))
            }
            return token
        }

        internal func remove_ChangedImpl(_ token: EventRegistrationToken) throws {
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CSystem_CIThemeSettings.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.remove_Changed(pThis, token))
            }
        }

        internal func get_HighContrastImpl() throws -> Bool {
            var value: boolean = 0
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CSystem_CIThemeSettings.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_HighContrast(pThis, &value))
            }
            return .init(from: value)
        }

        internal func get_HighContrastSchemeImpl() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CSystem_CIThemeSettings.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_HighContrastScheme(pThis, &value))
            }
            return .init(from: value)
        }

    }

    public class IThemeSettingsStatics: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CSystem_CIThemeSettingsStatics }

        internal func CreateForWindowIdImpl(_ windowId: WinAppSDK.WindowId) throws -> WinAppSDK.ThemeSettings? {
            let (result) = try ComPtrs.initialize { resultAbi in
                _ = try perform(as: __x_ABI_CMicrosoft_CUI_CSystem_CIThemeSettingsStatics.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.CreateForWindowId(pThis, .from(swift: windowId), &resultAbi))
                }
            }
            return .from(abi: result)
        }

    }

}
