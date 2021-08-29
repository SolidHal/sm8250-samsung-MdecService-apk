.class final Lb/f/k/t$c;
.super Lb/f/k/t$f;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/k/t;->Q()Lb/f/k/t$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/f/k/t$f<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lb/f/k/t$f;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method bridge synthetic c(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/f/k/t$c;->e(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method e(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
