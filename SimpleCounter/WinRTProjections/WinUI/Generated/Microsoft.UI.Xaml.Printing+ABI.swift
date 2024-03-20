// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import UWP
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

private var IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIAddPagesEventArgs: WindowsFoundation.IID {
    .init(Data1: 0xA69F3CB3, Data2: 0x6B74, Data3: 0x5EE8, Data4: ( 0xB0,0x34,0x18,0x80,0x98,0xA9,0x8C,0x5D ))// A69F3CB3-6B74-5EE8-B034-188098A98C5D
}

private var IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIGetPreviewPageEventArgs: WindowsFoundation.IID {
    .init(Data1: 0xA68FBE17, Data2: 0xF577, Data3: 0x597F, Data4: ( 0xB3,0xAB,0xB3,0x79,0x44,0x71,0x49,0xE6 ))// A68FBE17-F577-597F-B3AB-B379447149E6
}

private var IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPaginateEventArgs: WindowsFoundation.IID {
    .init(Data1: 0x6499C196, Data2: 0x11A9, Data3: 0x5EF8, Data4: ( 0x91,0xCB,0x52,0xFB,0x96,0x3B,0xF1,0x72 ))// 6499C196-11A9-5EF8-91CB-52FB963BF172
}

private var IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument: WindowsFoundation.IID {
    .init(Data1: 0x1E40F1FC, Data2: 0x5D33, Data3: 0x5FE9, Data4: ( 0xBA,0x3E,0x95,0x4C,0x0D,0x16,0x15,0x24 ))// 1E40F1FC-5D33-5FE9-BA3E-954C0D161524
}

private var IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocumentFactory: WindowsFoundation.IID {
    .init(Data1: 0xC4C1BC12, Data2: 0x84D1, Data3: 0x539C, Data4: ( 0xB4,0x16,0xD7,0xE5,0x4C,0x45,0xAB,0x58 ))// C4C1BC12-84D1-539C-B416-D7E54C45AB58
}

private var IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocumentStatics: WindowsFoundation.IID {
    .init(Data1: 0x8975E4BC, Data2: 0x8FC8, Data3: 0x5E8F, Data4: ( 0xA5,0x5A,0xBF,0x71,0xB9,0xA8,0x27,0xB7 ))// 8975E4BC-8FC8-5E8F-A55A-BF71B9A827B7
}

private var IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIAddPagesEventHandler: WindowsFoundation.IID {
    .init(Data1: 0xED77566A, Data2: 0xBD03, Data3: 0x5118, Data4: ( 0xB7,0xC3,0xD9,0xCE,0xA6,0x43,0x07,0xDD ))// ED77566A-BD03-5118-B7C3-D9CEA64307DD
}

private var IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIGetPreviewPageEventHandler: WindowsFoundation.IID {
    .init(Data1: 0x1C801689, Data2: 0xA018, Data3: 0x5574, Data4: ( 0x91,0x09,0xBC,0xEF,0x62,0x17,0x6D,0xA2 ))// 1C801689-A018-5574-9109-BCEF62176DA2
}

private var IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPaginateEventHandler: WindowsFoundation.IID {
    .init(Data1: 0xC291876C, Data2: 0x343A, Data3: 0x5B9B, Data4: ( 0xA3,0x6C,0x84,0x15,0xBA,0x4C,0xD9,0xDD ))// C291876C-343A-5B9B-A36C-8415BA4CD9DD
}

public enum __ABI_Microsoft_UI_Xaml_Printing {
    public class IAddPagesEventArgs: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIAddPagesEventArgs }

        internal func get_PrintTaskOptionsImpl() throws -> UWP.PrintTaskOptions? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIAddPagesEventArgs.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_PrintTaskOptions(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

    }

    public class IGetPreviewPageEventArgs: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIGetPreviewPageEventArgs }

        internal func get_PageNumberImpl() throws -> Int32 {
            var value: INT32 = 0
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIGetPreviewPageEventArgs.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_PageNumber(pThis, &value))
            }
            return value
        }

    }

    public class IPaginateEventArgs: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPaginateEventArgs }

        internal func get_PrintTaskOptionsImpl() throws -> UWP.PrintTaskOptions? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPaginateEventArgs.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_PrintTaskOptions(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

        internal func get_CurrentPreviewPageNumberImpl() throws -> Int32 {
            var value: INT32 = 0
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPaginateEventArgs.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_CurrentPreviewPageNumber(pThis, &value))
            }
            return value
        }

    }

    public class IPrintDocument: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument }

        internal func get_DocumentSourceImpl() throws -> UWP.AnyIPrintDocumentSource? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_DocumentSource(pThis, &valueAbi))
                }
            }
            return __ABI_Windows_Graphics_Printing.IPrintDocumentSourceWrapper.unwrapFrom(abi: value)
        }

        internal func add_PaginateImpl(_ handler: WinUI.PaginateEventHandler?) throws -> EventRegistrationToken {
            var token: EventRegistrationToken = .init()
            let handlerWrapper = __ABI_Microsoft_UI_Xaml_Printing.PaginateEventHandlerWrapper(handler)
            let _handler = try! handlerWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.add_Paginate(pThis, _handler, &token))
            }
            return token
        }

        internal func remove_PaginateImpl(_ token: EventRegistrationToken) throws {
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.remove_Paginate(pThis, token))
            }
        }

        internal func add_GetPreviewPageImpl(_ handler: WinUI.GetPreviewPageEventHandler?) throws -> EventRegistrationToken {
            var token: EventRegistrationToken = .init()
            let handlerWrapper = __ABI_Microsoft_UI_Xaml_Printing.GetPreviewPageEventHandlerWrapper(handler)
            let _handler = try! handlerWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.add_GetPreviewPage(pThis, _handler, &token))
            }
            return token
        }

        internal func remove_GetPreviewPageImpl(_ token: EventRegistrationToken) throws {
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.remove_GetPreviewPage(pThis, token))
            }
        }

        internal func add_AddPagesImpl(_ handler: WinUI.AddPagesEventHandler?) throws -> EventRegistrationToken {
            var token: EventRegistrationToken = .init()
            let handlerWrapper = __ABI_Microsoft_UI_Xaml_Printing.AddPagesEventHandlerWrapper(handler)
            let _handler = try! handlerWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.add_AddPages(pThis, _handler, &token))
            }
            return token
        }

        internal func remove_AddPagesImpl(_ token: EventRegistrationToken) throws {
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.remove_AddPages(pThis, token))
            }
        }

        internal func AddPageImpl(_ pageVisual: WinUI.UIElement?) throws {
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.AddPage(pThis, RawPointer(pageVisual)))
            }
        }

        internal func AddPagesCompleteImpl() throws {
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.AddPagesComplete(pThis))
            }
        }

        internal func SetPreviewPageCountImpl(_ count: Int32, _ type: WinUI.PreviewPageCountType) throws {
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.SetPreviewPageCount(pThis, count, type))
            }
        }

        internal func SetPreviewPageImpl(_ pageNumber: Int32, _ pageVisual: WinUI.UIElement?) throws {
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.SetPreviewPage(pThis, pageNumber, RawPointer(pageVisual)))
            }
        }

        internal func InvalidatePreviewImpl() throws {
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocument.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.InvalidatePreview(pThis))
            }
        }

    }

    public class IPrintDocumentFactory: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocumentFactory }

        internal func CreateInstanceImpl(_ baseInterface: UnsealedWinRTClassWrapper<WinUI.PrintDocument.Composable>?, _ innerInterface: inout WindowsFoundation.IInspectable?) throws -> IPrintDocument {
            let (value) = try ComPtrs.initialize { valueAbi in
                let _baseInterface = baseInterface?.toIInspectableABI { $0 }
                let (_innerInterface) = try ComPtrs.initialize { _innerInterfaceAbi in
                    _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocumentFactory.self) { pThis in
                        try CHECKED(pThis.pointee.lpVtbl.pointee.CreateInstance(pThis, _baseInterface, &_innerInterfaceAbi, &valueAbi))
                    }
                }
                innerInterface = WindowsFoundation.IInspectable(_innerInterface!)
            }
            return IPrintDocument(value!)
        }

    }

    public class IPrintDocumentStatics: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocumentStatics }

        internal func get_DocumentSourcePropertyImpl() throws -> WinUI.DependencyProperty? {
            let (value) = try ComPtrs.initialize { valueAbi in
                _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPrintDocumentStatics.self) { pThis in
                    try CHECKED(pThis.pointee.lpVtbl.pointee.get_DocumentSourceProperty(pThis, &valueAbi))
                }
            }
            return .from(abi: value)
        }

    }

}
// MARK - AddPagesEventHandler
extension __ABI_Microsoft_UI_Xaml_Printing {
    public class AddPagesEventHandler: WindowsFoundation.IUnknown {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIAddPagesEventHandler }

        open func InvokeImpl(_ sender: Any?, _ e: WinUI.AddPagesEventArgs?) throws {
            let senderWrapper = __ABI_.AnyWrapper(sender)
            let _sender = try! senderWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIAddPagesEventHandler.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, _sender, RawPointer(e)))
            }
        }

    }


    typealias AddPagesEventHandlerWrapper = InterfaceWrapperBase<__IMPL_Microsoft_UI_Xaml_Printing.AddPagesEventHandlerBridge>
    internal static var AddPagesEventHandlerVTable: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIAddPagesEventHandlerVtbl = .init(
        QueryInterface: { AddPagesEventHandlerWrapper.queryInterface($0, $1, $2) },
        AddRef: { AddPagesEventHandlerWrapper.addRef($0) },
        Release: { AddPagesEventHandlerWrapper.release($0) },
        Invoke: {
            guard let __unwrapped__instance = AddPagesEventHandlerWrapper.tryUnwrapFrom(raw: $0) else { return E_INVALIDARG }
            let sender: Any? = __ABI_.AnyWrapper.unwrapFrom(abi: ComPtr($1))
            let e: WinUI.AddPagesEventArgs? = .from(abi: ComPtr($2))
            __unwrapped__instance(sender, e)
            return S_OK
        }
    )
}
public extension WinRTDelegateBridge where CABI == __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIAddPagesEventHandler {
    static func makeAbi() -> CABI {
        let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Printing.AddPagesEventHandlerVTable) { $0 }
        return .init(lpVtbl:vtblPtr)
    }
}

// MARK - GetPreviewPageEventHandler
extension __ABI_Microsoft_UI_Xaml_Printing {
    public class GetPreviewPageEventHandler: WindowsFoundation.IUnknown {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIGetPreviewPageEventHandler }

        open func InvokeImpl(_ sender: Any?, _ e: WinUI.GetPreviewPageEventArgs?) throws {
            let senderWrapper = __ABI_.AnyWrapper(sender)
            let _sender = try! senderWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIGetPreviewPageEventHandler.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, _sender, RawPointer(e)))
            }
        }

    }


    typealias GetPreviewPageEventHandlerWrapper = InterfaceWrapperBase<__IMPL_Microsoft_UI_Xaml_Printing.GetPreviewPageEventHandlerBridge>
    internal static var GetPreviewPageEventHandlerVTable: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIGetPreviewPageEventHandlerVtbl = .init(
        QueryInterface: { GetPreviewPageEventHandlerWrapper.queryInterface($0, $1, $2) },
        AddRef: { GetPreviewPageEventHandlerWrapper.addRef($0) },
        Release: { GetPreviewPageEventHandlerWrapper.release($0) },
        Invoke: {
            guard let __unwrapped__instance = GetPreviewPageEventHandlerWrapper.tryUnwrapFrom(raw: $0) else { return E_INVALIDARG }
            let sender: Any? = __ABI_.AnyWrapper.unwrapFrom(abi: ComPtr($1))
            let e: WinUI.GetPreviewPageEventArgs? = .from(abi: ComPtr($2))
            __unwrapped__instance(sender, e)
            return S_OK
        }
    )
}
public extension WinRTDelegateBridge where CABI == __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIGetPreviewPageEventHandler {
    static func makeAbi() -> CABI {
        let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Printing.GetPreviewPageEventHandlerVTable) { $0 }
        return .init(lpVtbl:vtblPtr)
    }
}

// MARK - PaginateEventHandler
extension __ABI_Microsoft_UI_Xaml_Printing {
    public class PaginateEventHandler: WindowsFoundation.IUnknown {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPaginateEventHandler }

        open func InvokeImpl(_ sender: Any?, _ e: WinUI.PaginateEventArgs?) throws {
            let senderWrapper = __ABI_.AnyWrapper(sender)
            let _sender = try! senderWrapper?.toABI { $0 }
            _ = try perform(as: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPaginateEventHandler.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, _sender, RawPointer(e)))
            }
        }

    }


    typealias PaginateEventHandlerWrapper = InterfaceWrapperBase<__IMPL_Microsoft_UI_Xaml_Printing.PaginateEventHandlerBridge>
    internal static var PaginateEventHandlerVTable: __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPaginateEventHandlerVtbl = .init(
        QueryInterface: { PaginateEventHandlerWrapper.queryInterface($0, $1, $2) },
        AddRef: { PaginateEventHandlerWrapper.addRef($0) },
        Release: { PaginateEventHandlerWrapper.release($0) },
        Invoke: {
            guard let __unwrapped__instance = PaginateEventHandlerWrapper.tryUnwrapFrom(raw: $0) else { return E_INVALIDARG }
            let sender: Any? = __ABI_.AnyWrapper.unwrapFrom(abi: ComPtr($1))
            let e: WinUI.PaginateEventArgs? = .from(abi: ComPtr($2))
            __unwrapped__instance(sender, e)
            return S_OK
        }
    )
}
public extension WinRTDelegateBridge where CABI == __x_ABI_CMicrosoft_CUI_CXaml_CPrinting_CIPaginateEventHandler {
    static func makeAbi() -> CABI {
        let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Printing.PaginateEventHandlerVTable) { $0 }
        return .init(lpVtbl:vtblPtr)
    }
}

