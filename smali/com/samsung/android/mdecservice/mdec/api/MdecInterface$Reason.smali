.class public final enum Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
.super Ljava/lang/Enum;
.source "MdecInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final DEVICE_CATEGORY_BT_WATCH:Ljava/lang/String; = "BT-Watch"

.field public static final DEVICE_CATEGORY_LAPTOP:Ljava/lang/String; = "Laptop"

.field public static final DEVICE_CATEGORY_PC:Ljava/lang/String; = "PC"

.field public static final DEVICE_CATEGORY_PHONE:Ljava/lang/String; = "Phone"

.field public static final DEVICE_CATEGORY_SPEAKER:Ljava/lang/String; = "Speaker"

.field public static final DEVICE_CATEGORY_TABLET:Ljava/lang/String; = "Tablet"

.field public static final DEVICE_CATEGORY_TV:Ljava/lang/String; = "TV"

.field public static final DEVICE_CATEGORY_UNDEFINED:Ljava/lang/String; = "Undefined"

.field public static final DEVICE_CATEGORY_WATCH:Ljava/lang/String; = "Watch"

.field public static final enum REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_AUTHENTICATION_FAILED:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_CANNOT_CONNECT_TO_SERVER:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_CONNECT_MAX_SECONDERY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_HAS_NO_PRIMARY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_HAS_NO_PROVISIONED_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_HAS_NO_SECONDERY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public static final enum REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_ERROR_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_ALREADY_EXIST_LINE"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_ALREADY_EXIST_DEVICE"

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_HAS_NO_PRIMARY_DEVICE"

    const/4 v5, 0x3

    const/4 v6, -0x3

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PRIMARY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_HAS_NO_SECONDERY_DEVICE"

    const/4 v6, 0x4

    const/4 v7, -0x4

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_SECONDERY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_CONNECT_MAX_PRIMARY_DEVICES"

    const/4 v7, 0x5

    const/4 v8, -0x5

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 7
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_CONNECT_MAX_SECONDERY_DEVICES"

    const/4 v8, 0x6

    const/4 v9, -0x6

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_SECONDERY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_CANNOT_CONNECT_TO_SERVER"

    const/4 v9, 0x7

    const/4 v10, -0x7

    invoke-direct {v0, v1, v9, v10}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CANNOT_CONNECT_TO_SERVER:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 9
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_AUTHENTICATION_FAILED"

    const/16 v10, 0x8

    const/4 v11, -0x8

    invoke-direct {v0, v1, v10, v11}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_AUTHENTICATION_FAILED:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 10
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_INVALID_VALUE"

    const/16 v11, 0x9

    const/16 v12, -0x9

    invoke-direct {v0, v1, v11, v12}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 11
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_NOTIFY_TIMEOUT"

    const/16 v12, 0xa

    const/16 v13, -0xa

    invoke-direct {v0, v1, v12, v13}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 12
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_HAS_NO_PROVISIONED_DEVICE"

    const/16 v13, 0xb

    const/16 v14, -0xb

    invoke-direct {v0, v1, v13, v14}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PROVISIONED_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 13
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const-string v1, "REASON_OTHERS"

    const/16 v14, 0xc

    const/16 v15, -0x64

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 14
    sget-object v15, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v15, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PRIMARY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_SECONDERY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_SECONDERY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CANNOT_CONNECT_TO_SERVER:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_AUTHENTICATION_FAILED:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v10

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v11

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v12

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PROVISIONED_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    aput-object v2, v1, v13

    aput-object v0, v1, v14

    sput-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

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
    iput p3, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->value:I

    return v0
.end method
