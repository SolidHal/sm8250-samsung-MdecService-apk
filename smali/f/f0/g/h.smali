.class public final Lf/f0/g/h;
.super Lf/c0;
.source "RealResponseBody.java"


# instance fields
.field private final b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:J

.field private final d:Lg/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLg/e;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lf/c0;-><init>()V

    .line 2
    iput-object p1, p0, Lf/f0/g/h;->b:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lf/f0/g/h;->c:J

    .line 4
    iput-object p4, p0, Lf/f0/g/h;->d:Lg/e;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/f0/g/h;->c:J

    return-wide v0
.end method

.method public contentType()Lf/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/g/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lg/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/g/h;->d:Lg/e;

    return-object v0
.end method
