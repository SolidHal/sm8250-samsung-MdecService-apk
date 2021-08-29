.class public Lcom/samsung/android/mdeccommon/constants/BuildConstants;
.super Ljava/lang/Object;
.source "BuildConstants.java"


# static fields
.field private static SHIP_BUILD:Z

.field private static USER_BINARY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product_ship"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->SHIP_BUILD:Z

    const-string v0, "ro.build.type"

    const-string v1, "user"

    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->USER_BINARY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isShipBuild()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->SHIP_BUILD:Z

    return v0
.end method

.method public static isUserBinary()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->USER_BINARY:Z

    return v0
.end method
