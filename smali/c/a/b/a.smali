.class public Lc/a/b/a;
.super Lc/a/b/u;
.source "AuthFailureError.java"


# instance fields
.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lc/a/b/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/a/b/u;-><init>(Lc/a/b/k;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/b/a;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
