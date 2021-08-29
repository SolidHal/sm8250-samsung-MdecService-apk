.class Ld/b/m/f$a;
.super Ld/a/e;
.source "MimeBodyPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ld/b/m/i;)V
    .locals 1

    .line 1
    new-instance v0, Ld/b/m/j;

    invoke-direct {v0, p1}, Ld/b/m/j;-><init>(Ld/b/m/i;)V

    invoke-direct {p0, v0}, Ld/a/e;-><init>(Ld/a/f;)V

    return-void
.end method
