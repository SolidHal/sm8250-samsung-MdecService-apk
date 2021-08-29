.class final Lf/c0$a;
.super Lf/c0;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/c0;->create(Lf/u;JLg/e;)Lf/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lf/u;

.field final synthetic c:J

.field final synthetic d:Lg/e;


# direct methods
.method constructor <init>(Lf/u;JLg/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/c0$a;->b:Lf/u;

    iput-wide p2, p0, Lf/c0$a;->c:J

    iput-object p4, p0, Lf/c0$a;->d:Lg/e;

    invoke-direct {p0}, Lf/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/c0$a;->c:J

    return-wide v0
.end method

.method public contentType()Lf/u;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/c0$a;->b:Lf/u;

    return-object v0
.end method

.method public source()Lg/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/c0$a;->d:Lg/e;

    return-object v0
.end method
