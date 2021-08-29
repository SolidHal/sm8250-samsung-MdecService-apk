.class Lb/q/r$a;
.super Lb/q/o;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/r;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/q/n;


# direct methods
.method constructor <init>(Lb/q/r;Lb/q/n;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/q/r$a;->a:Lb/q/n;

    invoke-direct {p0}, Lb/q/o;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lb/q/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/q/r$a;->a:Lb/q/n;

    invoke-virtual {v0}, Lb/q/n;->runAnimators()V

    .line 2
    invoke-virtual {p1, p0}, Lb/q/n;->removeListener(Lb/q/n$g;)Lb/q/n;

    return-void
.end method
