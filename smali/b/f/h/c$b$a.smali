.class Lb/f/h/c$b$a;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/h/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lb/f/h/c$b;


# direct methods
.method constructor <init>(Lb/f/h/c$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/f/h/c$b$a;->c:Lb/f/h/c$b;

    iput-object p2, p0, Lb/f/h/c$b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/f/h/c$b$a;->c:Lb/f/h/c$b;

    iget-object v0, v0, Lb/f/h/c$b;->d:Lb/f/h/c$d;

    iget-object v1, p0, Lb/f/h/c$b$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lb/f/h/c$d;->a(Ljava/lang/Object;)V

    return-void
.end method
