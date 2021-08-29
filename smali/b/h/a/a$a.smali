.class final Lb/h/a/a$a;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Lb/h/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/h/a/b$a<",
        "Lb/f/k/c0/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    check-cast p1, Lb/f/k/c0/c;

    invoke-virtual {p0, p1, p2}, Lb/h/a/a$a;->b(Lb/f/k/c0/c;Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Lb/f/k/c0/c;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lb/f/k/c0/c;->j(Landroid/graphics/Rect;)V

    return-void
.end method
