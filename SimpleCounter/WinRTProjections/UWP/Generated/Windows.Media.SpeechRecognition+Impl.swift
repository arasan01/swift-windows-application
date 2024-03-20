// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

public enum __IMPL_Windows_Media_SpeechRecognition {
    public enum ISpeechRecognitionConstraintBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CWindows_CMedia_CSpeechRecognition_CISpeechRecognitionConstraint
        public typealias SwiftABI = __ABI_Windows_Media_SpeechRecognition.ISpeechRecognitionConstraint
        public typealias SwiftProjection = AnyISpeechRecognitionConstraint
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return ISpeechRecognitionConstraintImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Windows_Media_SpeechRecognition.ISpeechRecognitionConstraintVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class ISpeechRecognitionConstraintImpl: ISpeechRecognitionConstraint, WinRTAbiImpl {
        fileprivate typealias Bridge = ISpeechRecognitionConstraintBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.media.speechrecognition.ispeechrecognitionconstraint.isenabled)
        fileprivate var isEnabled : Bool {
            get { try! _default.get_IsEnabledImpl() }
            set { try! _default.put_IsEnabledImpl(newValue) }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.media.speechrecognition.ispeechrecognitionconstraint.probability)
        fileprivate var probability : SpeechRecognitionConstraintProbability {
            get { try! _default.get_ProbabilityImpl() }
            set { try! _default.put_ProbabilityImpl(newValue) }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.media.speechrecognition.ispeechrecognitionconstraint.tag)
        fileprivate var tag : String {
            get { try! _default.get_TagImpl() }
            set { try! _default.put_TagImpl(newValue) }
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.media.speechrecognition.ispeechrecognitionconstraint.type)
        fileprivate var type : SpeechRecognitionConstraintType {
            get { try! _default.get_TypeImpl() }
        }

    }

}
