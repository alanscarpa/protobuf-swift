// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file unittest_optimize_for.proto

import Foundation
import ProtocolBuffers


internal extension ProtobufUnittest{}

internal func == (lhs: ProtobufUnittest.TestOptimizedForSize, rhs: ProtobufUnittest.TestOptimizedForSize) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasI == rhs.hasI) && (!lhs.hasI || lhs.i == rhs.i)
  fieldCheck = fieldCheck && (lhs.hasIntegerField == rhs.hasIntegerField) && (!lhs.hasIntegerField || lhs.integerField == rhs.integerField)
  fieldCheck = fieldCheck && (lhs.hasStringField == rhs.hasStringField) && (!lhs.hasStringField || lhs.stringField == rhs.stringField)
  fieldCheck = fieldCheck && (lhs.hasMsg == rhs.hasMsg) && (!lhs.hasMsg || lhs.msg == rhs.msg)
  fieldCheck = fieldCheck && lhs.isEqualExtensionsInOther(rhs, startInclusive:Int32(1000), endExclusive:Int32(536870912))
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal func == (lhs: ProtobufUnittest.TestRequiredOptimizedForSize, rhs: ProtobufUnittest.TestRequiredOptimizedForSize) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasX == rhs.hasX) && (!lhs.hasX || lhs.x == rhs.x)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal func == (lhs: ProtobufUnittest.TestOptionalOptimizedForSize, rhs: ProtobufUnittest.TestOptionalOptimizedForSize) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasO == rhs.hasO) && (!lhs.hasO || lhs.o == rhs.o)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal var TestOptimizedForSizetestExtension:ConcreateExtensionField {
   get {
       return ProtobufUnittest.UnittestOptimizeForRoot.sharedInstance.TestOptimizedForSizetestExtensionStatic
   }
}
internal var TestOptimizedForSizetestExtension2:ConcreateExtensionField {
   get {
       return ProtobufUnittest.UnittestOptimizeForRoot.sharedInstance.TestOptimizedForSizetestExtension2Static
   }
}
internal extension ProtobufUnittest {
  internal struct UnittestOptimizeForRoot {
    internal static var sharedInstance : UnittestOptimizeForRoot {
     struct Static {
         static let instance : UnittestOptimizeForRoot = UnittestOptimizeForRoot()
     }
     return Static.instance
    }
    var TestOptimizedForSizetestExtensionStatic:ConcreateExtensionField
    var TestOptimizedForSizetestExtension2Static:ConcreateExtensionField
    internal var extensionRegistry:ExtensionRegistry

    init() {
      TestOptimizedForSizetestExtensionStatic = ConcreateExtensionField(type:ExtensionType.ExtensionTypeInt32, extendedClass:ProtobufUnittest.TestOptimizedForSize.self, fieldNumber: 1234, defaultValue:Int32(0), messageOrGroupClass:Int32.self, isRepeated:false, isPacked:false, isMessageSetWireFormat:false)
      TestOptimizedForSizetestExtension2Static = ConcreateExtensionField(type:ExtensionType.ExtensionTypeMessage, extendedClass:ProtobufUnittest.TestOptimizedForSize.self, fieldNumber: 1235, defaultValue:ProtobufUnittest.TestRequiredOptimizedForSize(), messageOrGroupClass:ProtobufUnittest.TestRequiredOptimizedForSize.self, isRepeated:false, isPacked:false, isMessageSetWireFormat:false)
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      ProtobufUnittest.UnittestRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    internal func registerAllExtensions(registry:ExtensionRegistry) {
      registry.addExtension(TestOptimizedForSizetestExtensionStatic)
      registry.addExtension(TestOptimizedForSizetestExtension2Static)
    }
  }

  final internal class TestOptimizedForSize : ExtendableMessage, GeneratedMessageProtocol, Hashable {


    //OneOf declaration start

    internal enum Foo {
      case FooOneOfNotSet

      internal func checkOneOfIsSet() -> Bool {
           switch self {
           case .FooOneOfNotSet:
                return false
           default:
                return true
           }
      }
      case IntegerField(Int32)

      internal static func getIntegerField(value:Foo) -> Int32? {
           switch value {
           case .IntegerField(let enumValue):
                return enumValue
           default:
                return nil
           }
      }
      case StringField(String)

      internal static func getStringField(value:Foo) -> String? {
           switch value {
           case .StringField(let enumValue):
                return enumValue
           default:
                return nil
           }
      }
    }
    //OneOf declaration end

    private var storageFoo:TestOptimizedForSize.Foo =  TestOptimizedForSize.Foo.FooOneOfNotSet
    private(set) var hasI:Bool = false
    private(set) var i:Int32 = Int32(0)

    private(set) var hasMsg:Bool = false
    private(set) var msg:ProtobufUnittest.ForeignMessage!
    private(set) var hasIntegerField:Bool {
          get {
               if TestOptimizedForSize.Foo.getIntegerField(storageFoo) == nil {
                   return false
               }
               return true
          }
          set(newValue) {
          }
    }
    private(set) var integerField:Int32!{
         get {
              return TestOptimizedForSize.Foo.getIntegerField(storageFoo)
         }
         set (newvalue) {
              storageFoo = TestOptimizedForSize.Foo.IntegerField(newvalue)
         }
    }
    private(set) var hasStringField:Bool {
          get {
               if TestOptimizedForSize.Foo.getStringField(storageFoo) == nil {
                   return false
               }
               return true
          }
          set(newValue) {
          }
    }
    private(set) var stringField:String!{
         get {
              return TestOptimizedForSize.Foo.getStringField(storageFoo)
         }
         set (newvalue) {
              storageFoo = TestOptimizedForSize.Foo.StringField(newvalue)
         }
    }
    internal class func testExtension() -> ConcreateExtensionField {
         return TestOptimizedForSizetestExtension
    }
    internal class func testExtension2() -> ConcreateExtensionField {
         return TestOptimizedForSizetestExtension2
    }
    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
      if !extensionsAreInitialized() {
       return false
      }
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) {
      if hasI {
        output.writeInt32(1, value:i)
      }
      if hasIntegerField {
        output.writeInt32(2, value:integerField)
      }
      if hasStringField {
        output.writeString(3, value:stringField)
      }
      if hasMsg {
        output.writeMessage(19, value:msg)
      }
      writeExtensionsToCodedOutputStream(output, startInclusive:Int32(1000), endExclusive:Int32(536870912))
      unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasI {
        serialize_size += i.computeInt32Size(1)
      }
      if hasIntegerField {
        serialize_size += integerField.computeInt32Size(2)
      }
      if hasStringField {
        serialize_size += stringField.computeStringSize(3)
      }
      if hasMsg {
          if let varSizemsg = msg?.computeMessageSize(19) {
              serialize_size += varSizemsg
          }
      }
      serialize_size += extensionsSerializedSize()
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseFromData(data:NSData) -> ProtobufUnittest.TestOptimizedForSize {
      return ProtobufUnittest.TestOptimizedForSize.builder().mergeFromData(data, extensionRegistry:ProtobufUnittest.UnittestOptimizeForRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestOptimizedForSize {
      return ProtobufUnittest.TestOptimizedForSize.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) -> ProtobufUnittest.TestOptimizedForSize {
      return ProtobufUnittest.TestOptimizedForSize.builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestOptimizedForSize {
      return ProtobufUnittest.TestOptimizedForSize.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) -> ProtobufUnittest.TestOptimizedForSize {
      return ProtobufUnittest.TestOptimizedForSize.builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestOptimizedForSize {
      return ProtobufUnittest.TestOptimizedForSize.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func builder() -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      return ProtobufUnittest.TestOptimizedForSize.classBuilder() as! ProtobufUnittest.TestOptimizedForSizeBuilder
    }
    internal func builder() -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      return classBuilder() as! ProtobufUnittest.TestOptimizedForSizeBuilder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return ProtobufUnittest.TestOptimizedForSizeBuilder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return ProtobufUnittest.TestOptimizedForSize.builder()
    }
    internal func toBuilder() -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      return ProtobufUnittest.TestOptimizedForSize.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:ProtobufUnittest.TestOptimizedForSize) -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      return ProtobufUnittest.TestOptimizedForSize.builder().mergeFrom(prototype)
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) {
      if hasI {
        output += "\(indent) i: \(i) \n"
      }
      if hasIntegerField {
        output += "\(indent) integerField: \(integerField) \n"
      }
      if hasStringField {
        output += "\(indent) stringField: \(stringField) \n"
      }
      if hasMsg {
        output += "\(indent) msg {\n"
        msg?.writeDescriptionTo(&output, indent:"\(indent)  ")
        output += "\(indent) }\n"
      }
      writeExtensionDescription(&output, startInclusive:Int32(1000), endExclusive:Int32(536870912), indent:indent)
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasI {
               hashCode = (hashCode &* 31) &+ i.hashValue
            }
            if hasIntegerField {
               hashCode = (hashCode &* 31) &+ integerField.hashValue
            }
            if hasStringField {
               hashCode = (hashCode &* 31) &+ stringField.hashValue
            }
            if hasMsg {
                if let hashValuemsg = msg?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuemsg
                }
            }
            hashCode = (hashCode &* 31) &+ Int(hashExtensionsFrom(Int32(1000), endExclusive:Int32(536870912)))
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "ProtobufUnittest.TestOptimizedForSize"
    }
    override internal func className() -> String {
        return "ProtobufUnittest.TestOptimizedForSize"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittest.TestOptimizedForSize.self
    }
    //Meta information declaration end

  }

  final internal class TestOptimizedForSizeBuilder : ExtendableMessageBuilder {
    private var builderResult:ProtobufUnittest.TestOptimizedForSize = ProtobufUnittest.TestOptimizedForSize()
    internal func getMessage() -> ProtobufUnittest.TestOptimizedForSize {
        return builderResult
    }

    required override internal init () {
       super.init()
    }
    var hasI:Bool {
         get {
              return builderResult.hasI
         }
    }
    var i:Int32 {
         get {
              return builderResult.i
         }
         set (value) {
             builderResult.hasI = true
             builderResult.i = value
         }
    }
    func setI(value:Int32) -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      self.i = value
      return self
    }
    internal func clearI() -> ProtobufUnittest.TestOptimizedForSizeBuilder{
         builderResult.hasI = false
         builderResult.i = Int32(0)
         return self
    }
    var hasMsg:Bool {
         get {
             return builderResult.hasMsg
         }
    }
    var msg:ProtobufUnittest.ForeignMessage! {
         get {
             if msgBuilder_ != nil {
                builderResult.msg = msgBuilder_.getMessage()
             }
             return builderResult.msg
         }
         set (value) {
             builderResult.hasMsg = true
             builderResult.msg = value
         }
    }
    private var msgBuilder_:ProtobufUnittest.ForeignMessageBuilder! {
         didSet {
            builderResult.hasMsg = true
         }
    }
    internal func getMsgBuilder() -> ProtobufUnittest.ForeignMessageBuilder {
      if msgBuilder_ == nil {
         msgBuilder_ = ProtobufUnittest.ForeignMessageBuilder()
         builderResult.msg = msgBuilder_.getMessage()
         if msg != nil {
            msgBuilder_.mergeFrom(msg)
         }
      }
      return msgBuilder_
    }
    func setMsg(value:ProtobufUnittest.ForeignMessage!) -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      self.msg = value
      return self
    }
    internal func mergeMsg(value:ProtobufUnittest.ForeignMessage) -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      if builderResult.hasMsg {
        builderResult.msg = ProtobufUnittest.ForeignMessage.builderWithPrototype(builderResult.msg).mergeFrom(value).buildPartial()
      } else {
        builderResult.msg = value
      }
      builderResult.hasMsg = true
      return self
    }
    internal func clearMsg() -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      msgBuilder_ = nil
      builderResult.hasMsg = false
      builderResult.msg = nil
      return self
    }
    var hasIntegerField:Bool {
         get {
              return builderResult.hasIntegerField
         }
    }
    var integerField:Int32 {
         get {
              return builderResult.integerField
         }
         set (value) {
             builderResult.hasIntegerField = true
             builderResult.integerField = value
         }
    }
    func setIntegerField(value:Int32) -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      self.integerField = value
      return self
    }
    internal func clearIntegerField() -> ProtobufUnittest.TestOptimizedForSizeBuilder{
         builderResult.hasIntegerField = false
         builderResult.integerField = Int32(0)
         return self
    }
    var hasStringField:Bool {
         get {
              return builderResult.hasStringField
         }
    }
    var stringField:String {
         get {
              return builderResult.stringField
         }
         set (value) {
             builderResult.hasStringField = true
             builderResult.stringField = value
         }
    }
    func setStringField(value:String) -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      self.stringField = value
      return self
    }
    internal func clearStringField() -> ProtobufUnittest.TestOptimizedForSizeBuilder{
         builderResult.hasStringField = false
         builderResult.stringField = ""
         return self
    }
    override internal var internalGetResult:ExtendableMessage {
         get {
             return builderResult
         }
    }
    internal override func clear() -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      builderResult = ProtobufUnittest.TestOptimizedForSize()
      return self
    }
    internal override func clone() -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      return ProtobufUnittest.TestOptimizedForSize.builderWithPrototype(builderResult)
    }
    internal override func build() -> ProtobufUnittest.TestOptimizedForSize {
         checkInitialized()
         return buildPartial()
    }
    internal func buildPartial() -> ProtobufUnittest.TestOptimizedForSize {
      var returnMe:ProtobufUnittest.TestOptimizedForSize = builderResult
      return returnMe
    }
    internal func mergeFrom(other:ProtobufUnittest.TestOptimizedForSize) -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      if other == ProtobufUnittest.TestOptimizedForSize() {
       return self
      }
      if other.hasI {
           i = other.i
      }
      if (other.hasMsg) {
          mergeMsg(other.msg)
      }
      if other.hasIntegerField {
           integerField = other.integerField
      }
      if other.hasStringField {
           stringField = other.stringField
      }
      mergeExtensionFields(other)
      mergeUnknownFields(other.unknownFields)
      return self
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream) -> ProtobufUnittest.TestOptimizedForSizeBuilder {
         return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestOptimizedForSizeBuilder {
      var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
      while (true) {
        var tag = input.readTag()
        switch tag {
        case 0: 
          self.unknownFields = unknownFieldsBuilder.build()
          return self

        case 8 :
          i = input.readInt32()

        case 16 :
          integerField = input.readInt32()

        case 26 :
          stringField = input.readString()

        case 154 :
          var subBuilder:ProtobufUnittest.ForeignMessageBuilder = ProtobufUnittest.ForeignMessage.builder()
          if hasMsg {
            subBuilder.mergeFrom(msg)
          }
          input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
          msg = subBuilder.buildPartial()

        default:
          if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
             unknownFields = unknownFieldsBuilder.build()
             return self
          }
        }
      }
    }
  }

  final internal class TestRequiredOptimizedForSize : GeneratedMessage, GeneratedMessageProtocol, Hashable {
    private(set) var hasX:Bool = false
    private(set) var x:Int32 = Int32(0)

    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
      if !hasX {
        return false
      }
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) {
      if hasX {
        output.writeInt32(1, value:x)
      }
      unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasX {
        serialize_size += x.computeInt32Size(1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseFromData(data:NSData) -> ProtobufUnittest.TestRequiredOptimizedForSize {
      return ProtobufUnittest.TestRequiredOptimizedForSize.builder().mergeFromData(data, extensionRegistry:ProtobufUnittest.UnittestOptimizeForRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestRequiredOptimizedForSize {
      return ProtobufUnittest.TestRequiredOptimizedForSize.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) -> ProtobufUnittest.TestRequiredOptimizedForSize {
      return ProtobufUnittest.TestRequiredOptimizedForSize.builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestRequiredOptimizedForSize {
      return ProtobufUnittest.TestRequiredOptimizedForSize.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) -> ProtobufUnittest.TestRequiredOptimizedForSize {
      return ProtobufUnittest.TestRequiredOptimizedForSize.builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestRequiredOptimizedForSize {
      return ProtobufUnittest.TestRequiredOptimizedForSize.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func builder() -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
      return ProtobufUnittest.TestRequiredOptimizedForSize.classBuilder() as! ProtobufUnittest.TestRequiredOptimizedForSizeBuilder
    }
    internal func builder() -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
      return classBuilder() as! ProtobufUnittest.TestRequiredOptimizedForSizeBuilder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return ProtobufUnittest.TestRequiredOptimizedForSizeBuilder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return ProtobufUnittest.TestRequiredOptimizedForSize.builder()
    }
    internal func toBuilder() -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
      return ProtobufUnittest.TestRequiredOptimizedForSize.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:ProtobufUnittest.TestRequiredOptimizedForSize) -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
      return ProtobufUnittest.TestRequiredOptimizedForSize.builder().mergeFrom(prototype)
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) {
      if hasX {
        output += "\(indent) x: \(x) \n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasX {
               hashCode = (hashCode &* 31) &+ x.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "ProtobufUnittest.TestRequiredOptimizedForSize"
    }
    override internal func className() -> String {
        return "ProtobufUnittest.TestRequiredOptimizedForSize"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittest.TestRequiredOptimizedForSize.self
    }
    //Meta information declaration end

  }

  final internal class TestRequiredOptimizedForSizeBuilder : GeneratedMessageBuilder {
    private var builderResult:ProtobufUnittest.TestRequiredOptimizedForSize = ProtobufUnittest.TestRequiredOptimizedForSize()
    internal func getMessage() -> ProtobufUnittest.TestRequiredOptimizedForSize {
        return builderResult
    }

    required override internal init () {
       super.init()
    }
    var hasX:Bool {
         get {
              return builderResult.hasX
         }
    }
    var x:Int32 {
         get {
              return builderResult.x
         }
         set (value) {
             builderResult.hasX = true
             builderResult.x = value
         }
    }
    func setX(value:Int32) -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
      self.x = value
      return self
    }
    internal func clearX() -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder{
         builderResult.hasX = false
         builderResult.x = Int32(0)
         return self
    }
    override internal var internalGetResult:GeneratedMessage {
         get {
            return builderResult
         }
    }
    internal override func clear() -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
      builderResult = ProtobufUnittest.TestRequiredOptimizedForSize()
      return self
    }
    internal override func clone() -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
      return ProtobufUnittest.TestRequiredOptimizedForSize.builderWithPrototype(builderResult)
    }
    internal override func build() -> ProtobufUnittest.TestRequiredOptimizedForSize {
         checkInitialized()
         return buildPartial()
    }
    internal func buildPartial() -> ProtobufUnittest.TestRequiredOptimizedForSize {
      var returnMe:ProtobufUnittest.TestRequiredOptimizedForSize = builderResult
      return returnMe
    }
    internal func mergeFrom(other:ProtobufUnittest.TestRequiredOptimizedForSize) -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
      if other == ProtobufUnittest.TestRequiredOptimizedForSize() {
       return self
      }
      if other.hasX {
           x = other.x
      }
      mergeUnknownFields(other.unknownFields)
      return self
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream) -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
         return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
      var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
      while (true) {
        var tag = input.readTag()
        switch tag {
        case 0: 
          self.unknownFields = unknownFieldsBuilder.build()
          return self

        case 8 :
          x = input.readInt32()

        default:
          if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
             unknownFields = unknownFieldsBuilder.build()
             return self
          }
        }
      }
    }
  }

  final internal class TestOptionalOptimizedForSize : GeneratedMessage, GeneratedMessageProtocol, Hashable {
    private(set) var hasO:Bool = false
    private(set) var o:ProtobufUnittest.TestRequiredOptimizedForSize!
    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
      if hasO {
       if !o.isInitialized() {
         return false
       }
      }
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) {
      if hasO {
        output.writeMessage(1, value:o)
      }
      unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasO {
          if let varSizeo = o?.computeMessageSize(1) {
              serialize_size += varSizeo
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseFromData(data:NSData) -> ProtobufUnittest.TestOptionalOptimizedForSize {
      return ProtobufUnittest.TestOptionalOptimizedForSize.builder().mergeFromData(data, extensionRegistry:ProtobufUnittest.UnittestOptimizeForRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestOptionalOptimizedForSize {
      return ProtobufUnittest.TestOptionalOptimizedForSize.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) -> ProtobufUnittest.TestOptionalOptimizedForSize {
      return ProtobufUnittest.TestOptionalOptimizedForSize.builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestOptionalOptimizedForSize {
      return ProtobufUnittest.TestOptionalOptimizedForSize.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) -> ProtobufUnittest.TestOptionalOptimizedForSize {
      return ProtobufUnittest.TestOptionalOptimizedForSize.builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestOptionalOptimizedForSize {
      return ProtobufUnittest.TestOptionalOptimizedForSize.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func builder() -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      return ProtobufUnittest.TestOptionalOptimizedForSize.classBuilder() as! ProtobufUnittest.TestOptionalOptimizedForSizeBuilder
    }
    internal func builder() -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      return classBuilder() as! ProtobufUnittest.TestOptionalOptimizedForSizeBuilder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return ProtobufUnittest.TestOptionalOptimizedForSizeBuilder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return ProtobufUnittest.TestOptionalOptimizedForSize.builder()
    }
    internal func toBuilder() -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      return ProtobufUnittest.TestOptionalOptimizedForSize.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:ProtobufUnittest.TestOptionalOptimizedForSize) -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      return ProtobufUnittest.TestOptionalOptimizedForSize.builder().mergeFrom(prototype)
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) {
      if hasO {
        output += "\(indent) o {\n"
        o?.writeDescriptionTo(&output, indent:"\(indent)  ")
        output += "\(indent) }\n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasO {
                if let hashValueo = o?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueo
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "ProtobufUnittest.TestOptionalOptimizedForSize"
    }
    override internal func className() -> String {
        return "ProtobufUnittest.TestOptionalOptimizedForSize"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittest.TestOptionalOptimizedForSize.self
    }
    //Meta information declaration end

  }

  final internal class TestOptionalOptimizedForSizeBuilder : GeneratedMessageBuilder {
    private var builderResult:ProtobufUnittest.TestOptionalOptimizedForSize = ProtobufUnittest.TestOptionalOptimizedForSize()
    internal func getMessage() -> ProtobufUnittest.TestOptionalOptimizedForSize {
        return builderResult
    }

    required override internal init () {
       super.init()
    }
    var hasO:Bool {
         get {
             return builderResult.hasO
         }
    }
    var o:ProtobufUnittest.TestRequiredOptimizedForSize! {
         get {
             if oBuilder_ != nil {
                builderResult.o = oBuilder_.getMessage()
             }
             return builderResult.o
         }
         set (value) {
             builderResult.hasO = true
             builderResult.o = value
         }
    }
    private var oBuilder_:ProtobufUnittest.TestRequiredOptimizedForSizeBuilder! {
         didSet {
            builderResult.hasO = true
         }
    }
    internal func getOBuilder() -> ProtobufUnittest.TestRequiredOptimizedForSizeBuilder {
      if oBuilder_ == nil {
         oBuilder_ = ProtobufUnittest.TestRequiredOptimizedForSizeBuilder()
         builderResult.o = oBuilder_.getMessage()
         if o != nil {
            oBuilder_.mergeFrom(o)
         }
      }
      return oBuilder_
    }
    func setO(value:ProtobufUnittest.TestRequiredOptimizedForSize!) -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      self.o = value
      return self
    }
    internal func mergeO(value:ProtobufUnittest.TestRequiredOptimizedForSize) -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      if builderResult.hasO {
        builderResult.o = ProtobufUnittest.TestRequiredOptimizedForSize.builderWithPrototype(builderResult.o).mergeFrom(value).buildPartial()
      } else {
        builderResult.o = value
      }
      builderResult.hasO = true
      return self
    }
    internal func clearO() -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      oBuilder_ = nil
      builderResult.hasO = false
      builderResult.o = nil
      return self
    }
    override internal var internalGetResult:GeneratedMessage {
         get {
            return builderResult
         }
    }
    internal override func clear() -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      builderResult = ProtobufUnittest.TestOptionalOptimizedForSize()
      return self
    }
    internal override func clone() -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      return ProtobufUnittest.TestOptionalOptimizedForSize.builderWithPrototype(builderResult)
    }
    internal override func build() -> ProtobufUnittest.TestOptionalOptimizedForSize {
         checkInitialized()
         return buildPartial()
    }
    internal func buildPartial() -> ProtobufUnittest.TestOptionalOptimizedForSize {
      var returnMe:ProtobufUnittest.TestOptionalOptimizedForSize = builderResult
      return returnMe
    }
    internal func mergeFrom(other:ProtobufUnittest.TestOptionalOptimizedForSize) -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      if other == ProtobufUnittest.TestOptionalOptimizedForSize() {
       return self
      }
      if (other.hasO) {
          mergeO(other.o)
      }
      mergeUnknownFields(other.unknownFields)
      return self
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream) -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
         return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittest.TestOptionalOptimizedForSizeBuilder {
      var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
      while (true) {
        var tag = input.readTag()
        switch tag {
        case 0: 
          self.unknownFields = unknownFieldsBuilder.build()
          return self

        case 10 :
          var subBuilder:ProtobufUnittest.TestRequiredOptimizedForSizeBuilder = ProtobufUnittest.TestRequiredOptimizedForSize.builder()
          if hasO {
            subBuilder.mergeFrom(o)
          }
          input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
          o = subBuilder.buildPartial()

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
