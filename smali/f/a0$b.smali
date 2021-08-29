.class final Lf/a0$b;
.super Lf/a0;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a0;->create(Lf/u;[BII)Lf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/u;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lf/u;I[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a0$b;->a:Lf/u;

    iput p2, p0, Lf/a0$b;->b:I

    iput-object p3, p0, Lf/a0$b;->c:[B

    iput p4, p0, Lf/a0$b;->d:I

    invoke-direct {p0}, Lf/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget v0, p0, Lf/a0$b;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lf/u;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a0$b;->a:Lf/u;

    return-object v0
.end method

.method public writeTo(Lg/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a0$b;->c:[B

    iget v1, p0, Lf/a0$b;->d:I

    iget v2, p0, Lf/a0$b;->b:I

    invoke-interface {p1, v0, v1, v2}, Lg/d;->b([BII)Lg/d;

    return-void
.end method
