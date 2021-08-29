.class public final enum Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;
.super Ljava/lang/Enum;
.source "RcsAgentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ServiceAgentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

.field public static final enum REQUEST:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

.field public static final enum RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    const-string v1, "REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->REQUEST:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    const-string v1, "RESPONSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    .line 2
    sget-object v4, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->REQUEST:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->$VALUES:[Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->$VALUES:[Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    return-object v0
.end method
