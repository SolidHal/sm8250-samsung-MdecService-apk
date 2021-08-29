.class Landroidx/fragment/app/j;
.super Landroidx/lifecycle/t;
.source "FragmentManagerViewModel.java"


# static fields
.field private static final g:Landroidx/lifecycle/u$b;


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/w;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/j$a;

    invoke-direct {v0}, Landroidx/fragment/app/j$a;-><init>()V

    sput-object v0, Landroidx/fragment/app/j;->g:Landroidx/lifecycle/u$b;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->a:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->b:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/j;->e:Z

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/j;->f:Z

    .line 7
    iput-boolean p1, p0, Landroidx/fragment/app/j;->d:Z

    return-void
.end method

.method static d(Landroidx/lifecycle/w;)Landroidx/fragment/app/j;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/u;

    sget-object v1, Landroidx/fragment/app/j;->g:Landroidx/lifecycle/u$b;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/w;Landroidx/lifecycle/u$b;)V

    .line 2
    const-class p0, Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/j;

    return-object p0
.end method


# virtual methods
.method a(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/j;->onCleared()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/w;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/lifecycle/w;->a()V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/j;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/fragment/app/j;

    iget-boolean v1, p0, Landroidx/fragment/app/j;->d:Z

    invoke-direct {v0, v1}, Landroidx/fragment/app/j;-><init>(Z)V

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/j;->b:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Landroidx/fragment/app/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Landroidx/fragment/app/j;

    .line 3
    iget-object v2, p0, Landroidx/fragment/app/j;->a:Ljava/util/HashSet;

    iget-object v3, p1, Landroidx/fragment/app/j;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/j;->b:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/j;->b:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/j;->c:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/j;->c:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method f(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/w;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0}, Landroidx/lifecycle/w;-><init>()V

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/j;->c:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/j;->e:Z

    return v0
.end method

.method h(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/j;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/j;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method i(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-boolean p1, p0, Landroidx/fragment/app/j;->d:Z

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Landroidx/fragment/app/j;->e:Z

    return p1

    .line 4
    :cond_1
    iget-boolean p1, p0, Landroidx/fragment/app/j;->f:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method protected onCleared()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/j;->e:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FragmentManagerViewModel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} Fragments ("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/j;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ") Child Non Config ("

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/j;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 11
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, ") ViewModelStores ("

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/j;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 17
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v1, 0x29

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
