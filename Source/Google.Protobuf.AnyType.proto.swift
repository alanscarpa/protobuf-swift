// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "any.proto"
// Syntax "Proto3"

import Foundation

public extension Google.Protobuf{}

public func == (lhs: Google.Protobuf.AnyType, rhs: Google.Protobuf.AnyType) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasTypeUrl == rhs.hasTypeUrl) && (!lhs.hasTypeUrl || lhs.typeUrl == rhs.typeUrl)
  fieldCheck = fieldCheck && (lhs.hasValue == rhs.hasValue) && (!lhs.hasValue || lhs.value == rhs.value)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Google.Protobuf {
  public struct AnyTypeRoot {
    public static var sharedInstance : AnyTypeRoot {
     struct Static {
         static let instance : AnyTypeRoot = AnyTypeRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Google.Protobuf.SwiftDescriptorRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  // `Any` contains an arbitrary serialized message along with a URL
  // that describes the type of the serialized message.
  // The proto runtimes and/or compiler will eventually
  //  provide utilities to pack/unpack Any values (projected Q1/15).
  // # JSON
  // The JSON representation of an `Any` value uses the regular
  // representation of the deserialized, embedded message, with an
  // additional field `@type` which contains the type URL. Example:
  //     package google.profile;
  //     message Person {
  //       string first_name = 1;
  //       string last_name = 2;
  //     }
  //     {
  //       "@type": "type.googleapis.com/google.profile.Person",
  //       "firstName": <string>,
  //       "lastName": <string>
  //     }
  // If the embedded message type is well-known and has a custom JSON
  // representation, that representation will be embedded adding a field
  // `value` which holds the custom JSON in addition to the the `@type`
  // field. Example (for message [google.protobuf.Duration][google.protobuf.Duration]):
  //     {
  //       "@type": "type.googleapis.com/google.protobuf.Duration",
  //       "value": "1.212s"
  //     }
  final public class AnyType : GeneratedMessage, GeneratedMessageProtocol {
    // A URL/resource name whose content describes the type of the
    // serialized message.
    // For URLs which use the schema `http`, `https`, or no schema, the
    // following restrictions and interpretations apply:
    // * If no schema is provided, `https` is assumed.
    // * The last segment of the URL's path must represent the fully
    //   qualified name of the type (as in `path/google.protobuf.Duration`).
    // * An HTTP GET on the URL must yield a [google.protobuf.Type][google.protobuf.Type]
    //   value in binary format, or produce an error.
    // * Applications are allowed to cache lookup results based on the
    //   URL, or have them precompiled into a binary to avoid any
    //   lookup. Therefore, binary compatibility needs to be preserved
    //   on changes to types. (Use versioned type names to manage
    //   breaking changes.)
    // Schemas other than `http`, `https` (or the empty schema) might be
    // used with implementation specific semantics.
    // Types originating from the `google.*` package
    // namespace should use `type.googleapis.com/full.type.name` (without
    // schema and path). A type service will eventually become available which
    // serves those URLs (projected Q2/15).
    public private(set) var hasTypeUrl:Bool = false
    public private(set) var typeUrl:String = ""

    // Must be valid serialized data of the above specified type.
    public private(set) var hasValue:Bool = false
    public private(set) var value:NSData = NSData()

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasTypeUrl {
        try output.writeString(1, value:typeUrl)
      }
      if hasValue {
        try output.writeData(2, value:value)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
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
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Google.Protobuf.AnyType> {
      var mergedArray = Array<Google.Protobuf.AnyType>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Google.Protobuf.AnyType? {
      return try Google.Protobuf.AnyType.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Google.Protobuf.AnyType {
      return try Google.Protobuf.AnyType.Builder().mergeFromData(data, extensionRegistry:Google.Protobuf.AnyTypeRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.AnyType {
      return try Google.Protobuf.AnyType.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Google.Protobuf.AnyType {
      return try Google.Protobuf.AnyType.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.AnyType {
      return try Google.Protobuf.AnyType.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Google.Protobuf.AnyType {
      return try Google.Protobuf.AnyType.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.AnyType {
      return try Google.Protobuf.AnyType.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Google.Protobuf.AnyType.Builder {
      return Google.Protobuf.AnyType.classBuilder() as! Google.Protobuf.AnyType.Builder
    }
    public func getBuilder() -> Google.Protobuf.AnyType.Builder {
      return classBuilder() as! Google.Protobuf.AnyType.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Google.Protobuf.AnyType.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Google.Protobuf.AnyType.Builder()
    }
    public func toBuilder() throws -> Google.Protobuf.AnyType.Builder {
      return try Google.Protobuf.AnyType.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Google.Protobuf.AnyType) throws -> Google.Protobuf.AnyType.Builder {
      return try Google.Protobuf.AnyType.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasTypeUrl {
        jsonMap["typeUrl"] = typeUrl
      }
      if hasValue {
        jsonMap["value"] = value.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0))
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Google.Protobuf.AnyType {
      return try Google.Protobuf.AnyType.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Google.Protobuf.AnyType {
      return try Google.Protobuf.AnyType.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasTypeUrl {
        output += "\(indent) typeUrl: \(typeUrl) \n"
      }
      if hasValue {
        output += "\(indent) value: \(value) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
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

    override public class func className() -> String {
        return "Google.Protobuf.AnyType"
    }
    override public func className() -> String {
        return "Google.Protobuf.AnyType"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Google.Protobuf.AnyType.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Google.Protobuf.AnyType = Google.Protobuf.AnyType()
      public func getMessage() -> Google.Protobuf.AnyType {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasTypeUrl:Bool {
           get {
                return builderResult.hasTypeUrl
           }
      }
      public var typeUrl:String {
           get {
                return builderResult.typeUrl
           }
           set (value) {
               builderResult.hasTypeUrl = true
               builderResult.typeUrl = value
           }
      }
      public func setTypeUrl(value:String) -> Google.Protobuf.AnyType.Builder {
        self.typeUrl = value
        return self
      }
      public func clearTypeUrl() -> Google.Protobuf.AnyType.Builder{
           builderResult.hasTypeUrl = false
           builderResult.typeUrl = ""
           return self
      }
      public var hasValue:Bool {
           get {
                return builderResult.hasValue
           }
      }
      public var value:NSData {
           get {
                return builderResult.value
           }
           set (value) {
               builderResult.hasValue = true
               builderResult.value = value
           }
      }
      public func setValue(value:NSData) -> Google.Protobuf.AnyType.Builder {
        self.value = value
        return self
      }
      public func clearValue() -> Google.Protobuf.AnyType.Builder{
           builderResult.hasValue = false
           builderResult.value = NSData()
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Google.Protobuf.AnyType.Builder {
        builderResult = Google.Protobuf.AnyType()
        return self
      }
      override public func clone() throws -> Google.Protobuf.AnyType.Builder {
        return try Google.Protobuf.AnyType.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Google.Protobuf.AnyType {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Google.Protobuf.AnyType {
        let returnMe:Google.Protobuf.AnyType = builderResult
        return returnMe
      }
      public func mergeFrom(other:Google.Protobuf.AnyType) throws -> Google.Protobuf.AnyType.Builder {
        if other == Google.Protobuf.AnyType() {
         return self
        }
        if other.hasTypeUrl {
             typeUrl = other.typeUrl
        }
        if other.hasValue {
             value = other.value
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Google.Protobuf.AnyType.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.AnyType.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let tag = try input.readTag()
          switch tag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10 :
            typeUrl = try input.readString()

          case 18 :
            value = try input.readData()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Google.Protobuf.AnyType.Builder {
        let resultDecodedBuilder = Google.Protobuf.AnyType.Builder()
        if let jsonValueTypeUrl = jsonMap["typeUrl"] as? String {
          resultDecodedBuilder.typeUrl = jsonValueTypeUrl
        }
        if let jsonValueValue = jsonMap["value"] as? String {
          resultDecodedBuilder.value = NSData(base64EncodedString:jsonValueValue, options: NSDataBase64DecodingOptions(rawValue:0))!
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Google.Protobuf.AnyType.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Google.Protobuf.AnyType.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)