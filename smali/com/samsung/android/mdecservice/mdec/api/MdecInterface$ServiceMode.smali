.class public final enum Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;
.super Ljava/lang/Enum;
.source "MdecInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

.field public static final enum callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

.field public static final enum calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

.field public static final enum calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

.field public static final enum message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

.field public static final enum msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    const-string v1, "calllog"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    const-string v1, "message"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    const-string v1, "callforking"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    const-string v1, "calllogv2"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    const-string v1, "msglogv2"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 2
    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    aput-object v7, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    return-object v0
.end method
