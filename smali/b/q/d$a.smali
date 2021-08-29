.class Lb/q/d$a;
.super Lb/q/o;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/d;->g(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Lb/q/d;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/q/d$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lb/q/o;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lb/q/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/q/d$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lb/q/e0;->h(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Lb/q/d$a;->a:Landroid/view/View;

    invoke-static {v0}, Lb/q/e0;->a(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1, p0}, Lb/q/n;->removeListener(Lb/q/n$g;)Lb/q/n;

    return-void
.end method
