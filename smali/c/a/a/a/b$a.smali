.class public abstract Lc/a/a/a/b$a;
.super Landroid/os/Binder;
.source "ISnsRemoteService.java"

# interfaces
.implements Lc/a/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/b$a$a;
    }
.end annotation


# direct methods
.method public static F(Landroid/os/IBinder;)Lc/a/a/a/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.mms.transaction.ISnsRemoteService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lc/a/a/a/b;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lc/a/a/a/b;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lc/a/a/a/b$a$a;

    invoke-direct {v0, p0}, Lc/a/a/a/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static G()Lc/a/a/a/b;
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/a/b$a$a;->b:Lc/a/a/a/b;

    return-object v0
.end method
