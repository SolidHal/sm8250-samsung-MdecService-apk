.class Landroidx/fragment/app/l;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/l$e;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroidx/fragment/app/n;

.field private static final c:Landroidx/fragment/app/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/l;->a:[I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/fragment/app/m;

    invoke-direct {v0}, Landroidx/fragment/app/m;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/fragment/app/l;->b:Landroidx/fragment/app/n;

    .line 3
    invoke-static {}, Landroidx/fragment/app/l;->x()Landroidx/fragment/app/n;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/l;->c:Landroidx/fragment/app/n;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private static A(Landroidx/fragment/app/n;Ljava/lang/Object;Ljava/lang/Object;Lb/d/a;ZLandroidx/fragment/app/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/n;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 3
    iget-object p4, p5, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 6
    :goto_0
    invoke-virtual {p3, p4}, Lb/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 7
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/n;->v(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/n;->v(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static B(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static C(Landroidx/fragment/app/i;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/i;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/fragment/app/i;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, p3

    :goto_0
    if-ge v1, p4, :cond_2

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 4
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v2, v0, p5}, Landroidx/fragment/app/l;->e(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v2, v0, p5}, Landroidx/fragment/app/l;->c(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/i;->n:Landroidx/fragment/app/g;

    invoke-virtual {v2}, Landroidx/fragment/app/g;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    .line 10
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 11
    invoke-static {v4, p1, p2, p3, p4}, Landroidx/fragment/app/l;->d(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lb/d/a;

    move-result-object v5

    .line 12
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/l$e;

    if-eqz p5, :cond_3

    .line 13
    invoke-static {p0, v4, v6, v1, v5}, Landroidx/fragment/app/l;->o(Landroidx/fragment/app/i;ILandroidx/fragment/app/l$e;Landroid/view/View;Lb/d/a;)V

    goto :goto_3

    .line 14
    :cond_3
    invoke-static {p0, v4, v6, v1, v5}, Landroidx/fragment/app/l;->n(Landroidx/fragment/app/i;ILandroidx/fragment/app/l$e;Landroid/view/View;Lb/d/a;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lb/d/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lb/d/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lb/d/g;->o(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-static {v1}, Lb/f/k/t;->y(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Landroidx/fragment/app/a;Landroidx/fragment/app/a$a;Landroid/util/SparseArray;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroidx/fragment/app/a$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/l$e;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-object v10, v1, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v10, :cond_0

    return-void

    .line 2
    :cond_0
    iget v11, v10, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-nez v11, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_2

    .line 3
    sget-object v4, Landroidx/fragment/app/l;->a:[I

    iget v1, v1, Landroidx/fragment/app/a$a;->a:I

    aget v1, v4, v1

    goto :goto_0

    :cond_2
    iget v1, v1, Landroidx/fragment/app/a$a;->a:I

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_a

    const/4 v6, 0x3

    if-eq v1, v6, :cond_7

    const/4 v6, 0x4

    if-eq v1, v6, :cond_5

    const/4 v6, 0x5

    if-eq v1, v6, :cond_3

    const/4 v6, 0x6

    if-eq v1, v6, :cond_7

    const/4 v6, 0x7

    if-eq v1, v6, :cond_a

    move v1, v4

    move v12, v1

    move v13, v12

    goto/16 :goto_6

    :cond_3
    if-eqz p4, :cond_4

    .line 4
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_c

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_c

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_c

    goto :goto_4

    .line 5
    :cond_4
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    goto/16 :goto_5

    :cond_5
    if-eqz p4, :cond_6

    .line 6
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_8

    :goto_1
    goto :goto_2

    .line 7
    :cond_6
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_8

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_9

    .line 8
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_8

    iget-object v1, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    iget v1, v10, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_8

    :goto_2
    move v1, v5

    goto :goto_3

    :cond_8
    move v1, v4

    goto :goto_3

    .line 10
    :cond_9
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_8

    goto :goto_2

    :goto_3
    move v13, v1

    move v1, v4

    move v12, v5

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_b

    .line 11
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_5

    .line 12
    :cond_b
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_c

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_c

    :goto_4
    move v1, v5

    goto :goto_5

    :cond_c
    move v1, v4

    :goto_5
    move v12, v4

    move v13, v12

    move v4, v1

    move v1, v5

    .line 13
    :goto_6
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/l$e;

    if-eqz v4, :cond_d

    .line 14
    invoke-static {v6, v2, v11}, Landroidx/fragment/app/l;->p(Landroidx/fragment/app/l$e;Landroid/util/SparseArray;I)Landroidx/fragment/app/l$e;

    move-result-object v6

    .line 15
    iput-object v10, v6, Landroidx/fragment/app/l$e;->a:Landroidx/fragment/app/Fragment;

    .line 16
    iput-boolean v3, v6, Landroidx/fragment/app/l$e;->b:Z

    .line 17
    iput-object v0, v6, Landroidx/fragment/app/l$e;->c:Landroidx/fragment/app/a;

    :cond_d
    move-object v14, v6

    const/4 v15, 0x0

    if-nez p4, :cond_f

    if-eqz v1, :cond_f

    if-eqz v14, :cond_e

    .line 18
    iget-object v1, v14, Landroidx/fragment/app/l$e;->d:Landroidx/fragment/app/Fragment;

    if-ne v1, v10, :cond_e

    .line 19
    iput-object v15, v14, Landroidx/fragment/app/l$e;->d:Landroidx/fragment/app/Fragment;

    .line 20
    :cond_e
    iget-object v4, v0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/i;

    .line 21
    iget v1, v10, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v5, :cond_f

    iget v1, v4, Landroidx/fragment/app/i;->m:I

    if-lt v1, v5, :cond_f

    iget-boolean v1, v0, Landroidx/fragment/app/a;->t:Z

    if-nez v1, :cond_f

    .line 22
    invoke-virtual {v4, v10}, Landroidx/fragment/app/i;->C0(Landroidx/fragment/app/Fragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v10

    .line 23
    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/i;->M0(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_f
    if-eqz v13, :cond_11

    if-eqz v14, :cond_10

    .line 24
    iget-object v1, v14, Landroidx/fragment/app/l$e;->d:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_11

    .line 25
    :cond_10
    invoke-static {v14, v2, v11}, Landroidx/fragment/app/l;->p(Landroidx/fragment/app/l$e;Landroid/util/SparseArray;I)Landroidx/fragment/app/l$e;

    move-result-object v14

    .line 26
    iput-object v10, v14, Landroidx/fragment/app/l$e;->d:Landroidx/fragment/app/Fragment;

    .line 27
    iput-boolean v3, v14, Landroidx/fragment/app/l$e;->e:Z

    .line 28
    iput-object v0, v14, Landroidx/fragment/app/l$e;->f:Landroidx/fragment/app/a;

    :cond_11
    if-nez p4, :cond_12

    if-eqz v12, :cond_12

    if-eqz v14, :cond_12

    .line 29
    iget-object v0, v14, Landroidx/fragment/app/l$e;->a:Landroidx/fragment/app/Fragment;

    if-ne v0, v10, :cond_12

    .line 30
    iput-object v15, v14, Landroidx/fragment/app/l$e;->a:Landroidx/fragment/app/Fragment;

    :cond_12
    return-void
.end method

.method public static c(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/l$e;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a$a;

    .line 3
    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/a$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static d(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lb/d/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/d/a;

    invoke-direct {v0}, Lb/d/a;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_4

    .line 2
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 3
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->y(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 5
    iget-object v3, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 8
    iget-object v1, v1, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 10
    iget-object v1, v1, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 11
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v6}, Lb/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 14
    invoke-virtual {v0, v5, v7}, Lb/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 15
    :cond_2
    invoke-virtual {v0, v5, v6}, Lb/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static e(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/l$e;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->o:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v2, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a$a;

    .line 4
    invoke-static {p0, v2, p1, v1, p2}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/a$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/d/a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/m;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/m;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1

    move v1, v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p3}, Lb/d/g;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 6
    invoke-virtual {p3, v0}, Lb/d/g;->k(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p3, v0}, Lb/d/g;->o(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    if-eqz p4, :cond_3

    .line 8
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/m;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/m;->e(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static g(Landroidx/fragment/app/n;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/n;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/n;->e(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static h(Landroidx/fragment/app/n;Lb/d/a;Ljava/lang/Object;Landroidx/fragment/app/l$e;)Lb/d/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/n;",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/l$e;",
            ")",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Landroidx/fragment/app/l$e;->a:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lb/d/g;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    if-nez v1, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    new-instance p2, Lb/d/a;

    invoke-direct {p2}, Lb/d/a;-><init>()V

    .line 5
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/n;->j(Ljava/util/Map;Landroid/view/View;)V

    .line 6
    iget-object p0, p3, Landroidx/fragment/app/l$e;->c:Landroidx/fragment/app/a;

    .line 7
    iget-boolean p3, p3, Landroidx/fragment/app/l$e;->b:Z

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/m;

    move-result-object p3

    .line 9
    iget-object p0, p0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/m;

    move-result-object p3

    .line 11
    iget-object p0, p0, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p2, p0}, Lb/d/a;->q(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p1}, Lb/d/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Lb/d/a;->q(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_5

    .line 14
    invoke-virtual {p3, p0, p2}, Landroidx/core/app/m;->c(Ljava/util/List;Ljava/util/Map;)V

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_6

    .line 16
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v0}, Lb/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 18
    invoke-static {p1, v0}, Landroidx/fragment/app/l;->q(Lb/d/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1, v0}, Lb/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 20
    :cond_3
    invoke-static {v1}, Lb/f/k/t;->y(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 21
    invoke-static {p1, v0}, Landroidx/fragment/app/l;->q(Lb/d/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    invoke-static {v1}, Lb/f/k/t;->y(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lb/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 23
    :cond_5
    invoke-static {p1, p2}, Landroidx/fragment/app/l;->y(Lb/d/a;Lb/d/a;)V

    :cond_6
    return-object p2

    .line 24
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lb/d/g;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static i(Landroidx/fragment/app/n;Lb/d/a;Ljava/lang/Object;Landroidx/fragment/app/l$e;)Lb/d/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/n;",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/l$e;",
            ")",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lb/d/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object p2, p3, Landroidx/fragment/app/l$e;->d:Landroidx/fragment/app/Fragment;

    .line 3
    new-instance v0, Lb/d/a;

    invoke-direct {v0}, Lb/d/a;-><init>()V

    .line 4
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/n;->j(Ljava/util/Map;Landroid/view/View;)V

    .line 5
    iget-object p0, p3, Landroidx/fragment/app/l$e;->f:Landroidx/fragment/app/a;

    .line 6
    iget-boolean p3, p3, Landroidx/fragment/app/l$e;->e:Z

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/m;

    move-result-object p2

    .line 8
    iget-object p0, p0, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/m;

    move-result-object p2

    .line 10
    iget-object p0, p0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 11
    :goto_0
    invoke-virtual {v0, p0}, Lb/d/a;->q(Ljava/util/Collection;)Z

    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {p2, p0, v0}, Landroidx/core/app/m;->c(Ljava/util/List;Ljava/util/Map;)V

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    .line 14
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 15
    invoke-virtual {v0, p3}, Lb/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_2

    .line 16
    invoke-virtual {p1, p3}, Lb/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_2
    invoke-static {v1}, Lb/f/k/t;->y(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 18
    invoke-virtual {p1, p3}, Lb/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 19
    invoke-static {v1}, Lb/f/k/t;->y(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Lb/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {v0}, Lb/d/a;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb/d/a;->q(Ljava/util/Collection;)Z

    :cond_5
    return-object v0

    .line 21
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lb/d/g;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/n;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    .line 15
    :cond_6
    sget-object p0, Landroidx/fragment/app/l;->b:Landroidx/fragment/app/n;

    if-eqz p0, :cond_7

    invoke-static {p0, v0}, Landroidx/fragment/app/l;->g(Landroidx/fragment/app/n;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 16
    sget-object p0, Landroidx/fragment/app/l;->b:Landroidx/fragment/app/n;

    return-object p0

    .line 17
    :cond_7
    sget-object p0, Landroidx/fragment/app/l;->c:Landroidx/fragment/app/n;

    if-eqz p0, :cond_8

    invoke-static {p0, v0}, Landroidx/fragment/app/l;->g(Landroidx/fragment/app/n;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 18
    sget-object p0, Landroidx/fragment/app/l;->c:Landroidx/fragment/app/n;

    return-object p0

    .line 19
    :cond_8
    sget-object p0, Landroidx/fragment/app/l;->b:Landroidx/fragment/app/n;

    if-nez p0, :cond_9

    sget-object p0, Landroidx/fragment/app/l;->c:Landroidx/fragment/app/n;

    if-nez p0, :cond_9

    return-object p1

    .line 20
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static k(Landroidx/fragment/app/n;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/n;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/n;->f(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/n;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static l(Landroidx/fragment/app/n;Landroid/view/ViewGroup;Landroid/view/View;Lb/d/a;Landroidx/fragment/app/l$e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/n;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/l$e;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 1
    iget-object v8, v7, Landroidx/fragment/app/l$e;->a:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v9, v7, Landroidx/fragment/app/l$e;->d:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz v8, :cond_6

    if-nez v9, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-boolean v12, v7, Landroidx/fragment/app/l$e;->b:Z

    .line 4
    invoke-virtual/range {p3 .. p3}, Lb/d/g;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v13, p3

    move-object v1, v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v6, v8, v9, v12}, Landroidx/fragment/app/l;->u(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v13, p3

    .line 6
    :goto_0
    invoke-static {v6, v13, v1, v7}, Landroidx/fragment/app/l;->i(Landroidx/fragment/app/n;Lb/d/a;Ljava/lang/Object;Landroidx/fragment/app/l$e;)Lb/d/a;

    move-result-object v3

    .line 7
    invoke-virtual/range {p3 .. p3}, Lb/d/g;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v14, v0

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v3}, Lb/d/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v14, v1

    :goto_1
    if-nez v11, :cond_3

    if-nez p8, :cond_3

    if-nez v14, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x1

    .line 9
    invoke-static {v8, v9, v12, v3, v1}, Landroidx/fragment/app/l;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/d/a;Z)V

    if-eqz v14, :cond_4

    .line 10
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v5, p2

    .line 11
    invoke-virtual {v6, v14, v5, v10}, Landroidx/fragment/app/n;->y(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 12
    iget-boolean v4, v7, Landroidx/fragment/app/l$e;->e:Z

    .line 13
    iget-object v2, v7, Landroidx/fragment/app/l$e;->f:Landroidx/fragment/app/a;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v16, v2

    move-object/from16 v2, p8

    move-object/from16 v5, v16

    .line 14
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/l;->A(Landroidx/fragment/app/n;Ljava/lang/Object;Ljava/lang/Object;Lb/d/a;ZLandroidx/fragment/app/a;)V

    if-eqz v11, :cond_5

    .line 15
    invoke-virtual {v6, v11, v15}, Landroidx/fragment/app/n;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    move-object v15, v0

    .line 16
    :cond_5
    :goto_2
    new-instance v5, Landroidx/fragment/app/l$d;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object v7, v8

    move-object v8, v9

    move v9, v12

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Landroidx/fragment/app/l$d;-><init>(Landroidx/fragment/app/n;Lb/d/a;Ljava/lang/Object;Landroidx/fragment/app/l$e;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lb/f/k/q;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/f/k/q;

    return-object v14

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static m(Landroidx/fragment/app/n;Landroid/view/ViewGroup;Landroid/view/View;Lb/d/a;Landroidx/fragment/app/l$e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/n;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/l$e;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    .line 1
    iget-object v9, v7, Landroidx/fragment/app/l$e;->a:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v10, v7, Landroidx/fragment/app/l$e;->d:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_0

    .line 3
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v4, 0x0

    if-eqz v9, :cond_9

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-boolean v11, v7, Landroidx/fragment/app/l$e;->b:Z

    .line 5
    invoke-virtual/range {p3 .. p3}, Lb/d/g;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p0, v9, v10, v11}, Landroidx/fragment/app/l;->u(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 7
    :goto_0
    invoke-static {p0, v1, v5, v7}, Landroidx/fragment/app/l;->i(Landroidx/fragment/app/n;Lb/d/a;Ljava/lang/Object;Landroidx/fragment/app/l$e;)Lb/d/a;

    move-result-object v12

    .line 8
    invoke-static {p0, v1, v5, v7}, Landroidx/fragment/app/l;->h(Landroidx/fragment/app/n;Lb/d/a;Ljava/lang/Object;Landroidx/fragment/app/l$e;)Lb/d/a;

    move-result-object v13

    .line 9
    invoke-virtual/range {p3 .. p3}, Lb/d/g;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v12, :cond_3

    .line 10
    invoke-virtual {v12}, Lb/d/g;->clear()V

    :cond_3
    if-eqz v13, :cond_4

    .line 11
    invoke-virtual {v13}, Lb/d/g;->clear()V

    :cond_4
    move-object v14, v4

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lb/d/a;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 13
    invoke-static {v2, v12, v14}, Landroidx/fragment/app/l;->a(Ljava/util/ArrayList;Lb/d/a;Ljava/util/Collection;)V

    .line 14
    invoke-virtual/range {p3 .. p3}, Lb/d/a;->values()Ljava/util/Collection;

    move-result-object v1

    .line 15
    invoke-static {v3, v13, v1}, Landroidx/fragment/app/l;->a(Ljava/util/ArrayList;Lb/d/a;Ljava/util/Collection;)V

    move-object v14, v5

    :goto_1
    if-nez v8, :cond_6

    if-nez p8, :cond_6

    if-nez v14, :cond_6

    return-object v4

    :cond_6
    const/4 v1, 0x1

    .line 16
    invoke-static {v9, v10, v11, v12, v1}, Landroidx/fragment/app/l;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/d/a;Z)V

    if-eqz v14, :cond_8

    .line 17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0, v14, v0, v2}, Landroidx/fragment/app/n;->y(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 19
    iget-boolean v4, v7, Landroidx/fragment/app/l$e;->e:Z

    .line 20
    iget-object v5, v7, Landroidx/fragment/app/l$e;->f:Landroidx/fragment/app/a;

    move-object v0, p0

    move-object v1, v14

    move-object/from16 v2, p8

    move-object v3, v12

    .line 21
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/l;->A(Landroidx/fragment/app/n;Ljava/lang/Object;Ljava/lang/Object;Lb/d/a;ZLandroidx/fragment/app/a;)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    invoke-static {v13, v7, v8, v11}, Landroidx/fragment/app/l;->t(Lb/d/a;Landroidx/fragment/app/l$e;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 24
    invoke-virtual {p0, v8, v0}, Landroidx/fragment/app/n;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_7
    move-object v7, v0

    move-object v5, v1

    goto :goto_2

    :cond_8
    move-object v5, v4

    move-object v7, v5

    .line 25
    :goto_2
    new-instance v8, Landroidx/fragment/app/l$c;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v13

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/l$c;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/d/a;Landroid/view/View;Landroidx/fragment/app/n;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lb/f/k/q;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/f/k/q;

    return-object v14

    :cond_9
    :goto_3
    return-object v4
.end method

.method private static n(Landroidx/fragment/app/i;ILandroidx/fragment/app/l$e;Landroid/view/View;Lb/d/a;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/i;",
            "I",
            "Landroidx/fragment/app/l$e;",
            "Landroid/view/View;",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 1
    iget-object v1, v0, Landroidx/fragment/app/i;->o:Landroidx/fragment/app/d;

    invoke-virtual {v1}, Landroidx/fragment/app/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/i;->o:Landroidx/fragment/app/d;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-nez v13, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v14, v9, Landroidx/fragment/app/l$e;->a:Landroidx/fragment/app/Fragment;

    .line 4
    iget-object v15, v9, Landroidx/fragment/app/l$e;->d:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-static {v15, v14}, Landroidx/fragment/app/l;->j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/n;

    move-result-object v8

    if-nez v8, :cond_2

    return-void

    .line 6
    :cond_2
    iget-boolean v0, v9, Landroidx/fragment/app/l$e;->b:Z

    .line 7
    iget-boolean v1, v9, Landroidx/fragment/app/l$e;->e:Z

    .line 8
    invoke-static {v8, v14, v0}, Landroidx/fragment/app/l;->r(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 9
    invoke-static {v8, v15, v1}, Landroidx/fragment/app/l;->s(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    move-object v1, v13

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 p0, v4

    move-object/from16 v4, p2

    move-object/from16 p1, v5

    move-object/from16 v16, v6

    move-object/from16 v6, p0

    move-object/from16 v17, v7

    move-object v12, v8

    move-object/from16 v8, v16

    .line 12
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/l;->l(Landroidx/fragment/app/n;Landroid/view/ViewGroup;Landroid/view/View;Lb/d/a;Landroidx/fragment/app/l$e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v8, v17

    if-nez v8, :cond_3

    if-nez v6, :cond_3

    move-object/from16 v0, v16

    if-nez v0, :cond_4

    return-void

    :cond_3
    move-object/from16 v0, v16

    :cond_4
    move-object/from16 v1, p1

    .line 13
    invoke-static {v12, v0, v15, v1, v10}, Landroidx/fragment/app/l;->k(Landroidx/fragment/app/n;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 14
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v18, v0

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v18, 0x0

    .line 15
    :goto_2
    invoke-virtual {v12, v8, v10}, Landroidx/fragment/app/n;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 16
    iget-boolean v5, v9, Landroidx/fragment/app/l$e;->b:Z

    move-object v0, v12

    move-object v1, v8

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v14

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/l;->v(Landroidx/fragment/app/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 17
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v12

    move-object v1, v9

    move-object v2, v8

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object v5, v15

    move-object/from16 v7, p0

    .line 18
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/n;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object v5, v8

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move-object v8, v15

    .line 19
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/l;->z(Landroidx/fragment/app/n;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    .line 20
    invoke-virtual {v12, v13, v0, v11}, Landroidx/fragment/app/n;->w(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 21
    invoke-virtual {v12, v13, v9}, Landroidx/fragment/app/n;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v12, v13, v0, v11}, Landroidx/fragment/app/n;->s(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method private static o(Landroidx/fragment/app/i;ILandroidx/fragment/app/l$e;Landroid/view/View;Lb/d/a;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/i;",
            "I",
            "Landroidx/fragment/app/l$e;",
            "Landroid/view/View;",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    .line 1
    iget-object v1, v0, Landroidx/fragment/app/i;->o:Landroidx/fragment/app/d;

    invoke-virtual {v1}, Landroidx/fragment/app/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/i;->o:Landroidx/fragment/app/d;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    if-nez v10, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v11, v4, Landroidx/fragment/app/l$e;->a:Landroidx/fragment/app/Fragment;

    .line 4
    iget-object v12, v4, Landroidx/fragment/app/l$e;->d:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-static {v12, v11}, Landroidx/fragment/app/l;->j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/n;

    move-result-object v13

    if-nez v13, :cond_2

    return-void

    .line 6
    :cond_2
    iget-boolean v14, v4, Landroidx/fragment/app/l$e;->b:Z

    .line 7
    iget-boolean v0, v4, Landroidx/fragment/app/l$e;->e:Z

    .line 8
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-static {v13, v11, v14}, Landroidx/fragment/app/l;->r(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 11
    invoke-static {v13, v12, v0}, Landroidx/fragment/app/l;->s(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v13

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object v5, v8

    move-object/from16 p0, v6

    move-object v6, v15

    move-object/from16 p1, v7

    move-object/from16 v16, v10

    move-object v10, v8

    move-object/from16 v8, p0

    .line 12
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/l;->m(Landroidx/fragment/app/n;Landroid/view/ViewGroup;Landroid/view/View;Lb/d/a;Landroidx/fragment/app/l$e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v6, p1

    if-nez v6, :cond_3

    if-nez v8, :cond_3

    move-object/from16 v7, p0

    if-nez v7, :cond_4

    return-void

    :cond_3
    move-object/from16 v7, p0

    .line 13
    :cond_4
    invoke-static {v13, v7, v12, v10, v9}, Landroidx/fragment/app/l;->k(Landroidx/fragment/app/n;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 14
    invoke-static {v13, v6, v11, v15, v9}, Landroidx/fragment/app/l;->k(Landroidx/fragment/app/n;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v0, 0x4

    .line 15
    invoke-static {v9, v0}, Landroidx/fragment/app/l;->B(Ljava/util/ArrayList;I)V

    move-object v0, v13

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v11

    move-object v11, v5

    move v5, v14

    .line 16
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/l;->v(Landroidx/fragment/app/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 17
    invoke-static {v13, v7, v12, v11}, Landroidx/fragment/app/l;->w(Landroidx/fragment/app/n;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 18
    invoke-virtual {v13, v15}, Landroidx/fragment/app/n;->o(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v0, v13

    move-object v1, v14

    move-object v2, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v11

    move-object v6, v8

    move-object v7, v15

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/n;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, v16

    .line 20
    invoke-virtual {v13, v0, v14}, Landroidx/fragment/app/n;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v1, v13

    move-object v2, v0

    move-object v3, v10

    move-object v4, v15

    move-object v5, v12

    move-object/from16 v6, p4

    .line 21
    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/n;->x(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 22
    invoke-static {v9, v0}, Landroidx/fragment/app/l;->B(Ljava/util/ArrayList;I)V

    .line 23
    invoke-virtual {v13, v8, v10, v15}, Landroidx/fragment/app/n;->z(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method private static p(Landroidx/fragment/app/l$e;Landroid/util/SparseArray;I)Landroidx/fragment/app/l$e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/l$e;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/l$e;",
            ">;I)",
            "Landroidx/fragment/app/l$e;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Landroidx/fragment/app/l$e;

    invoke-direct {p0}, Landroidx/fragment/app/l$e;-><init>()V

    .line 2
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method private static q(Lb/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/d/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lb/d/g;->o(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lb/d/g;->k(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static r(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static s(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static t(Lb/d/a;Landroidx/fragment/app/l$e;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/l$e;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/l$e;->c:Landroidx/fragment/app/a;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 2
    iget-object p2, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lb/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static u(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->A(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static v(Landroidx/fragment/app/n;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 3
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/n;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/n;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static w(Landroidx/fragment/app/n;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/n;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/n;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 5
    iget-object p0, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 6
    new-instance p1, Landroidx/fragment/app/l$a;

    invoke-direct {p1, p3}, Landroidx/fragment/app/l$a;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Lb/f/k/q;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/f/k/q;

    :cond_0
    return-void
.end method

.method private static x()Landroidx/fragment/app/n;
    .locals 3

    :try_start_0
    const-string v0, "b.q.e"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static y(Lb/d/a;Lb/d/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/d/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lb/d/g;->o(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, Lb/d/g;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lb/d/g;->m(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static z(Landroidx/fragment/app/n;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/n;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v9, Landroidx/fragment/app/l$b;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/l$b;-><init>(Ljava/lang/Object;Landroidx/fragment/app/n;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, Lb/f/k/q;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/f/k/q;

    return-void
.end method
