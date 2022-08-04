$version: "2.0"

namespace com.example

structure PrimitiveBearer {
    @default(0)
    int: PrimitiveInteger,
    @default(false)
    bool: PrimitiveBoolean,
    @default(0)
    byte: PrimitiveByte,
    @default(0)
    double: PrimitiveDouble,
    @default(0)
    float: PrimitiveFloat,
    @default(0)
    long: PrimitiveLong,
    @default(0)
    short: PrimitiveShort,

    @default(0)
    handlesComments: // Nobody actually does this right?
        PrimitiveShort,

    @required
    handlesRequired: PrimitiveLong,

    handlesBox: PrimitiveByte,
}