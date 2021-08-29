.class public final enum Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;
.super Ljava/lang/Enum;
.source "CmcParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

.field public static final enum CANCELLED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

.field public static final enum COMPLETED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

.field public static final enum FAILED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

.field public static final enum INPROGRESS:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

.field public static final enum STARTED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->STARTED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    const-string v1, "INPROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->INPROGRESS:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    const-string v1, "COMPLETED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->COMPLETED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->FAILED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    const-string v1, "CANCELLED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->CANCELLED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    .line 2
    sget-object v7, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->STARTED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    aput-object v7, v1, v2

    sget-object v2, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->INPROGRESS:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->COMPLETED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->FAILED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->$VALUES:[Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->$VALUES:[Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    return-object v0
.end method
