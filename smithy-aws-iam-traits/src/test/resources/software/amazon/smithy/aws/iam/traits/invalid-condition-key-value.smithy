$version: "2.0"
namespace smithy.example

use aws.iam#conditionKeyValue

@aws.iam#defineConditionKeys(
    "smithy:ActionContextKey1": { type: "String" },
    "smithy:ActionContextKey2": { type: "String" },
    "smithy:ActionContextKey3": { type: "String" },
    "smithy:requesterId": { type: "String" }
)
@aws.iam#conditionKeysResolvedByService(["smithy:requesterId"])
@aws.auth#sigv4(name: "smithy")
@aws.api#service(sdkId: "My Value", arnNamespace: "myservice")
service MyService {
    version: "2019-02-20",
    operations: [Echo, GetResource2]
}


@aws.iam#actionName("overridingActionName")
operation Echo {}

operation GetResource2 {
    input: GetResource2Input
}

structure GetResource2Input {
    @aws.iam#conditionKeyValue("smithy:InvalidConditionKey")
    id1: String,

    @required
    id2: String
}
