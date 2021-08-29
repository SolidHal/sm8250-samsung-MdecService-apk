.class public Ld/b/m/c$a;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/m/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld/b/m/c$a;->a:I

    .line 3
    iput-object p2, p0, Ld/b/m/c$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ld/b/m/c$a;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/m/c$a;->b:Ljava/lang/String;

    return-object v0
.end method
