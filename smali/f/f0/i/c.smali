.class public final Lf/f0/i/c;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final d:Lg/f;

.field public static final e:Lg/f;

.field public static final f:Lg/f;

.field public static final g:Lg/f;

.field public static final h:Lg/f;

.field public static final i:Lg/f;


# instance fields
.field public final a:Lg/f;

.field public final b:Lg/f;

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    .line 1
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/c;->d:Lg/f;

    const-string v0, ":status"

    .line 2
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/c;->e:Lg/f;

    const-string v0, ":method"

    .line 3
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/c;->f:Lg/f;

    const-string v0, ":path"

    .line 4
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/c;->g:Lg/f;

    const-string v0, ":scheme"

    .line 5
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/c;->h:Lg/f;

    const-string v0, ":authority"

    .line 6
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/c;->i:Lg/f;

    return-void
.end method

.method public constructor <init>(Lg/f;Lg/f;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lf/f0/i/c;->a:Lg/f;

    .line 5
    iput-object p2, p0, Lf/f0/i/c;->b:Lg/f;

    .line 6
    invoke-virtual {p1}, Lg/f;->o()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lg/f;->o()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lf/f0/i/c;->c:I

    return-void
.end method

.method public constructor <init>(Lg/f;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p2}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lf/f0/i/c;-><init>(Lg/f;Lg/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object p1

    invoke-static {p2}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lf/f0/i/c;-><init>(Lg/f;Lg/f;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lf/f0/i/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lf/f0/i/c;

    .line 3
    iget-object v0, p0, Lf/f0/i/c;->a:Lg/f;

    iget-object v2, p1, Lf/f0/i/c;->a:Lg/f;

    invoke-virtual {v0, v2}, Lg/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/f0/i/c;->b:Lg/f;

    iget-object p1, p1, Lf/f0/i/c;->b:Lg/f;

    .line 4
    invoke-virtual {v0, p1}, Lg/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/f0/i/c;->a:Lg/f;

    invoke-virtual {v0}, Lg/f;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Lf/f0/i/c;->b:Lg/f;

    invoke-virtual {v0}, Lg/f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lf/f0/i/c;->a:Lg/f;

    invoke-virtual {v1}, Lg/f;->t()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lf/f0/i/c;->b:Lg/f;

    invoke-virtual {v1}, Lg/f;->t()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Lf/f0/c;->q(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
