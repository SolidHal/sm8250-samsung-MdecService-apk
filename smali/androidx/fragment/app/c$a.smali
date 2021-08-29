.class Landroidx/fragment/app/c$a;
.super Ljava/lang/Object;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/activity/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->mFragments:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->u()Landroidx/fragment/app/h;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/h;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/h;->i()Z

    move-result v0

    return v0
.end method
