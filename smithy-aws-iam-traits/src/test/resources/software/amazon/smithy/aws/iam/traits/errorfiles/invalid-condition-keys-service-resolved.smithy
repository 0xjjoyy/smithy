$version: "2.0"
namespace smithy.example

@aws.api#service(sdkId: "My")
@aws.iam#defineConditionKeys(
    "smithy:ActionContextKey1": { type: "String" },
    "smithy:ActionContextKey2": { type: "String" },
    "smithy:ActionContextKey3": { type: "String" },
    "smithy:requesterId": { type: "String" }
)
@aws.iam#conditionKeysResolvedByService(["smithy:invalidkey"])
@aws.auth#sigv4(name: "smithy")
service MyService {
    version: "2019-02-20",
    operations: [Echo]
}


operation Echo {}