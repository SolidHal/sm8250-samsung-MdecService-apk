.class public final Lb/o/c/a;
.super Lb/o/a;
.source "BundleSavedStateRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/o/a<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/o/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0, v0}, Lb/o/a;->a(Ljava/util/Map;)V

    return-void

    .line 7
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lb/o/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb/o/a;->b()Ljava/util/Map;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
