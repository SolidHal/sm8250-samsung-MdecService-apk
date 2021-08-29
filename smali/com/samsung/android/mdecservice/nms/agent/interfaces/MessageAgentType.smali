.class public final enum Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;
.super Ljava/lang/Enum;
.source "MessageAgentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

.field public static final enum MMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

.field public static final enum MMS_WTIHOUT_PAYLOAD_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

.field public static final enum SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    const-string v1, "SMS_AGENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    const-string v1, "MMS_AGENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    const-string v1, "MMS_WTIHOUT_PAYLOAD_AGENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_WTIHOUT_PAYLOAD_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    sget-object v5, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    return-object v0
.end method
