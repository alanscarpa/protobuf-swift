// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file any.proto

import Foundation
import ProtocolBuffers


internal extension Google.Protobuf{}

internal func == (lhs: Google.Protobuf.Any, rhs: Google.Protobuf.Any) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasTypeUrl == rhs.hasTypeUrl) && (!lhs.hasTypeUrl || lhs.typeUrl == rhs.typeUrl)
  fieldCheck = fieldCheck && (lhs.hasValue == rhs.hasValue) && (!lhs.hasValue || lhs.value == rhs.value)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal extension Google.Protobuf {
  internal struct AnyRoot {
    internal static var sharedInstance : AnyRoot {
     struct Static {
         static let instance : AnyRoot = AnyRoot()
     }
     return Static.instance
    }
    internal var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
    }
    internal func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final internal class Any : GeneratedMessage, GeneratedMessageProtocol, Hashable {
    private(set) var hasTypeUrl:Bool = false
    private(set) var typeUrl:String = ""

    private(set) var hasValue:Bool = false
    private(set) var value:NSData = NSData()

    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) {
      if hasTypeUrl {
        output.writeString(1, value:typeUrl)
      }
      if hasValue {
        output.writeData(2, value:value)
      }
      unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasTypeUrl {
        serialize_size += typeUrl.computeStringSize(1)
      }
      if hasValue {
        serialize_size += value.computeDataSize(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseFromData(data:NSData) -> Google.Protobuf.Any {
      return Google.Protobuf.Any.builder().mergeFromData(data, extensionRegistry:Google.Protobuf.AnyRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.Any {
      return Google.Protobuf.Any.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) -> Google.Protobuf.Any {
      return Google.Protobuf.Any.builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.Any {
      return Google.Protobuf.Any.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) -> Google.Protobuf.Any {
      return Google.Protobuf.Any.builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.Any {
      return Google.Protobuf.Any.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func builder() -> Google.Protobuf.AnyBuilder {
      return Google.Protobuf.Any.classBuilder() as! Google.Protobuf.AnyBuilder
    }
    internal func builder() -> Google.Protobuf.AnyBuilder {
      return classBuilder() as! Google.Protobuf.AnyBuilder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return Google.Protobuf.AnyBuilder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return Google.Protobuf.Any.builder()
    }
    internal func toBuilder() -> Google.Protobuf.AnyBuilder {
      return Google.Protobuf.Any.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:Google.Protobuf.Any) -> Google.Protobuf.AnyBuilder {
      return Google.Protobuf.Any.builder().mergeFrom(prototype)
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) {
      if hasTypeUrl {
        output += "\(indent) typeUrl: \(typeUrl) \n"
      }
      if hasValue {
        output += "\(indent) value: \(value) \n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasTypeUrl {
               hashCode = (hashCode &* 31) &+ typeUrl.hashValue
            }
            if hasValue {
               hashCode = (hashCode &* 31) &+ value.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "Google.Protobuf.Any"
    }
    override internal func className() -> String {
        return "Google.Protobuf.Any"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return Google.Protobuf.Any.self
    }
    //Meta information declaration end

  }

  final internal class AnyBuilder : GeneratedMessageBuilder {
    private var builderResult:Google.Protobuf.Any = Google.Protobuf.Any()
    internal func getMessage() -> Google.Protobuf.Any {
        return builderResult
    }

    required override internal init () {
       super.init()
    }
    var hasTypeUrl:Bool {
         get {
              return builderResult.hasTypeUrl
         }
    }
    var typeUrl:String {
         get {
              return builderResult.typeUrl
         }
         set (value) {
             builderResult.hasTypeUrl = true
             builderResult.typeUrl = value
         }
    }
    func setTypeUrl(value:String) -> Google.Protobuf.AnyBuilder {
      self.typeUrl = value
      return self
    }
    internal func clearTypeUrl() -> Google.Protobuf.AnyBuilder{
         builderResult.hasTypeUrl = false
         builderResult.typeUrl = ""
         return self
    }
    var hasValue:Bool {
         get {
              return builderResult.hasValue
         }
    }
    var value:NSData {
         get {
              return builderResult.value
         }
         set (value) {
             builderResult.hasValue = true
             builderResult.value = value
         }
    }
    func setValue(value:NSData) -> Google.Protobuf.AnyBuilder {
      self.value = value
      return self
    }
    internal func clearValue() -> Google.Protobuf.AnyBuilder{
         builderResult.hasValue = false
         builderResult.value = NSData()
         return self
    }
    override internal var internalGetResult:GeneratedMessage {
         get {
            return builderResult
         }
    }
    internal override func clear() -> Google.Protobuf.AnyBuilder {
      builderResult = Google.Protobuf.Any()
      return self
    }
    internal override func clone() -> Google.Protobuf.AnyBuilder {
      return Google.Protobuf.Any.builderWithPrototype(builderResult)
    }
    internal override func build() -> Google.Protobuf.Any {
         checkInitialized()
         return buildPartial()
    }
    internal func buildPartial() -> Google.Protobuf.Any {
      var returnMe:Google.Protobuf.Any = builderResult
      return returnMe
    }
    internal func mergeFrom(other:Google.Protobuf.Any) -> Google.Protobuf.AnyBuilder {
      if other == Google.Protobuf.Any() {
       return self
      }
      if other.hasTypeUrl {
           typeUrl = other.typeUrl
      }
      if other.hasValue {
           value = other.value
      }
      mergeUnknownFields(other.unknownFields)
      return self
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream) -> Google.Protobuf.AnyBuilder {
         return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.AnyBuilder {
      var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
      while (true) {
        var tag = input.readTag()
        switch tag {
        case 0: 
          self.unknownFields = unknownFieldsBuilder.build()
          return self

        case 10 :
          typeUrl = input.readString()

        case 18 :
          value = input.readData()

        default:
          if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
             unknownFields = unknownFieldsBuilder.build()
             return self
          }
        }
      }
    }
  }

}

// @@protoc_insertion_point(global_scope)
