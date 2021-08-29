.class public final enum Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;
.super Ljava/lang/Enum;
.source "MdecInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

.field public static final enum bt_watch:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

.field public static final enum laptop:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

.field public static final enum pc:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

.field public static final enum phone:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

.field public static final enum speaker:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

.field public static final enum tablet:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

.field public static final enum tv:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

.field public static final enum undefined:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

.field public static final enum watch:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const-string v1, "phone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->phone:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const-string v1, "tablet"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->tablet:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const-string v1, "bt_watch"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->bt_watch:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const-string v1, "watch"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->watch:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const-string v1, "speaker"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->speaker:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const-string v1, "pc"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->pc:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const-string v1, "tv"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->tv:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const-string v1, "laptop"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->laptop:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const-string v1, "undefined"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->undefined:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    .line 2
    sget-object v11, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->phone:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    aput-object v11, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->tablet:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->bt_watch:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->watch:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->speaker:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    aput-object v2, v1, v6

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->pc:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    aput-object v2, v1, v7

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->tv:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    aput-object v2, v1, v8

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->laptop:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    return-object v0
.end method
