.class Lb/f/d/h$a;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lb/f/d/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/d/h;->g([Lb/f/h/b$f;I)Lb/f/h/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/f/d/h$c<",
        "Lb/f/h/b$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lb/f/d/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/f/h/b$f;

    invoke-virtual {p0, p1}, Lb/f/d/h$a;->c(Lb/f/h/b$f;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lb/f/h/b$f;

    invoke-virtual {p0, p1}, Lb/f/d/h$a;->d(Lb/f/h/b$f;)Z

    move-result p1

    return p1
.end method

.method public c(Lb/f/h/b$f;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lb/f/h/b$f;->d()I

    move-result p1

    return p1
.end method

.method public d(Lb/f/h/b$f;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lb/f/h/b$f;->e()Z

    move-result p1

    return p1
.end method
