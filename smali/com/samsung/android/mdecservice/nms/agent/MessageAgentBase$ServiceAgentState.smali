.class public final enum Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;
.super Ljava/lang/Enum;
.source "MessageAgentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ServiceAgentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

.field public static final enum PAYLOADING:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

.field public static final enum REQUEST:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

.field public static final enum RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

.field public static final enum SEARCHING:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    const-string v1, "REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->REQUEST:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    const-string v1, "RESPONSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    const-string v1, "PAYLOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->PAYLOADING:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    const-string v1, "SEARCHING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->SEARCHING:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    .line 2
    sget-object v6, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->REQUEST:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->PAYLOADING:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->$VALUES:[Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->$VALUES:[Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    return-object v0
.end method
