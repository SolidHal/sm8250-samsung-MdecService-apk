.class final Lcom/samsung/android/mdecservice/nms/http/HttpUtil$1;
.super Ljava/util/HashMap;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/http/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "SubscribeRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "SubscribeUpdateRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "SearchRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostMmsRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostMmsNotiRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "BulkPostRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "BulkDeleteRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "BulkUpdateRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostNotiRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostAlertNotiRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostMsgDefaultSettingRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostMsgAppSettingRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostMsgAppSettingExtRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostDdmMsgRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostContactRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "UpdateContactRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "DeleteContactRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "SearchContactRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostRcsRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostStateRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostGroupInfoRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "BulkPostStateRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "BulkPostGroupInfoRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "BulkUpdateGroupInfoRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostRcsPayloadRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostFtRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "RelayRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "RelayResponse"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "SearchGroupInfoRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "SearchStateMsgRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "SearchRelayDataRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PostCifRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "SearchCifRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "BulkPostCifRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "BulkDeleteCifRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->DELETE:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "DeleteSubRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->DELETE:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "DeleteRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->DELETE:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "DeleteMmsRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->DELETE:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "DeleteCifRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->GET:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "GetRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->GET:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "GetMmsPayloadRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->GET:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "GetAlertNotiRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->GET:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "GetMsgAppSettingRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->GET:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "GetRcsThumbRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->GET:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "GetRcsPayloadRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->PUT:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "UpdateRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->PUT:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "UpdateMmsRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->PUT:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "UpdateGroupInfoRequest"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
