.class public final Landroidx/appcompat/widget/h;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/h$a;,
        Landroidx/appcompat/widget/h$b;,
        Landroidx/appcompat/widget/h$e;,
        Landroidx/appcompat/widget/h$c;,
        Landroidx/appcompat/widget/h$d;
    }
.end annotation


# static fields
.field private static final g:Landroid/graphics/PorterDuff$Mode;

.field private static h:Landroidx/appcompat/widget/h;

.field private static final i:Landroidx/appcompat/widget/h$c;

.field private static final j:[I


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lb/d/h<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lb/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/d/a<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lb/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/d/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lb/d/d<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private e:Landroid/util/TypedValue;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/h;->g:Landroid/graphics/PorterDuff$Mode;

    .line 2
    new-instance v0, Landroidx/appcompat/widget/h$c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/h$c;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/h;->i:Landroidx/appcompat/widget/h$c;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    sget v1, Lb/a/e;->abc_btn_check_material_anim:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lb/a/e;->abc_btn_radio_material_anim:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Landroidx/appcompat/widget/h;->j:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/h;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/appcompat/widget/h$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->b:Lb/d/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/d/a;

    invoke-direct {v0}, Lb/d/a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/h;->b:Lb/d/a;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/h;->b:Lb/d/a;

    invoke-virtual {v0, p1, p2}, Lb/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/h;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/d;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lb/d/d;

    invoke-direct {v0}, Lb/d/d;-><init>()V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/h;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Lb/d/d;->j(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 6
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 7
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/h;->a:Ljava/util/WeakHashMap;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/h;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lb/d/h;

    invoke-direct {v0}, Lb/d/h;-><init>()V

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-virtual {v0, p2, p3}, Lb/d/h;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private static d([II)Z
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/h;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->f:Z

    .line 3
    sget v0, Lb/a/e;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/h;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Landroidx/appcompat/widget/h;->r(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/h;->f:Z

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static f(Landroid/util/TypedValue;)J
    .locals 4

    .line 1
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/h;->e:Landroid/util/TypedValue;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/h;->e:Landroid/util/TypedValue;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 5
    invoke-static {v0}, Landroidx/appcompat/widget/h;->f(Landroid/util/TypedValue;)J

    move-result-wide v1

    .line 6
    invoke-direct {p0, p1, v1, v2}, Landroidx/appcompat/widget/h;->j(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 7
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 8
    invoke-direct {p0, p1, v1, v2, p2}, Landroidx/appcompat/widget/h;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_2
    return-object p2
.end method

.method private static h(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 2
    invoke-static {p0, p1}, Landroidx/appcompat/widget/h;->m(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized i()Landroidx/appcompat/widget/h;
    .locals 2

    const-class v0, Landroidx/appcompat/widget/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/h;->h:Landroidx/appcompat/widget/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroidx/appcompat/widget/h;

    invoke-direct {v1}, Landroidx/appcompat/widget/h;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/h;->h:Landroidx/appcompat/widget/h;

    .line 3
    invoke-static {v1}, Landroidx/appcompat/widget/h;->q(Landroidx/appcompat/widget/h;)V

    .line 4
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/h;->h:Landroidx/appcompat/widget/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized j(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/h;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lb/d/d;->f(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 6
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Lb/d/d;->d(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized m(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    const-class v0, Landroidx/appcompat/widget/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/h;->i:Landroidx/appcompat/widget/h$c;

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/widget/h$c;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3
    sget-object v2, Landroidx/appcompat/widget/h;->i:Landroidx/appcompat/widget/h$c;

    invoke-virtual {v2, p0, p1, v1}, Landroidx/appcompat/widget/h$c;->c(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/d/h;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lb/d/h;->f(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_0
    return-object v1
.end method

.method static p(I)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static q(Landroidx/appcompat/widget/h;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/h$e;

    invoke-direct {v0}, Landroidx/appcompat/widget/h$e;-><init>()V

    const-string v1, "vector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/h;->a(Ljava/lang/String;Landroidx/appcompat/widget/h$d;)V

    .line 3
    new-instance v0, Landroidx/appcompat/widget/h$b;

    invoke-direct {v0}, Landroidx/appcompat/widget/h$b;-><init>()V

    const-string v1, "animated-vector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/h;->a(Ljava/lang/String;Landroidx/appcompat/widget/h$d;)V

    .line 4
    new-instance v0, Landroidx/appcompat/widget/h$a;

    invoke-direct {v0}, Landroidx/appcompat/widget/h$a;-><init>()V

    const-string v1, "animated-selector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/h;->a(Ljava/lang/String;Landroidx/appcompat/widget/h$d;)V

    :cond_0
    return-void
.end method

.method private static r(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lb/r/a/a/c;

    if-nez v0, :cond_1

    const-string v0, "android.graphics.drawable.VectorDrawable"

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private s(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->b:Lb/d/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lb/d/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/h;->c:Lb/d/h;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Lb/d/h;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/appcompat/widget/h;->b:Lb/d/a;

    .line 5
    invoke-virtual {v3, v0}, Lb/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-object v1

    .line 6
    :cond_1
    new-instance v0, Lb/d/h;

    invoke-direct {v0}, Lb/d/h;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/h;->c:Lb/d/h;

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/h;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/h;->e:Landroid/util/TypedValue;

    .line 9
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/h;->e:Landroid/util/TypedValue;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 12
    invoke-static {v0}, Landroidx/appcompat/widget/h;->f(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 13
    invoke-direct {p0, p1, v4, v5}, Landroidx/appcompat/widget/h;->j(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    return-object v6

    .line 14
    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 15
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 17
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    if-eq v8, v3, :cond_5

    goto :goto_0

    :cond_5
    if-ne v8, v9, :cond_7

    .line 18
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 19
    iget-object v8, p0, Landroidx/appcompat/widget/h;->c:Lb/d/h;

    invoke-virtual {v8, p2, v3}, Lb/d/h;->a(ILjava/lang/Object;)V

    .line 20
    iget-object v8, p0, Landroidx/appcompat/widget/h;->b:Lb/d/a;

    invoke-virtual {v8, v3}, Lb/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/h$d;

    if-eqz v3, :cond_6

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 22
    invoke-interface {v3, p1, v1, v7, v8}, Landroidx/appcompat/widget/h$d;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v6, v1

    :cond_6
    if-eqz v6, :cond_8

    .line 23
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 24
    invoke-direct {p0, p1, v4, v5, v6}, Landroidx/appcompat/widget/h;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 25
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "AppCompatDrawableManag"

    const-string v1, "Exception while inflating drawable"

    .line 26
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    if-nez v6, :cond_9

    .line 27
    iget-object p1, p0, Landroidx/appcompat/widget/h;->c:Lb/d/h;

    invoke-virtual {p1, p2, v2}, Lb/d/h;->a(ILjava/lang/Object;)V

    :cond_9
    return-object v6

    :cond_a
    return-object v1
.end method

.method private v(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/h;->n(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p4}, Landroidx/appcompat/widget/b0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 4
    :cond_0
    invoke-static {p4}, Lb/f/d/j/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 5
    invoke-static {p4, v0}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-static {p2}, Landroidx/appcompat/widget/h;->p(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-static {p4, p1}, Lb/f/d/j/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1, p2, p4}, Landroidx/appcompat/widget/h;->x(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    const/4 p4, 0x0

    :cond_2
    :goto_0
    return-object p4
.end method

.method static w(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/t0;[I)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/b0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string p0, "AppCompatDrawableManag"

    const-string p1, "Mutated drawable is not the same instance as the input."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/widget/t0;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroidx/appcompat/widget/t0;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    .line 6
    :cond_2
    :goto_0
    iget-boolean v0, p1, Landroidx/appcompat/widget/t0;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/appcompat/widget/t0;->a:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-boolean v1, p1, Landroidx/appcompat/widget/t0;->c:Z

    if-eqz v1, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/t0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, Landroidx/appcompat/widget/h;->g:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/h;->h(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 7
    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_5

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    return-void
.end method

.method static x(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/h;->l(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized l(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/h;->e(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/h;->s(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/h;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1, p2}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/h;->v(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    invoke-static {v0}, Landroidx/appcompat/widget/b0;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized n(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/h;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    sget-object v1, Landroidx/appcompat/widget/h;->j:[I

    invoke-static {v1, p2}, Landroidx/appcompat/widget/h;->d([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget v0, Lb/a/c;->abc_tint_btn_checkable:I

    invoke-static {p1, v0}, Lb/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/h;->c(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized t(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/h;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/d/d;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lb/d/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized u(Landroid/content/Context;Landroidx/appcompat/widget/a1;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/h;->s(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/a1;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/appcompat/widget/h;->v(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
