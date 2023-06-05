$version: "2.0"
namespace smithy.example

@aws.api#service(sdkId: "My")
@aws.iam#defineConditionKeys(
    "smithy:ServiceResolveContextKey": { type: "String" }
)
@aws.iam#conditionKeysResolvedByService(["smithy:ServiceResolveContextKey"])
service MyService {
    version: "2019-02-20",
}