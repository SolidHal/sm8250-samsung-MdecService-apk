.class final enum Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;
.super Ljava/lang/Enum;
.source "SubscriptionAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SubAgentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

.field public static final enum DEFAULT:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

.field public static final enum DEREGISTERING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

.field public static final enum READY:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

.field public static final enum REGISTERED:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

.field public static final enum REGISTERING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

.field public static final enum UPDATING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->DEFAULT:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    const-string v1, "READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->READY:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    const-string v1, "REGISTERING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->REGISTERING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    const-string v1, "REGISTERED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->REGISTERED:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    const-string v1, "UPDATING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->UPDATING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    const-string v1, "DEREGISTERING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->DEREGISTERING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    .line 2
    sget-object v8, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->DEFAULT:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    aput-object v8, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->READY:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->REGISTERING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->REGISTERED:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->UPDATING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->$VALUES:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->$VALUES:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    return-object v0
.end method
