// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

public enum __IMPL_Microsoft_UI_Xaml_Data {
    public enum ICollectionViewBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CICollectionView
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.ICollectionView
        public typealias SwiftProjection = AnyICollectionView
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return ICollectionViewImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.ICollectionViewVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class ICollectionViewImpl: ICollectionView, WinRTAbiImpl {
        fileprivate typealias Bridge = ICollectionViewBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        public typealias T = Any?
        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.movecurrentto)
        fileprivate func moveCurrentTo(_ item: Any!) throws -> Bool {
            try _default.MoveCurrentToImpl(item)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.movecurrenttoposition)
        fileprivate func moveCurrentToPosition(_ index: Int32) throws -> Bool {
            try _default.MoveCurrentToPositionImpl(index)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.movecurrenttofirst)
        fileprivate func moveCurrentToFirst() throws -> Bool {
            try _default.MoveCurrentToFirstImpl()
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.movecurrenttolast)
        fileprivate func moveCurrentToLast() throws -> Bool {
            try _default.MoveCurrentToLastImpl()
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.movecurrenttonext)
        fileprivate func moveCurrentToNext() throws -> Bool {
            try _default.MoveCurrentToNextImpl()
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.movecurrenttoprevious)
        fileprivate func moveCurrentToPrevious() throws -> Bool {
            try _default.MoveCurrentToPreviousImpl()
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.loadmoreitemsasync)
        fileprivate func loadMoreItemsAsync(_ count: UInt32) throws -> WindowsFoundation.AnyIAsyncOperation<LoadMoreItemsResult>! {
            try _default.LoadMoreItemsAsyncImpl(count)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.collectiongroups)
        fileprivate var collectionGroups : WindowsFoundation.AnyIObservableVector<Any?>! {
            get { try! _default.get_CollectionGroupsImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.currentitem)
        fileprivate var currentItem : Any! {
            get { try! _default.get_CurrentItemImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.currentposition)
        fileprivate var currentPosition : Int32 {
            get { try! _default.get_CurrentPositionImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.hasmoreitems)
        fileprivate var hasMoreItems : Bool {
            get { try! _default.get_HasMoreItemsImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.iscurrentafterlast)
        fileprivate var isCurrentAfterLast : Bool {
            get { try! _default.get_IsCurrentAfterLastImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.iscurrentbeforefirst)
        fileprivate var isCurrentBeforeFirst : Bool {
            get { try! _default.get_IsCurrentBeforeFirstImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.currentchanged)
        fileprivate lazy var currentChanged : Event<EventHandler<Any?>> = {
          .init(
            add: { [weak self] in
              guard let this = self?._default else { return .init() }
              return try! this.add_CurrentChangedImpl($0)
            },
            remove: { [weak self] in
             try? self?._default.remove_CurrentChangedImpl($0)
           }
          )
        }()

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.currentchanging)
        fileprivate lazy var currentChanging : Event<CurrentChangingEventHandler> = {
          .init(
            add: { [weak self] in
              guard let this = self?._default else { return .init() }
              return try! this.add_CurrentChangingImpl($0)
            },
            remove: { [weak self] in
             try? self?._default.remove_CurrentChangingImpl($0)
           }
          )
        }()

        private lazy var _IObservableVector: IObservableVectorAny! = getInterfaceForCaching()
        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.vectorchanged)
        fileprivate lazy var vectorChanged : Event<VectorChangedEventHandler<Any?>> = {
          .init(
            add: { [weak self] in
              guard let this = self?._IObservableVector else { return .init() }
              return try! this.add_VectorChangedImpl($0)
            },
            remove: { [weak self] in
             try? self?._IObservableVector.remove_VectorChangedImpl($0)
           }
          )
        }()

        private lazy var _IVector: IVectorAny! = getInterfaceForCaching()
        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.getat)
        fileprivate func getAt(_ index: UInt32) -> Any? {
            try! _IVector.GetAtImpl(index)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.getview)
        fileprivate func getView() -> WindowsFoundation.AnyIVectorView<Any?>? {
            try! _IVector.GetViewImpl()
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.indexof)
        fileprivate func indexOf(_ value: Any?, _ index: inout UInt32) -> Bool {
            try! _IVector.IndexOfImpl(value, &index)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.setat)
        fileprivate func setAt(_ index: UInt32, _ value: Any?) {
            try! _IVector.SetAtImpl(index, value)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.insertat)
        fileprivate func insertAt(_ index: UInt32, _ value: Any?) {
            try! _IVector.InsertAtImpl(index, value)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.removeat)
        fileprivate func removeAt(_ index: UInt32) {
            try! _IVector.RemoveAtImpl(index)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.append)
        fileprivate func append(_ value: Any?) {
            try! _IVector.AppendImpl(value)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.removeatend)
        fileprivate func removeAtEnd() {
            try! _IVector.RemoveAtEndImpl()
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.clear)
        fileprivate func clear() {
            try! _IVector.ClearImpl()
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.size)
        fileprivate var size : UInt32 {
            get { try! _IVector.get_SizeImpl() }
        }

        private lazy var _IIterable: IIterableAny! = getInterfaceForCaching()
        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionview.first)
        fileprivate func first() -> WindowsFoundation.AnyIIterator<Any?>? {
            try! _IIterable.FirstImpl()
        }

    }

    public enum ICollectionViewFactoryBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CICollectionViewFactory
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.ICollectionViewFactory
        public typealias SwiftProjection = AnyICollectionViewFactory
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return ICollectionViewFactoryImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.ICollectionViewFactoryVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class ICollectionViewFactoryImpl: ICollectionViewFactory, WinRTAbiImpl {
        fileprivate typealias Bridge = ICollectionViewFactoryBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionviewfactory.createview)
        fileprivate func createView() throws -> AnyICollectionView! {
            try _default.CreateViewImpl()
        }

    }

    public enum ICollectionViewGroupBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CICollectionViewGroup
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.ICollectionViewGroup
        public typealias SwiftProjection = AnyICollectionViewGroup
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return ICollectionViewGroupImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.ICollectionViewGroupVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class ICollectionViewGroupImpl: ICollectionViewGroup, WinRTAbiImpl {
        fileprivate typealias Bridge = ICollectionViewGroupBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionviewgroup.group)
        fileprivate var group : Any! {
            get { try! _default.get_GroupImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icollectionviewgroup.groupitems)
        fileprivate var groupItems : WindowsFoundation.AnyIObservableVector<Any?>! {
            get { try! _default.get_GroupItemsImpl() }
        }

    }

    public enum ICustomPropertyBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CICustomProperty
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.ICustomProperty
        public typealias SwiftProjection = AnyICustomProperty
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return ICustomPropertyImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.ICustomPropertyVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class ICustomPropertyImpl: ICustomProperty, WinRTAbiImpl {
        fileprivate typealias Bridge = ICustomPropertyBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustomproperty.getvalue)
        fileprivate func getValue(_ target: Any!) throws -> Any! {
            try _default.GetValueImpl(target)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustomproperty.setvalue)
        fileprivate func setValue(_ target: Any!, _ value: Any!) throws {
            try _default.SetValueImpl(target, value)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustomproperty.getindexedvalue)
        fileprivate func getIndexedValue(_ target: Any!, _ index: Any!) throws -> Any! {
            try _default.GetIndexedValueImpl(target, index)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustomproperty.setindexedvalue)
        fileprivate func setIndexedValue(_ target: Any!, _ value: Any!, _ index: Any!) throws {
            try _default.SetIndexedValueImpl(target, value, index)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustomproperty.canread)
        fileprivate var canRead : Bool {
            get { try! _default.get_CanReadImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustomproperty.canwrite)
        fileprivate var canWrite : Bool {
            get { try! _default.get_CanWriteImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustomproperty.name)
        fileprivate var name : String {
            get { try! _default.get_NameImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustomproperty.type)
        fileprivate var type : WinUI.TypeName {
            get { try! _default.get_TypeImpl() }
        }

    }

    public enum ICustomPropertyProviderBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CICustomPropertyProvider
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.ICustomPropertyProvider
        public typealias SwiftProjection = AnyICustomPropertyProvider
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return ICustomPropertyProviderImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.ICustomPropertyProviderVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class ICustomPropertyProviderImpl: ICustomPropertyProvider, WinRTAbiImpl {
        fileprivate typealias Bridge = ICustomPropertyProviderBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustompropertyprovider.getcustomproperty)
        fileprivate func getCustomProperty(_ name: String) throws -> AnyICustomProperty! {
            try _default.GetCustomPropertyImpl(name)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustompropertyprovider.getindexedproperty)
        fileprivate func getIndexedProperty(_ name: String, _ type: WinUI.TypeName) throws -> AnyICustomProperty! {
            try _default.GetIndexedPropertyImpl(name, type)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustompropertyprovider.getstringrepresentation)
        fileprivate func getStringRepresentation() throws -> String {
            try _default.GetStringRepresentationImpl()
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.icustompropertyprovider.type)
        fileprivate var type : WinUI.TypeName {
            get { try! _default.get_TypeImpl() }
        }

    }

    public enum IItemsRangeInfoBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CIItemsRangeInfo
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.IItemsRangeInfo
        public typealias SwiftProjection = AnyIItemsRangeInfo
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return IItemsRangeInfoImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.IItemsRangeInfoVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class IItemsRangeInfoImpl: IItemsRangeInfo, WinRTAbiImpl {
        fileprivate typealias Bridge = IItemsRangeInfoBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.iitemsrangeinfo.rangeschanged)
        fileprivate func rangesChanged(_ visibleRange: ItemIndexRange!, _ trackedItems: WindowsFoundation.AnyIVectorView<ItemIndexRange?>!) throws {
            try _default.RangesChangedImpl(visibleRange, trackedItems)
        }

        private lazy var _IClosable: __ABI_Windows_Foundation.IClosable! = getInterfaceForCaching()
        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.iitemsrangeinfo.close)
        fileprivate func close() throws {
            try _IClosable.CloseImpl()
        }

    }

    public enum INotifyDataErrorInfoBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CINotifyDataErrorInfo
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.INotifyDataErrorInfo
        public typealias SwiftProjection = AnyINotifyDataErrorInfo
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return INotifyDataErrorInfoImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.INotifyDataErrorInfoVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class INotifyDataErrorInfoImpl: INotifyDataErrorInfo, WinRTAbiImpl {
        fileprivate typealias Bridge = INotifyDataErrorInfoBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.inotifydataerrorinfo.geterrors)
        fileprivate func getErrors(_ propertyName: String) throws -> WindowsFoundation.AnyIIterable<Any?>! {
            try _default.GetErrorsImpl(propertyName)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.inotifydataerrorinfo.haserrors)
        fileprivate var hasErrors : Bool {
            get { try! _default.get_HasErrorsImpl() }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.inotifydataerrorinfo.errorschanged)
        fileprivate lazy var errorsChanged : Event<EventHandler<DataErrorsChangedEventArgs?>> = {
          .init(
            add: { [weak self] in
              guard let this = self?._default else { return .init() }
              return try! this.add_ErrorsChangedImpl($0)
            },
            remove: { [weak self] in
             try? self?._default.remove_ErrorsChangedImpl($0)
           }
          )
        }()

    }

    public enum INotifyPropertyChangedBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CINotifyPropertyChanged
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.INotifyPropertyChanged
        public typealias SwiftProjection = AnyINotifyPropertyChanged
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return INotifyPropertyChangedImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.INotifyPropertyChangedVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class INotifyPropertyChangedImpl: INotifyPropertyChanged, WinRTAbiImpl {
        fileprivate typealias Bridge = INotifyPropertyChangedBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.inotifypropertychanged.propertychanged)
        fileprivate lazy var propertyChanged : Event<PropertyChangedEventHandler> = {
          .init(
            add: { [weak self] in
              guard let this = self?._default else { return .init() }
              return try! this.add_PropertyChangedImpl($0)
            },
            remove: { [weak self] in
             try? self?._default.remove_PropertyChangedImpl($0)
           }
          )
        }()

    }

    public enum ISelectionInfoBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CISelectionInfo
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.ISelectionInfo
        public typealias SwiftProjection = AnyISelectionInfo
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return ISelectionInfoImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.ISelectionInfoVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class ISelectionInfoImpl: ISelectionInfo, WinRTAbiImpl {
        fileprivate typealias Bridge = ISelectionInfoBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.iselectioninfo.selectrange)
        fileprivate func selectRange(_ itemIndexRange: ItemIndexRange!) throws {
            try _default.SelectRangeImpl(itemIndexRange)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.iselectioninfo.deselectrange)
        fileprivate func deselectRange(_ itemIndexRange: ItemIndexRange!) throws {
            try _default.DeselectRangeImpl(itemIndexRange)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.iselectioninfo.isselected)
        fileprivate func isSelected(_ index: Int32) throws -> Bool {
            try _default.IsSelectedImpl(index)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.iselectioninfo.getselectedranges)
        fileprivate func getSelectedRanges() throws -> WindowsFoundation.AnyIVectorView<ItemIndexRange?>! {
            try _default.GetSelectedRangesImpl()
        }

    }

    public enum ISupportIncrementalLoadingBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CISupportIncrementalLoading
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.ISupportIncrementalLoading
        public typealias SwiftProjection = AnyISupportIncrementalLoading
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return ISupportIncrementalLoadingImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.ISupportIncrementalLoadingVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class ISupportIncrementalLoadingImpl: ISupportIncrementalLoading, WinRTAbiImpl {
        fileprivate typealias Bridge = ISupportIncrementalLoadingBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.isupportincrementalloading.loadmoreitemsasync)
        fileprivate func loadMoreItemsAsync(_ count: UInt32) throws -> WindowsFoundation.AnyIAsyncOperation<LoadMoreItemsResult>! {
            try _default.LoadMoreItemsAsyncImpl(count)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.isupportincrementalloading.hasmoreitems)
        fileprivate var hasMoreItems : Bool {
            get { try! _default.get_HasMoreItemsImpl() }
        }

    }

    public enum IValueConverterBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CIValueConverter
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.IValueConverter
        public typealias SwiftProjection = AnyIValueConverter
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return IValueConverterImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Xaml_Data.IValueConverterVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class IValueConverterImpl: IValueConverter, WinRTAbiImpl {
        fileprivate typealias Bridge = IValueConverterBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.ivalueconverter.convert)
        fileprivate func convert(_ value: Any!, _ targetType: WinUI.TypeName, _ parameter: Any!, _ language: String) throws -> Any! {
            try _default.ConvertImpl(value, targetType, parameter, language)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.data.ivalueconverter.convertback)
        fileprivate func convertBack(_ value: Any!, _ targetType: WinUI.TypeName, _ parameter: Any!, _ language: String) throws -> Any! {
            try _default.ConvertBackImpl(value, targetType, parameter, language)
        }

    }

    public class CurrentChangingEventHandlerBridge : WinRTDelegateBridge {
        public typealias Handler = CurrentChangingEventHandler
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CICurrentChangingEventHandler
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.CurrentChangingEventHandler

        public static func from(abi: ComPtr<CABI>?) -> Handler? {
            guard let abi = abi else { return nil }
            let _default = SwiftABI(abi)
            let handler: Handler = { (sender, e) in
                try! _default.InvokeImpl(sender, e)
            }
            return handler
        }
    }
    public class PropertyChangedEventHandlerBridge : WinRTDelegateBridge {
        public typealias Handler = PropertyChangedEventHandler
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CData_CIPropertyChangedEventHandler
        public typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Data.PropertyChangedEventHandler

        public static func from(abi: ComPtr<CABI>?) -> Handler? {
            guard let abi = abi else { return nil }
            let _default = SwiftABI(abi)
            let handler: Handler = { (sender, e) in
                try! _default.InvokeImpl(sender, e)
            }
            return handler
        }
    }
}
