.class final Lb/f/k/t$a;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/k/t;->j0(Landroid/view/View;Lb/f/k/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/f/k/p;


# direct methods
.method constructor <init>(Lb/f/k/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/f/k/t$a;->a:Lb/f/k/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-static {p2}, Lb/f/k/b0;->j(Ljava/lang/Object;)Lb/f/k/b0;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lb/f/k/t$a;->a:Lb/f/k/p;

    invoke-interface {v0, p1, p2}, Lb/f/k/p;->onApplyWindowInsets(Landroid/view/View;Lb/f/k/b0;)Lb/f/k/b0;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lb/f/k/b0;->i(Lb/f/k/b0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method
