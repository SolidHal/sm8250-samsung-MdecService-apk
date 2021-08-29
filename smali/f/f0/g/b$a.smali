.class final Lf/f0/g/b$a;
.super Lg/g;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/f0/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field c:J


# direct methods
.method constructor <init>(Lg/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g;-><init>(Lg/r;)V

    return-void
.end method


# virtual methods
.method public c(Lg/c;J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lg/g;->c(Lg/c;J)V

    .line 2
    iget-wide v0, p0, Lf/f0/g/b$a;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lf/f0/g/b$a;->c:J

    return-void
.end method
