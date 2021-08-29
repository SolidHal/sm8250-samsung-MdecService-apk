.class final enum Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;
.super Ljava/lang/Enum;
.source "CmcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/CmcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PackageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

.field public static final enum INSTALLED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

.field public static final enum NOT_INSTALLED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

.field public static final enum NOT_QUERIED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    const-string v1, "NOT_QUERIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->NOT_QUERIED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    const-string v1, "INSTALLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->INSTALLED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    const-string v1, "NOT_INSTALLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->NOT_INSTALLED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    sget-object v5, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->NOT_QUERIED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->INSTALLED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->$VALUES:[Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->$VALUES:[Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    return-object v0
.end method
