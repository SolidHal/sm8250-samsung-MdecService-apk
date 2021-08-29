.class public final enum Lcom/samsung/android/mdeccommon/log/Label;
.super Ljava/lang/Enum;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdeccommon/log/Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum APP_INTENT:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum APP_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum GET:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum GET_RESP:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum NMS_NOTIFY:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum NMS_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum NMS_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum PAYLOAD_GET_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum PAYLOAD_GET_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum PAYLOAD_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum PAYLOAD_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum PUSH:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum UPLOAD_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

.field public static final enum UPLOAD_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "APP_REQUEST"

    const/4 v2, 0x0

    const-string v3, "App request"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->APP_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    .line 2
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "NMS_REQUEST"

    const/4 v3, 0x1

    const-string v4, "Nms request"

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->NMS_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    .line 3
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "NMS_RESPONSE"

    const/4 v4, 0x2

    const-string v5, "Nms response"

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->NMS_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    .line 4
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "PAYLOAD_REQUEST"

    const/4 v5, 0x3

    const-string v6, "Nms upload request"

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    .line 5
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "PAYLOAD_RESPONSE"

    const/4 v6, 0x4

    const-string v7, "Nms upload response"

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    .line 6
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "PUSH"

    const/4 v7, 0x5

    const-string v8, "Push notification received"

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->PUSH:Lcom/samsung/android/mdeccommon/log/Label;

    .line 7
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "GET"

    const/4 v8, 0x6

    const-string v9, "Get request"

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->GET:Lcom/samsung/android/mdeccommon/log/Label;

    .line 8
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "GET_RESP"

    const/4 v9, 0x7

    const-string v10, "Get Response from NMS"

    invoke-direct {v0, v1, v9, v10}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->GET_RESP:Lcom/samsung/android/mdeccommon/log/Label;

    .line 9
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "APP_INTENT"

    const/16 v10, 0x8

    const-string v11, "Broadcast to app"

    invoke-direct {v0, v1, v10, v11}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->APP_INTENT:Lcom/samsung/android/mdeccommon/log/Label;

    .line 10
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "UPLOAD_REQUEST"

    const/16 v11, 0x9

    const-string v12, "Nms request for upload payload to PD"

    invoke-direct {v0, v1, v11, v12}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->UPLOAD_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    .line 11
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "UPLOAD_RESPONSE"

    const/16 v12, 0xa

    const-string v13, "Nms response for upload payload to PD"

    invoke-direct {v0, v1, v12, v13}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->UPLOAD_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    .line 12
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "NMS_NOTIFY"

    const/16 v13, 0xb

    const-string v14, "Payload available notify"

    invoke-direct {v0, v1, v13, v14}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->NMS_NOTIFY:Lcom/samsung/android/mdeccommon/log/Label;

    .line 13
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "PAYLOAD_GET_REQUEST"

    const/16 v14, 0xc

    const-string v15, "Payload Get Request"

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_GET_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    .line 14
    new-instance v0, Lcom/samsung/android/mdeccommon/log/Label;

    const-string v1, "PAYLOAD_GET_RESPONSE"

    const/16 v15, 0xd

    const-string v14, "Get payload response"

    invoke-direct {v0, v1, v15, v14}, Lcom/samsung/android/mdeccommon/log/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_GET_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/samsung/android/mdeccommon/log/Label;

    .line 15
    sget-object v14, Lcom/samsung/android/mdeccommon/log/Label;->APP_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v14, v1, v2

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->NMS_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->NMS_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v6

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->PUSH:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v7

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->GET:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v8

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->GET_RESP:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v9

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->APP_INTENT:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v10

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->UPLOAD_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v11

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->UPLOAD_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v12

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->NMS_NOTIFY:Lcom/samsung/android/mdeccommon/log/Label;

    aput-object v2, v1, v13

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_GET_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/samsung/android/mdeccommon/log/Label;->$VALUES:[Lcom/samsung/android/mdeccommon/log/Label;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/mdeccommon/log/Label;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/Label;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdeccommon/log/Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdeccommon/log/Label;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdeccommon/log/Label;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/log/Label;->$VALUES:[Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v0}, [Lcom/samsung/android/mdeccommon/log/Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdeccommon/log/Label;

    return-object v0
.end method


# virtual methods
.method getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/Label;->message:Ljava/lang/String;

    return-object v0
.end method
