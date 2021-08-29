.class Landroidx/appcompat/app/AppCompatDelegateImpl$c;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lb/f/k/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->G()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lb/f/k/b0;)Lb/f/k/b0;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lb/f/k/b0;->e()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->w0(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lb/f/k/b0;->c()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lb/f/k/b0;->d()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Lb/f/k/b0;->b()I

    move-result v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, v3}, Lb/f/k/b0;->h(IIII)Lb/f/k/b0;

    move-result-object p2

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lb/f/k/t;->O(Landroid/view/View;Lb/f/k/b0;)Lb/f/k/b0;

    move-result-object p1

    return-object p1
.end method
