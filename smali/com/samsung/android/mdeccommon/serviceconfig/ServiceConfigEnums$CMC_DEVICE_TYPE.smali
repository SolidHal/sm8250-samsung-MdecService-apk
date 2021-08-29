.class public final enum Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;
.super Ljava/lang/Enum;
.source "ServiceConfigEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CMC_DEVICE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

.field public static final enum pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

.field public static final enum sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

.field public static final enum unknown:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    const-string v1, "pd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    new-instance v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    const-string v1, "sd"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    new-instance v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    const-string v1, "unknown"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->unknown:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    .line 2
    sget-object v5, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->$VALUES:[Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->$VALUES:[Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->value:I

    return v0
.end method
