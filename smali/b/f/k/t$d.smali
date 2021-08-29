.class final Lb/f/k/t$d;
.super Lb/f/k/t$f;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/k/t;->a()Lb/f/k/t$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/f/k/t$f<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lb/f/k/t$f;-><init>(ILjava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method bridge synthetic c(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/f/k/t$d;->e(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method e(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityHeading()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
