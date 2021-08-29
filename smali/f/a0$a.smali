.class final Lf/a0$a;
.super Lf/a0;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a0;->create(Lf/u;Lg/f;)Lf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/u;

.field final synthetic b:Lg/f;


# direct methods
.method constructor <init>(Lf/u;Lg/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a0$a;->a:Lf/u;

    iput-object p2, p0, Lf/a0$a;->b:Lg/f;

    invoke-direct {p0}, Lf/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a0$a;->b:Lg/f;

    invoke-virtual {v0}, Lg/f;->o()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lf/u;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a0$a;->a:Lf/u;

    return-object v0
.end method

.method public writeTo(Lg/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a0$a;->b:Lg/f;

    invoke-interface {p1, v0}, Lg/d;->w(Lg/f;)Lg/d;

    return-void
.end method
