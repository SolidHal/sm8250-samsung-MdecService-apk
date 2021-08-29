.class public Lcom/samsung/android/mdeccommon/extensions/Extensions$Build;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdeccommon/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation


# static fields
.field public static final IS_DEBUGGABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/os/Build;

    const-string v1, "IS_DEBUGGABLE"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/mdeccommon/extensions/Extensions$Build;->IS_DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
