.class public final enum Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;
.super Ljava/lang/Enum;
.source "MdecInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

.field public static final enum PrimaryDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

.field public static final enum ProvisionedDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

.field public static final enum SecondaryDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    const-string v1, "PrimaryDevice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->PrimaryDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    const-string v1, "SecondaryDevice"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->SecondaryDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    const-string v1, "ProvisionedDevice"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->ProvisionedDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    .line 2
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->PrimaryDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->SecondaryDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    return-object v0
.end method
