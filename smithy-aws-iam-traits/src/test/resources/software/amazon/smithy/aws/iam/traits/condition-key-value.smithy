$version: "2.0"
namespace smithy.example

use aws.iam#conditionKeyValue

@aws.iam#defineConditionKeys(
    "smithy:ActionContextKey1": { type: "String" }
)
@aws.auth#sigv4(name: "smithy")
service MyService {
    version: "2019-02-20",
    operations: [Echo]
}

operation Echo {
    input: EchoInput
}

structure EchoInput {
    @aws.iam#conditionKeyValue("smithy:ActionContextKey1")
    id1: String,

    @required
    id2: String
}
