.class public Lcom/samsung/android/mdeccommon/extensions/Extensions$Intent;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdeccommon/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intent"
.end annotation


# static fields
.field public static final ACTION_USER_SWITCHED:Ljava/lang/String;

.field public static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/content/Intent;

    const-string v1, "ACTION_USER_SWITCHED"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/mdeccommon/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    .line 2
    const-class v0, Landroid/content/Intent;

    const-string v1, "FLAG_RECEIVER_INCLUDE_BACKGROUND"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/mdeccommon/extensions/Extensions$Intent;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
