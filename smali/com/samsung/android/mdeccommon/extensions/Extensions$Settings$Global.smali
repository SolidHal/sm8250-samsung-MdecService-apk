.class public Lcom/samsung/android/mdeccommon/extensions/Extensions$Settings$Global;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdeccommon/extensions/Extensions$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation


# static fields
.field public static final DEVICE_NAME:Ljava/lang/String;

.field public static final DEVICE_PROVISIONED:Ljava/lang/String;

.field public static final MOBILE_DATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/provider/Settings$Global;

    const-string v1, "MOBILE_DATA"

    .line 2
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/mdeccommon/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    .line 3
    const-class v0, Landroid/provider/Settings$Global;

    const-string v1, "DEVICE_NAME"

    .line 4
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/mdeccommon/extensions/Extensions$Settings$Global;->DEVICE_NAME:Ljava/lang/String;

    .line 5
    const-class v0, Landroid/provider/Settings$Global;

    const-string v1, "DEVICE_PROVISIONED"

    .line 6
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/mdeccommon/extensions/Extensions$Settings$Global;->DEVICE_PROVISIONED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
