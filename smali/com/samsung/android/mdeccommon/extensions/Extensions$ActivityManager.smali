.class public Lcom/samsung/android/mdeccommon/extensions/Extensions$ActivityManager;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdeccommon/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentUser()I
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getCurrentUser"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method
