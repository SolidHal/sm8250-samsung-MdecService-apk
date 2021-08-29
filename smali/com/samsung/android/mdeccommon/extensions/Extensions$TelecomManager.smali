.class public Lcom/samsung/android/mdeccommon/extensions/Extensions$TelecomManager;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdeccommon/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TelecomManager"
.end annotation


# static fields
.field public static final RTT_MODE:I

.field public static final TTY_MODE_OFF:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/telecom/TelecomManager;

    const-string v1, "TTY_MODE_OFF"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/mdeccommon/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    add-int/lit8 v0, v0, 0x4

    .line 2
    sput v0, Lcom/samsung/android/mdeccommon/extensions/Extensions$TelecomManager;->RTT_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
