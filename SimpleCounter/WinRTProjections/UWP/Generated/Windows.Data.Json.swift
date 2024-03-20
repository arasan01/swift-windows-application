// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvaluetype)
public typealias JsonValueType = __x_ABI_CWindows_CData_CJson_CJsonValueType
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray)
public final class JsonArray : WinRTClass, IJsonValue, IVector, IIterable, WindowsFoundation.IStringable {
    public typealias T = AnyIJsonValue?
    private typealias SwiftABI = __ABI_Windows_Data_Json.IJsonArray
    private typealias CABI = __x_ABI_CWindows_CData_CJson_CIJsonArray
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CData_CJson_CIJsonArray>?) -> JsonArray? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: WindowsFoundation.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    override public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        return super.queryInterface(iid)
    }
    override public init() {
        super.init(try! RoActivateInstance(HString("Windows.Data.Json.JsonArray")))
    }

    private static let _IJsonArrayStatics: __ABI_Windows_Data_Json.IJsonArrayStatics = try! RoGetActivationFactory(HString("Windows.Data.Json.JsonArray"))
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.parse)
    public static func parse(_ input: String) -> JsonArray! {
        return try! _IJsonArrayStatics.ParseImpl(input)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.tryparse)
    public static func tryParse(_ input: String, _ result: inout JsonArray!) -> Bool {
        return try! _IJsonArrayStatics.TryParseImpl(input, &result)
    }

    private lazy var _IJsonValue: __ABI_Windows_Data_Json.IJsonValue! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.stringify)
    public func stringify() throws -> String {
        try _IJsonValue.StringifyImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getstring)
    public func getString() throws -> String {
        try _IJsonValue.GetStringImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getnumber)
    public func getNumber() throws -> Double {
        try _IJsonValue.GetNumberImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getboolean)
    public func getBoolean() throws -> Bool {
        try _IJsonValue.GetBooleanImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getarray)
    public func getArray() throws -> JsonArray! {
        try _IJsonValue.GetArrayImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getobject)
    public func getObject() throws -> JsonObject! {
        try _IJsonValue.GetObjectImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.valuetype)
    public var valueType : JsonValueType {
        get { try! _IJsonValue.get_ValueTypeImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getobjectat)
    public func getObjectAt(_ index: UInt32) throws -> JsonObject! {
        try _default.GetObjectAtImpl(index)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getarrayat)
    public func getArrayAt(_ index: UInt32) throws -> JsonArray! {
        try _default.GetArrayAtImpl(index)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getstringat)
    public func getStringAt(_ index: UInt32) throws -> String {
        try _default.GetStringAtImpl(index)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getnumberat)
    public func getNumberAt(_ index: UInt32) throws -> Double {
        try _default.GetNumberAtImpl(index)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getbooleanat)
    public func getBooleanAt(_ index: UInt32) throws -> Bool {
        try _default.GetBooleanAtImpl(index)
    }

    // MARK: Collection
    public typealias Element = T
    public var startIndex: Int { 0 }
    public var endIndex: Int { Int(size) }
    public func index(after i: Int) -> Int {
        i+1
    }

    public func index(of: Element) -> Int? {
        var index: UInt32 = 0
        let result = indexOf(of, &index)
        guard result else { return nil }
        return Int(index)
    }
    public var count: Int { Int(size) }


    public subscript(position: Int) -> Element {
        get {
            getAt(UInt32(position))
        }
        set(newValue) {
            setAt(UInt32(position), newValue)
        }
    }

    public func removeLast() {
        removeAtEnd()
    }

    // MARK: WinRT
    private lazy var _IVector: IVectorIJsonValue! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getat)
    public func getAt(_ index: UInt32) -> AnyIJsonValue? {
        try! _IVector.GetAtImpl(index)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.getview)
    public func getView() -> WindowsFoundation.AnyIVectorView<AnyIJsonValue?>? {
        try! _IVector.GetViewImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.indexof)
    public func indexOf(_ value: AnyIJsonValue?, _ index: inout UInt32) -> Bool {
        try! _IVector.IndexOfImpl(value, &index)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.setat)
    public func setAt(_ index: UInt32, _ value: AnyIJsonValue?) {
        try! _IVector.SetAtImpl(index, value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.insertat)
    public func insertAt(_ index: UInt32, _ value: AnyIJsonValue?) {
        try! _IVector.InsertAtImpl(index, value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.removeat)
    public func removeAt(_ index: UInt32) {
        try! _IVector.RemoveAtImpl(index)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.append)
    public func append(_ value: AnyIJsonValue?) {
        try! _IVector.AppendImpl(value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.removeatend)
    public func removeAtEnd() {
        try! _IVector.RemoveAtEndImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.clear)
    public func clear() {
        try! _IVector.ClearImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.size)
    public var size : UInt32 {
        get { try! _IVector.get_SizeImpl() }
    }

    private lazy var _IIterable: IIterableIJsonValue! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.first)
    public func first() -> WindowsFoundation.AnyIIterator<AnyIJsonValue?>? {
        try! _IIterable.FirstImpl()
    }

    private lazy var _IStringable: __ABI_Windows_Foundation.IStringable! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonarray.tostring)
    public func toString() throws -> String {
        try _IStringable.ToStringImpl()
    }

    deinit {
        _IJsonValue = nil
        _default = nil
        _IVector = nil
        _IIterable = nil
        _IStringable = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject)
public final class JsonObject : WinRTClass, IJsonValue, IMap, IIterable, WindowsFoundation.IStringable {
    public typealias K = String
    public typealias V = AnyIJsonValue?
    public typealias T = WindowsFoundation.AnyIKeyValuePair<String, AnyIJsonValue?>?
    private typealias SwiftABI = __ABI_Windows_Data_Json.IJsonObject
    private typealias CABI = __x_ABI_CWindows_CData_CJson_CIJsonObject
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CData_CJson_CIJsonObject>?) -> JsonObject? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: WindowsFoundation.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    override public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        return super.queryInterface(iid)
    }
    override public init() {
        super.init(try! RoActivateInstance(HString("Windows.Data.Json.JsonObject")))
    }

    private static let _IJsonObjectStatics: __ABI_Windows_Data_Json.IJsonObjectStatics = try! RoGetActivationFactory(HString("Windows.Data.Json.JsonObject"))
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.parse)
    public static func parse(_ input: String) -> JsonObject! {
        return try! _IJsonObjectStatics.ParseImpl(input)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.tryparse)
    public static func tryParse(_ input: String, _ result: inout JsonObject!) -> Bool {
        return try! _IJsonObjectStatics.TryParseImpl(input, &result)
    }

    private lazy var _IJsonValue: __ABI_Windows_Data_Json.IJsonValue! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.stringify)
    public func stringify() throws -> String {
        try _IJsonValue.StringifyImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getstring)
    public func getString() throws -> String {
        try _IJsonValue.GetStringImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnumber)
    public func getNumber() throws -> Double {
        try _IJsonValue.GetNumberImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getboolean)
    public func getBoolean() throws -> Bool {
        try _IJsonValue.GetBooleanImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getarray)
    public func getArray() throws -> JsonArray! {
        try _IJsonValue.GetArrayImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getobject)
    public func getObject() throws -> JsonObject! {
        try _IJsonValue.GetObjectImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.valuetype)
    public var valueType : JsonValueType {
        get { try! _IJsonValue.get_ValueTypeImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamedvalue)
    public func getNamedValue(_ name: String) throws -> JsonValue! {
        try _default.GetNamedValueImpl(name)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.setnamedvalue)
    public func setNamedValue(_ name: String, _ value: AnyIJsonValue!) throws {
        try _default.SetNamedValueImpl(name, value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamedobject)
    public func getNamedObject(_ name: String) throws -> JsonObject! {
        try _default.GetNamedObjectImpl(name)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamedarray)
    public func getNamedArray(_ name: String) throws -> JsonArray! {
        try _default.GetNamedArrayImpl(name)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamedstring)
    public func getNamedString(_ name: String) throws -> String {
        try _default.GetNamedStringImpl(name)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamednumber)
    public func getNamedNumber(_ name: String) throws -> Double {
        try _default.GetNamedNumberImpl(name)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamedboolean)
    public func getNamedBoolean(_ name: String) throws -> Bool {
        try _default.GetNamedBooleanImpl(name)
    }

    private lazy var _IMap: IMapString_IJsonValue! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.lookup)
    public func lookup(_ key: String) -> AnyIJsonValue? {
        try! _IMap.LookupImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.haskey)
    public func hasKey(_ key: String) -> Bool {
        try! _IMap.HasKeyImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getview)
    public func getView() -> WindowsFoundation.AnyIMapView<String, AnyIJsonValue?>? {
        try! _IMap.GetViewImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.insert)
    public func insert(_ key: String, _ value: AnyIJsonValue?) -> Bool {
        try! _IMap.InsertImpl(key, value)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.remove)
    public func remove(_ key: String) {
        try! _IMap.RemoveImpl(key)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.clear)
    public func clear() {
        try! _IMap.ClearImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.size)
    public var size : UInt32 {
        get { try! _IMap.get_SizeImpl() }
    }

    private lazy var _IIterable: IIterableIKeyValuePairString_IJsonValue! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.first)
    public func first() -> WindowsFoundation.AnyIIterator<WindowsFoundation.AnyIKeyValuePair<String, AnyIJsonValue?>?>? {
        try! _IIterable.FirstImpl()
    }

    private lazy var _IJsonObjectWithDefaultValues: __ABI_Windows_Data_Json.IJsonObjectWithDefaultValues! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamedvalue)
    public func getNamedValue(_ name: String, _ defaultValue: JsonValue!) throws -> JsonValue! {
        try _IJsonObjectWithDefaultValues.GetNamedValueOrDefaultImpl(name, defaultValue)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamedobject)
    public func getNamedObject(_ name: String, _ defaultValue: JsonObject!) throws -> JsonObject! {
        try _IJsonObjectWithDefaultValues.GetNamedObjectOrDefaultImpl(name, defaultValue)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamedstring)
    public func getNamedString(_ name: String, _ defaultValue: String) throws -> String {
        try _IJsonObjectWithDefaultValues.GetNamedStringOrDefaultImpl(name, defaultValue)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamedarray)
    public func getNamedArray(_ name: String, _ defaultValue: JsonArray!) throws -> JsonArray! {
        try _IJsonObjectWithDefaultValues.GetNamedArrayOrDefaultImpl(name, defaultValue)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamednumber)
    public func getNamedNumber(_ name: String, _ defaultValue: Double) throws -> Double {
        try _IJsonObjectWithDefaultValues.GetNamedNumberOrDefaultImpl(name, defaultValue)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.getnamedboolean)
    public func getNamedBoolean(_ name: String, _ defaultValue: Bool) throws -> Bool {
        try _IJsonObjectWithDefaultValues.GetNamedBooleanOrDefaultImpl(name, defaultValue)
    }

    private lazy var _IStringable: __ABI_Windows_Foundation.IStringable! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonobject.tostring)
    public func toString() throws -> String {
        try _IStringable.ToStringImpl()
    }

    deinit {
        _IJsonValue = nil
        _default = nil
        _IMap = nil
        _IIterable = nil
        _IJsonObjectWithDefaultValues = nil
        _IStringable = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue)
public final class JsonValue : WinRTClass, IJsonValue, WindowsFoundation.IStringable {
    private typealias SwiftABI = __ABI_Windows_Data_Json.IJsonValue
    private typealias CABI = __x_ABI_CWindows_CData_CJson_CIJsonValue
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CWindows_CData_CJson_CIJsonValue>?) -> JsonValue? {
        guard let abi = abi else { return nil }
        return .init(fromAbi: WindowsFoundation.IInspectable(abi))
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    override public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        return super.queryInterface(iid)
    }
    private static let _IJsonValueStatics: __ABI_Windows_Data_Json.IJsonValueStatics = try! RoGetActivationFactory(HString("Windows.Data.Json.JsonValue"))
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.parse)
    public static func parse(_ input: String) -> JsonValue! {
        return try! _IJsonValueStatics.ParseImpl(input)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.tryparse)
    public static func tryParse(_ input: String, _ result: inout JsonValue!) -> Bool {
        return try! _IJsonValueStatics.TryParseImpl(input, &result)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.createbooleanvalue)
    public static func createBooleanValue(_ input: Bool) -> JsonValue! {
        return try! _IJsonValueStatics.CreateBooleanValueImpl(input)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.createnumbervalue)
    public static func createNumberValue(_ input: Double) -> JsonValue! {
        return try! _IJsonValueStatics.CreateNumberValueImpl(input)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.createstringvalue)
    public static func createStringValue(_ input: String) -> JsonValue! {
        return try! _IJsonValueStatics.CreateStringValueImpl(input)
    }

    private static let _IJsonValueStatics2: __ABI_Windows_Data_Json.IJsonValueStatics2 = try! RoGetActivationFactory(HString("Windows.Data.Json.JsonValue"))
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.createnullvalue)
    public static func createNullValue() -> JsonValue! {
        return try! _IJsonValueStatics2.CreateNullValueImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.stringify)
    public func stringify() throws -> String {
        try _default.StringifyImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.getstring)
    public func getString() throws -> String {
        try _default.GetStringImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.getnumber)
    public func getNumber() throws -> Double {
        try _default.GetNumberImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.getboolean)
    public func getBoolean() throws -> Bool {
        try _default.GetBooleanImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.getarray)
    public func getArray() throws -> JsonArray! {
        try _default.GetArrayImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.getobject)
    public func getObject() throws -> JsonObject! {
        try _default.GetObjectImpl()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.valuetype)
    public var valueType : JsonValueType {
        get { try! _default.get_ValueTypeImpl() }
    }

    private lazy var _IStringable: __ABI_Windows_Foundation.IStringable! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.jsonvalue.tostring)
    public func toString() throws -> String {
        try _IStringable.ToStringImpl()
    }

    deinit {
        _default = nil
        _IStringable = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.ijsonvalue)
public protocol IJsonValue : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.ijsonvalue.stringify)
    func stringify() throws -> String
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.ijsonvalue.getstring)
    func getString() throws -> String
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.ijsonvalue.getnumber)
    func getNumber() throws -> Double
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.ijsonvalue.getboolean)
    func getBoolean() throws -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.ijsonvalue.getarray)
    func getArray() throws -> UWP.JsonArray!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.ijsonvalue.getobject)
    func getObject() throws -> UWP.JsonObject!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.data.json.ijsonvalue.valuetype)
    var valueType: UWP.JsonValueType { get }
}

extension IJsonValue {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_Data_Json.IJsonValueWrapper.IID:
                let wrapper = __ABI_Windows_Data_Json.IJsonValueWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIJsonValue = any IJsonValue

extension UWP.JsonValueType {
    public static var null : UWP.JsonValueType {
        __x_ABI_CWindows_CData_CJson_CJsonValueType_Null
    }
    public static var boolean : UWP.JsonValueType {
        __x_ABI_CWindows_CData_CJson_CJsonValueType_Boolean
    }
    public static var number : UWP.JsonValueType {
        __x_ABI_CWindows_CData_CJson_CJsonValueType_Number
    }
    public static var string : UWP.JsonValueType {
        __x_ABI_CWindows_CData_CJson_CJsonValueType_String
    }
    public static var array : UWP.JsonValueType {
        __x_ABI_CWindows_CData_CJson_CJsonValueType_Array
    }
    public static var object : UWP.JsonValueType {
        __x_ABI_CWindows_CData_CJson_CJsonValueType_Object
    }
}
extension UWP.JsonValueType: @retroactive Hashable, @retroactive Codable {}

