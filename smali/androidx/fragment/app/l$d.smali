.class final Landroidx/fragment/app/l$d;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/l;->l(Landroidx/fragment/app/n;Landroid/view/ViewGroup;Landroid/view/View;Lb/d/a;Landroidx/fragment/app/l$e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/fragment/app/n;

.field final synthetic c:Lb/d/a;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Landroidx/fragment/app/l$e;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroid/view/View;

.field final synthetic h:Landroidx/fragment/app/Fragment;

.field final synthetic i:Landroidx/fragment/app/Fragment;

.field final synthetic j:Z

.field final synthetic k:Ljava/util/ArrayList;

.field final synthetic l:Ljava/lang/Object;

.field final synthetic m:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;Lb/d/a;Ljava/lang/Object;Landroidx/fragment/app/l$e;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/l$d;->b:Landroidx/fragment/app/n;

    iput-object p2, p0, Landroidx/fragment/app/l$d;->c:Lb/d/a;

    iput-object p3, p0, Landroidx/fragment/app/l$d;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/l$d;->e:Landroidx/fragment/app/l$e;

    iput-object p5, p0, Landroidx/fragment/app/l$d;->f:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/l$d;->g:Landroid/view/View;

    iput-object p7, p0, Landroidx/fragment/app/l$d;->h:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Landroidx/fragment/app/l$d;->i:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Landroidx/fragment/app/l$d;->j:Z

    iput-object p10, p0, Landroidx/fragment/app/l$d;->k:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/l$d;->l:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/fragment/app/l$d;->m:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/l$d;->b:Landroidx/fragment/app/n;

    iget-object v1, p0, Landroidx/fragment/app/l$d;->c:Lb/d/a;

    iget-object v2, p0, Landroidx/fragment/app/l$d;->d:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/l$d;->e:Landroidx/fragment/app/l$e;

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/l;->h(Landroidx/fragment/app/n;Lb/d/a;Ljava/lang/Object;Landroidx/fragment/app/l$e;)Lb/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/l$d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lb/d/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/l$d;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/l$d;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/l$d;->h:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/l$d;->i:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Landroidx/fragment/app/l$d;->j:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroidx/fragment/app/l;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/d/a;Z)V

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/l$d;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Landroidx/fragment/app/l$d;->b:Landroidx/fragment/app/n;

    iget-object v3, p0, Landroidx/fragment/app/l$d;->k:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/l$d;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Landroidx/fragment/app/n;->z(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/l$d;->e:Landroidx/fragment/app/l$e;

    iget-object v2, p0, Landroidx/fragment/app/l$d;->l:Ljava/lang/Object;

    iget-boolean v3, p0, Landroidx/fragment/app/l$d;->j:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/l;->t(Lb/d/a;Landroidx/fragment/app/l$e;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/l$d;->b:Landroidx/fragment/app/n;

    iget-object v2, p0, Landroidx/fragment/app/l$d;->m:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/n;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
