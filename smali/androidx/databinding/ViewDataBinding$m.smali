.class public abstract Landroidx/databinding/ViewDataBinding$m;
.super Landroidx/databinding/j$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "m"
.end annotation


# instance fields
.field final a:I


# virtual methods
.method public e(Landroidx/databinding/j;I)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/databinding/ViewDataBinding$m;->a:I

    if-eq p2, p1, :cond_0

    if-nez p2, :cond_1

    .line 2
    :cond_0
    invoke-interface {p0}, Landroidx/databinding/h;->c()V

    :cond_1
    return-void
.end method
