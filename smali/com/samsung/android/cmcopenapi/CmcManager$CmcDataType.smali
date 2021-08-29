.class final enum Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;
.super Ljava/lang/Enum;
.source "CmcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/CmcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CmcDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

.field public static final enum CMC_DEVICES:Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

.field public static final enum CMC_LINES:Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

.field public static final enum CMC_OOBE_HISTORY:Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    const-string v1, "CMC_LINES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;->CMC_LINES:Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    const-string v1, "CMC_DEVICES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;->CMC_DEVICES:Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    const-string v1, "CMC_OOBE_HISTORY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;->CMC_OOBE_HISTORY:Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    .line 2
    sget-object v5, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;->CMC_LINES:Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;->CMC_DEVICES:Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;->$VALUES:[Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;->$VALUES:[Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;

    return-object v0
.end method
