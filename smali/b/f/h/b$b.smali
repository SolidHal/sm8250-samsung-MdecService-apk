.class final Lb/f/h/b$b;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Lb/f/h/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/h/b;->g(Landroid/content/Context;Lb/f/h/a;Landroidx/core/content/d/f$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/f/h/c$d<",
        "Lb/f/h/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/content/d/f$a;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/content/d/f$a;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/f/h/b$b;->a:Landroidx/core/content/d/f$a;

    iput-object p2, p0, Lb/f/h/b$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/f/h/b$g;

    invoke-virtual {p0, p1}, Lb/f/h/b$b;->b(Lb/f/h/b$g;)V

    return-void
.end method

.method public b(Lb/f/h/b$g;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/f/h/b$b;->a:Landroidx/core/content/d/f$a;

    const/4 v0, 0x1

    iget-object v1, p0, Lb/f/h/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroidx/core/content/d/f$a;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p1, Lb/f/h/b$g;->b:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lb/f/h/b$b;->a:Landroidx/core/content/d/f$a;

    iget-object p1, p1, Lb/f/h/b$g;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Lb/f/h/b$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroidx/core/content/d/f$a;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lb/f/h/b$b;->a:Landroidx/core/content/d/f$a;

    iget-object v1, p0, Lb/f/h/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroidx/core/content/d/f$a;->callbackFailAsync(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method
