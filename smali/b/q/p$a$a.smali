.class Lb/q/p$a$a;
.super Lb/q/o;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/p$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/d/a;

.field final synthetic b:Lb/q/p$a;


# direct methods
.method constructor <init>(Lb/q/p$a;Lb/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/q/p$a$a;->b:Lb/q/p$a;

    iput-object p2, p0, Lb/q/p$a$a;->a:Lb/d/a;

    invoke-direct {p0}, Lb/q/o;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lb/q/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/q/p$a$a;->a:Lb/d/a;

    iget-object v1, p0, Lb/q/p$a$a;->b:Lb/q/p$a;

    iget-object v1, v1, Lb/q/p$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lb/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
