.class public Lb/n/e/a;
.super Ljava/lang/Object;
.source "SeslPerfManagerReflector.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string v0, "com.samsung.android.os.SemPerfManager"

    .line 2
    sput-object v0, Lb/n/e/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "android.os.DVFSHelper"

    .line 3
    sput-object v0, Lb/n/e/a;->a:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static a(Z)Z
    .locals 5

    .line 1
    sget-object v0, Lb/n/e/a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onSmoothScrollEvent"

    invoke-static {v0, v3, v2}, Lb/n/a;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v2, v0, v3}, Lb/n/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_0
    return v4
.end method
